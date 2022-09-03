
rtarget：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 ed 5f 00 00 	mov    0x5fed(%rip),%rax        # 406ff8 <__gmon_start__>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	callq  *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	pushq  0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 5f 00 00    	jmpq   *0x5fe4(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <strcasecmp@plt>:
  401030:	ff 25 e2 5f 00 00    	jmpq   *0x5fe2(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <__errno_location@plt>:
  401040:	ff 25 da 5f 00 00    	jmpq   *0x5fda(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <srandom@plt>:
  401050:	ff 25 d2 5f 00 00    	jmpq   *0x5fd2(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 ca 5f 00 00    	jmpq   *0x5fca(%rip)        # 407030 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 c2 5f 00 00    	jmpq   *0x5fc2(%rip)        # 407038 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <puts@plt>:
  401080:	ff 25 ba 5f 00 00    	jmpq   *0x5fba(%rip)        # 407040 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <write@plt>:
  401090:	ff 25 b2 5f 00 00    	jmpq   *0x5fb2(%rip)        # 407048 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <mmap@plt>:
  4010a0:	ff 25 aa 5f 00 00    	jmpq   *0x5faa(%rip)        # 407050 <mmap@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <printf@plt>:
  4010b0:	ff 25 a2 5f 00 00    	jmpq   *0x5fa2(%rip)        # 407058 <printf@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <memset@plt>:
  4010c0:	ff 25 9a 5f 00 00    	jmpq   *0x5f9a(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <alarm@plt>:
  4010d0:	ff 25 92 5f 00 00    	jmpq   *0x5f92(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <close@plt>:
  4010e0:	ff 25 8a 5f 00 00    	jmpq   *0x5f8a(%rip)        # 407070 <close@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <read@plt>:
  4010f0:	ff 25 82 5f 00 00    	jmpq   *0x5f82(%rip)        # 407078 <read@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <signal@plt>:
  401100:	ff 25 7a 5f 00 00    	jmpq   *0x5f7a(%rip)        # 407080 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 72 5f 00 00    	jmpq   *0x5f72(%rip)        # 407088 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <fprintf@plt>:
  401120:	ff 25 6a 5f 00 00    	jmpq   *0x5f6a(%rip)        # 407090 <fprintf@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <strtol@plt>:
  401130:	ff 25 62 5f 00 00    	jmpq   *0x5f62(%rip)        # 407098 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 5a 5f 00 00    	jmpq   *0x5f5a(%rip)        # 4070a0 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <time@plt>:
  401150:	ff 25 52 5f 00 00    	jmpq   *0x5f52(%rip)        # 4070a8 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <random@plt>:
  401160:	ff 25 4a 5f 00 00    	jmpq   *0x5f4a(%rip)        # 4070b0 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 42 5f 00 00    	jmpq   *0x5f42(%rip)        # 4070b8 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <munmap@plt>:
  401180:	ff 25 3a 5f 00 00    	jmpq   *0x5f3a(%rip)        # 4070c0 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <memmove@plt>:
  401190:	ff 25 32 5f 00 00    	jmpq   *0x5f32(%rip)        # 4070c8 <memmove@GLIBC_2.2.5>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 2a 5f 00 00    	jmpq   *0x5f2a(%rip)        # 4070d0 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 22 5f 00 00    	jmpq   *0x5f22(%rip)        # 4070d8 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	pushq  $0x18
  4011bb:	e9 60 fe ff ff       	jmpq   401020 <.plt>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 1a 5f 00 00    	jmpq   *0x5f1a(%rip)        # 4070e0 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	pushq  $0x19
  4011cb:	e9 50 fe ff ff       	jmpq   401020 <.plt>

00000000004011d0 <gethostname@plt>:
  4011d0:	ff 25 12 5f 00 00    	jmpq   *0x5f12(%rip)        # 4070e8 <gethostname@GLIBC_2.2.5>
  4011d6:	68 1a 00 00 00       	pushq  $0x1a
  4011db:	e9 40 fe ff ff       	jmpq   401020 <.plt>

00000000004011e0 <sprintf@plt>:
  4011e0:	ff 25 0a 5f 00 00    	jmpq   *0x5f0a(%rip)        # 4070f0 <sprintf@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	pushq  $0x1b
  4011eb:	e9 30 fe ff ff       	jmpq   401020 <.plt>

00000000004011f0 <exit@plt>:
  4011f0:	ff 25 02 5f 00 00    	jmpq   *0x5f02(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	pushq  $0x1c
  4011fb:	e9 20 fe ff ff       	jmpq   401020 <.plt>

0000000000401200 <connect@plt>:
  401200:	ff 25 fa 5e 00 00    	jmpq   *0x5efa(%rip)        # 407100 <connect@GLIBC_2.2.5>
  401206:	68 1d 00 00 00       	pushq  $0x1d
  40120b:	e9 10 fe ff ff       	jmpq   401020 <.plt>

0000000000401210 <getc@plt>:
  401210:	ff 25 f2 5e 00 00    	jmpq   *0x5ef2(%rip)        # 407108 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	pushq  $0x1e
  40121b:	e9 00 fe ff ff       	jmpq   401020 <.plt>

0000000000401220 <socket@plt>:
  401220:	ff 25 ea 5e 00 00    	jmpq   *0x5eea(%rip)        # 407110 <socket@GLIBC_2.2.5>
  401226:	68 1f 00 00 00       	pushq  $0x1f
  40122b:	e9 f0 fd ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401230 <_start>:
  401230:	31 ed                	xor    %ebp,%ebp
  401232:	49 89 d1             	mov    %rdx,%r9
  401235:	5e                   	pop    %rsi
  401236:	48 89 e2             	mov    %rsp,%rdx
  401239:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40123d:	50                   	push   %rax
  40123e:	54                   	push   %rsp
  40123f:	49 c7 c0 d0 30 40 00 	mov    $0x4030d0,%r8
  401246:	48 c7 c1 70 30 40 00 	mov    $0x403070,%rcx
  40124d:	48 c7 c7 c9 14 40 00 	mov    $0x4014c9,%rdi
  401254:	ff 15 96 5d 00 00    	callq  *0x5d96(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40125a:	f4                   	hlt    
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <_dl_relocate_static_pie>:
  401260:	c3                   	retq   
  401261:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401268:	00 00 00 
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <deregister_tm_clones>:
  401270:	b8 90 74 40 00       	mov    $0x407490,%eax
  401275:	48 3d 90 74 40 00    	cmp    $0x407490,%rax
  40127b:	74 13                	je     401290 <deregister_tm_clones+0x20>
  40127d:	b8 00 00 00 00       	mov    $0x0,%eax
  401282:	48 85 c0             	test   %rax,%rax
  401285:	74 09                	je     401290 <deregister_tm_clones+0x20>
  401287:	bf 90 74 40 00       	mov    $0x407490,%edi
  40128c:	ff e0                	jmpq   *%rax
  40128e:	66 90                	xchg   %ax,%ax
  401290:	c3                   	retq   
  401291:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401298:	00 00 00 00 
  40129c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012a0 <register_tm_clones>:
  4012a0:	be 90 74 40 00       	mov    $0x407490,%esi
  4012a5:	48 81 ee 90 74 40 00 	sub    $0x407490,%rsi
  4012ac:	48 c1 fe 03          	sar    $0x3,%rsi
  4012b0:	48 89 f0             	mov    %rsi,%rax
  4012b3:	48 c1 e8 3f          	shr    $0x3f,%rax
  4012b7:	48 01 c6             	add    %rax,%rsi
  4012ba:	48 d1 fe             	sar    %rsi
  4012bd:	74 11                	je     4012d0 <register_tm_clones+0x30>
  4012bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c4:	48 85 c0             	test   %rax,%rax
  4012c7:	74 07                	je     4012d0 <register_tm_clones+0x30>
  4012c9:	bf 90 74 40 00       	mov    $0x407490,%edi
  4012ce:	ff e0                	jmpq   *%rax
  4012d0:	c3                   	retq   
  4012d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012e0 <__do_global_dtors_aux>:
  4012e0:	80 3d e1 61 00 00 00 	cmpb   $0x0,0x61e1(%rip)        # 4074c8 <completed.7325>
  4012e7:	75 17                	jne    401300 <__do_global_dtors_aux+0x20>
  4012e9:	55                   	push   %rbp
  4012ea:	48 89 e5             	mov    %rsp,%rbp
  4012ed:	e8 7e ff ff ff       	callq  401270 <deregister_tm_clones>
  4012f2:	c6 05 cf 61 00 00 01 	movb   $0x1,0x61cf(%rip)        # 4074c8 <completed.7325>
  4012f9:	5d                   	pop    %rbp
  4012fa:	c3                   	retq   
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401300:	c3                   	retq   
  401301:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401308:	00 00 00 00 
  40130c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401310 <frame_dummy>:
  401310:	eb 8e                	jmp    4012a0 <register_tm_clones>

0000000000401312 <usage>:
  401312:	48 83 ec 08          	sub    $0x8,%rsp
  401316:	48 89 fe             	mov    %rdi,%rsi
  401319:	83 3d e8 61 00 00 00 	cmpl   $0x0,0x61e8(%rip)        # 407508 <is_checker>
  401320:	74 4b                	je     40136d <usage+0x5b>
  401322:	48 8d 3d df 2c 00 00 	lea    0x2cdf(%rip),%rdi        # 404008 <_IO_stdin_used+0x8>
  401329:	b8 00 00 00 00       	mov    $0x0,%eax
  40132e:	e8 7d fd ff ff       	callq  4010b0 <printf@plt>
  401333:	48 8d 3d 06 2d 00 00 	lea    0x2d06(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  40133a:	e8 41 fd ff ff       	callq  401080 <puts@plt>
  40133f:	48 8d 3d 32 2e 00 00 	lea    0x2e32(%rip),%rdi        # 404178 <_IO_stdin_used+0x178>
  401346:	e8 35 fd ff ff       	callq  401080 <puts@plt>
  40134b:	48 8d 3d 16 2d 00 00 	lea    0x2d16(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  401352:	e8 29 fd ff ff       	callq  401080 <puts@plt>
  401357:	48 8d 3d 34 2e 00 00 	lea    0x2e34(%rip),%rdi        # 404192 <_IO_stdin_used+0x192>
  40135e:	e8 1d fd ff ff       	callq  401080 <puts@plt>
  401363:	bf 00 00 00 00       	mov    $0x0,%edi
  401368:	e8 83 fe ff ff       	callq  4011f0 <exit@plt>
  40136d:	48 8d 3d 3a 2e 00 00 	lea    0x2e3a(%rip),%rdi        # 4041ae <_IO_stdin_used+0x1ae>
  401374:	b8 00 00 00 00       	mov    $0x0,%eax
  401379:	e8 32 fd ff ff       	callq  4010b0 <printf@plt>
  40137e:	48 8d 3d 0b 2d 00 00 	lea    0x2d0b(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  401385:	e8 f6 fc ff ff       	callq  401080 <puts@plt>
  40138a:	48 8d 3d 27 2d 00 00 	lea    0x2d27(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  401391:	e8 ea fc ff ff       	callq  401080 <puts@plt>
  401396:	48 8d 3d 2f 2e 00 00 	lea    0x2e2f(%rip),%rdi        # 4041cc <_IO_stdin_used+0x1cc>
  40139d:	e8 de fc ff ff       	callq  401080 <puts@plt>
  4013a2:	eb bf                	jmp    401363 <usage+0x51>

00000000004013a4 <initialize_target>:
  4013a4:	55                   	push   %rbp
  4013a5:	53                   	push   %rbx
  4013a6:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  4013ad:	89 f5                	mov    %esi,%ebp
  4013af:	89 3d 43 61 00 00    	mov    %edi,0x6143(%rip)        # 4074f8 <check_level>
  4013b5:	8b 3d 75 5d 00 00    	mov    0x5d75(%rip),%edi        # 407130 <target_id>
  4013bb:	e8 84 1c 00 00       	callq  403044 <gencookie>
  4013c0:	89 05 3e 61 00 00    	mov    %eax,0x613e(%rip)        # 407504 <cookie>
  4013c6:	89 c7                	mov    %eax,%edi
  4013c8:	e8 77 1c 00 00       	callq  403044 <gencookie>
  4013cd:	89 05 2d 61 00 00    	mov    %eax,0x612d(%rip)        # 407500 <authkey>
  4013d3:	8b 05 57 5d 00 00    	mov    0x5d57(%rip),%eax        # 407130 <target_id>
  4013d9:	8d 78 01             	lea    0x1(%rax),%edi
  4013dc:	e8 6f fc ff ff       	callq  401050 <srandom@plt>
  4013e1:	e8 7a fd ff ff       	callq  401160 <random@plt>
  4013e6:	89 c7                	mov    %eax,%edi
  4013e8:	e8 b1 02 00 00       	callq  40169e <scramble>
  4013ed:	89 c3                	mov    %eax,%ebx
  4013ef:	85 ed                	test   %ebp,%ebp
  4013f1:	75 3d                	jne    401430 <initialize_target+0x8c>
  4013f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f8:	01 d8                	add    %ebx,%eax
  4013fa:	0f b7 c0             	movzwl %ax,%eax
  4013fd:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401404:	89 c0                	mov    %eax,%eax
  401406:	48 89 05 73 60 00 00 	mov    %rax,0x6073(%rip)        # 407480 <buf_offset>
  40140d:	c6 05 14 6d 00 00 72 	movb   $0x72,0x6d14(%rip)        # 408128 <target_prefix>
  401414:	83 3d 6d 60 00 00 00 	cmpl   $0x0,0x606d(%rip)        # 407488 <notify>
  40141b:	74 09                	je     401426 <initialize_target+0x82>
  40141d:	83 3d e4 60 00 00 00 	cmpl   $0x0,0x60e4(%rip)        # 407508 <is_checker>
  401424:	74 22                	je     401448 <initialize_target+0xa4>
  401426:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  40142d:	5b                   	pop    %rbx
  40142e:	5d                   	pop    %rbp
  40142f:	c3                   	retq   
  401430:	bf 00 00 00 00       	mov    $0x0,%edi
  401435:	e8 16 fd ff ff       	callq  401150 <time@plt>
  40143a:	89 c7                	mov    %eax,%edi
  40143c:	e8 0f fc ff ff       	callq  401050 <srandom@plt>
  401441:	e8 1a fd ff ff       	callq  401160 <random@plt>
  401446:	eb b0                	jmp    4013f8 <initialize_target+0x54>
  401448:	48 89 e7             	mov    %rsp,%rdi
  40144b:	be 00 01 00 00       	mov    $0x100,%esi
  401450:	e8 7b fd ff ff       	callq  4011d0 <gethostname@plt>
  401455:	89 c3                	mov    %eax,%ebx
  401457:	85 c0                	test   %eax,%eax
  401459:	75 24                	jne    40147f <initialize_target+0xdb>
  40145b:	48 63 c3             	movslq %ebx,%rax
  40145e:	48 8d 15 fb 5c 00 00 	lea    0x5cfb(%rip),%rdx        # 407160 <host_table>
  401465:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  401469:	48 85 ff             	test   %rdi,%rdi
  40146c:	74 27                	je     401495 <initialize_target+0xf1>
  40146e:	48 89 e6             	mov    %rsp,%rsi
  401471:	e8 ba fb ff ff       	callq  401030 <strcasecmp@plt>
  401476:	85 c0                	test   %eax,%eax
  401478:	74 1b                	je     401495 <initialize_target+0xf1>
  40147a:	83 c3 01             	add    $0x1,%ebx
  40147d:	eb dc                	jmp    40145b <initialize_target+0xb7>
  40147f:	48 8d 3d 62 2c 00 00 	lea    0x2c62(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  401486:	e8 f5 fb ff ff       	callq  401080 <puts@plt>
  40148b:	bf 08 00 00 00       	mov    $0x8,%edi
  401490:	e8 5b fd ff ff       	callq  4011f0 <exit@plt>
  401495:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40149c:	00 
  40149d:	e8 07 19 00 00       	callq  402da9 <init_driver>
  4014a2:	85 c0                	test   %eax,%eax
  4014a4:	79 80                	jns    401426 <initialize_target+0x82>
  4014a6:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4014ad:	00 
  4014ae:	48 8d 3d 6b 2c 00 00 	lea    0x2c6b(%rip),%rdi        # 404120 <_IO_stdin_used+0x120>
  4014b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4014ba:	e8 f1 fb ff ff       	callq  4010b0 <printf@plt>
  4014bf:	bf 08 00 00 00       	mov    $0x8,%edi
  4014c4:	e8 27 fd ff ff       	callq  4011f0 <exit@plt>

00000000004014c9 <main>:
  4014c9:	41 56                	push   %r14
  4014cb:	41 55                	push   %r13
  4014cd:	41 54                	push   %r12
  4014cf:	55                   	push   %rbp
  4014d0:	53                   	push   %rbx
  4014d1:	89 fd                	mov    %edi,%ebp
  4014d3:	48 89 f3             	mov    %rsi,%rbx
  4014d6:	48 c7 c6 7b 21 40 00 	mov    $0x40217b,%rsi
  4014dd:	bf 0b 00 00 00       	mov    $0xb,%edi
  4014e2:	e8 19 fc ff ff       	callq  401100 <signal@plt>
  4014e7:	48 c7 c6 27 21 40 00 	mov    $0x402127,%rsi
  4014ee:	bf 07 00 00 00       	mov    $0x7,%edi
  4014f3:	e8 08 fc ff ff       	callq  401100 <signal@plt>
  4014f8:	48 c7 c6 cf 21 40 00 	mov    $0x4021cf,%rsi
  4014ff:	bf 04 00 00 00       	mov    $0x4,%edi
  401504:	e8 f7 fb ff ff       	callq  401100 <signal@plt>
  401509:	83 3d f8 5f 00 00 00 	cmpl   $0x0,0x5ff8(%rip)        # 407508 <is_checker>
  401510:	75 26                	jne    401538 <main+0x6f>
  401512:	4c 8d 25 d4 2c 00 00 	lea    0x2cd4(%rip),%r12        # 4041ed <_IO_stdin_used+0x1ed>
  401519:	48 8b 05 80 5f 00 00 	mov    0x5f80(%rip),%rax        # 4074a0 <stdin@@GLIBC_2.2.5>
  401520:	48 89 05 c9 5f 00 00 	mov    %rax,0x5fc9(%rip)        # 4074f0 <infile>
  401527:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40152d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401533:	e9 88 00 00 00       	jmpq   4015c0 <main+0xf7>
  401538:	48 c7 c6 23 22 40 00 	mov    $0x402223,%rsi
  40153f:	bf 0e 00 00 00       	mov    $0xe,%edi
  401544:	e8 b7 fb ff ff       	callq  401100 <signal@plt>
  401549:	bf 05 00 00 00       	mov    $0x5,%edi
  40154e:	e8 7d fb ff ff       	callq  4010d0 <alarm@plt>
  401553:	4c 8d 25 8b 2c 00 00 	lea    0x2c8b(%rip),%r12        # 4041e5 <_IO_stdin_used+0x1e5>
  40155a:	eb bd                	jmp    401519 <main+0x50>
  40155c:	48 8b 3b             	mov    (%rbx),%rdi
  40155f:	e8 ae fd ff ff       	callq  401312 <usage>
  401564:	48 8d 35 0a 2f 00 00 	lea    0x2f0a(%rip),%rsi        # 404475 <_IO_stdin_used+0x475>
  40156b:	48 8b 3d 36 5f 00 00 	mov    0x5f36(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  401572:	e8 29 fc ff ff       	callq  4011a0 <fopen@plt>
  401577:	48 89 05 72 5f 00 00 	mov    %rax,0x5f72(%rip)        # 4074f0 <infile>
  40157e:	48 85 c0             	test   %rax,%rax
  401581:	75 3d                	jne    4015c0 <main+0xf7>
  401583:	48 8b 15 1e 5f 00 00 	mov    0x5f1e(%rip),%rdx        # 4074a8 <optarg@@GLIBC_2.2.5>
  40158a:	48 8d 35 61 2c 00 00 	lea    0x2c61(%rip),%rsi        # 4041f2 <_IO_stdin_used+0x1f2>
  401591:	48 8b 3d 28 5f 00 00 	mov    0x5f28(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  401598:	e8 83 fb ff ff       	callq  401120 <fprintf@plt>
  40159d:	b8 01 00 00 00       	mov    $0x1,%eax
  4015a2:	e9 ce 00 00 00       	jmpq   401675 <main+0x1ac>
  4015a7:	ba 10 00 00 00       	mov    $0x10,%edx
  4015ac:	be 00 00 00 00       	mov    $0x0,%esi
  4015b1:	48 8b 3d f0 5e 00 00 	mov    0x5ef0(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  4015b8:	e8 03 fc ff ff       	callq  4011c0 <strtoul@plt>
  4015bd:	41 89 c6             	mov    %eax,%r14d
  4015c0:	4c 89 e2             	mov    %r12,%rdx
  4015c3:	48 89 de             	mov    %rbx,%rsi
  4015c6:	89 ef                	mov    %ebp,%edi
  4015c8:	e8 e3 fb ff ff       	callq  4011b0 <getopt@plt>
  4015cd:	3c ff                	cmp    $0xff,%al
  4015cf:	74 5d                	je     40162e <main+0x165>
  4015d1:	0f be f0             	movsbl %al,%esi
  4015d4:	83 e8 61             	sub    $0x61,%eax
  4015d7:	3c 10                	cmp    $0x10,%al
  4015d9:	77 3a                	ja     401615 <main+0x14c>
  4015db:	0f b6 c0             	movzbl %al,%eax
  4015de:	48 8d 15 4b 2c 00 00 	lea    0x2c4b(%rip),%rdx        # 404230 <_IO_stdin_used+0x230>
  4015e5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4015e9:	48 01 d0             	add    %rdx,%rax
  4015ec:	ff e0                	jmpq   *%rax
  4015ee:	ba 0a 00 00 00       	mov    $0xa,%edx
  4015f3:	be 00 00 00 00       	mov    $0x0,%esi
  4015f8:	48 8b 3d a9 5e 00 00 	mov    0x5ea9(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  4015ff:	e8 2c fb ff ff       	callq  401130 <strtol@plt>
  401604:	41 89 c5             	mov    %eax,%r13d
  401607:	eb b7                	jmp    4015c0 <main+0xf7>
  401609:	c7 05 75 5e 00 00 00 	movl   $0x0,0x5e75(%rip)        # 407488 <notify>
  401610:	00 00 00 
  401613:	eb ab                	jmp    4015c0 <main+0xf7>
  401615:	48 8d 3d f3 2b 00 00 	lea    0x2bf3(%rip),%rdi        # 40420f <_IO_stdin_used+0x20f>
  40161c:	b8 00 00 00 00       	mov    $0x0,%eax
  401621:	e8 8a fa ff ff       	callq  4010b0 <printf@plt>
  401626:	48 8b 3b             	mov    (%rbx),%rdi
  401629:	e8 e4 fc ff ff       	callq  401312 <usage>
  40162e:	be 01 00 00 00       	mov    $0x1,%esi
  401633:	44 89 ef             	mov    %r13d,%edi
  401636:	e8 69 fd ff ff       	callq  4013a4 <initialize_target>
  40163b:	83 3d c6 5e 00 00 00 	cmpl   $0x0,0x5ec6(%rip)        # 407508 <is_checker>
  401642:	74 09                	je     40164d <main+0x184>
  401644:	44 39 35 b5 5e 00 00 	cmp    %r14d,0x5eb5(%rip)        # 407500 <authkey>
  40164b:	75 31                	jne    40167e <main+0x1b5>
  40164d:	8b 35 b1 5e 00 00    	mov    0x5eb1(%rip),%esi        # 407504 <cookie>
  401653:	48 8d 3d c8 2b 00 00 	lea    0x2bc8(%rip),%rdi        # 404222 <_IO_stdin_used+0x222>
  40165a:	b8 00 00 00 00       	mov    $0x0,%eax
  40165f:	e8 4c fa ff ff       	callq  4010b0 <printf@plt>
  401664:	48 8b 3d 15 5e 00 00 	mov    0x5e15(%rip),%rdi        # 407480 <buf_offset>
  40166b:	e8 05 0c 00 00       	callq  402275 <launch>
  401670:	b8 00 00 00 00       	mov    $0x0,%eax
  401675:	5b                   	pop    %rbx
  401676:	5d                   	pop    %rbp
  401677:	41 5c                	pop    %r12
  401679:	41 5d                	pop    %r13
  40167b:	41 5e                	pop    %r14
  40167d:	c3                   	retq   
  40167e:	44 89 f6             	mov    %r14d,%esi
  401681:	48 8d 3d c0 2a 00 00 	lea    0x2ac0(%rip),%rdi        # 404148 <_IO_stdin_used+0x148>
  401688:	b8 00 00 00 00       	mov    $0x0,%eax
  40168d:	e8 1e fa ff ff       	callq  4010b0 <printf@plt>
  401692:	b8 00 00 00 00       	mov    $0x0,%eax
  401697:	e8 5f 07 00 00       	callq  401dfb <check_fail>
  40169c:	eb af                	jmp    40164d <main+0x184>

000000000040169e <scramble>:
  40169e:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a3:	83 f8 09             	cmp    $0x9,%eax
  4016a6:	77 13                	ja     4016bb <scramble+0x1d>
  4016a8:	69 d0 f2 98 00 00    	imul   $0x98f2,%eax,%edx
  4016ae:	01 fa                	add    %edi,%edx
  4016b0:	89 c1                	mov    %eax,%ecx
  4016b2:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  4016b6:	83 c0 01             	add    $0x1,%eax
  4016b9:	eb e8                	jmp    4016a3 <scramble+0x5>
  4016bb:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016bf:	69 c0 f2 1d 00 00    	imul   $0x1df2,%eax,%eax
  4016c5:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4016c9:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016cd:	69 c0 6c 16 00 00    	imul   $0x166c,%eax,%eax
  4016d3:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4016d7:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4016db:	69 c0 a1 22 00 00    	imul   $0x22a1,%eax,%eax
  4016e1:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4016e5:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016e9:	69 c0 57 26 00 00    	imul   $0x2657,%eax,%eax
  4016ef:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4016f3:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4016f7:	69 c0 6f 34 00 00    	imul   $0x346f,%eax,%eax
  4016fd:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401701:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401705:	69 c0 14 78 00 00    	imul   $0x7814,%eax,%eax
  40170b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40170f:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401713:	69 c0 1f f3 00 00    	imul   $0xf31f,%eax,%eax
  401719:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40171d:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401721:	69 c0 84 2b 00 00    	imul   $0x2b84,%eax,%eax
  401727:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40172b:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40172f:	69 c0 e5 19 00 00    	imul   $0x19e5,%eax,%eax
  401735:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401739:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40173d:	69 c0 75 54 00 00    	imul   $0x5475,%eax,%eax
  401743:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401747:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40174b:	69 c0 66 b8 00 00    	imul   $0xb866,%eax,%eax
  401751:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401755:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401759:	69 c0 93 76 00 00    	imul   $0x7693,%eax,%eax
  40175f:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401763:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401767:	69 c0 59 92 00 00    	imul   $0x9259,%eax,%eax
  40176d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401771:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401775:	69 c0 23 8f 00 00    	imul   $0x8f23,%eax,%eax
  40177b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40177f:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401783:	69 c0 c5 26 00 00    	imul   $0x26c5,%eax,%eax
  401789:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40178d:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401791:	69 c0 f7 d4 00 00    	imul   $0xd4f7,%eax,%eax
  401797:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40179b:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40179f:	69 c0 76 49 00 00    	imul   $0x4976,%eax,%eax
  4017a5:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4017a9:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4017ad:	69 c0 5e da 00 00    	imul   $0xda5e,%eax,%eax
  4017b3:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4017b7:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4017bb:	69 c0 6d c2 00 00    	imul   $0xc26d,%eax,%eax
  4017c1:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4017c5:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4017c9:	69 c0 69 83 00 00    	imul   $0x8369,%eax,%eax
  4017cf:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4017d3:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4017d7:	69 c0 13 ca 00 00    	imul   $0xca13,%eax,%eax
  4017dd:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4017e1:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4017e5:	69 c0 38 ce 00 00    	imul   $0xce38,%eax,%eax
  4017eb:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4017ef:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4017f3:	69 c0 31 78 00 00    	imul   $0x7831,%eax,%eax
  4017f9:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4017fd:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401801:	69 c0 f9 1c 00 00    	imul   $0x1cf9,%eax,%eax
  401807:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40180b:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40180f:	69 c0 76 21 00 00    	imul   $0x2176,%eax,%eax
  401815:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401819:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40181d:	69 c0 9b 72 00 00    	imul   $0x729b,%eax,%eax
  401823:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401827:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40182b:	69 c0 bb 21 00 00    	imul   $0x21bb,%eax,%eax
  401831:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401835:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401839:	69 c0 f4 6f 00 00    	imul   $0x6ff4,%eax,%eax
  40183f:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401843:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401847:	69 c0 da 46 00 00    	imul   $0x46da,%eax,%eax
  40184d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401851:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401855:	69 c0 19 f0 00 00    	imul   $0xf019,%eax,%eax
  40185b:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40185f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401863:	69 c0 fc c1 00 00    	imul   $0xc1fc,%eax,%eax
  401869:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40186d:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401871:	69 c0 57 b2 00 00    	imul   $0xb257,%eax,%eax
  401877:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40187b:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40187f:	69 c0 74 b0 00 00    	imul   $0xb074,%eax,%eax
  401885:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401889:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40188d:	69 c0 89 77 00 00    	imul   $0x7789,%eax,%eax
  401893:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401897:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40189b:	69 c0 6b 8d 00 00    	imul   $0x8d6b,%eax,%eax
  4018a1:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4018a5:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4018a9:	69 c0 be 69 00 00    	imul   $0x69be,%eax,%eax
  4018af:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4018b3:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4018b7:	69 c0 70 f6 00 00    	imul   $0xf670,%eax,%eax
  4018bd:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4018c1:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4018c5:	69 c0 b1 14 00 00    	imul   $0x14b1,%eax,%eax
  4018cb:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4018cf:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4018d3:	69 c0 b3 31 00 00    	imul   $0x31b3,%eax,%eax
  4018d9:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4018dd:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4018e1:	69 c0 b7 00 00 00    	imul   $0xb7,%eax,%eax
  4018e7:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4018eb:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4018ef:	69 c0 19 a3 00 00    	imul   $0xa319,%eax,%eax
  4018f5:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4018f9:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4018fd:	69 c0 06 2d 00 00    	imul   $0x2d06,%eax,%eax
  401903:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401907:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40190b:	69 c0 81 5c 00 00    	imul   $0x5c81,%eax,%eax
  401911:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401915:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401919:	69 c0 e8 78 00 00    	imul   $0x78e8,%eax,%eax
  40191f:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401923:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401927:	69 c0 11 9c 00 00    	imul   $0x9c11,%eax,%eax
  40192d:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401931:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401935:	69 c0 fa 10 00 00    	imul   $0x10fa,%eax,%eax
  40193b:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40193f:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401943:	69 c0 12 2e 00 00    	imul   $0x2e12,%eax,%eax
  401949:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40194d:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401951:	69 c0 7f 69 00 00    	imul   $0x697f,%eax,%eax
  401957:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40195b:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40195f:	69 c0 07 50 00 00    	imul   $0x5007,%eax,%eax
  401965:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401969:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40196d:	69 c0 67 51 00 00    	imul   $0x5167,%eax,%eax
  401973:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401977:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40197b:	69 c0 fb db 00 00    	imul   $0xdbfb,%eax,%eax
  401981:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401985:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401989:	69 c0 f1 34 00 00    	imul   $0x34f1,%eax,%eax
  40198f:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401993:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401997:	69 c0 1c f3 00 00    	imul   $0xf31c,%eax,%eax
  40199d:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4019a1:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4019a5:	69 c0 0c 41 00 00    	imul   $0x410c,%eax,%eax
  4019ab:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4019af:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4019b3:	69 c0 4c 7b 00 00    	imul   $0x7b4c,%eax,%eax
  4019b9:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4019bd:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4019c1:	69 c0 f9 77 00 00    	imul   $0x77f9,%eax,%eax
  4019c7:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4019cb:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4019cf:	69 c0 16 b5 00 00    	imul   $0xb516,%eax,%eax
  4019d5:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4019d9:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4019dd:	69 c0 3a e3 00 00    	imul   $0xe33a,%eax,%eax
  4019e3:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4019e7:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4019eb:	69 c0 fa 41 00 00    	imul   $0x41fa,%eax,%eax
  4019f1:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4019f5:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4019f9:	69 c0 f2 b4 00 00    	imul   $0xb4f2,%eax,%eax
  4019ff:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401a03:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401a07:	69 c0 24 c5 00 00    	imul   $0xc524,%eax,%eax
  401a0d:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401a11:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401a15:	69 c0 19 3c 00 00    	imul   $0x3c19,%eax,%eax
  401a1b:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401a1f:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401a23:	69 c0 3e 89 00 00    	imul   $0x893e,%eax,%eax
  401a29:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401a2d:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401a31:	69 c0 bc d1 00 00    	imul   $0xd1bc,%eax,%eax
  401a37:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401a3b:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401a3f:	69 c0 a1 86 00 00    	imul   $0x86a1,%eax,%eax
  401a45:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401a49:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401a4d:	69 c0 b7 b6 00 00    	imul   $0xb6b7,%eax,%eax
  401a53:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401a57:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401a5b:	69 c0 4a de 00 00    	imul   $0xde4a,%eax,%eax
  401a61:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401a65:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401a69:	69 c0 08 35 00 00    	imul   $0x3508,%eax,%eax
  401a6f:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401a73:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401a77:	69 c0 4a 35 00 00    	imul   $0x354a,%eax,%eax
  401a7d:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401a81:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401a85:	69 c0 36 f6 00 00    	imul   $0xf636,%eax,%eax
  401a8b:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401a8f:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401a93:	69 c0 d8 b7 00 00    	imul   $0xb7d8,%eax,%eax
  401a99:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401a9d:	ba 00 00 00 00       	mov    $0x0,%edx
  401aa2:	b8 00 00 00 00       	mov    $0x0,%eax
  401aa7:	83 fa 09             	cmp    $0x9,%edx
  401aaa:	77 0d                	ja     401ab9 <scramble+0x41b>
  401aac:	89 d1                	mov    %edx,%ecx
  401aae:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  401ab2:	01 c8                	add    %ecx,%eax
  401ab4:	83 c2 01             	add    $0x1,%edx
  401ab7:	eb ee                	jmp    401aa7 <scramble+0x409>
  401ab9:	c3                   	retq   

0000000000401aba <getbuf>:
  401aba:	48 83 ec 18          	sub    $0x18,%rsp
  401abe:	48 89 e7             	mov    %rsp,%rdi
  401ac1:	e8 68 03 00 00       	callq  401e2e <Gets>
  401ac6:	b8 01 00 00 00       	mov    $0x1,%eax
  401acb:	48 83 c4 18          	add    $0x18,%rsp
  401acf:	c3                   	retq   

0000000000401ad0 <touch1>:
  401ad0:	48 83 ec 08          	sub    $0x8,%rsp
  401ad4:	c7 05 1e 5a 00 00 01 	movl   $0x1,0x5a1e(%rip)        # 4074fc <vlevel>
  401adb:	00 00 00 
  401ade:	48 8d 3d e6 27 00 00 	lea    0x27e6(%rip),%rdi        # 4042cb <_IO_stdin_used+0x2cb>
  401ae5:	e8 96 f5 ff ff       	callq  401080 <puts@plt>
  401aea:	bf 01 00 00 00       	mov    $0x1,%edi
  401aef:	e8 4d 05 00 00       	callq  402041 <validate>
  401af4:	bf 00 00 00 00       	mov    $0x0,%edi
  401af9:	e8 f2 f6 ff ff       	callq  4011f0 <exit@plt>

0000000000401afe <touch2>:
  401afe:	48 83 ec 08          	sub    $0x8,%rsp
  401b02:	89 fe                	mov    %edi,%esi
  401b04:	c7 05 ee 59 00 00 02 	movl   $0x2,0x59ee(%rip)        # 4074fc <vlevel>
  401b0b:	00 00 00 
  401b0e:	39 3d f0 59 00 00    	cmp    %edi,0x59f0(%rip)        # 407504 <cookie>
  401b14:	74 25                	je     401b3b <touch2+0x3d>
  401b16:	48 8d 3d fb 27 00 00 	lea    0x27fb(%rip),%rdi        # 404318 <_IO_stdin_used+0x318>
  401b1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b22:	e8 89 f5 ff ff       	callq  4010b0 <printf@plt>
  401b27:	bf 02 00 00 00       	mov    $0x2,%edi
  401b2c:	e8 ce 05 00 00       	callq  4020ff <fail>
  401b31:	bf 00 00 00 00       	mov    $0x0,%edi
  401b36:	e8 b5 f6 ff ff       	callq  4011f0 <exit@plt>
  401b3b:	48 8d 3d ae 27 00 00 	lea    0x27ae(%rip),%rdi        # 4042f0 <_IO_stdin_used+0x2f0>
  401b42:	b8 00 00 00 00       	mov    $0x0,%eax
  401b47:	e8 64 f5 ff ff       	callq  4010b0 <printf@plt>
  401b4c:	bf 02 00 00 00       	mov    $0x2,%edi
  401b51:	e8 eb 04 00 00       	callq  402041 <validate>
  401b56:	eb d9                	jmp    401b31 <touch2+0x33>

0000000000401b58 <hexmatch>:
  401b58:	41 54                	push   %r12
  401b5a:	55                   	push   %rbp
  401b5b:	53                   	push   %rbx
  401b5c:	48 83 ec 70          	sub    $0x70,%rsp
  401b60:	89 fd                	mov    %edi,%ebp
  401b62:	48 89 f3             	mov    %rsi,%rbx
  401b65:	e8 f6 f5 ff ff       	callq  401160 <random@plt>
  401b6a:	48 89 c1             	mov    %rax,%rcx
  401b6d:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401b74:	0a d7 a3 
  401b77:	48 f7 ea             	imul   %rdx
  401b7a:	48 01 ca             	add    %rcx,%rdx
  401b7d:	48 c1 fa 06          	sar    $0x6,%rdx
  401b81:	48 89 c8             	mov    %rcx,%rax
  401b84:	48 c1 f8 3f          	sar    $0x3f,%rax
  401b88:	48 29 c2             	sub    %rax,%rdx
  401b8b:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401b8f:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401b93:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401b9a:	00 
  401b9b:	48 29 c1             	sub    %rax,%rcx
  401b9e:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401ba2:	89 ea                	mov    %ebp,%edx
  401ba4:	48 8d 35 3d 27 00 00 	lea    0x273d(%rip),%rsi        # 4042e8 <_IO_stdin_used+0x2e8>
  401bab:	4c 89 e7             	mov    %r12,%rdi
  401bae:	b8 00 00 00 00       	mov    $0x0,%eax
  401bb3:	e8 28 f6 ff ff       	callq  4011e0 <sprintf@plt>
  401bb8:	ba 09 00 00 00       	mov    $0x9,%edx
  401bbd:	4c 89 e6             	mov    %r12,%rsi
  401bc0:	48 89 df             	mov    %rbx,%rdi
  401bc3:	e8 98 f4 ff ff       	callq  401060 <strncmp@plt>
  401bc8:	85 c0                	test   %eax,%eax
  401bca:	0f 94 c0             	sete   %al
  401bcd:	0f b6 c0             	movzbl %al,%eax
  401bd0:	48 83 c4 70          	add    $0x70,%rsp
  401bd4:	5b                   	pop    %rbx
  401bd5:	5d                   	pop    %rbp
  401bd6:	41 5c                	pop    %r12
  401bd8:	c3                   	retq   

0000000000401bd9 <touch3>:
  401bd9:	53                   	push   %rbx
  401bda:	48 89 fb             	mov    %rdi,%rbx
  401bdd:	c7 05 15 59 00 00 03 	movl   $0x3,0x5915(%rip)        # 4074fc <vlevel>
  401be4:	00 00 00 
  401be7:	48 89 fe             	mov    %rdi,%rsi
  401bea:	8b 3d 14 59 00 00    	mov    0x5914(%rip),%edi        # 407504 <cookie>
  401bf0:	e8 63 ff ff ff       	callq  401b58 <hexmatch>
  401bf5:	85 c0                	test   %eax,%eax
  401bf7:	74 28                	je     401c21 <touch3+0x48>
  401bf9:	48 89 de             	mov    %rbx,%rsi
  401bfc:	48 8d 3d 3d 27 00 00 	lea    0x273d(%rip),%rdi        # 404340 <_IO_stdin_used+0x340>
  401c03:	b8 00 00 00 00       	mov    $0x0,%eax
  401c08:	e8 a3 f4 ff ff       	callq  4010b0 <printf@plt>
  401c0d:	bf 03 00 00 00       	mov    $0x3,%edi
  401c12:	e8 2a 04 00 00       	callq  402041 <validate>
  401c17:	bf 00 00 00 00       	mov    $0x0,%edi
  401c1c:	e8 cf f5 ff ff       	callq  4011f0 <exit@plt>
  401c21:	48 89 de             	mov    %rbx,%rsi
  401c24:	48 8d 3d 3d 27 00 00 	lea    0x273d(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  401c2b:	b8 00 00 00 00       	mov    $0x0,%eax
  401c30:	e8 7b f4 ff ff       	callq  4010b0 <printf@plt>
  401c35:	bf 03 00 00 00       	mov    $0x3,%edi
  401c3a:	e8 c0 04 00 00       	callq  4020ff <fail>
  401c3f:	eb d6                	jmp    401c17 <touch3+0x3e>

0000000000401c41 <test>:
  401c41:	48 83 ec 08          	sub    $0x8,%rsp
  401c45:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4a:	e8 6b fe ff ff       	callq  401aba <getbuf>
  401c4f:	89 c6                	mov    %eax,%esi
  401c51:	48 8d 3d 38 27 00 00 	lea    0x2738(%rip),%rdi        # 404390 <_IO_stdin_used+0x390>
  401c58:	b8 00 00 00 00       	mov    $0x0,%eax
  401c5d:	e8 4e f4 ff ff       	callq  4010b0 <printf@plt>
  401c62:	48 83 c4 08          	add    $0x8,%rsp
  401c66:	c3                   	retq   

0000000000401c67 <start_farm>:
  401c67:	b8 01 00 00 00       	mov    $0x1,%eax
  401c6c:	c3                   	retq   

0000000000401c6d <addval_210>:
  401c6d:	8d 87 73 d8 90 90    	lea    -0x6f6f278d(%rdi),%eax
  401c73:	c3                   	retq   

0000000000401c74 <getval_441>:
  401c74:	b8 48 89 c7 c7       	mov    $0xc7c78948,%eax
  401c79:	c3                   	retq   

0000000000401c7a <setval_269>:
  401c7a:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
  401c80:	c3                   	retq   

0000000000401c81 <addval_184>:
  401c81:	8d 87 48 89 c7 92    	lea    -0x6d3876b8(%rdi),%eax
  401c87:	c3                   	retq   

0000000000401c88 <setval_400>:
  401c88:	c7 07 f7 4a 58 c3    	movl   $0xc3584af7,(%rdi)
  401c8e:	c3                   	retq   

0000000000401c8f <setval_435>:
  401c8f:	c7 07 62 58 90 90    	movl   $0x90905862,(%rdi)
  401c95:	c3                   	retq   

0000000000401c96 <setval_122>:
  401c96:	c7 07 21 99 58 94    	movl   $0x94589921,(%rdi)
  401c9c:	c3                   	retq   

0000000000401c9d <setval_442>:
  401c9d:	c7 07 51 48 89 c7    	movl   $0xc7894851,(%rdi)
  401ca3:	c3                   	retq   

0000000000401ca4 <mid_farm>:
  401ca4:	b8 01 00 00 00       	mov    $0x1,%eax
  401ca9:	c3                   	retq   

0000000000401caa <add_xy>:
  401caa:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401cae:	c3                   	retq   

0000000000401caf <getval_332>:
  401caf:	b8 89 d6 90 c3       	mov    $0xc390d689,%eax
  401cb4:	c3                   	retq   

0000000000401cb5 <addval_437>:
  401cb5:	8d 87 09 d6 38 c9    	lea    -0x36c729f7(%rdi),%eax
  401cbb:	c3                   	retq   

0000000000401cbc <getval_195>:
  401cbc:	b8 c9 ca 84 c0       	mov    $0xc084cac9,%eax
  401cc1:	c3                   	retq   

0000000000401cc2 <addval_232>:
  401cc2:	8d 87 48 89 e0 90    	lea    -0x6f1f76b8(%rdi),%eax
  401cc8:	c3                   	retq   

0000000000401cc9 <addval_128>:
  401cc9:	8d 87 89 c1 18 c9    	lea    -0x36e73e77(%rdi),%eax
  401ccf:	c3                   	retq   

0000000000401cd0 <addval_343>:
  401cd0:	8d 87 49 89 e0 90    	lea    -0x6f1f76b7(%rdi),%eax
  401cd6:	c3                   	retq   

0000000000401cd7 <addval_199>:
  401cd7:	8d 87 c9 c1 84 c9    	lea    -0x367b3e37(%rdi),%eax
  401cdd:	c3                   	retq   

0000000000401cde <addval_488>:
  401cde:	8d 87 89 ca a4 d2    	lea    -0x2d5b3577(%rdi),%eax
  401ce4:	c3                   	retq   

0000000000401ce5 <addval_261>:
  401ce5:	8d 87 89 c1 a4 db    	lea    -0x245b3e77(%rdi),%eax
  401ceb:	c3                   	retq   

0000000000401cec <setval_234>:
  401cec:	c7 07 88 c1 c3 50    	movl   $0x50c3c188,(%rdi)
  401cf2:	c3                   	retq   

0000000000401cf3 <addval_351>:
  401cf3:	8d 87 99 ca 84 c9    	lea    -0x367b3567(%rdi),%eax
  401cf9:	c3                   	retq   

0000000000401cfa <getval_321>:
  401cfa:	b8 89 c1 48 d2       	mov    $0xd248c189,%eax
  401cff:	c3                   	retq   

0000000000401d00 <getval_391>:
  401d00:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  401d05:	c3                   	retq   

0000000000401d06 <getval_276>:
  401d06:	b8 89 d6 c4 d2       	mov    $0xd2c4d689,%eax
  401d0b:	c3                   	retq   

0000000000401d0c <getval_283>:
  401d0c:	b8 89 ca 84 c9       	mov    $0xc984ca89,%eax
  401d11:	c3                   	retq   

0000000000401d12 <setval_461>:
  401d12:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  401d18:	c3                   	retq   

0000000000401d19 <setval_155>:
  401d19:	c7 07 d3 89 ca c3    	movl   $0xc3ca89d3,(%rdi)
  401d1f:	c3                   	retq   

0000000000401d20 <addval_149>:
  401d20:	8d 87 2d 89 ca 94    	lea    -0x6b3576d3(%rdi),%eax
  401d26:	c3                   	retq   

0000000000401d27 <getval_364>:
  401d27:	b8 89 d6 60 c0       	mov    $0xc060d689,%eax
  401d2c:	c3                   	retq   

0000000000401d2d <getval_316>:
  401d2d:	b8 89 c1 08 db       	mov    $0xdb08c189,%eax
  401d32:	c3                   	retq   

0000000000401d33 <addval_156>:
  401d33:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  401d39:	c3                   	retq   

0000000000401d3a <setval_482>:
  401d3a:	c7 07 17 89 c1 c2    	movl   $0xc2c18917,(%rdi)
  401d40:	c3                   	retq   

0000000000401d41 <addval_139>:
  401d41:	8d 87 a9 d6 08 db    	lea    -0x24f72957(%rdi),%eax
  401d47:	c3                   	retq   

0000000000401d48 <setval_342>:
  401d48:	c7 07 48 89 e0 94    	movl   $0x94e08948,(%rdi)
  401d4e:	c3                   	retq   

0000000000401d4f <setval_349>:
  401d4f:	c7 07 89 d6 38 c0    	movl   $0xc038d689,(%rdi)
  401d55:	c3                   	retq   

0000000000401d56 <addval_223>:
  401d56:	8d 87 96 89 ca c1    	lea    -0x3e35766a(%rdi),%eax
  401d5c:	c3                   	retq   

0000000000401d5d <setval_144>:
  401d5d:	c7 07 48 a9 e0 c3    	movl   $0xc3e0a948,(%rdi)
  401d63:	c3                   	retq   

0000000000401d64 <addval_222>:
  401d64:	8d 87 89 c1 20 db    	lea    -0x24df3e77(%rdi),%eax
  401d6a:	c3                   	retq   

0000000000401d6b <getval_466>:
  401d6b:	b8 89 ca 48 c9       	mov    $0xc948ca89,%eax
  401d70:	c3                   	retq   

0000000000401d71 <setval_496>:
  401d71:	c7 07 48 8d e0 c3    	movl   $0xc3e08d48,(%rdi)
  401d77:	c3                   	retq   

0000000000401d78 <setval_107>:
  401d78:	c7 07 99 d6 84 d2    	movl   $0xd284d699,(%rdi)
  401d7e:	c3                   	retq   

0000000000401d7f <setval_251>:
  401d7f:	c7 07 a9 d6 20 db    	movl   $0xdb20d6a9,(%rdi)
  401d85:	c3                   	retq   

0000000000401d86 <end_farm>:
  401d86:	b8 01 00 00 00       	mov    $0x1,%eax
  401d8b:	c3                   	retq   

0000000000401d8c <save_char>:
  401d8c:	8b 05 92 63 00 00    	mov    0x6392(%rip),%eax        # 408124 <gets_cnt>
  401d92:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401d97:	7f 4a                	jg     401de3 <save_char+0x57>
  401d99:	89 f9                	mov    %edi,%ecx
  401d9b:	c0 e9 04             	shr    $0x4,%cl
  401d9e:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401da1:	4c 8d 05 08 29 00 00 	lea    0x2908(%rip),%r8        # 4046b0 <trans_char>
  401da8:	83 e1 0f             	and    $0xf,%ecx
  401dab:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401db0:	48 8d 0d 69 57 00 00 	lea    0x5769(%rip),%rcx        # 407520 <gets_buf>
  401db7:	48 63 f2             	movslq %edx,%rsi
  401dba:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401dbe:	8d 72 01             	lea    0x1(%rdx),%esi
  401dc1:	83 e7 0f             	and    $0xf,%edi
  401dc4:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401dc9:	48 63 f6             	movslq %esi,%rsi
  401dcc:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401dd0:	83 c2 02             	add    $0x2,%edx
  401dd3:	48 63 d2             	movslq %edx,%rdx
  401dd6:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401dda:	83 c0 01             	add    $0x1,%eax
  401ddd:	89 05 41 63 00 00    	mov    %eax,0x6341(%rip)        # 408124 <gets_cnt>
  401de3:	c3                   	retq   

0000000000401de4 <save_term>:
  401de4:	8b 05 3a 63 00 00    	mov    0x633a(%rip),%eax        # 408124 <gets_cnt>
  401dea:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401ded:	48 98                	cltq   
  401def:	48 8d 15 2a 57 00 00 	lea    0x572a(%rip),%rdx        # 407520 <gets_buf>
  401df6:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401dfa:	c3                   	retq   

0000000000401dfb <check_fail>:
  401dfb:	48 83 ec 08          	sub    $0x8,%rsp
  401dff:	0f be 35 22 63 00 00 	movsbl 0x6322(%rip),%esi        # 408128 <target_prefix>
  401e06:	48 8d 0d 13 57 00 00 	lea    0x5713(%rip),%rcx        # 407520 <gets_buf>
  401e0d:	8b 15 e5 56 00 00    	mov    0x56e5(%rip),%edx        # 4074f8 <check_level>
  401e13:	48 8d 3d 99 25 00 00 	lea    0x2599(%rip),%rdi        # 4043b3 <_IO_stdin_used+0x3b3>
  401e1a:	b8 00 00 00 00       	mov    $0x0,%eax
  401e1f:	e8 8c f2 ff ff       	callq  4010b0 <printf@plt>
  401e24:	bf 01 00 00 00       	mov    $0x1,%edi
  401e29:	e8 c2 f3 ff ff       	callq  4011f0 <exit@plt>

0000000000401e2e <Gets>:
  401e2e:	41 54                	push   %r12
  401e30:	55                   	push   %rbp
  401e31:	53                   	push   %rbx
  401e32:	49 89 fc             	mov    %rdi,%r12
  401e35:	c7 05 e5 62 00 00 00 	movl   $0x0,0x62e5(%rip)        # 408124 <gets_cnt>
  401e3c:	00 00 00 
  401e3f:	48 89 fb             	mov    %rdi,%rbx
  401e42:	48 8b 3d a7 56 00 00 	mov    0x56a7(%rip),%rdi        # 4074f0 <infile>
  401e49:	e8 c2 f3 ff ff       	callq  401210 <getc@plt>
  401e4e:	83 f8 ff             	cmp    $0xffffffff,%eax
  401e51:	74 18                	je     401e6b <Gets+0x3d>
  401e53:	83 f8 0a             	cmp    $0xa,%eax
  401e56:	74 13                	je     401e6b <Gets+0x3d>
  401e58:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401e5c:	88 03                	mov    %al,(%rbx)
  401e5e:	0f b6 f8             	movzbl %al,%edi
  401e61:	e8 26 ff ff ff       	callq  401d8c <save_char>
  401e66:	48 89 eb             	mov    %rbp,%rbx
  401e69:	eb d7                	jmp    401e42 <Gets+0x14>
  401e6b:	c6 03 00             	movb   $0x0,(%rbx)
  401e6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401e73:	e8 6c ff ff ff       	callq  401de4 <save_term>
  401e78:	4c 89 e0             	mov    %r12,%rax
  401e7b:	5b                   	pop    %rbx
  401e7c:	5d                   	pop    %rbp
  401e7d:	41 5c                	pop    %r12
  401e7f:	c3                   	retq   

0000000000401e80 <notify_server>:
  401e80:	83 3d 81 56 00 00 00 	cmpl   $0x0,0x5681(%rip)        # 407508 <is_checker>
  401e87:	0f 85 b3 01 00 00    	jne    402040 <notify_server+0x1c0>
  401e8d:	55                   	push   %rbp
  401e8e:	53                   	push   %rbx
  401e8f:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401e96:	89 fb                	mov    %edi,%ebx
  401e98:	81 3d 82 62 00 00 9c 	cmpl   $0x1f9c,0x6282(%rip)        # 408124 <gets_cnt>
  401e9f:	1f 00 00 
  401ea2:	0f 8f b8 00 00 00    	jg     401f60 <notify_server+0xe0>
  401ea8:	44 0f be 0d 78 62 00 	movsbl 0x6278(%rip),%r9d        # 408128 <target_prefix>
  401eaf:	00 
  401eb0:	83 3d d1 55 00 00 00 	cmpl   $0x0,0x55d1(%rip)        # 407488 <notify>
  401eb7:	0f 84 be 00 00 00    	je     401f7b <notify_server+0xfb>
  401ebd:	44 8b 05 3c 56 00 00 	mov    0x563c(%rip),%r8d        # 407500 <authkey>
  401ec4:	85 db                	test   %ebx,%ebx
  401ec6:	0f 84 ba 00 00 00    	je     401f86 <notify_server+0x106>
  401ecc:	48 8d 2d fb 24 00 00 	lea    0x24fb(%rip),%rbp        # 4043ce <_IO_stdin_used+0x3ce>
  401ed3:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401eda:	00 
  401edb:	48 8d 05 3e 56 00 00 	lea    0x563e(%rip),%rax        # 407520 <gets_buf>
  401ee2:	50                   	push   %rax
  401ee3:	56                   	push   %rsi
  401ee4:	48 89 e9             	mov    %rbp,%rcx
  401ee7:	8b 15 43 52 00 00    	mov    0x5243(%rip),%edx        # 407130 <target_id>
  401eed:	48 8d 35 df 24 00 00 	lea    0x24df(%rip),%rsi        # 4043d3 <_IO_stdin_used+0x3d3>
  401ef4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef9:	e8 e2 f2 ff ff       	callq  4011e0 <sprintf@plt>
  401efe:	48 83 c4 10          	add    $0x10,%rsp
  401f02:	83 3d 7f 55 00 00 00 	cmpl   $0x0,0x557f(%rip)        # 407488 <notify>
  401f09:	0f 84 b7 00 00 00    	je     401fc6 <notify_server+0x146>
  401f0f:	85 db                	test   %ebx,%ebx
  401f11:	0f 84 99 00 00 00    	je     401fb0 <notify_server+0x130>
  401f17:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401f1e:	00 
  401f1f:	49 89 e1             	mov    %rsp,%r9
  401f22:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f28:	48 8b 15 19 52 00 00 	mov    0x5219(%rip),%rdx        # 407148 <lab>
  401f2f:	48 8b 35 1a 52 00 00 	mov    0x521a(%rip),%rsi        # 407150 <course>
  401f36:	48 8b 3d 03 52 00 00 	mov    0x5203(%rip),%rdi        # 407140 <user_id>
  401f3d:	e8 64 10 00 00       	callq  402fa6 <driver_post>
  401f42:	85 c0                	test   %eax,%eax
  401f44:	78 4c                	js     401f92 <notify_server+0x112>
  401f46:	48 8d 3d cb 25 00 00 	lea    0x25cb(%rip),%rdi        # 404518 <_IO_stdin_used+0x518>
  401f4d:	e8 2e f1 ff ff       	callq  401080 <puts@plt>
  401f52:	48 8d 3d a2 24 00 00 	lea    0x24a2(%rip),%rdi        # 4043fb <_IO_stdin_used+0x3fb>
  401f59:	e8 22 f1 ff ff       	callq  401080 <puts@plt>
  401f5e:	eb 5c                	jmp    401fbc <notify_server+0x13c>
  401f60:	48 8d 3d 81 25 00 00 	lea    0x2581(%rip),%rdi        # 4044e8 <_IO_stdin_used+0x4e8>
  401f67:	b8 00 00 00 00       	mov    $0x0,%eax
  401f6c:	e8 3f f1 ff ff       	callq  4010b0 <printf@plt>
  401f71:	bf 01 00 00 00       	mov    $0x1,%edi
  401f76:	e8 75 f2 ff ff       	callq  4011f0 <exit@plt>
  401f7b:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401f81:	e9 3e ff ff ff       	jmpq   401ec4 <notify_server+0x44>
  401f86:	48 8d 2d 3c 24 00 00 	lea    0x243c(%rip),%rbp        # 4043c9 <_IO_stdin_used+0x3c9>
  401f8d:	e9 41 ff ff ff       	jmpq   401ed3 <notify_server+0x53>
  401f92:	48 89 e6             	mov    %rsp,%rsi
  401f95:	48 8d 3d 53 24 00 00 	lea    0x2453(%rip),%rdi        # 4043ef <_IO_stdin_used+0x3ef>
  401f9c:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa1:	e8 0a f1 ff ff       	callq  4010b0 <printf@plt>
  401fa6:	bf 01 00 00 00       	mov    $0x1,%edi
  401fab:	e8 40 f2 ff ff       	callq  4011f0 <exit@plt>
  401fb0:	48 8d 3d 4e 24 00 00 	lea    0x244e(%rip),%rdi        # 404405 <_IO_stdin_used+0x405>
  401fb7:	e8 c4 f0 ff ff       	callq  401080 <puts@plt>
  401fbc:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401fc3:	5b                   	pop    %rbx
  401fc4:	5d                   	pop    %rbp
  401fc5:	c3                   	retq   
  401fc6:	48 89 ee             	mov    %rbp,%rsi
  401fc9:	48 8d 3d 80 25 00 00 	lea    0x2580(%rip),%rdi        # 404550 <_IO_stdin_used+0x550>
  401fd0:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd5:	e8 d6 f0 ff ff       	callq  4010b0 <printf@plt>
  401fda:	48 8b 35 5f 51 00 00 	mov    0x515f(%rip),%rsi        # 407140 <user_id>
  401fe1:	48 8d 3d 24 24 00 00 	lea    0x2424(%rip),%rdi        # 40440c <_IO_stdin_used+0x40c>
  401fe8:	b8 00 00 00 00       	mov    $0x0,%eax
  401fed:	e8 be f0 ff ff       	callq  4010b0 <printf@plt>
  401ff2:	48 8b 35 57 51 00 00 	mov    0x5157(%rip),%rsi        # 407150 <course>
  401ff9:	48 8d 3d 19 24 00 00 	lea    0x2419(%rip),%rdi        # 404419 <_IO_stdin_used+0x419>
  402000:	b8 00 00 00 00       	mov    $0x0,%eax
  402005:	e8 a6 f0 ff ff       	callq  4010b0 <printf@plt>
  40200a:	48 8b 35 37 51 00 00 	mov    0x5137(%rip),%rsi        # 407148 <lab>
  402011:	48 8d 3d 0d 24 00 00 	lea    0x240d(%rip),%rdi        # 404425 <_IO_stdin_used+0x425>
  402018:	b8 00 00 00 00       	mov    $0x0,%eax
  40201d:	e8 8e f0 ff ff       	callq  4010b0 <printf@plt>
  402022:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  402029:	00 
  40202a:	48 8d 3d fd 23 00 00 	lea    0x23fd(%rip),%rdi        # 40442e <_IO_stdin_used+0x42e>
  402031:	b8 00 00 00 00       	mov    $0x0,%eax
  402036:	e8 75 f0 ff ff       	callq  4010b0 <printf@plt>
  40203b:	e9 7c ff ff ff       	jmpq   401fbc <notify_server+0x13c>
  402040:	c3                   	retq   

0000000000402041 <validate>:
  402041:	53                   	push   %rbx
  402042:	89 fb                	mov    %edi,%ebx
  402044:	83 3d bd 54 00 00 00 	cmpl   $0x0,0x54bd(%rip)        # 407508 <is_checker>
  40204b:	74 68                	je     4020b5 <validate+0x74>
  40204d:	39 3d a9 54 00 00    	cmp    %edi,0x54a9(%rip)        # 4074fc <vlevel>
  402053:	75 2d                	jne    402082 <validate+0x41>
  402055:	8b 35 9d 54 00 00    	mov    0x549d(%rip),%esi        # 4074f8 <check_level>
  40205b:	39 fe                	cmp    %edi,%esi
  40205d:	75 39                	jne    402098 <validate+0x57>
  40205f:	0f be 35 c2 60 00 00 	movsbl 0x60c2(%rip),%esi        # 408128 <target_prefix>
  402066:	48 8d 0d b3 54 00 00 	lea    0x54b3(%rip),%rcx        # 407520 <gets_buf>
  40206d:	89 fa                	mov    %edi,%edx
  40206f:	48 8d 3d e2 23 00 00 	lea    0x23e2(%rip),%rdi        # 404458 <_IO_stdin_used+0x458>
  402076:	b8 00 00 00 00       	mov    $0x0,%eax
  40207b:	e8 30 f0 ff ff       	callq  4010b0 <printf@plt>
  402080:	5b                   	pop    %rbx
  402081:	c3                   	retq   
  402082:	48 8d 3d b1 23 00 00 	lea    0x23b1(%rip),%rdi        # 40443a <_IO_stdin_used+0x43a>
  402089:	e8 f2 ef ff ff       	callq  401080 <puts@plt>
  40208e:	b8 00 00 00 00       	mov    $0x0,%eax
  402093:	e8 63 fd ff ff       	callq  401dfb <check_fail>
  402098:	89 fa                	mov    %edi,%edx
  40209a:	48 8d 3d d7 24 00 00 	lea    0x24d7(%rip),%rdi        # 404578 <_IO_stdin_used+0x578>
  4020a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a6:	e8 05 f0 ff ff       	callq  4010b0 <printf@plt>
  4020ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b0:	e8 46 fd ff ff       	callq  401dfb <check_fail>
  4020b5:	39 3d 41 54 00 00    	cmp    %edi,0x5441(%rip)        # 4074fc <vlevel>
  4020bb:	74 1a                	je     4020d7 <validate+0x96>
  4020bd:	48 8d 3d 76 23 00 00 	lea    0x2376(%rip),%rdi        # 40443a <_IO_stdin_used+0x43a>
  4020c4:	e8 b7 ef ff ff       	callq  401080 <puts@plt>
  4020c9:	89 de                	mov    %ebx,%esi
  4020cb:	bf 00 00 00 00       	mov    $0x0,%edi
  4020d0:	e8 ab fd ff ff       	callq  401e80 <notify_server>
  4020d5:	eb a9                	jmp    402080 <validate+0x3f>
  4020d7:	0f be 15 4a 60 00 00 	movsbl 0x604a(%rip),%edx        # 408128 <target_prefix>
  4020de:	89 fe                	mov    %edi,%esi
  4020e0:	48 8d 3d b9 24 00 00 	lea    0x24b9(%rip),%rdi        # 4045a0 <_IO_stdin_used+0x5a0>
  4020e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4020ec:	e8 bf ef ff ff       	callq  4010b0 <printf@plt>
  4020f1:	89 de                	mov    %ebx,%esi
  4020f3:	bf 01 00 00 00       	mov    $0x1,%edi
  4020f8:	e8 83 fd ff ff       	callq  401e80 <notify_server>
  4020fd:	eb 81                	jmp    402080 <validate+0x3f>

00000000004020ff <fail>:
  4020ff:	48 83 ec 08          	sub    $0x8,%rsp
  402103:	83 3d fe 53 00 00 00 	cmpl   $0x0,0x53fe(%rip)        # 407508 <is_checker>
  40210a:	75 11                	jne    40211d <fail+0x1e>
  40210c:	89 fe                	mov    %edi,%esi
  40210e:	bf 00 00 00 00       	mov    $0x0,%edi
  402113:	e8 68 fd ff ff       	callq  401e80 <notify_server>
  402118:	48 83 c4 08          	add    $0x8,%rsp
  40211c:	c3                   	retq   
  40211d:	b8 00 00 00 00       	mov    $0x0,%eax
  402122:	e8 d4 fc ff ff       	callq  401dfb <check_fail>

0000000000402127 <bushandler>:
  402127:	48 83 ec 08          	sub    $0x8,%rsp
  40212b:	83 3d d6 53 00 00 00 	cmpl   $0x0,0x53d6(%rip)        # 407508 <is_checker>
  402132:	74 16                	je     40214a <bushandler+0x23>
  402134:	48 8d 3d 32 23 00 00 	lea    0x2332(%rip),%rdi        # 40446d <_IO_stdin_used+0x46d>
  40213b:	e8 40 ef ff ff       	callq  401080 <puts@plt>
  402140:	b8 00 00 00 00       	mov    $0x0,%eax
  402145:	e8 b1 fc ff ff       	callq  401dfb <check_fail>
  40214a:	48 8d 3d 87 24 00 00 	lea    0x2487(%rip),%rdi        # 4045d8 <_IO_stdin_used+0x5d8>
  402151:	e8 2a ef ff ff       	callq  401080 <puts@plt>
  402156:	48 8d 3d 1a 23 00 00 	lea    0x231a(%rip),%rdi        # 404477 <_IO_stdin_used+0x477>
  40215d:	e8 1e ef ff ff       	callq  401080 <puts@plt>
  402162:	be 00 00 00 00       	mov    $0x0,%esi
  402167:	bf 00 00 00 00       	mov    $0x0,%edi
  40216c:	e8 0f fd ff ff       	callq  401e80 <notify_server>
  402171:	bf 01 00 00 00       	mov    $0x1,%edi
  402176:	e8 75 f0 ff ff       	callq  4011f0 <exit@plt>

000000000040217b <seghandler>:
  40217b:	48 83 ec 08          	sub    $0x8,%rsp
  40217f:	83 3d 82 53 00 00 00 	cmpl   $0x0,0x5382(%rip)        # 407508 <is_checker>
  402186:	74 16                	je     40219e <seghandler+0x23>
  402188:	48 8d 3d fe 22 00 00 	lea    0x22fe(%rip),%rdi        # 40448d <_IO_stdin_used+0x48d>
  40218f:	e8 ec ee ff ff       	callq  401080 <puts@plt>
  402194:	b8 00 00 00 00       	mov    $0x0,%eax
  402199:	e8 5d fc ff ff       	callq  401dfb <check_fail>
  40219e:	48 8d 3d 53 24 00 00 	lea    0x2453(%rip),%rdi        # 4045f8 <_IO_stdin_used+0x5f8>
  4021a5:	e8 d6 ee ff ff       	callq  401080 <puts@plt>
  4021aa:	48 8d 3d c6 22 00 00 	lea    0x22c6(%rip),%rdi        # 404477 <_IO_stdin_used+0x477>
  4021b1:	e8 ca ee ff ff       	callq  401080 <puts@plt>
  4021b6:	be 00 00 00 00       	mov    $0x0,%esi
  4021bb:	bf 00 00 00 00       	mov    $0x0,%edi
  4021c0:	e8 bb fc ff ff       	callq  401e80 <notify_server>
  4021c5:	bf 01 00 00 00       	mov    $0x1,%edi
  4021ca:	e8 21 f0 ff ff       	callq  4011f0 <exit@plt>

00000000004021cf <illegalhandler>:
  4021cf:	48 83 ec 08          	sub    $0x8,%rsp
  4021d3:	83 3d 2e 53 00 00 00 	cmpl   $0x0,0x532e(%rip)        # 407508 <is_checker>
  4021da:	74 16                	je     4021f2 <illegalhandler+0x23>
  4021dc:	48 8d 3d bd 22 00 00 	lea    0x22bd(%rip),%rdi        # 4044a0 <_IO_stdin_used+0x4a0>
  4021e3:	e8 98 ee ff ff       	callq  401080 <puts@plt>
  4021e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ed:	e8 09 fc ff ff       	callq  401dfb <check_fail>
  4021f2:	48 8d 3d 27 24 00 00 	lea    0x2427(%rip),%rdi        # 404620 <_IO_stdin_used+0x620>
  4021f9:	e8 82 ee ff ff       	callq  401080 <puts@plt>
  4021fe:	48 8d 3d 72 22 00 00 	lea    0x2272(%rip),%rdi        # 404477 <_IO_stdin_used+0x477>
  402205:	e8 76 ee ff ff       	callq  401080 <puts@plt>
  40220a:	be 00 00 00 00       	mov    $0x0,%esi
  40220f:	bf 00 00 00 00       	mov    $0x0,%edi
  402214:	e8 67 fc ff ff       	callq  401e80 <notify_server>
  402219:	bf 01 00 00 00       	mov    $0x1,%edi
  40221e:	e8 cd ef ff ff       	callq  4011f0 <exit@plt>

0000000000402223 <sigalrmhandler>:
  402223:	48 83 ec 08          	sub    $0x8,%rsp
  402227:	83 3d da 52 00 00 00 	cmpl   $0x0,0x52da(%rip)        # 407508 <is_checker>
  40222e:	74 16                	je     402246 <sigalrmhandler+0x23>
  402230:	48 8d 3d 7d 22 00 00 	lea    0x227d(%rip),%rdi        # 4044b4 <_IO_stdin_used+0x4b4>
  402237:	e8 44 ee ff ff       	callq  401080 <puts@plt>
  40223c:	b8 00 00 00 00       	mov    $0x0,%eax
  402241:	e8 b5 fb ff ff       	callq  401dfb <check_fail>
  402246:	be 05 00 00 00       	mov    $0x5,%esi
  40224b:	48 8d 3d fe 23 00 00 	lea    0x23fe(%rip),%rdi        # 404650 <_IO_stdin_used+0x650>
  402252:	b8 00 00 00 00       	mov    $0x0,%eax
  402257:	e8 54 ee ff ff       	callq  4010b0 <printf@plt>
  40225c:	be 00 00 00 00       	mov    $0x0,%esi
  402261:	bf 00 00 00 00       	mov    $0x0,%edi
  402266:	e8 15 fc ff ff       	callq  401e80 <notify_server>
  40226b:	bf 01 00 00 00       	mov    $0x1,%edi
  402270:	e8 7b ef ff ff       	callq  4011f0 <exit@plt>

0000000000402275 <launch>:
  402275:	55                   	push   %rbp
  402276:	48 89 e5             	mov    %rsp,%rbp
  402279:	48 89 fa             	mov    %rdi,%rdx
  40227c:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402280:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402284:	48 29 c4             	sub    %rax,%rsp
  402287:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40228c:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402290:	be f4 00 00 00       	mov    $0xf4,%esi
  402295:	e8 26 ee ff ff       	callq  4010c0 <memset@plt>
  40229a:	48 8b 05 ff 51 00 00 	mov    0x51ff(%rip),%rax        # 4074a0 <stdin@@GLIBC_2.2.5>
  4022a1:	48 39 05 48 52 00 00 	cmp    %rax,0x5248(%rip)        # 4074f0 <infile>
  4022a8:	74 2b                	je     4022d5 <launch+0x60>
  4022aa:	c7 05 48 52 00 00 00 	movl   $0x0,0x5248(%rip)        # 4074fc <vlevel>
  4022b1:	00 00 00 
  4022b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b9:	e8 83 f9 ff ff       	callq  401c41 <test>
  4022be:	83 3d 43 52 00 00 00 	cmpl   $0x0,0x5243(%rip)        # 407508 <is_checker>
  4022c5:	75 21                	jne    4022e8 <launch+0x73>
  4022c7:	48 8d 3d 06 22 00 00 	lea    0x2206(%rip),%rdi        # 4044d4 <_IO_stdin_used+0x4d4>
  4022ce:	e8 ad ed ff ff       	callq  401080 <puts@plt>
  4022d3:	c9                   	leaveq 
  4022d4:	c3                   	retq   
  4022d5:	48 8d 3d e0 21 00 00 	lea    0x21e0(%rip),%rdi        # 4044bc <_IO_stdin_used+0x4bc>
  4022dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e1:	e8 ca ed ff ff       	callq  4010b0 <printf@plt>
  4022e6:	eb c2                	jmp    4022aa <launch+0x35>
  4022e8:	48 8d 3d da 21 00 00 	lea    0x21da(%rip),%rdi        # 4044c9 <_IO_stdin_used+0x4c9>
  4022ef:	e8 8c ed ff ff       	callq  401080 <puts@plt>
  4022f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4022f9:	e8 fd fa ff ff       	callq  401dfb <check_fail>

00000000004022fe <stable_launch>:
  4022fe:	53                   	push   %rbx
  4022ff:	48 89 3d e2 51 00 00 	mov    %rdi,0x51e2(%rip)        # 4074e8 <global_offset>
  402306:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40230c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402312:	b9 32 01 00 00       	mov    $0x132,%ecx
  402317:	ba 07 00 00 00       	mov    $0x7,%edx
  40231c:	be 00 00 10 00       	mov    $0x100000,%esi
  402321:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402326:	e8 75 ed ff ff       	callq  4010a0 <mmap@plt>
  40232b:	48 89 c3             	mov    %rax,%rbx
  40232e:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402334:	75 43                	jne    402379 <stable_launch+0x7b>
  402336:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40233d:	48 89 15 ec 5d 00 00 	mov    %rdx,0x5dec(%rip)        # 408130 <stack_top>
  402344:	48 89 e0             	mov    %rsp,%rax
  402347:	48 89 d4             	mov    %rdx,%rsp
  40234a:	48 89 c2             	mov    %rax,%rdx
  40234d:	48 89 15 8c 51 00 00 	mov    %rdx,0x518c(%rip)        # 4074e0 <global_save_stack>
  402354:	48 8b 3d 8d 51 00 00 	mov    0x518d(%rip),%rdi        # 4074e8 <global_offset>
  40235b:	e8 15 ff ff ff       	callq  402275 <launch>
  402360:	48 8b 05 79 51 00 00 	mov    0x5179(%rip),%rax        # 4074e0 <global_save_stack>
  402367:	48 89 c4             	mov    %rax,%rsp
  40236a:	be 00 00 10 00       	mov    $0x100000,%esi
  40236f:	48 89 df             	mov    %rbx,%rdi
  402372:	e8 09 ee ff ff       	callq  401180 <munmap@plt>
  402377:	5b                   	pop    %rbx
  402378:	c3                   	retq   
  402379:	be 00 00 10 00       	mov    $0x100000,%esi
  40237e:	48 89 c7             	mov    %rax,%rdi
  402381:	e8 fa ed ff ff       	callq  401180 <munmap@plt>
  402386:	ba 00 60 58 55       	mov    $0x55586000,%edx
  40238b:	48 8d 35 f6 22 00 00 	lea    0x22f6(%rip),%rsi        # 404688 <_IO_stdin_used+0x688>
  402392:	48 8b 3d 27 51 00 00 	mov    0x5127(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  402399:	b8 00 00 00 00       	mov    $0x0,%eax
  40239e:	e8 7d ed ff ff       	callq  401120 <fprintf@plt>
  4023a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a8:	e8 43 ee ff ff       	callq  4011f0 <exit@plt>

00000000004023ad <rio_readinitb>:
  4023ad:	89 37                	mov    %esi,(%rdi)
  4023af:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4023b6:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4023ba:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4023be:	c3                   	retq   

00000000004023bf <sigalrm_handler>:
  4023bf:	48 83 ec 08          	sub    $0x8,%rsp
  4023c3:	ba 00 00 00 00       	mov    $0x0,%edx
  4023c8:	48 8d 35 f1 22 00 00 	lea    0x22f1(%rip),%rsi        # 4046c0 <trans_char+0x10>
  4023cf:	48 8b 3d ea 50 00 00 	mov    0x50ea(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  4023d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4023db:	e8 40 ed ff ff       	callq  401120 <fprintf@plt>
  4023e0:	bf 01 00 00 00       	mov    $0x1,%edi
  4023e5:	e8 06 ee ff ff       	callq  4011f0 <exit@plt>

00000000004023ea <urlencode>:
  4023ea:	41 54                	push   %r12
  4023ec:	55                   	push   %rbp
  4023ed:	53                   	push   %rbx
  4023ee:	48 83 ec 10          	sub    $0x10,%rsp
  4023f2:	48 89 fb             	mov    %rdi,%rbx
  4023f5:	48 89 f5             	mov    %rsi,%rbp
  4023f8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4023ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402404:	f2 ae                	repnz scas %es:(%rdi),%al
  402406:	48 89 ce             	mov    %rcx,%rsi
  402409:	48 f7 d6             	not    %rsi
  40240c:	8d 46 ff             	lea    -0x1(%rsi),%eax
  40240f:	eb 0e                	jmp    40241f <urlencode+0x35>
  402411:	88 55 00             	mov    %dl,0x0(%rbp)
  402414:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402418:	48 83 c3 01          	add    $0x1,%rbx
  40241c:	44 89 e0             	mov    %r12d,%eax
  40241f:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402423:	85 c0                	test   %eax,%eax
  402425:	0f 84 95 00 00 00    	je     4024c0 <urlencode+0xd6>
  40242b:	0f b6 13             	movzbl (%rbx),%edx
  40242e:	80 fa 2a             	cmp    $0x2a,%dl
  402431:	0f 94 c1             	sete   %cl
  402434:	80 fa 2d             	cmp    $0x2d,%dl
  402437:	0f 94 c0             	sete   %al
  40243a:	08 c1                	or     %al,%cl
  40243c:	75 d3                	jne    402411 <urlencode+0x27>
  40243e:	80 fa 2e             	cmp    $0x2e,%dl
  402441:	74 ce                	je     402411 <urlencode+0x27>
  402443:	80 fa 5f             	cmp    $0x5f,%dl
  402446:	74 c9                	je     402411 <urlencode+0x27>
  402448:	8d 42 d0             	lea    -0x30(%rdx),%eax
  40244b:	3c 09                	cmp    $0x9,%al
  40244d:	76 c2                	jbe    402411 <urlencode+0x27>
  40244f:	8d 42 bf             	lea    -0x41(%rdx),%eax
  402452:	3c 19                	cmp    $0x19,%al
  402454:	76 bb                	jbe    402411 <urlencode+0x27>
  402456:	8d 42 9f             	lea    -0x61(%rdx),%eax
  402459:	3c 19                	cmp    $0x19,%al
  40245b:	76 b4                	jbe    402411 <urlencode+0x27>
  40245d:	80 fa 20             	cmp    $0x20,%dl
  402460:	74 4c                	je     4024ae <urlencode+0xc4>
  402462:	8d 42 e0             	lea    -0x20(%rdx),%eax
  402465:	3c 5f                	cmp    $0x5f,%al
  402467:	0f 96 c1             	setbe  %cl
  40246a:	80 fa 09             	cmp    $0x9,%dl
  40246d:	0f 94 c0             	sete   %al
  402470:	08 c1                	or     %al,%cl
  402472:	74 47                	je     4024bb <urlencode+0xd1>
  402474:	0f b6 d2             	movzbl %dl,%edx
  402477:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  40247c:	48 8d 35 d2 22 00 00 	lea    0x22d2(%rip),%rsi        # 404755 <trans_char+0xa5>
  402483:	b8 00 00 00 00       	mov    $0x0,%eax
  402488:	e8 53 ed ff ff       	callq  4011e0 <sprintf@plt>
  40248d:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  402492:	88 45 00             	mov    %al,0x0(%rbp)
  402495:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  40249a:	88 45 01             	mov    %al,0x1(%rbp)
  40249d:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  4024a2:	88 45 02             	mov    %al,0x2(%rbp)
  4024a5:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4024a9:	e9 6a ff ff ff       	jmpq   402418 <urlencode+0x2e>
  4024ae:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4024b2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4024b6:	e9 5d ff ff ff       	jmpq   402418 <urlencode+0x2e>
  4024bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024c0:	48 83 c4 10          	add    $0x10,%rsp
  4024c4:	5b                   	pop    %rbx
  4024c5:	5d                   	pop    %rbp
  4024c6:	41 5c                	pop    %r12
  4024c8:	c3                   	retq   

00000000004024c9 <rio_writen>:
  4024c9:	41 55                	push   %r13
  4024cb:	41 54                	push   %r12
  4024cd:	55                   	push   %rbp
  4024ce:	53                   	push   %rbx
  4024cf:	48 83 ec 08          	sub    $0x8,%rsp
  4024d3:	41 89 fc             	mov    %edi,%r12d
  4024d6:	48 89 f5             	mov    %rsi,%rbp
  4024d9:	49 89 d5             	mov    %rdx,%r13
  4024dc:	48 89 d3             	mov    %rdx,%rbx
  4024df:	eb 06                	jmp    4024e7 <rio_writen+0x1e>
  4024e1:	48 29 c3             	sub    %rax,%rbx
  4024e4:	48 01 c5             	add    %rax,%rbp
  4024e7:	48 85 db             	test   %rbx,%rbx
  4024ea:	74 24                	je     402510 <rio_writen+0x47>
  4024ec:	48 89 da             	mov    %rbx,%rdx
  4024ef:	48 89 ee             	mov    %rbp,%rsi
  4024f2:	44 89 e7             	mov    %r12d,%edi
  4024f5:	e8 96 eb ff ff       	callq  401090 <write@plt>
  4024fa:	48 85 c0             	test   %rax,%rax
  4024fd:	7f e2                	jg     4024e1 <rio_writen+0x18>
  4024ff:	e8 3c eb ff ff       	callq  401040 <__errno_location@plt>
  402504:	83 38 04             	cmpl   $0x4,(%rax)
  402507:	75 15                	jne    40251e <rio_writen+0x55>
  402509:	b8 00 00 00 00       	mov    $0x0,%eax
  40250e:	eb d1                	jmp    4024e1 <rio_writen+0x18>
  402510:	4c 89 e8             	mov    %r13,%rax
  402513:	48 83 c4 08          	add    $0x8,%rsp
  402517:	5b                   	pop    %rbx
  402518:	5d                   	pop    %rbp
  402519:	41 5c                	pop    %r12
  40251b:	41 5d                	pop    %r13
  40251d:	c3                   	retq   
  40251e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402525:	eb ec                	jmp    402513 <rio_writen+0x4a>

0000000000402527 <rio_read>:
  402527:	41 55                	push   %r13
  402529:	41 54                	push   %r12
  40252b:	55                   	push   %rbp
  40252c:	53                   	push   %rbx
  40252d:	48 83 ec 08          	sub    $0x8,%rsp
  402531:	48 89 fb             	mov    %rdi,%rbx
  402534:	49 89 f5             	mov    %rsi,%r13
  402537:	49 89 d4             	mov    %rdx,%r12
  40253a:	eb 0a                	jmp    402546 <rio_read+0x1f>
  40253c:	e8 ff ea ff ff       	callq  401040 <__errno_location@plt>
  402541:	83 38 04             	cmpl   $0x4,(%rax)
  402544:	75 5a                	jne    4025a0 <rio_read+0x79>
  402546:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402549:	85 ed                	test   %ebp,%ebp
  40254b:	7f 22                	jg     40256f <rio_read+0x48>
  40254d:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402551:	ba 00 20 00 00       	mov    $0x2000,%edx
  402556:	48 89 ee             	mov    %rbp,%rsi
  402559:	8b 3b                	mov    (%rbx),%edi
  40255b:	e8 90 eb ff ff       	callq  4010f0 <read@plt>
  402560:	89 43 04             	mov    %eax,0x4(%rbx)
  402563:	85 c0                	test   %eax,%eax
  402565:	78 d5                	js     40253c <rio_read+0x15>
  402567:	74 40                	je     4025a9 <rio_read+0x82>
  402569:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40256d:	eb d7                	jmp    402546 <rio_read+0x1f>
  40256f:	89 e8                	mov    %ebp,%eax
  402571:	4c 39 e0             	cmp    %r12,%rax
  402574:	72 03                	jb     402579 <rio_read+0x52>
  402576:	44 89 e5             	mov    %r12d,%ebp
  402579:	4c 63 e5             	movslq %ebp,%r12
  40257c:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402580:	4c 89 e2             	mov    %r12,%rdx
  402583:	4c 89 ef             	mov    %r13,%rdi
  402586:	e8 b5 eb ff ff       	callq  401140 <memcpy@plt>
  40258b:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40258f:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402592:	4c 89 e0             	mov    %r12,%rax
  402595:	48 83 c4 08          	add    $0x8,%rsp
  402599:	5b                   	pop    %rbx
  40259a:	5d                   	pop    %rbp
  40259b:	41 5c                	pop    %r12
  40259d:	41 5d                	pop    %r13
  40259f:	c3                   	retq   
  4025a0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4025a7:	eb ec                	jmp    402595 <rio_read+0x6e>
  4025a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ae:	eb e5                	jmp    402595 <rio_read+0x6e>

00000000004025b0 <rio_readlineb>:
  4025b0:	41 55                	push   %r13
  4025b2:	41 54                	push   %r12
  4025b4:	55                   	push   %rbp
  4025b5:	53                   	push   %rbx
  4025b6:	48 83 ec 18          	sub    $0x18,%rsp
  4025ba:	49 89 fd             	mov    %rdi,%r13
  4025bd:	48 89 f5             	mov    %rsi,%rbp
  4025c0:	49 89 d4             	mov    %rdx,%r12
  4025c3:	bb 01 00 00 00       	mov    $0x1,%ebx
  4025c8:	4c 39 e3             	cmp    %r12,%rbx
  4025cb:	73 44                	jae    402611 <rio_readlineb+0x61>
  4025cd:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4025d2:	ba 01 00 00 00       	mov    $0x1,%edx
  4025d7:	4c 89 ef             	mov    %r13,%rdi
  4025da:	e8 48 ff ff ff       	callq  402527 <rio_read>
  4025df:	83 f8 01             	cmp    $0x1,%eax
  4025e2:	75 19                	jne    4025fd <rio_readlineb+0x4d>
  4025e4:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4025e8:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4025ed:	88 45 00             	mov    %al,0x0(%rbp)
  4025f0:	3c 0a                	cmp    $0xa,%al
  4025f2:	74 1a                	je     40260e <rio_readlineb+0x5e>
  4025f4:	48 83 c3 01          	add    $0x1,%rbx
  4025f8:	48 89 d5             	mov    %rdx,%rbp
  4025fb:	eb cb                	jmp    4025c8 <rio_readlineb+0x18>
  4025fd:	85 c0                	test   %eax,%eax
  4025ff:	75 22                	jne    402623 <rio_readlineb+0x73>
  402601:	48 83 fb 01          	cmp    $0x1,%rbx
  402605:	75 0a                	jne    402611 <rio_readlineb+0x61>
  402607:	b8 00 00 00 00       	mov    $0x0,%eax
  40260c:	eb 0a                	jmp    402618 <rio_readlineb+0x68>
  40260e:	48 89 d5             	mov    %rdx,%rbp
  402611:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402615:	48 89 d8             	mov    %rbx,%rax
  402618:	48 83 c4 18          	add    $0x18,%rsp
  40261c:	5b                   	pop    %rbx
  40261d:	5d                   	pop    %rbp
  40261e:	41 5c                	pop    %r12
  402620:	41 5d                	pop    %r13
  402622:	c3                   	retq   
  402623:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40262a:	eb ec                	jmp    402618 <rio_readlineb+0x68>

000000000040262c <submitr>:
  40262c:	41 57                	push   %r15
  40262e:	41 56                	push   %r14
  402630:	41 55                	push   %r13
  402632:	41 54                	push   %r12
  402634:	55                   	push   %rbp
  402635:	53                   	push   %rbx
  402636:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  40263d:	49 89 fd             	mov    %rdi,%r13
  402640:	89 74 24 14          	mov    %esi,0x14(%rsp)
  402644:	49 89 d7             	mov    %rdx,%r15
  402647:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40264c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402651:	4d 89 ce             	mov    %r9,%r14
  402654:	48 8b ac 24 90 a0 00 	mov    0xa090(%rsp),%rbp
  40265b:	00 
  40265c:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  402663:	00 00 00 00 
  402667:	ba 00 00 00 00       	mov    $0x0,%edx
  40266c:	be 01 00 00 00       	mov    $0x1,%esi
  402671:	bf 02 00 00 00       	mov    $0x2,%edi
  402676:	e8 a5 eb ff ff       	callq  401220 <socket@plt>
  40267b:	85 c0                	test   %eax,%eax
  40267d:	0f 88 9a 02 00 00    	js     40291d <submitr+0x2f1>
  402683:	89 c3                	mov    %eax,%ebx
  402685:	4c 89 ef             	mov    %r13,%rdi
  402688:	e8 83 ea ff ff       	callq  401110 <gethostbyname@plt>
  40268d:	48 85 c0             	test   %rax,%rax
  402690:	0f 84 d3 02 00 00    	je     402969 <submitr+0x33d>
  402696:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  40269d:	00 
  40269e:	48 c7 84 24 42 a0 00 	movq   $0x0,0xa042(%rsp)
  4026a5:	00 00 00 00 00 
  4026aa:	c7 84 24 4a a0 00 00 	movl   $0x0,0xa04a(%rsp)
  4026b1:	00 00 00 00 
  4026b5:	66 c7 84 24 4e a0 00 	movw   $0x0,0xa04e(%rsp)
  4026bc:	00 00 00 
  4026bf:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  4026c6:	00 02 00 
  4026c9:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4026cd:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4026d1:	48 8d bc 24 44 a0 00 	lea    0xa044(%rsp),%rdi
  4026d8:	00 
  4026d9:	48 8b 31             	mov    (%rcx),%rsi
  4026dc:	e8 af ea ff ff       	callq  401190 <memmove@plt>
  4026e1:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  4026e6:	66 c1 c0 08          	rol    $0x8,%ax
  4026ea:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  4026f1:	00 
  4026f2:	ba 10 00 00 00       	mov    $0x10,%edx
  4026f7:	4c 89 e6             	mov    %r12,%rsi
  4026fa:	89 df                	mov    %ebx,%edi
  4026fc:	e8 ff ea ff ff       	callq  401200 <connect@plt>
  402701:	85 c0                	test   %eax,%eax
  402703:	0f 88 c8 02 00 00    	js     4029d1 <submitr+0x3a5>
  402709:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402710:	b8 00 00 00 00       	mov    $0x0,%eax
  402715:	48 89 f1             	mov    %rsi,%rcx
  402718:	4c 89 f7             	mov    %r14,%rdi
  40271b:	f2 ae                	repnz scas %es:(%rdi),%al
  40271d:	48 89 ca             	mov    %rcx,%rdx
  402720:	48 f7 d2             	not    %rdx
  402723:	48 89 f1             	mov    %rsi,%rcx
  402726:	4c 89 ff             	mov    %r15,%rdi
  402729:	f2 ae                	repnz scas %es:(%rdi),%al
  40272b:	48 f7 d1             	not    %rcx
  40272e:	49 89 c8             	mov    %rcx,%r8
  402731:	48 89 f1             	mov    %rsi,%rcx
  402734:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402739:	f2 ae                	repnz scas %es:(%rdi),%al
  40273b:	48 f7 d1             	not    %rcx
  40273e:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402743:	48 89 f1             	mov    %rsi,%rcx
  402746:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40274b:	f2 ae                	repnz scas %es:(%rdi),%al
  40274d:	48 89 c8             	mov    %rcx,%rax
  402750:	48 f7 d0             	not    %rax
  402753:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402758:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  40275d:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402764:	00 
  402765:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40276b:	0f 87 ba 02 00 00    	ja     402a2b <submitr+0x3ff>
  402771:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  402778:	00 
  402779:	b9 00 04 00 00       	mov    $0x400,%ecx
  40277e:	b8 00 00 00 00       	mov    $0x0,%eax
  402783:	48 89 f7             	mov    %rsi,%rdi
  402786:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402789:	4c 89 f7             	mov    %r14,%rdi
  40278c:	e8 59 fc ff ff       	callq  4023ea <urlencode>
  402791:	85 c0                	test   %eax,%eax
  402793:	0f 88 05 03 00 00    	js     402a9e <submitr+0x472>
  402799:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  4027a0:	00 
  4027a1:	4d 89 e9             	mov    %r13,%r9
  4027a4:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  4027ab:	00 
  4027ac:	4c 89 f9             	mov    %r15,%rcx
  4027af:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4027b4:	48 8d 35 2d 1f 00 00 	lea    0x1f2d(%rip),%rsi        # 4046e8 <trans_char+0x38>
  4027bb:	4c 89 e7             	mov    %r12,%rdi
  4027be:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c3:	e8 18 ea ff ff       	callq  4011e0 <sprintf@plt>
  4027c8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4027cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4027d4:	4c 89 e7             	mov    %r12,%rdi
  4027d7:	f2 ae                	repnz scas %es:(%rdi),%al
  4027d9:	48 89 ca             	mov    %rcx,%rdx
  4027dc:	48 f7 d2             	not    %rdx
  4027df:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  4027e3:	4c 89 e6             	mov    %r12,%rsi
  4027e6:	89 df                	mov    %ebx,%edi
  4027e8:	e8 dc fc ff ff       	callq  4024c9 <rio_writen>
  4027ed:	48 85 c0             	test   %rax,%rax
  4027f0:	0f 88 33 03 00 00    	js     402b29 <submitr+0x4fd>
  4027f6:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  4027fd:	00 
  4027fe:	89 de                	mov    %ebx,%esi
  402800:	4c 89 e7             	mov    %r12,%rdi
  402803:	e8 a5 fb ff ff       	callq  4023ad <rio_readinitb>
  402808:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40280f:	00 
  402810:	ba 00 20 00 00       	mov    $0x2000,%edx
  402815:	4c 89 e7             	mov    %r12,%rdi
  402818:	e8 93 fd ff ff       	callq  4025b0 <rio_readlineb>
  40281d:	48 85 c0             	test   %rax,%rax
  402820:	0f 8e 72 03 00 00    	jle    402b98 <submitr+0x56c>
  402826:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  40282d:	00 
  40282e:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  402835:	00 
  402836:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  40283d:	00 
  40283e:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  402843:	48 8d 35 12 1f 00 00 	lea    0x1f12(%rip),%rsi        # 40475c <trans_char+0xac>
  40284a:	b8 00 00 00 00       	mov    $0x0,%eax
  40284f:	e8 1c e9 ff ff       	callq  401170 <__isoc99_sscanf@plt>
  402854:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40285b:	00 
  40285c:	b9 03 00 00 00       	mov    $0x3,%ecx
  402861:	48 8d 3d 0b 1f 00 00 	lea    0x1f0b(%rip),%rdi        # 404773 <trans_char+0xc3>
  402868:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40286a:	0f 97 c0             	seta   %al
  40286d:	1c 00                	sbb    $0x0,%al
  40286f:	84 c0                	test   %al,%al
  402871:	0f 84 9f 03 00 00    	je     402c16 <submitr+0x5ea>
  402877:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40287e:	00 
  40287f:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402886:	00 
  402887:	ba 00 20 00 00       	mov    $0x2000,%edx
  40288c:	e8 1f fd ff ff       	callq  4025b0 <rio_readlineb>
  402891:	48 85 c0             	test   %rax,%rax
  402894:	7f be                	jg     402854 <submitr+0x228>
  402896:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40289d:	3a 20 43 
  4028a0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4028a7:	20 75 6e 
  4028aa:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028ae:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028b2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028b9:	74 6f 20 
  4028bc:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4028c3:	68 65 61 
  4028c6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028ca:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028ce:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4028d5:	66 72 6f 
  4028d8:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  4028df:	20 72 65 
  4028e2:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028e6:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4028ea:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4028f1:	73 65 72 
  4028f4:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4028f8:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  4028ff:	89 df                	mov    %ebx,%edi
  402901:	e8 da e7 ff ff       	callq  4010e0 <close@plt>
  402906:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40290b:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402912:	5b                   	pop    %rbx
  402913:	5d                   	pop    %rbp
  402914:	41 5c                	pop    %r12
  402916:	41 5d                	pop    %r13
  402918:	41 5e                	pop    %r14
  40291a:	41 5f                	pop    %r15
  40291c:	c3                   	retq   
  40291d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402924:	3a 20 43 
  402927:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40292e:	20 75 6e 
  402931:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402935:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402939:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402940:	74 6f 20 
  402943:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40294a:	65 20 73 
  40294d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402951:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402955:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40295c:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402962:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402967:	eb a2                	jmp    40290b <submitr+0x2df>
  402969:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402970:	3a 20 44 
  402973:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  40297a:	20 75 6e 
  40297d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402981:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402985:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40298c:	74 6f 20 
  40298f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402996:	76 65 20 
  402999:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40299d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029a1:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4029a8:	72 20 61 
  4029ab:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029af:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4029b6:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4029bc:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4029c0:	89 df                	mov    %ebx,%edi
  4029c2:	e8 19 e7 ff ff       	callq  4010e0 <close@plt>
  4029c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029cc:	e9 3a ff ff ff       	jmpq   40290b <submitr+0x2df>
  4029d1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4029d8:	3a 20 55 
  4029db:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4029e2:	20 74 6f 
  4029e5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029e9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029ed:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4029f4:	65 63 74 
  4029f7:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4029fe:	68 65 20 
  402a01:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a05:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a09:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402a10:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  402a16:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402a1a:	89 df                	mov    %ebx,%edi
  402a1c:	e8 bf e6 ff ff       	callq  4010e0 <close@plt>
  402a21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a26:	e9 e0 fe ff ff       	jmpq   40290b <submitr+0x2df>
  402a2b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402a32:	3a 20 52 
  402a35:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402a3c:	20 73 74 
  402a3f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a43:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a47:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402a4e:	74 6f 6f 
  402a51:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402a58:	65 2e 20 
  402a5b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a5f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a63:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402a6a:	61 73 65 
  402a6d:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402a74:	49 54 52 
  402a77:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a7b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a7f:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402a86:	55 46 00 
  402a89:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a8d:	89 df                	mov    %ebx,%edi
  402a8f:	e8 4c e6 ff ff       	callq  4010e0 <close@plt>
  402a94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a99:	e9 6d fe ff ff       	jmpq   40290b <submitr+0x2df>
  402a9e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402aa5:	3a 20 52 
  402aa8:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402aaf:	20 73 74 
  402ab2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ab6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402aba:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402ac1:	63 6f 6e 
  402ac4:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402acb:	20 61 6e 
  402ace:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ad2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ad6:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402add:	67 61 6c 
  402ae0:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402ae7:	6e 70 72 
  402aea:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402aee:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402af2:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402af9:	6c 65 20 
  402afc:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402b03:	63 74 65 
  402b06:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b0a:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402b0e:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402b14:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402b18:	89 df                	mov    %ebx,%edi
  402b1a:	e8 c1 e5 ff ff       	callq  4010e0 <close@plt>
  402b1f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b24:	e9 e2 fd ff ff       	jmpq   40290b <submitr+0x2df>
  402b29:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b30:	3a 20 43 
  402b33:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b3a:	20 75 6e 
  402b3d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b41:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b45:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b4c:	74 6f 20 
  402b4f:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402b56:	20 74 6f 
  402b59:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b5d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b61:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402b68:	72 65 73 
  402b6b:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402b72:	65 72 76 
  402b75:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b79:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b7d:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402b83:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402b87:	89 df                	mov    %ebx,%edi
  402b89:	e8 52 e5 ff ff       	callq  4010e0 <close@plt>
  402b8e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b93:	e9 73 fd ff ff       	jmpq   40290b <submitr+0x2df>
  402b98:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b9f:	3a 20 43 
  402ba2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ba9:	20 75 6e 
  402bac:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bb0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bb4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bbb:	74 6f 20 
  402bbe:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402bc5:	66 69 72 
  402bc8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bcc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402bd0:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402bd7:	61 64 65 
  402bda:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402be1:	6d 20 72 
  402be4:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402be8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402bec:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402bf3:	20 73 65 
  402bf6:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402bfa:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402c01:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402c05:	89 df                	mov    %ebx,%edi
  402c07:	e8 d4 e4 ff ff       	callq  4010e0 <close@plt>
  402c0c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c11:	e9 f5 fc ff ff       	jmpq   40290b <submitr+0x2df>
  402c16:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402c1d:	00 
  402c1e:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402c25:	00 
  402c26:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c2b:	e8 80 f9 ff ff       	callq  4025b0 <rio_readlineb>
  402c30:	48 85 c0             	test   %rax,%rax
  402c33:	0f 8e 97 00 00 00    	jle    402cd0 <submitr+0x6a4>
  402c39:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  402c40:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402c46:	0f 85 08 01 00 00    	jne    402d54 <submitr+0x728>
  402c4c:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402c53:	00 
  402c54:	48 89 ef             	mov    %rbp,%rdi
  402c57:	e8 14 e4 ff ff       	callq  401070 <strcpy@plt>
  402c5c:	89 df                	mov    %ebx,%edi
  402c5e:	e8 7d e4 ff ff       	callq  4010e0 <close@plt>
  402c63:	b9 04 00 00 00       	mov    $0x4,%ecx
  402c68:	48 8d 3d fe 1a 00 00 	lea    0x1afe(%rip),%rdi        # 40476d <trans_char+0xbd>
  402c6f:	48 89 ee             	mov    %rbp,%rsi
  402c72:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c74:	0f 97 c0             	seta   %al
  402c77:	1c 00                	sbb    $0x0,%al
  402c79:	0f be c0             	movsbl %al,%eax
  402c7c:	85 c0                	test   %eax,%eax
  402c7e:	0f 84 87 fc ff ff    	je     40290b <submitr+0x2df>
  402c84:	b9 05 00 00 00       	mov    $0x5,%ecx
  402c89:	48 8d 3d e1 1a 00 00 	lea    0x1ae1(%rip),%rdi        # 404771 <trans_char+0xc1>
  402c90:	48 89 ee             	mov    %rbp,%rsi
  402c93:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c95:	0f 97 c0             	seta   %al
  402c98:	1c 00                	sbb    $0x0,%al
  402c9a:	0f be c0             	movsbl %al,%eax
  402c9d:	85 c0                	test   %eax,%eax
  402c9f:	0f 84 66 fc ff ff    	je     40290b <submitr+0x2df>
  402ca5:	b9 03 00 00 00       	mov    $0x3,%ecx
  402caa:	48 8d 3d c5 1a 00 00 	lea    0x1ac5(%rip),%rdi        # 404776 <trans_char+0xc6>
  402cb1:	48 89 ee             	mov    %rbp,%rsi
  402cb4:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402cb6:	0f 97 c0             	seta   %al
  402cb9:	1c 00                	sbb    $0x0,%al
  402cbb:	0f be c0             	movsbl %al,%eax
  402cbe:	85 c0                	test   %eax,%eax
  402cc0:	0f 84 45 fc ff ff    	je     40290b <submitr+0x2df>
  402cc6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ccb:	e9 3b fc ff ff       	jmpq   40290b <submitr+0x2df>
  402cd0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cd7:	3a 20 43 
  402cda:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ce1:	20 75 6e 
  402ce4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ce8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402cec:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cf3:	74 6f 20 
  402cf6:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402cfd:	73 74 61 
  402d00:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d04:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d08:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402d0f:	65 73 73 
  402d12:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402d19:	72 6f 6d 
  402d1c:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d20:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d24:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402d2b:	6c 74 20 
  402d2e:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402d32:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402d39:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402d3f:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402d43:	89 df                	mov    %ebx,%edi
  402d45:	e8 96 e3 ff ff       	callq  4010e0 <close@plt>
  402d4a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d4f:	e9 b7 fb ff ff       	jmpq   40290b <submitr+0x2df>
  402d54:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402d59:	48 8d 35 c8 19 00 00 	lea    0x19c8(%rip),%rsi        # 404728 <trans_char+0x78>
  402d60:	48 89 ef             	mov    %rbp,%rdi
  402d63:	b8 00 00 00 00       	mov    $0x0,%eax
  402d68:	e8 73 e4 ff ff       	callq  4011e0 <sprintf@plt>
  402d6d:	89 df                	mov    %ebx,%edi
  402d6f:	e8 6c e3 ff ff       	callq  4010e0 <close@plt>
  402d74:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d79:	e9 8d fb ff ff       	jmpq   40290b <submitr+0x2df>

0000000000402d7e <init_timeout>:
  402d7e:	85 ff                	test   %edi,%edi
  402d80:	74 26                	je     402da8 <init_timeout+0x2a>
  402d82:	53                   	push   %rbx
  402d83:	89 fb                	mov    %edi,%ebx
  402d85:	78 1a                	js     402da1 <init_timeout+0x23>
  402d87:	48 8d 35 31 f6 ff ff 	lea    -0x9cf(%rip),%rsi        # 4023bf <sigalrm_handler>
  402d8e:	bf 0e 00 00 00       	mov    $0xe,%edi
  402d93:	e8 68 e3 ff ff       	callq  401100 <signal@plt>
  402d98:	89 df                	mov    %ebx,%edi
  402d9a:	e8 31 e3 ff ff       	callq  4010d0 <alarm@plt>
  402d9f:	5b                   	pop    %rbx
  402da0:	c3                   	retq   
  402da1:	bb 00 00 00 00       	mov    $0x0,%ebx
  402da6:	eb df                	jmp    402d87 <init_timeout+0x9>
  402da8:	c3                   	retq   

0000000000402da9 <init_driver>:
  402da9:	41 54                	push   %r12
  402dab:	55                   	push   %rbp
  402dac:	53                   	push   %rbx
  402dad:	48 83 ec 10          	sub    $0x10,%rsp
  402db1:	49 89 fc             	mov    %rdi,%r12
  402db4:	be 01 00 00 00       	mov    $0x1,%esi
  402db9:	bf 0d 00 00 00       	mov    $0xd,%edi
  402dbe:	e8 3d e3 ff ff       	callq  401100 <signal@plt>
  402dc3:	be 01 00 00 00       	mov    $0x1,%esi
  402dc8:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402dcd:	e8 2e e3 ff ff       	callq  401100 <signal@plt>
  402dd2:	be 01 00 00 00       	mov    $0x1,%esi
  402dd7:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402ddc:	e8 1f e3 ff ff       	callq  401100 <signal@plt>
  402de1:	ba 00 00 00 00       	mov    $0x0,%edx
  402de6:	be 01 00 00 00       	mov    $0x1,%esi
  402deb:	bf 02 00 00 00       	mov    $0x2,%edi
  402df0:	e8 2b e4 ff ff       	callq  401220 <socket@plt>
  402df5:	85 c0                	test   %eax,%eax
  402df7:	0f 88 8a 00 00 00    	js     402e87 <init_driver+0xde>
  402dfd:	89 c3                	mov    %eax,%ebx
  402dff:	48 8d 3d 73 19 00 00 	lea    0x1973(%rip),%rdi        # 404779 <trans_char+0xc9>
  402e06:	e8 05 e3 ff ff       	callq  401110 <gethostbyname@plt>
  402e0b:	48 85 c0             	test   %rax,%rax
  402e0e:	0f 84 c6 00 00 00    	je     402eda <init_driver+0x131>
  402e14:	48 89 e5             	mov    %rsp,%rbp
  402e17:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402e1e:	00 00 
  402e20:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402e27:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402e2d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402e33:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402e37:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402e3b:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402e3f:	48 8b 31             	mov    (%rcx),%rsi
  402e42:	e8 49 e3 ff ff       	callq  401190 <memmove@plt>
  402e47:	66 c7 44 24 02 3c a4 	movw   $0xa43c,0x2(%rsp)
  402e4e:	ba 10 00 00 00       	mov    $0x10,%edx
  402e53:	48 89 ee             	mov    %rbp,%rsi
  402e56:	89 df                	mov    %ebx,%edi
  402e58:	e8 a3 e3 ff ff       	callq  401200 <connect@plt>
  402e5d:	85 c0                	test   %eax,%eax
  402e5f:	0f 88 e7 00 00 00    	js     402f4c <init_driver+0x1a3>
  402e65:	89 df                	mov    %ebx,%edi
  402e67:	e8 74 e2 ff ff       	callq  4010e0 <close@plt>
  402e6c:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402e73:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402e79:	b8 00 00 00 00       	mov    $0x0,%eax
  402e7e:	48 83 c4 10          	add    $0x10,%rsp
  402e82:	5b                   	pop    %rbx
  402e83:	5d                   	pop    %rbp
  402e84:	41 5c                	pop    %r12
  402e86:	c3                   	retq   
  402e87:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e8e:	3a 20 43 
  402e91:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e98:	20 75 6e 
  402e9b:	49 89 04 24          	mov    %rax,(%r12)
  402e9f:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402ea4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402eab:	74 6f 20 
  402eae:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402eb5:	65 20 73 
  402eb8:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402ebd:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402ec2:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402ec9:	6b 65 
  402ecb:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402ed2:	00 
  402ed3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ed8:	eb a4                	jmp    402e7e <init_driver+0xd5>
  402eda:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402ee1:	3a 20 44 
  402ee4:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402eeb:	20 75 6e 
  402eee:	49 89 04 24          	mov    %rax,(%r12)
  402ef2:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402ef7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402efe:	74 6f 20 
  402f01:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402f08:	76 65 20 
  402f0b:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f10:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f15:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402f1c:	72 20 61 
  402f1f:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402f24:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402f2b:	72 65 
  402f2d:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402f34:	73 
  402f35:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402f3b:	89 df                	mov    %ebx,%edi
  402f3d:	e8 9e e1 ff ff       	callq  4010e0 <close@plt>
  402f42:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f47:	e9 32 ff ff ff       	jmpq   402e7e <init_driver+0xd5>
  402f4c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f53:	3a 20 55 
  402f56:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402f5d:	20 74 6f 
  402f60:	49 89 04 24          	mov    %rax,(%r12)
  402f64:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f69:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402f70:	65 63 74 
  402f73:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402f7a:	65 72 76 
  402f7d:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f82:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f87:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402f8e:	72 
  402f8f:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402f95:	89 df                	mov    %ebx,%edi
  402f97:	e8 44 e1 ff ff       	callq  4010e0 <close@plt>
  402f9c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fa1:	e9 d8 fe ff ff       	jmpq   402e7e <init_driver+0xd5>

0000000000402fa6 <driver_post>:
  402fa6:	53                   	push   %rbx
  402fa7:	4c 89 cb             	mov    %r9,%rbx
  402faa:	45 85 c0             	test   %r8d,%r8d
  402fad:	75 18                	jne    402fc7 <driver_post+0x21>
  402faf:	48 85 ff             	test   %rdi,%rdi
  402fb2:	74 05                	je     402fb9 <driver_post+0x13>
  402fb4:	80 3f 00             	cmpb   $0x0,(%rdi)
  402fb7:	75 32                	jne    402feb <driver_post+0x45>
  402fb9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402fbe:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402fc2:	44 89 c0             	mov    %r8d,%eax
  402fc5:	5b                   	pop    %rbx
  402fc6:	c3                   	retq   
  402fc7:	48 89 ce             	mov    %rcx,%rsi
  402fca:	48 8d 3d b6 17 00 00 	lea    0x17b6(%rip),%rdi        # 404787 <trans_char+0xd7>
  402fd1:	b8 00 00 00 00       	mov    $0x0,%eax
  402fd6:	e8 d5 e0 ff ff       	callq  4010b0 <printf@plt>
  402fdb:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402fe0:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402fe4:	b8 00 00 00 00       	mov    $0x0,%eax
  402fe9:	eb da                	jmp    402fc5 <driver_post+0x1f>
  402feb:	48 83 ec 08          	sub    $0x8,%rsp
  402fef:	41 51                	push   %r9
  402ff1:	49 89 c9             	mov    %rcx,%r9
  402ff4:	49 89 d0             	mov    %rdx,%r8
  402ff7:	48 89 f9             	mov    %rdi,%rcx
  402ffa:	48 89 f2             	mov    %rsi,%rdx
  402ffd:	be a4 3c 00 00       	mov    $0x3ca4,%esi
  403002:	48 8d 3d 70 17 00 00 	lea    0x1770(%rip),%rdi        # 404779 <trans_char+0xc9>
  403009:	e8 1e f6 ff ff       	callq  40262c <submitr>
  40300e:	48 83 c4 10          	add    $0x10,%rsp
  403012:	eb b1                	jmp    402fc5 <driver_post+0x1f>

0000000000403014 <check>:
  403014:	89 f8                	mov    %edi,%eax
  403016:	c1 e8 1c             	shr    $0x1c,%eax
  403019:	74 1d                	je     403038 <check+0x24>
  40301b:	b9 00 00 00 00       	mov    $0x0,%ecx
  403020:	83 f9 1f             	cmp    $0x1f,%ecx
  403023:	7f 0d                	jg     403032 <check+0x1e>
  403025:	89 f8                	mov    %edi,%eax
  403027:	d3 e8                	shr    %cl,%eax
  403029:	3c 0a                	cmp    $0xa,%al
  40302b:	74 11                	je     40303e <check+0x2a>
  40302d:	83 c1 08             	add    $0x8,%ecx
  403030:	eb ee                	jmp    403020 <check+0xc>
  403032:	b8 01 00 00 00       	mov    $0x1,%eax
  403037:	c3                   	retq   
  403038:	b8 00 00 00 00       	mov    $0x0,%eax
  40303d:	c3                   	retq   
  40303e:	b8 00 00 00 00       	mov    $0x0,%eax
  403043:	c3                   	retq   

0000000000403044 <gencookie>:
  403044:	53                   	push   %rbx
  403045:	83 c7 01             	add    $0x1,%edi
  403048:	e8 03 e0 ff ff       	callq  401050 <srandom@plt>
  40304d:	e8 0e e1 ff ff       	callq  401160 <random@plt>
  403052:	89 c3                	mov    %eax,%ebx
  403054:	89 c7                	mov    %eax,%edi
  403056:	e8 b9 ff ff ff       	callq  403014 <check>
  40305b:	85 c0                	test   %eax,%eax
  40305d:	74 ee                	je     40304d <gencookie+0x9>
  40305f:	89 d8                	mov    %ebx,%eax
  403061:	5b                   	pop    %rbx
  403062:	c3                   	retq   
  403063:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40306a:	00 00 00 
  40306d:	0f 1f 00             	nopl   (%rax)

0000000000403070 <__libc_csu_init>:
  403070:	41 57                	push   %r15
  403072:	49 89 d7             	mov    %rdx,%r15
  403075:	41 56                	push   %r14
  403077:	49 89 f6             	mov    %rsi,%r14
  40307a:	41 55                	push   %r13
  40307c:	41 89 fd             	mov    %edi,%r13d
  40307f:	41 54                	push   %r12
  403081:	4c 8d 25 88 3d 00 00 	lea    0x3d88(%rip),%r12        # 406e10 <__frame_dummy_init_array_entry>
  403088:	55                   	push   %rbp
  403089:	48 8d 2d 88 3d 00 00 	lea    0x3d88(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  403090:	53                   	push   %rbx
  403091:	4c 29 e5             	sub    %r12,%rbp
  403094:	48 83 ec 08          	sub    $0x8,%rsp
  403098:	e8 63 df ff ff       	callq  401000 <_init>
  40309d:	48 c1 fd 03          	sar    $0x3,%rbp
  4030a1:	74 1b                	je     4030be <__libc_csu_init+0x4e>
  4030a3:	31 db                	xor    %ebx,%ebx
  4030a5:	0f 1f 00             	nopl   (%rax)
  4030a8:	4c 89 fa             	mov    %r15,%rdx
  4030ab:	4c 89 f6             	mov    %r14,%rsi
  4030ae:	44 89 ef             	mov    %r13d,%edi
  4030b1:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4030b5:	48 83 c3 01          	add    $0x1,%rbx
  4030b9:	48 39 dd             	cmp    %rbx,%rbp
  4030bc:	75 ea                	jne    4030a8 <__libc_csu_init+0x38>
  4030be:	48 83 c4 08          	add    $0x8,%rsp
  4030c2:	5b                   	pop    %rbx
  4030c3:	5d                   	pop    %rbp
  4030c4:	41 5c                	pop    %r12
  4030c6:	41 5d                	pop    %r13
  4030c8:	41 5e                	pop    %r14
  4030ca:	41 5f                	pop    %r15
  4030cc:	c3                   	retq   
  4030cd:	0f 1f 00             	nopl   (%rax)

00000000004030d0 <__libc_csu_fini>:
  4030d0:	c3                   	retq   

Disassembly of section .fini:

00000000004030d4 <_fini>:
  4030d4:	48 83 ec 08          	sub    $0x8,%rsp
  4030d8:	48 83 c4 08          	add    $0x8,%rsp
  4030dc:	c3                   	retq   
