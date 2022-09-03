#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include "y64asm.h"

line_t *line_head = NULL;
line_t *line_tail = NULL;

//errorno = 0: 空行错误；errorno = 1：不是该种指令，可能是其他的指令
int errorno = -1;
int lineno = 0;

#define err_print(_s, _a ...) do { \
  if (lineno < 0) \
    fprintf(stderr, "[--]: "_s"\n", ## _a); \
  else \
    fprintf(stderr, "[L%d]: "_s"\n", lineno, ## _a); \
} while (0);


int64_t vmaddr = 0;    /* vm addr */

/* register table */
const reg_t reg_table[REG_NONE] = {
    {"%rax", REG_RAX, 4},
    {"%rcx", REG_RCX, 4},
    {"%rdx", REG_RDX, 4},
    {"%rbx", REG_RBX, 4},
    {"%rsp", REG_RSP, 4},
    {"%rbp", REG_RBP, 4},
    {"%rsi", REG_RSI, 4},
    {"%rdi", REG_RDI, 4},
    {"%r8",  REG_R8,  3},
    {"%r9",  REG_R9,  3},
    {"%r10", REG_R10, 4},
    {"%r11", REG_R11, 4},
    {"%r12", REG_R12, 4},
    {"%r13", REG_R13, 4},
    {"%r14", REG_R14, 4}
};
const reg_t* find_register(char *name)
{
    int i;
    for (i = 0; i < REG_NONE; i++)
        if (!strncmp(name, reg_table[i].name, reg_table[i].namelen))
            return &reg_table[i];
    return NULL;
}


/* instruction set */
instr_t instr_set[] = {
    {"nop", 3,   HPACK(I_NOP, F_NONE), 1 },
    {"halt", 4,  HPACK(I_HALT, F_NONE), 1 },
    {"rrmovq", 6,HPACK(I_RRMOVQ, F_NONE), 2 },
    {"cmovle", 6,HPACK(I_RRMOVQ, C_LE), 2 },
    {"cmovl", 5, HPACK(I_RRMOVQ, C_L), 2 },
    {"cmove", 5, HPACK(I_RRMOVQ, C_E), 2 },
    {"cmovne", 6,HPACK(I_RRMOVQ, C_NE), 2 },
    {"cmovge", 6,HPACK(I_RRMOVQ, C_GE), 2 },
    {"cmovg", 5, HPACK(I_RRMOVQ, C_G), 2 },
    {"irmovq", 6,HPACK(I_IRMOVQ, F_NONE), 10 },
    {"rmmovq", 6,HPACK(I_RMMOVQ, F_NONE), 10 },
    {"mrmovq", 6,HPACK(I_MRMOVQ, F_NONE), 10 },
    {"addq", 4,  HPACK(I_ALU, A_ADD), 2 },
    {"subq", 4,  HPACK(I_ALU, A_SUB), 2 },
    {"andq", 4,  HPACK(I_ALU, A_AND), 2 },
    {"xorq", 4,  HPACK(I_ALU, A_XOR), 2 },
    {"jmp", 3,   HPACK(I_JMP, C_YES), 9 },
    {"jle", 3,   HPACK(I_JMP, C_LE), 9 },
    {"jl", 2,    HPACK(I_JMP, C_L), 9 },
    {"je", 2,    HPACK(I_JMP, C_E), 9 },
    {"jne", 3,   HPACK(I_JMP, C_NE), 9 },
    {"jge", 3,   HPACK(I_JMP, C_GE), 9 },
    {"jg", 2,    HPACK(I_JMP, C_G), 9 },
    {"call", 4,  HPACK(I_CALL, F_NONE), 9 },
    {"ret", 3,   HPACK(I_RET, F_NONE), 1 },
    {"pushq", 5, HPACK(I_PUSHQ, F_NONE), 2 },
    {"popq", 4,  HPACK(I_POPQ, F_NONE),  2 },
    {".byte", 5, HPACK(I_DIRECTIVE, D_DATA), 1 },
    {".word", 5, HPACK(I_DIRECTIVE, D_DATA), 2 },
    {".long", 5, HPACK(I_DIRECTIVE, D_DATA), 4 },
    {".quad", 5, HPACK(I_DIRECTIVE, D_DATA), 8 },
    {".pos", 4,  HPACK(I_DIRECTIVE, D_POS), 0 },
    {".align", 6,HPACK(I_DIRECTIVE, D_ALIGN), 0 },
    {NULL, 1,    0   , 0 } //end
};

instr_t *find_instr(char *name)
{
    int i;
    for (i = 0; instr_set[i].name; i++)
	if (strncmp(instr_set[i].name, name, instr_set[i].len) == 0)
	    return &instr_set[i];
    return NULL;
}

/* symbol table (don't forget to init and finit it) */
symbol_t *symtab = NULL;

/*
 * find_symbol: scan table to find the symbol
 * args
 *     name: the name of symbol
 *
 * return
 *     symbol_t: the 'name' symbol
 *     NULL: not exist
 */
symbol_t *find_symbol(char *name)
{
    if(name == NULL)
        return NULL;
    else if(symtab == NULL)
        return NULL;
    symbol_t *tmp = symtab->next;
    while(tmp != NULL){
        if(strncmp(tmp->name, name, strlen(name)) == 0)
            return tmp;
        tmp = tmp->next;
    }
    return NULL;
}

/*
 * add_symbol: add a new symbol to the symbol table
 * args
 *     name: the name of symbol
 *
 * return
 *     0: success
 *     -1: error, the symbol has exist
 */
int add_symbol(char *name)
{
    /* check duplicate */
    symbol_t *tmp = symtab->next;
    while(tmp != NULL){
        if(strncmp(tmp->name, name, strlen(name)) == 0){
            err_print("Dup symbol:%s",name);
            return -1;
        }
        tmp = tmp->next;
    }
    /* create new symbol_t (don't forget to free it)*/
    symbol_t *new_sym = (symbol_t *)malloc(sizeof(symbol_t));
    new_sym->name = (char *)malloc(strlen(name) + 1);
    memcpy(new_sym->name , name, strlen(name));
    *(new_sym->name + strlen(name)) = '\0';
    new_sym->addr = vmaddr;
    /* add the new symbol_t to symbol table */
    new_sym->next = symtab->next;
    symtab->next = new_sym;
    return 0;
}

/* relocation table (don't forget to init and finit it) */
reloc_t *reltab = NULL;

/*
 * add_reloc: add a new relocation to the relocation table
 * args
 *     name: the name of symbol
 */
void add_reloc(char *name, bin_t *bin)
{
    /* create new reloc_t (don't forget to free it)*/
    reloc_t *new_reloc = (reloc_t *)malloc(sizeof(reloc_t));
    new_reloc->name = (char *)malloc(strlen(name) + 1);
    new_reloc->y64bin = (bin_t *)malloc(sizeof(bin_t));
    memcpy(new_reloc->name, name, strlen(name));
    /* add the new reloc_t to relocation table */
    new_reloc->next = reltab->next;
    reltab->next = new_reloc;
}


/* (macro for parsing y64 assembly code) */
#define IS_DIGIT(s) ((*(s)>='0' && *(s)<='9') || *(s)=='-' || *(s)=='+')
#define IS_LETTER(s) ((*(s)>='a' && *(s)<='z') || (*(s)>='A' && *(s)<='Z'))
#define IS_COMMENT(s) (*(s)=='#')
#define IS_REG(s) (*(s)=='%')
#define IS_IMM(s) (*(s)=='$')

#define IS_BLANK(s) (*(s)==' ' || *(s)=='\t')
#define IS_END(s) (*(s)=='\0')

#define SKIP_BLANK(s) do {  \
  while(!IS_END(s) && IS_BLANK(s))  \
    (s)++;    \
} while(0);

/* return value from different parse_xxx function */
typedef enum { PARSE_ERR=-1, PARSE_REG, PARSE_DIGIT, PARSE_SYMBOL, 
    PARSE_MEM, PARSE_DELIM, PARSE_INSTR, PARSE_LABEL} parse_t;

/*
 * parse_instr: parse an expected data token (e.g., 'rrmovq')
 * args
 *     ptr: point to the start of string
 *     inst: point to the inst_t within instr_set
 *
 * return
 *     PARSE_INSTR: success, move 'ptr' to the first char after token,
 *                            and store the pointer of the instruction to 'inst'
 *     PARSE_ERR: error, the value of 'ptr' and 'inst' are undefined
 */
 //注意二级指针
parse_t parse_instr(char **ptr, instr_t **inst)
{
    /* skip the blank */
    if(*ptr == NULL){
        errorno = 0;
        return PARSE_ERR;
    }
    SKIP_BLANK(*ptr);
    if(IS_END(*ptr)){
        errorno = 0;
        return PARSE_ERR;
    }
    /* find_instr and check end */
    //这里要怎么check end?
    *inst = find_instr(*ptr);
    /* set 'ptr' and 'inst' */
    if(*inst == NULL){
        errorno = 0;
        return PARSE_ERR;
    }
    for(int i = 0; i < (*inst)->len; ++i){
        *ptr += 1;
    }
    *ptr += 1;
    return PARSE_INSTR;
}

/*
 * parse_delim: parse an expected delimiter token (e.g., ',')
 * args
 *     ptr: point to the start of string
 *
 * return
 *     PARSE_DELIM: success, move 'ptr' to the first char after token
 *     PARSE_ERR: error, the value of 'ptr' and 'delim' are undefined
 */
parse_t parse_delim(char **ptr, char delim)
{
    errorno = 1;
    /* skip the blank and check */
    if(*ptr == NULL){
        errorno = 0;
        return PARSE_ERR;
    }
    SKIP_BLANK(*ptr);
    if(IS_END(*ptr))
        return PARSE_ERR;
    /* set 'ptr' */
    while(**ptr != '\0'){
        if(**ptr == delim){
            *ptr += 1;
            return PARSE_DELIM;
        }
        *ptr += 1;
    }
    errorno = 0;
    return PARSE_ERR;
}

/*
 * parse_reg: parse an expected register token (e.g., '%rax')
 * args
 *     ptr: point to the start of string
 *     regid: point to the regid of register
 *
 * return
 *     PARSE_REG: success, move 'ptr' to the first char after token, 
 *                         and store the regid to 'regid'
 *     PARSE_ERR: error, the value of 'ptr' and 'regid' are undefined
 */
parse_t parse_reg(char **ptr, regid_t *regid)
{
    /* skip the blank and check */
    if(*ptr == NULL)
        return PARSE_ERR;
    SKIP_BLANK(*ptr);
    if(IS_END(*ptr))
        return PARSE_ERR;
    /* find register */
    reg_t* reg_tmp = find_register(*ptr);
    if(reg_tmp == NULL)
        return PARSE_ERR;
    /* set 'ptr' and 'regid' */
    *regid = reg_tmp->id;
    for(int i = 0; i < reg_tmp->namelen; ++i)
        *ptr += 1;
    return PARSE_REG;
}

/*
 * parse_symbol: parse an expected symbol token (e.g., 'Main')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *
 * return
 *     PARSE_SYMBOL: success, move 'ptr' to the first char after token,
 *                               and allocate and store name to 'name'
 *     PARSE_ERR: error, the value of 'ptr' and 'name' are undefined
 */
 //symbol就像是"stack"这样的？
parse_t parse_symbol(char **ptr, char **name)
{
    /* skip the blank and check */
    if(*ptr == NULL)
        return PARSE_ERR;
    SKIP_BLANK(*ptr);
    if(IS_END(*ptr))
        return PARSE_ERR;
    /* allocate name and copy to it */
    char *str = *ptr;
    int count = 0;
    while(**ptr != '\0'){
        if(**ptr == ' ' || **ptr == ',' || **ptr == '\t'){
            break;
        }
        ++count;
        ++*ptr;
    }
    *name = (char *)malloc(count + 1);
    memcpy(*name, str, count);
    (*name)[count] = '\0';
    //这里加reloc
    bin_t tmp_bin;
    tmp_bin.addr = vmaddr;
    tmp_bin.bytes = 0;
    add_reloc(*name, &tmp_bin);
    return PARSE_SYMBOL;
    // return PARSE_ERR;
}

/*
 * parse_digit: parse an expected digit token (e.g., '0x100')
 * args
 *     ptr: point to the start of string
 *     value: point to the value of digit
 *
 * return
 *     PARSE_DIGIT: success, move 'ptr' to the first char after token
 *                            and store the value of digit to 'value'
 *     PARSE_ERR: error, the value of 'ptr' and 'value' are undefined
 */
parse_t parse_digit(char **ptr, long *value)
{
    /* skip the blank and check */
    if(*ptr == NULL)
        return PARSE_ERR;
    SKIP_BLANK(*ptr);
    if(IS_END(*ptr))
        return PARSE_ERR;
    /* calculate the digit, (NOTE: see strtoll()) */
    //这里十六进制和十进制,基数0自动解决
    char *end;
    *value = strtoll(*ptr, &end, 0);
    if(*value == 0x7fffffffffffffff){
        *value = strtoull(*ptr, &end, 0);
    }
    /* set 'ptr' and 'value' */
    *ptr = end;
    return PARSE_DIGIT;
}

/*
 * parse_imm: parse an expected immediate token (e.g., '$0x100' or 'STACK')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *     value: point to the value of digit
 *
 * return
 *     PARSE_DIGIT: success, the immediate token is a digit,
 *                            move 'ptr' to the first char after token,
 *                            and store the value of digit to 'value'
 *     PARSE_SYMBOL: success, the immediate token is a symbol,
 *                            move 'ptr' to the first char after token,
 *                            and allocate and store name to 'name' 
 *     PARSE_ERR: error, the value of 'ptr', 'name' and 'value' are undefined
 */
parse_t parse_imm(char **ptr, char **name, long *value)
{
    /* skip the blank and check */
    if(*ptr == NULL){
        errorno = 0;
        return PARSE_ERR;
    }
    SKIP_BLANK(*ptr);
    if(IS_END(*ptr)){
        errorno = 0;
        return PARSE_ERR;
    }
    /* if IS_IMM, then parse the digit */
    if(**ptr == '$' && IS_DIGIT(*ptr + 1)){
        *ptr += 1;
        parse_t ret = parse_digit(ptr, value);
        return ret;
    }
    /* if IS_LETTER, then parse the symbol */
    else if((**ptr != '$') && IS_LETTER(*ptr)){
        parse_t ret = parse_symbol(ptr, name);
        return ret;
    }
    /* set 'ptr' and 'name' or 'value' */
    errorno = 0;
    return PARSE_ERR;
}

/*
 * parse_mem: parse an expected memory token (e.g., '8(%rbp)')
 * args
 *     ptr: point to the start of string
 *     value: point to the value of digit
 *     regid: point to the regid of register
 *
 * return
 *     PARSE_MEM: success, move 'ptr' to the first char after token,
 *                          and store the value of digit to 'value',
 *                          and store the regid to 'regid'
 *     PARSE_ERR: error, the value of 'ptr', 'value' and 'regid' are undefined
 */
parse_t parse_mem(char **ptr, long *value, regid_t *regid)
{
    /* skip the blank and check */
    if(*ptr == NULL)
        return PARSE_ERR;
    SKIP_BLANK(*ptr);
    if(IS_END(*ptr))
        return PARSE_ERR;
    /* calculate the digit and register, (ex: (%rbp) or 8(%rbp)) */
    if(IS_DIGIT(*ptr)){
        parse_t ret = parse_digit(ptr, value);
        if(ret == PARSE_ERR)
            return PARSE_ERR;
    }
    else{
        *value = 0;    
    }
    if(**ptr != '('){
        return PARSE_ERR;   
    }
    *ptr += 1;
    parse_t ret = parse_reg(ptr, regid);
    if(ret == PARSE_ERR || **ptr != ')')
        return PARSE_ERR;   
    return PARSE_MEM;
    /* set 'ptr', 'value' and 'regid' */
    // return PARSE_ERR;
}

/*
 * parse_data: parse an expected data token (e.g., '0x100' or 'array')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *     value: point to the value of digit
 *
 * return
 *     PARSE_DIGIT: success, data token is a digit,
 *                            and move 'ptr' to the first char after token,
 *                            and store the value of digit to 'value'
 *     PARSE_SYMBOL: success, data token is a symbol,
 *                            and move 'ptr' to the first char after token,
 *                            and allocate and store name to 'name' 
 *     PARSE_ERR: error, the value of 'ptr', 'name' and 'value' are undefined
 */
parse_t parse_data(char **ptr, char **name, long *value)
{
    if(*ptr == NULL){
        errorno = 0;
        return PARSE_ERR;
    }
    SKIP_BLANK(*ptr);
    if(IS_END(*ptr)){
        errorno = 0;
        return PARSE_ERR;
    }
    /* if IS_IMM, then parse the digit */
    if(IS_DIGIT(*ptr)){
        parse_t ret = parse_digit(ptr, value);
        return ret;
    }
    /* if IS_LETTER, then parse the symbol */
    else if(IS_LETTER(*ptr)){
        parse_t ret = parse_symbol(ptr, name);
        return ret;
    }
    /* set 'ptr' and 'name' or 'value' */
    errorno = 1;
    return PARSE_ERR;
}

/*
 * parse_label: parse an expected label token (e.g., 'Loop:')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *
 * return
 *     PARSE_LABEL: success, move 'ptr' to the first char after token
 *                            and allocate and store name to 'name'
 *     PARSE_ERR: error, the value of 'ptr' is undefined
 */
parse_t parse_label(char **ptr, char **name)
{
    /* skip the blank and check */
    errorno = 1;
    if(*ptr == NULL){
        errorno = 0;
        return PARSE_ERR;
    }
    SKIP_BLANK(*ptr);
    if(IS_END(*ptr)){
        errorno = 0;
        return PARSE_ERR;
    }
    /* allocate name and copy to it */
    char *str = *ptr;
    int count = 0;

    while(**ptr != '\0'){
        if(**ptr == ':'){
            break;
        }
        ++count;
        *ptr += 1;
    }
    if(**ptr == '\0'){
        *ptr = str;
        return PARSE_ERR;
    }
    /* set 'ptr' and 'name' */
    *name = (char *)malloc(count + 1);
    memcpy(*name, str, count);
    (*name)[count] = '\0';
    //这里把它加到symbol中
    if(add_symbol(*name) < 0){
        errorno = 0;
        return PARSE_ERR;
    }
    *ptr += 1;
    return PARSE_LABEL;
}

/*
 * parse_line: parse a line of y64 code (e.g., 'Loop: mrmovq (%rcx), %rsi')
 * (you could combine above parse_xxx functions to do it)
 * args
 *     line: point to a line_t data with a line of y64 assembly code
 *
 * return
 *     TYPE_XXX: success, fill line_t with assembled y64 code
 *     TYPE_ERR: error, try to print err information
 */
type_t parse_line(line_t *line)
{

/* when finish parse an instruction or lable, we still need to continue check 
* e.g., 
*  Loop: mrmovl (%rbp), %rcx
*           call SUM  #invoke SUM function */

    /* skip blank and check IS_END */
    char *cmd = line->y64asm;
    bin_t bin_line = line->y64bin;
    bin_line.bytes = 0;
    SKIP_BLANK(cmd);
    char *name;
    instr_t *ins;
    parse_t ret;
    char delim = ',';
    //assume blank is comment
    if(IS_END(cmd)){
        line->type = TYPE_COMM;
        return TYPE_COMM;
    }
    /* is a comment ? */
    if(IS_COMMENT(cmd)){
        line->type = TYPE_COMM;
        return TYPE_COMM;
    }
    /* is a label ? */
    ret = parse_label(&cmd, &name);
    if(ret == PARSE_LABEL){
        bin_line.addr = vmaddr;
    }
    else if(ret == PARSE_ERR && errorno == 0){
        line->type = TYPE_ERR;
        return TYPE_ERR;
    }
    SKIP_BLANK(cmd);
    if(IS_END(cmd) || IS_COMMENT(cmd)){
        line->type = TYPE_INS;
        bin_line.bytes = 0;
        line->y64bin = bin_line;
        return TYPE_INS;
    }
    line->type = TYPE_INS;
    if(parse_instr(&cmd, &ins) == PARSE_ERR && errorno == 0){
        line->type = TYPE_ERR;
        return TYPE_ERR;
    }
    else{
        bin_line.addr = vmaddr;
        itype_t icode;
        long valC;
        regid_t rA = REG_NONE, rB = REG_NONE;
        dtv_t dir;
        byte_t codefun = ins->code, regid;
        bin_line.codes[0] = codefun;
        icode = HIGH(codefun);
        switch(icode){
            case 0:
            case 1:
            case 9:
                bin_line.bytes = 1;
                line->y64bin = bin_line;
                vmaddr += 1; 
                break;
            case 2: 
            case 6:
                if(parse_reg(&cmd, &rA) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid REG");
                    return TYPE_ERR;
                }
                if(parse_delim(&cmd, delim) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid \',\'");
                    return TYPE_ERR;
                }
                if(parse_reg(&cmd, &rB) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid REG");
                    return TYPE_ERR;
                }
                regid = HPACK(rA, rB);
                bin_line.codes[1] = regid;
                bin_line.bytes = 2;
                line->y64bin = bin_line;
                vmaddr += 2;
                break;
            case 3:
                ret = parse_imm(&cmd, &name, &valC);
                if(ret == PARSE_ERR){
                    err_print("Invalid Immediate");
                    line->type = TYPE_ERR;
                    return TYPE_ERR;
                }
                else if(ret == PARSE_DIGIT){
                    for(int i = 0; i < 8; ++i){
                        bin_line.codes[i + 2] = valC & 0xff;
                        valC = valC >> 8;
                    }
                }
                else if(ret == PARSE_SYMBOL){
                    line->y64bin.codes[0] = bin_line.codes[0];
                    reltab->next->y64bin = &(line->y64bin);
                    reltab->next->y64bin->codes[0] = bin_line.codes[0];
                }
                if(parse_delim(&cmd, delim) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid \',\'");
                    return TYPE_ERR;
                }
                if(parse_reg(&cmd, &rB) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid REG");
                    return TYPE_ERR;
                }
                regid = HPACK(rA, rB);
                bin_line.codes[1] = regid;
                bin_line.bytes = 10;
                line->y64bin = bin_line;
                vmaddr += 10;
                break;
            case 4:
                if(parse_reg(&cmd, &rA) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid REG");
                    return TYPE_ERR;
                }
                if(parse_delim(&cmd, delim) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid \',\'");
                    return TYPE_ERR;
                }
                if(parse_mem(&cmd, &valC, &rB) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid MEM");
                    return TYPE_ERR;
                }
                regid = HPACK(rA, rB);
                bin_line.codes[1] = regid;
                for(int i = 0; i < 8; ++i){
                    bin_line.codes[i + 2] = valC & 0xff;
                    valC = valC >> 8;
                }
                bin_line.bytes = 10;
                line->y64bin = bin_line;
                vmaddr += 10;
                break;
            case 5:
                if(parse_mem(&cmd, &valC, &rB) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid MEM");
                    return TYPE_ERR;
                }
                if(parse_delim(&cmd, delim) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid \',\'");
                    return TYPE_ERR;
                }
                if(parse_reg(&cmd, &rA) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid REG");
                    return TYPE_ERR;
                }
                regid = HPACK(rA, rB);
                bin_line.codes[1] = regid;
                for(int i = 0; i < 8; ++i){
                    bin_line.codes[i + 2] = valC & 0xff;
                    valC = valC >> 8;
                }
                bin_line.bytes = 10;
                line->y64bin = bin_line;
                vmaddr += 10;
                break;
            case 7: 
            case 8:
                // err_print("get 803!");
                SKIP_BLANK(cmd);
                if(IS_DIGIT(cmd)){
                    line->type = TYPE_ERR;
                    err_print("Invalid DEST");
                    return TYPE_ERR;
                }
                ret = parse_imm(&cmd, &name, &valC);
                // err_print("ret:%d", ret);
                if(ret == PARSE_ERR){
                    line->type = TYPE_ERR;
                    return TYPE_ERR;
                }
                else if(ret == PARSE_DIGIT){
                    for(int i = 0; i < 8; ++i){
                        bin_line.codes[i + 1] = valC & 0xff;
                        valC = valC >> 8;
                    }
                }
                else if(ret == PARSE_SYMBOL){
                    line->y64bin.codes[0] = bin_line.codes[0];
                    reltab->next->y64bin = &(line->y64bin);
                    reltab->next->y64bin->codes[0] = bin_line.codes[0];
                    // err_print("the %s codefun: %x 848", reltab->next->name, reltab->next->y64bin->codes[0]);
                    // err_print("icode 815: %x", bin_line.codes[0]);
                    // err_print("icode 816: %x", reltab->next->y64bin->codes[0]);
                }
                bin_line.bytes = 9;
                line->y64bin = bin_line;
                // line->y64bin.codes = &(reltab->next->y64bin->codes[0]);
                vmaddr += 9;
                break;
            case 10:
            case 11:
                if(parse_reg(&cmd, &rA) == PARSE_ERR){
                    line->type = TYPE_ERR;
                    err_print("Invalid REG");
                    return TYPE_ERR;
                }
                regid = HPACK(rA, rB);
                bin_line.codes[1] = regid;
                bin_line.bytes = 2;
                line->y64bin = bin_line;
                vmaddr += 2;
                break;
            case 12:
                dir = LOW(codefun);
                // err_print("get direction!\n");
                ret = parse_data(&cmd, &name, &valC);
                if(ret == PARSE_ERR){
                    line->type = TYPE_ERR;
                    return TYPE_ERR;
                }
                // err_print("val 844:%lx", valC);
                switch(dir){
                    case D_ALIGN:
                        while(vmaddr % valC != 0){
                            ++vmaddr;
                        } 
                        bin_line.addr = vmaddr;
                        break;
                    case D_POS:
                        vmaddr = valC;
                        bin_line.addr = vmaddr;
                        break;
                    case D_DATA:
                        bin_line.addr = vmaddr;
                        vmaddr += ins->bytes;
                        if(ret == PARSE_DIGIT){
                            int i = 0;
                            for(;i < ins->bytes; ++i){
                                // err_print("val 861:%x", 0xFF & valC);
                                bin_line.codes[i] = 0xFF & valC;
                                valC = valC >> 8;
                            }
                        }
                        else{
                            reltab->next->y64bin = &(line->y64bin);
                        }
                        break;
                }
                bin_line.bytes = ins->bytes;
                line->y64bin = bin_line;
                break;
        }
        return TYPE_INS;
    }
    /* update vmaddr */    
    /* parse the rest of instruction according to the itype */
    line->type = TYPE_ERR;
    return line->type;
}

/*
 * assemble: assemble an y64 file (e.g., 'asum.ys')
 * args
 *     in: point to input file (an y64 assembly file)
 *
 * return
 *     0: success, assmble the y64 file to a list of line_t
 *     -1: error, try to print err information (e.g., instr type and line number)
 */
int assemble(FILE *in)
{
    static char asm_buf[MAX_INSLEN]; /* the current line of asm code */
    line_t *line;
    int slen;
    char *y64asm;

    /* read y64 code line-by-line, and parse them to generate raw y64 binary code list */
    while (fgets(asm_buf, MAX_INSLEN, in) != NULL) {
        slen  = strlen(asm_buf);
        while ((asm_buf[slen-1] == '\n') || (asm_buf[slen-1] == '\r')) { 
            asm_buf[--slen] = '\0'; /* replace terminator */
        }

        /* store y64 assembly code */
        y64asm = (char *)malloc(sizeof(char) * (slen + 1)); // free in finit
        strcpy(y64asm, asm_buf);

        line = (line_t *)malloc(sizeof(line_t)); // free in finit
        memset(line, '\0', sizeof(line_t));

        line->type = TYPE_COMM;
        line->y64asm = y64asm;
        line->next = NULL;

        line_tail->next = line;
        line_tail = line;
        lineno ++;

        if (parse_line(line) == TYPE_ERR) {
            return -1;
        }
    }

	lineno = -1;
    return 0;
}

/*
 * relocate: relocate the raw y64 binary code with symbol address
 *
 * return
 *     0: success
 *     -1: error, try to print err information (e.g., addr and symbol)
 */
int relocate(void)
{
    reloc_t *rtmp;
    
    rtmp = reltab->next;
    int bias = 0;
    while (rtmp) {
        /* find symbol */
        char *name = rtmp->name;
        symbol_t *sym = find_symbol(name);
        /* relocate y64bin according itype */
        if(sym == NULL){
            //try to print err information (e.g., addr and symbol) 
            err_print("Unknown symbol:\'%s\'", name);
            return -1;
        }
        else{
            bin_t *bin_tmp = rtmp->y64bin;
            itype_t icode = HIGH(bin_tmp->codes[0]);
            switch(icode){
                case 3:
                    bias = 2;
                    break;
                case 7:
                case 8:
                    bias = 1;
                    break;
                default:
                    bias = 0;
            }
            int64_t addr = sym->addr;
            for(int i = 0;i < 8; ++i){
                bin_tmp->codes[i + bias] = addr & 0xff;
                addr = addr >> 8;        
            }
            rtmp->y64bin = bin_tmp;
        }
        /* next */
        rtmp = rtmp->next;
    }
    return 0;
}

/*
 * binfile: generate the y64 binary file
 * args
 *     out: point to output file (an y64 binary file)
 *
 * return
 *     0: success
 *     -1: error
 */
int binfile(FILE *out)
{
    //错误处理还没有写
    /* prepare image with y64 binary code */
    // char asm_buf[MAX_INSLEN] = {'\0'};
    line_t *line_now = line_head->next;
    int64_t addr_former = 0;
    while(line_now){
        bin_t bin_now = line_now->y64bin;
        if(line_now->type == TYPE_COMM || bin_now.bytes == 0){
            line_now = line_now->next;
            continue;
        }
        int64_t addr_now = bin_now.addr;
        /* binary write y64 code to output file (NOTE: see fwrite()) */
        while(addr_former < addr_now){
            fwrite("\0", 1 , 1, out);
            ++addr_former;
        }
        addr_former = addr_now + bin_now.bytes;
        fwrite(bin_now.codes, 1 , bin_now.bytes, out); 
        line_now = line_now->next;
    }
    /* binary write y64 code to output file (NOTE: see fwrite()) */
    
    return 0;
}


/* whether print the readable output to screen or not ? */
bool_t screen = FALSE; 

static void hexstuff(char *dest, int value, int len)
{
    int i;
    for (i = 0; i < len; i++) {
        char c;
        int h = (value >> 4*i) & 0xF;
        c = h < 10 ? h + '0' : h - 10 + 'a';
        dest[len-i-1] = c;
    }
}

void print_line(line_t *line)
{
    char buf[64];

    /* line format: 0xHHH: cccccccccccc | <line> */
    if (line->type == TYPE_INS) {
        bin_t *y64bin = &line->y64bin;
        int i;
        
        strcpy(buf, "  0x000:                      | ");
        
        hexstuff(buf+4, y64bin->addr, 3);
        if (y64bin->bytes > 0)
            for (i = 0; i < y64bin->bytes; i++)
                hexstuff(buf+9+2*i, y64bin->codes[i]&0xFF, 2);
    } else {
        strcpy(buf, "                              | ");
    }

    printf("%s%s\n", buf, line->y64asm);
}

/* 
 * print_screen: dump readable binary and assembly code to screen
 * (e.g., Figure 4.8 in ICS book)
 */
void print_screen(void)
{
    line_t *tmp = line_head->next;
    while (tmp != NULL) {
        print_line(tmp);
        tmp = tmp->next;
    }
}

/* init and finit */
void init(void)
{
    reltab = (reloc_t *)malloc(sizeof(reloc_t)); // free in finit
    memset(reltab, 0, sizeof(reloc_t));

    symtab = (symbol_t *)malloc(sizeof(symbol_t)); // free in finit
    memset(symtab, 0, sizeof(symbol_t));

    line_head = (line_t *)malloc(sizeof(line_t)); // free in finit
    memset(line_head, 0, sizeof(line_t));
    line_tail = line_head;
    lineno = 0;
}

void finit(void)
{
    reloc_t *rtmp = NULL;
    do {
        rtmp = reltab->next;
        if (reltab->name) 
            free(reltab->name);
        free(reltab);
        reltab = rtmp;
    } while (reltab);
    
    symbol_t *stmp = NULL;
    do {
        stmp = symtab->next;
        if (symtab->name) 
            free(symtab->name);
        free(symtab);
        symtab = stmp;
    } while (symtab);

    line_t *ltmp = NULL;
    do {
        ltmp = line_head->next;
        if (line_head->y64asm) 
            free(line_head->y64asm);
        free(line_head);
        line_head = ltmp;
    } while (line_head);
}

static void usage(char *pname)
{
    printf("Usage: %s [-v] file.ys\n", pname);
    printf("   -v print the readable output to screen\n");
    exit(0);
}

int main(int argc, char *argv[])
{
    int rootlen;
    char infname[512];
    char outfname[512];
    int nextarg = 1;
    FILE *in = NULL, *out = NULL;
    
    if (argc < 2)
        usage(argv[0]);
    
    if (argv[nextarg][0] == '-') {
        char flag = argv[nextarg][1];
        switch (flag) {
          case 'v':
            screen = TRUE;
            nextarg++;
            break;
          default:
            usage(argv[0]);
        }
    }
    /* parse input file name */
    rootlen = strlen(argv[nextarg])-3;
    /* only support the .ys file */
    if (strcmp(argv[nextarg]+rootlen, ".ys"))
        usage(argv[0]);
    
    if (rootlen > 500) {
        err_print("File name too long");
        exit(1);
    }
 

    /* init */
    init();

    
    /* assemble .ys file */
    strncpy(infname, argv[nextarg], rootlen);
    strcpy(infname+rootlen, ".ys");
    in = fopen(infname, "r");
    if (!in) {
        err_print("Can't open input file '%s'", infname);
        exit(1);
    }
    
    if (assemble(in) < 0) {
        err_print("Assemble y64 code error");
        fclose(in);
        exit(1);
    }
    fclose(in);


    /* relocate binary code */
    if (relocate() < 0) {
        err_print("Relocate binary code error");
        exit(1);
    }


    /* generate .bin file */
    strncpy(outfname, argv[nextarg], rootlen);
    strcpy(outfname+rootlen, ".bin");
    out = fopen(outfname, "wb");
    if (!out) {
        err_print("Can't open output file '%s'", outfname);
        exit(1);
    }

    if (binfile(out) < 0) {
        err_print("Generate binary file error");
        fclose(out);
        exit(1);
    }
    fclose(out);
    
    /* print to screen (.yo file) */
    if (screen)
       print_screen(); 

    /* finit */
    finit();
    return 0;
}


