
ctarget：     文件格式 elf64-x86-64


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
  40123f:	49 c7 c0 80 30 40 00 	mov    $0x403080,%r8
  401246:	48 c7 c1 20 30 40 00 	mov    $0x403020,%rcx
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
  4013bb:	e8 3f 1c 00 00       	callq  402fff <gencookie>
  4013c0:	89 05 3e 61 00 00    	mov    %eax,0x613e(%rip)        # 407504 <cookie>
  4013c6:	89 c7                	mov    %eax,%edi
  4013c8:	e8 32 1c 00 00       	callq  402fff <gencookie>
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
  40140d:	c6 05 14 6d 00 00 63 	movb   $0x63,0x6d14(%rip)        # 408128 <target_prefix>
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
  40149d:	e8 c2 18 00 00       	callq  402d64 <init_driver>
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
  4014d6:	48 c7 c6 36 21 40 00 	mov    $0x402136,%rsi
  4014dd:	bf 0b 00 00 00       	mov    $0xb,%edi
  4014e2:	e8 19 fc ff ff       	callq  401100 <signal@plt>
  4014e7:	48 c7 c6 e2 20 40 00 	mov    $0x4020e2,%rsi
  4014ee:	bf 07 00 00 00       	mov    $0x7,%edi
  4014f3:	e8 08 fc ff ff       	callq  401100 <signal@plt>
  4014f8:	48 c7 c6 8a 21 40 00 	mov    $0x40218a,%rsi
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
  401538:	48 c7 c6 de 21 40 00 	mov    $0x4021de,%rsi
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
  40162e:	be 00 00 00 00       	mov    $0x0,%esi
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
  40166b:	e8 49 0c 00 00       	callq  4022b9 <stable_launch>
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
  401697:	e8 1a 07 00 00       	callq  401db6 <check_fail>
  40169c:	eb af                	jmp    40164d <main+0x184>

000000000040169e <scramble>:
  40169e:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a3:	83 f8 09             	cmp    $0x9,%eax
  4016a6:	77 13                	ja     4016bb <scramble+0x1d>
  4016a8:	69 d0 03 eb 00 00    	imul   $0xeb03,%eax,%edx
  4016ae:	01 fa                	add    %edi,%edx
  4016b0:	89 c1                	mov    %eax,%ecx
  4016b2:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  4016b6:	83 c0 01             	add    $0x1,%eax
  4016b9:	eb e8                	jmp    4016a3 <scramble+0x5>
  4016bb:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016bf:	69 c0 9a 19 00 00    	imul   $0x199a,%eax,%eax
  4016c5:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016c9:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016cd:	69 c0 9f de 00 00    	imul   $0xde9f,%eax,%eax
  4016d3:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016d7:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016db:	69 c0 16 c2 00 00    	imul   $0xc216,%eax,%eax
  4016e1:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016e5:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016e9:	69 c0 90 84 00 00    	imul   $0x8490,%eax,%eax
  4016ef:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4016f3:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016f7:	69 c0 32 7f 00 00    	imul   $0x7f32,%eax,%eax
  4016fd:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401701:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401705:	69 c0 1d 5f 00 00    	imul   $0x5f1d,%eax,%eax
  40170b:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40170f:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401713:	69 c0 65 8d 00 00    	imul   $0x8d65,%eax,%eax
  401719:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40171d:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401721:	69 c0 51 66 00 00    	imul   $0x6651,%eax,%eax
  401727:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40172b:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40172f:	69 c0 ac 47 00 00    	imul   $0x47ac,%eax,%eax
  401735:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401739:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40173d:	69 c0 6a f1 00 00    	imul   $0xf16a,%eax,%eax
  401743:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401747:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40174b:	69 c0 18 06 00 00    	imul   $0x618,%eax,%eax
  401751:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401755:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401759:	69 c0 7a 71 00 00    	imul   $0x717a,%eax,%eax
  40175f:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401763:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401767:	69 c0 fa e1 00 00    	imul   $0xe1fa,%eax,%eax
  40176d:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401771:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401775:	69 c0 71 5f 00 00    	imul   $0x5f71,%eax,%eax
  40177b:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40177f:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401783:	69 c0 3a bc 00 00    	imul   $0xbc3a,%eax,%eax
  401789:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40178d:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401791:	69 c0 db f6 00 00    	imul   $0xf6db,%eax,%eax
  401797:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40179b:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40179f:	69 c0 2b 01 00 00    	imul   $0x12b,%eax,%eax
  4017a5:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4017a9:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4017ad:	69 c0 a3 40 00 00    	imul   $0x40a3,%eax,%eax
  4017b3:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4017b7:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4017bb:	69 c0 05 13 00 00    	imul   $0x1305,%eax,%eax
  4017c1:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4017c5:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4017c9:	69 c0 10 23 00 00    	imul   $0x2310,%eax,%eax
  4017cf:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4017d3:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4017d7:	69 c0 ee c3 00 00    	imul   $0xc3ee,%eax,%eax
  4017dd:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4017e1:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4017e5:	69 c0 67 95 00 00    	imul   $0x9567,%eax,%eax
  4017eb:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4017ef:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4017f3:	69 c0 0d 15 00 00    	imul   $0x150d,%eax,%eax
  4017f9:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4017fd:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401801:	69 c0 bc ba 00 00    	imul   $0xbabc,%eax,%eax
  401807:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40180b:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40180f:	69 c0 8d 03 00 00    	imul   $0x38d,%eax,%eax
  401815:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401819:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40181d:	69 c0 2f 0c 00 00    	imul   $0xc2f,%eax,%eax
  401823:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401827:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40182b:	69 c0 cb d2 00 00    	imul   $0xd2cb,%eax,%eax
  401831:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401835:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401839:	69 c0 d0 ad 00 00    	imul   $0xadd0,%eax,%eax
  40183f:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401843:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401847:	69 c0 56 4c 00 00    	imul   $0x4c56,%eax,%eax
  40184d:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401851:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401855:	69 c0 9d c0 00 00    	imul   $0xc09d,%eax,%eax
  40185b:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40185f:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401863:	69 c0 c0 22 00 00    	imul   $0x22c0,%eax,%eax
  401869:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40186d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401871:	69 c0 65 de 00 00    	imul   $0xde65,%eax,%eax
  401877:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40187b:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40187f:	69 c0 f2 8c 00 00    	imul   $0x8cf2,%eax,%eax
  401885:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401889:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40188d:	69 c0 2c e7 00 00    	imul   $0xe72c,%eax,%eax
  401893:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401897:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40189b:	69 c0 3c e4 00 00    	imul   $0xe43c,%eax,%eax
  4018a1:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4018a5:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4018a9:	69 c0 2f 32 00 00    	imul   $0x322f,%eax,%eax
  4018af:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4018b3:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4018b7:	69 c0 6b 8c 00 00    	imul   $0x8c6b,%eax,%eax
  4018bd:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4018c1:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4018c5:	69 c0 7e f9 00 00    	imul   $0xf97e,%eax,%eax
  4018cb:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4018cf:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4018d3:	69 c0 4f c3 00 00    	imul   $0xc34f,%eax,%eax
  4018d9:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4018dd:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4018e1:	69 c0 31 fe 00 00    	imul   $0xfe31,%eax,%eax
  4018e7:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4018eb:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4018ef:	69 c0 60 60 00 00    	imul   $0x6060,%eax,%eax
  4018f5:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4018f9:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4018fd:	69 c0 81 d0 00 00    	imul   $0xd081,%eax,%eax
  401903:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401907:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40190b:	69 c0 0a 88 00 00    	imul   $0x880a,%eax,%eax
  401911:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401915:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401919:	69 c0 f0 e7 00 00    	imul   $0xe7f0,%eax,%eax
  40191f:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401923:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401927:	69 c0 92 8b 00 00    	imul   $0x8b92,%eax,%eax
  40192d:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401931:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401935:	69 c0 f0 dc 00 00    	imul   $0xdcf0,%eax,%eax
  40193b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40193f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401943:	69 c0 06 60 00 00    	imul   $0x6006,%eax,%eax
  401949:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40194d:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401951:	69 c0 3e d2 00 00    	imul   $0xd23e,%eax,%eax
  401957:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40195b:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40195f:	69 c0 5e da 00 00    	imul   $0xda5e,%eax,%eax
  401965:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401969:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40196d:	69 c0 f1 8c 00 00    	imul   $0x8cf1,%eax,%eax
  401973:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401977:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40197b:	69 c0 a8 c3 00 00    	imul   $0xc3a8,%eax,%eax
  401981:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401985:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401989:	69 c0 c5 66 00 00    	imul   $0x66c5,%eax,%eax
  40198f:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401993:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401997:	69 c0 b7 86 00 00    	imul   $0x86b7,%eax,%eax
  40199d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4019a1:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4019a5:	69 c0 8b f1 00 00    	imul   $0xf18b,%eax,%eax
  4019ab:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4019af:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4019b3:	69 c0 7d 14 00 00    	imul   $0x147d,%eax,%eax
  4019b9:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4019bd:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4019c1:	69 c0 e2 10 00 00    	imul   $0x10e2,%eax,%eax
  4019c7:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4019cb:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4019cf:	69 c0 1c fa 00 00    	imul   $0xfa1c,%eax,%eax
  4019d5:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4019d9:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4019dd:	69 c0 08 a8 00 00    	imul   $0xa808,%eax,%eax
  4019e3:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4019e7:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4019eb:	69 c0 b5 5f 00 00    	imul   $0x5fb5,%eax,%eax
  4019f1:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4019f5:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4019f9:	69 c0 86 56 00 00    	imul   $0x5686,%eax,%eax
  4019ff:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401a03:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401a07:	69 c0 86 38 00 00    	imul   $0x3886,%eax,%eax
  401a0d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401a11:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401a15:	69 c0 9a 99 00 00    	imul   $0x999a,%eax,%eax
  401a1b:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401a1f:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401a23:	69 c0 cd ee 00 00    	imul   $0xeecd,%eax,%eax
  401a29:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401a2d:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401a31:	69 c0 86 85 00 00    	imul   $0x8586,%eax,%eax
  401a37:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401a3b:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401a3f:	69 c0 44 25 00 00    	imul   $0x2544,%eax,%eax
  401a45:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401a49:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401a4d:	69 c0 c6 87 00 00    	imul   $0x87c6,%eax,%eax
  401a53:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401a57:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401a5b:	69 c0 97 d1 00 00    	imul   $0xd197,%eax,%eax
  401a61:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401a65:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401a69:	69 c0 ff 38 00 00    	imul   $0x38ff,%eax,%eax
  401a6f:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401a73:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401a77:	69 c0 ce 4e 00 00    	imul   $0x4ece,%eax,%eax
  401a7d:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401a81:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401a85:	69 c0 54 a2 00 00    	imul   $0xa254,%eax,%eax
  401a8b:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401a8f:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401a93:	69 c0 46 1a 00 00    	imul   $0x1a46,%eax,%eax
  401a99:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401a9d:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401aa1:	69 c0 28 d8 00 00    	imul   $0xd828,%eax,%eax
  401aa7:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401aab:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401aaf:	69 c0 9a 94 00 00    	imul   $0x949a,%eax,%eax
  401ab5:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401ab9:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401abd:	69 c0 89 96 00 00    	imul   $0x9689,%eax,%eax
  401ac3:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401ac7:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401acb:	69 c0 28 10 00 00    	imul   $0x1028,%eax,%eax
  401ad1:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401ad5:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401ad9:	69 c0 96 df 00 00    	imul   $0xdf96,%eax,%eax
  401adf:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401ae3:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401ae7:	69 c0 86 20 00 00    	imul   $0x2086,%eax,%eax
  401aed:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401af1:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401af5:	69 c0 3c e1 00 00    	imul   $0xe13c,%eax,%eax
  401afb:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401aff:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401b03:	69 c0 0a e5 00 00    	imul   $0xe50a,%eax,%eax
  401b09:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401b0d:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401b11:	69 c0 7f d8 00 00    	imul   $0xd87f,%eax,%eax
  401b17:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401b1b:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401b1f:	69 c0 39 79 00 00    	imul   $0x7939,%eax,%eax
  401b25:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401b29:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401b2d:	69 c0 3a f3 00 00    	imul   $0xf33a,%eax,%eax
  401b33:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401b37:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401b3b:	69 c0 d0 4e 00 00    	imul   $0x4ed0,%eax,%eax
  401b41:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401b45:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401b49:	69 c0 1f a3 00 00    	imul   $0xa31f,%eax,%eax
  401b4f:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401b53:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401b57:	69 c0 c3 56 00 00    	imul   $0x56c3,%eax,%eax
  401b5d:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401b61:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401b65:	69 c0 e9 00 00 00    	imul   $0xe9,%eax,%eax
  401b6b:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401b6f:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401b73:	69 c0 aa f8 00 00    	imul   $0xf8aa,%eax,%eax
  401b79:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401b7d:	ba 00 00 00 00       	mov    $0x0,%edx
  401b82:	b8 00 00 00 00       	mov    $0x0,%eax
  401b87:	83 fa 09             	cmp    $0x9,%edx
  401b8a:	77 0d                	ja     401b99 <scramble+0x4fb>
  401b8c:	89 d1                	mov    %edx,%ecx
  401b8e:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  401b92:	01 c8                	add    %ecx,%eax
  401b94:	83 c2 01             	add    $0x1,%edx
  401b97:	eb ee                	jmp    401b87 <scramble+0x4e9>
  401b99:	c3                   	retq   

0000000000401b9a <getbuf>:
  401b9a:	48 83 ec 18          	sub    $0x18,%rsp
  401b9e:	48 89 e7             	mov    %rsp,%rdi
  401ba1:	e8 43 02 00 00       	callq  401de9 <Gets>
  401ba6:	b8 01 00 00 00       	mov    $0x1,%eax
  401bab:	48 83 c4 18          	add    $0x18,%rsp
  401baf:	c3                   	retq   

0000000000401bb0 <touch1>:
  401bb0:	48 83 ec 08          	sub    $0x8,%rsp
  401bb4:	c7 05 3e 59 00 00 01 	movl   $0x1,0x593e(%rip)        # 4074fc <vlevel>
  401bbb:	00 00 00 
  401bbe:	48 8d 3d 06 27 00 00 	lea    0x2706(%rip),%rdi        # 4042cb <_IO_stdin_used+0x2cb>
  401bc5:	e8 b6 f4 ff ff       	callq  401080 <puts@plt>
  401bca:	bf 01 00 00 00       	mov    $0x1,%edi
  401bcf:	e8 28 04 00 00       	callq  401ffc <validate>
  401bd4:	bf 00 00 00 00       	mov    $0x0,%edi
  401bd9:	e8 12 f6 ff ff       	callq  4011f0 <exit@plt>

0000000000401bde <touch2>:
  401bde:	48 83 ec 08          	sub    $0x8,%rsp
  401be2:	89 fe                	mov    %edi,%esi
  401be4:	c7 05 0e 59 00 00 02 	movl   $0x2,0x590e(%rip)        # 4074fc <vlevel>
  401beb:	00 00 00 
  401bee:	39 3d 10 59 00 00    	cmp    %edi,0x5910(%rip)        # 407504 <cookie>
  401bf4:	74 25                	je     401c1b <touch2+0x3d>
  401bf6:	48 8d 3d 1b 27 00 00 	lea    0x271b(%rip),%rdi        # 404318 <_IO_stdin_used+0x318>
  401bfd:	b8 00 00 00 00       	mov    $0x0,%eax
  401c02:	e8 a9 f4 ff ff       	callq  4010b0 <printf@plt>
  401c07:	bf 02 00 00 00       	mov    $0x2,%edi
  401c0c:	e8 a9 04 00 00       	callq  4020ba <fail>
  401c11:	bf 00 00 00 00       	mov    $0x0,%edi
  401c16:	e8 d5 f5 ff ff       	callq  4011f0 <exit@plt>
  401c1b:	48 8d 3d ce 26 00 00 	lea    0x26ce(%rip),%rdi        # 4042f0 <_IO_stdin_used+0x2f0>
  401c22:	b8 00 00 00 00       	mov    $0x0,%eax
  401c27:	e8 84 f4 ff ff       	callq  4010b0 <printf@plt>
  401c2c:	bf 02 00 00 00       	mov    $0x2,%edi
  401c31:	e8 c6 03 00 00       	callq  401ffc <validate>
  401c36:	eb d9                	jmp    401c11 <touch2+0x33>

0000000000401c38 <hexmatch>:
  401c38:	41 54                	push   %r12
  401c3a:	55                   	push   %rbp
  401c3b:	53                   	push   %rbx
  401c3c:	48 83 ec 70          	sub    $0x70,%rsp
  401c40:	89 fd                	mov    %edi,%ebp
  401c42:	48 89 f3             	mov    %rsi,%rbx
  401c45:	e8 16 f5 ff ff       	callq  401160 <random@plt>
  401c4a:	48 89 c1             	mov    %rax,%rcx
  401c4d:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401c54:	0a d7 a3 
  401c57:	48 f7 ea             	imul   %rdx
  401c5a:	48 01 ca             	add    %rcx,%rdx
  401c5d:	48 c1 fa 06          	sar    $0x6,%rdx
  401c61:	48 89 c8             	mov    %rcx,%rax
  401c64:	48 c1 f8 3f          	sar    $0x3f,%rax
  401c68:	48 29 c2             	sub    %rax,%rdx
  401c6b:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401c6f:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401c73:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401c7a:	00 
  401c7b:	48 29 c1             	sub    %rax,%rcx
  401c7e:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401c82:	89 ea                	mov    %ebp,%edx
  401c84:	48 8d 35 5d 26 00 00 	lea    0x265d(%rip),%rsi        # 4042e8 <_IO_stdin_used+0x2e8>
  401c8b:	4c 89 e7             	mov    %r12,%rdi
  401c8e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c93:	e8 48 f5 ff ff       	callq  4011e0 <sprintf@plt>
  401c98:	ba 09 00 00 00       	mov    $0x9,%edx
  401c9d:	4c 89 e6             	mov    %r12,%rsi
  401ca0:	48 89 df             	mov    %rbx,%rdi
  401ca3:	e8 b8 f3 ff ff       	callq  401060 <strncmp@plt>
  401ca8:	85 c0                	test   %eax,%eax
  401caa:	0f 94 c0             	sete   %al
  401cad:	0f b6 c0             	movzbl %al,%eax
  401cb0:	48 83 c4 70          	add    $0x70,%rsp
  401cb4:	5b                   	pop    %rbx
  401cb5:	5d                   	pop    %rbp
  401cb6:	41 5c                	pop    %r12
  401cb8:	c3                   	retq   

0000000000401cb9 <touch3>:
  401cb9:	53                   	push   %rbx
  401cba:	48 89 fb             	mov    %rdi,%rbx
  401cbd:	c7 05 35 58 00 00 03 	movl   $0x3,0x5835(%rip)        # 4074fc <vlevel>
  401cc4:	00 00 00 
  401cc7:	48 89 fe             	mov    %rdi,%rsi
  401cca:	8b 3d 34 58 00 00    	mov    0x5834(%rip),%edi        # 407504 <cookie>
  401cd0:	e8 63 ff ff ff       	callq  401c38 <hexmatch>
  401cd5:	85 c0                	test   %eax,%eax
  401cd7:	74 28                	je     401d01 <touch3+0x48>
  401cd9:	48 89 de             	mov    %rbx,%rsi
  401cdc:	48 8d 3d 5d 26 00 00 	lea    0x265d(%rip),%rdi        # 404340 <_IO_stdin_used+0x340>
  401ce3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce8:	e8 c3 f3 ff ff       	callq  4010b0 <printf@plt>
  401ced:	bf 03 00 00 00       	mov    $0x3,%edi
  401cf2:	e8 05 03 00 00       	callq  401ffc <validate>
  401cf7:	bf 00 00 00 00       	mov    $0x0,%edi
  401cfc:	e8 ef f4 ff ff       	callq  4011f0 <exit@plt>
  401d01:	48 89 de             	mov    %rbx,%rsi
  401d04:	48 8d 3d 5d 26 00 00 	lea    0x265d(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  401d0b:	b8 00 00 00 00       	mov    $0x0,%eax
  401d10:	e8 9b f3 ff ff       	callq  4010b0 <printf@plt>
  401d15:	bf 03 00 00 00       	mov    $0x3,%edi
  401d1a:	e8 9b 03 00 00       	callq  4020ba <fail>
  401d1f:	eb d6                	jmp    401cf7 <touch3+0x3e>

0000000000401d21 <test>:
  401d21:	48 83 ec 08          	sub    $0x8,%rsp
  401d25:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2a:	e8 6b fe ff ff       	callq  401b9a <getbuf>
  401d2f:	89 c6                	mov    %eax,%esi
  401d31:	48 8d 3d 58 26 00 00 	lea    0x2658(%rip),%rdi        # 404390 <_IO_stdin_used+0x390>
  401d38:	b8 00 00 00 00       	mov    $0x0,%eax
  401d3d:	e8 6e f3 ff ff       	callq  4010b0 <printf@plt>
  401d42:	48 83 c4 08          	add    $0x8,%rsp
  401d46:	c3                   	retq   

0000000000401d47 <save_char>:
  401d47:	8b 05 d7 63 00 00    	mov    0x63d7(%rip),%eax        # 408124 <gets_cnt>
  401d4d:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401d52:	7f 4a                	jg     401d9e <save_char+0x57>
  401d54:	89 f9                	mov    %edi,%ecx
  401d56:	c0 e9 04             	shr    $0x4,%cl
  401d59:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401d5c:	4c 8d 05 4d 29 00 00 	lea    0x294d(%rip),%r8        # 4046b0 <trans_char>
  401d63:	83 e1 0f             	and    $0xf,%ecx
  401d66:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401d6b:	48 8d 0d ae 57 00 00 	lea    0x57ae(%rip),%rcx        # 407520 <gets_buf>
  401d72:	48 63 f2             	movslq %edx,%rsi
  401d75:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401d79:	8d 72 01             	lea    0x1(%rdx),%esi
  401d7c:	83 e7 0f             	and    $0xf,%edi
  401d7f:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401d84:	48 63 f6             	movslq %esi,%rsi
  401d87:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401d8b:	83 c2 02             	add    $0x2,%edx
  401d8e:	48 63 d2             	movslq %edx,%rdx
  401d91:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401d95:	83 c0 01             	add    $0x1,%eax
  401d98:	89 05 86 63 00 00    	mov    %eax,0x6386(%rip)        # 408124 <gets_cnt>
  401d9e:	c3                   	retq   

0000000000401d9f <save_term>:
  401d9f:	8b 05 7f 63 00 00    	mov    0x637f(%rip),%eax        # 408124 <gets_cnt>
  401da5:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401da8:	48 98                	cltq   
  401daa:	48 8d 15 6f 57 00 00 	lea    0x576f(%rip),%rdx        # 407520 <gets_buf>
  401db1:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401db5:	c3                   	retq   

0000000000401db6 <check_fail>:
  401db6:	48 83 ec 08          	sub    $0x8,%rsp
  401dba:	0f be 35 67 63 00 00 	movsbl 0x6367(%rip),%esi        # 408128 <target_prefix>
  401dc1:	48 8d 0d 58 57 00 00 	lea    0x5758(%rip),%rcx        # 407520 <gets_buf>
  401dc8:	8b 15 2a 57 00 00    	mov    0x572a(%rip),%edx        # 4074f8 <check_level>
  401dce:	48 8d 3d de 25 00 00 	lea    0x25de(%rip),%rdi        # 4043b3 <_IO_stdin_used+0x3b3>
  401dd5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dda:	e8 d1 f2 ff ff       	callq  4010b0 <printf@plt>
  401ddf:	bf 01 00 00 00       	mov    $0x1,%edi
  401de4:	e8 07 f4 ff ff       	callq  4011f0 <exit@plt>

0000000000401de9 <Gets>:
  401de9:	41 54                	push   %r12
  401deb:	55                   	push   %rbp
  401dec:	53                   	push   %rbx
  401ded:	49 89 fc             	mov    %rdi,%r12
  401df0:	c7 05 2a 63 00 00 00 	movl   $0x0,0x632a(%rip)        # 408124 <gets_cnt>
  401df7:	00 00 00 
  401dfa:	48 89 fb             	mov    %rdi,%rbx
  401dfd:	48 8b 3d ec 56 00 00 	mov    0x56ec(%rip),%rdi        # 4074f0 <infile>
  401e04:	e8 07 f4 ff ff       	callq  401210 <getc@plt>
  401e09:	83 f8 ff             	cmp    $0xffffffff,%eax
  401e0c:	74 18                	je     401e26 <Gets+0x3d>
  401e0e:	83 f8 0a             	cmp    $0xa,%eax
  401e11:	74 13                	je     401e26 <Gets+0x3d>
  401e13:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401e17:	88 03                	mov    %al,(%rbx)
  401e19:	0f b6 f8             	movzbl %al,%edi
  401e1c:	e8 26 ff ff ff       	callq  401d47 <save_char>
  401e21:	48 89 eb             	mov    %rbp,%rbx
  401e24:	eb d7                	jmp    401dfd <Gets+0x14>
  401e26:	c6 03 00             	movb   $0x0,(%rbx)
  401e29:	b8 00 00 00 00       	mov    $0x0,%eax
  401e2e:	e8 6c ff ff ff       	callq  401d9f <save_term>
  401e33:	4c 89 e0             	mov    %r12,%rax
  401e36:	5b                   	pop    %rbx
  401e37:	5d                   	pop    %rbp
  401e38:	41 5c                	pop    %r12
  401e3a:	c3                   	retq   

0000000000401e3b <notify_server>:
  401e3b:	83 3d c6 56 00 00 00 	cmpl   $0x0,0x56c6(%rip)        # 407508 <is_checker>
  401e42:	0f 85 b3 01 00 00    	jne    401ffb <notify_server+0x1c0>
  401e48:	55                   	push   %rbp
  401e49:	53                   	push   %rbx
  401e4a:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401e51:	89 fb                	mov    %edi,%ebx
  401e53:	81 3d c7 62 00 00 9c 	cmpl   $0x1f9c,0x62c7(%rip)        # 408124 <gets_cnt>
  401e5a:	1f 00 00 
  401e5d:	0f 8f b8 00 00 00    	jg     401f1b <notify_server+0xe0>
  401e63:	44 0f be 0d bd 62 00 	movsbl 0x62bd(%rip),%r9d        # 408128 <target_prefix>
  401e6a:	00 
  401e6b:	83 3d 16 56 00 00 00 	cmpl   $0x0,0x5616(%rip)        # 407488 <notify>
  401e72:	0f 84 be 00 00 00    	je     401f36 <notify_server+0xfb>
  401e78:	44 8b 05 81 56 00 00 	mov    0x5681(%rip),%r8d        # 407500 <authkey>
  401e7f:	85 db                	test   %ebx,%ebx
  401e81:	0f 84 ba 00 00 00    	je     401f41 <notify_server+0x106>
  401e87:	48 8d 2d 40 25 00 00 	lea    0x2540(%rip),%rbp        # 4043ce <_IO_stdin_used+0x3ce>
  401e8e:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401e95:	00 
  401e96:	48 8d 05 83 56 00 00 	lea    0x5683(%rip),%rax        # 407520 <gets_buf>
  401e9d:	50                   	push   %rax
  401e9e:	56                   	push   %rsi
  401e9f:	48 89 e9             	mov    %rbp,%rcx
  401ea2:	8b 15 88 52 00 00    	mov    0x5288(%rip),%edx        # 407130 <target_id>
  401ea8:	48 8d 35 24 25 00 00 	lea    0x2524(%rip),%rsi        # 4043d3 <_IO_stdin_used+0x3d3>
  401eaf:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb4:	e8 27 f3 ff ff       	callq  4011e0 <sprintf@plt>
  401eb9:	48 83 c4 10          	add    $0x10,%rsp
  401ebd:	83 3d c4 55 00 00 00 	cmpl   $0x0,0x55c4(%rip)        # 407488 <notify>
  401ec4:	0f 84 b7 00 00 00    	je     401f81 <notify_server+0x146>
  401eca:	85 db                	test   %ebx,%ebx
  401ecc:	0f 84 99 00 00 00    	je     401f6b <notify_server+0x130>
  401ed2:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401ed9:	00 
  401eda:	49 89 e1             	mov    %rsp,%r9
  401edd:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401ee3:	48 8b 15 5e 52 00 00 	mov    0x525e(%rip),%rdx        # 407148 <lab>
  401eea:	48 8b 35 5f 52 00 00 	mov    0x525f(%rip),%rsi        # 407150 <course>
  401ef1:	48 8b 3d 48 52 00 00 	mov    0x5248(%rip),%rdi        # 407140 <user_id>
  401ef8:	e8 64 10 00 00       	callq  402f61 <driver_post>
  401efd:	85 c0                	test   %eax,%eax
  401eff:	78 4c                	js     401f4d <notify_server+0x112>
  401f01:	48 8d 3d 10 26 00 00 	lea    0x2610(%rip),%rdi        # 404518 <_IO_stdin_used+0x518>
  401f08:	e8 73 f1 ff ff       	callq  401080 <puts@plt>
  401f0d:	48 8d 3d e7 24 00 00 	lea    0x24e7(%rip),%rdi        # 4043fb <_IO_stdin_used+0x3fb>
  401f14:	e8 67 f1 ff ff       	callq  401080 <puts@plt>
  401f19:	eb 5c                	jmp    401f77 <notify_server+0x13c>
  401f1b:	48 8d 3d c6 25 00 00 	lea    0x25c6(%rip),%rdi        # 4044e8 <_IO_stdin_used+0x4e8>
  401f22:	b8 00 00 00 00       	mov    $0x0,%eax
  401f27:	e8 84 f1 ff ff       	callq  4010b0 <printf@plt>
  401f2c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f31:	e8 ba f2 ff ff       	callq  4011f0 <exit@plt>
  401f36:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401f3c:	e9 3e ff ff ff       	jmpq   401e7f <notify_server+0x44>
  401f41:	48 8d 2d 81 24 00 00 	lea    0x2481(%rip),%rbp        # 4043c9 <_IO_stdin_used+0x3c9>
  401f48:	e9 41 ff ff ff       	jmpq   401e8e <notify_server+0x53>
  401f4d:	48 89 e6             	mov    %rsp,%rsi
  401f50:	48 8d 3d 98 24 00 00 	lea    0x2498(%rip),%rdi        # 4043ef <_IO_stdin_used+0x3ef>
  401f57:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5c:	e8 4f f1 ff ff       	callq  4010b0 <printf@plt>
  401f61:	bf 01 00 00 00       	mov    $0x1,%edi
  401f66:	e8 85 f2 ff ff       	callq  4011f0 <exit@plt>
  401f6b:	48 8d 3d 93 24 00 00 	lea    0x2493(%rip),%rdi        # 404405 <_IO_stdin_used+0x405>
  401f72:	e8 09 f1 ff ff       	callq  401080 <puts@plt>
  401f77:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401f7e:	5b                   	pop    %rbx
  401f7f:	5d                   	pop    %rbp
  401f80:	c3                   	retq   
  401f81:	48 89 ee             	mov    %rbp,%rsi
  401f84:	48 8d 3d c5 25 00 00 	lea    0x25c5(%rip),%rdi        # 404550 <_IO_stdin_used+0x550>
  401f8b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f90:	e8 1b f1 ff ff       	callq  4010b0 <printf@plt>
  401f95:	48 8b 35 a4 51 00 00 	mov    0x51a4(%rip),%rsi        # 407140 <user_id>
  401f9c:	48 8d 3d 69 24 00 00 	lea    0x2469(%rip),%rdi        # 40440c <_IO_stdin_used+0x40c>
  401fa3:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa8:	e8 03 f1 ff ff       	callq  4010b0 <printf@plt>
  401fad:	48 8b 35 9c 51 00 00 	mov    0x519c(%rip),%rsi        # 407150 <course>
  401fb4:	48 8d 3d 5e 24 00 00 	lea    0x245e(%rip),%rdi        # 404419 <_IO_stdin_used+0x419>
  401fbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc0:	e8 eb f0 ff ff       	callq  4010b0 <printf@plt>
  401fc5:	48 8b 35 7c 51 00 00 	mov    0x517c(%rip),%rsi        # 407148 <lab>
  401fcc:	48 8d 3d 52 24 00 00 	lea    0x2452(%rip),%rdi        # 404425 <_IO_stdin_used+0x425>
  401fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd8:	e8 d3 f0 ff ff       	callq  4010b0 <printf@plt>
  401fdd:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401fe4:	00 
  401fe5:	48 8d 3d 42 24 00 00 	lea    0x2442(%rip),%rdi        # 40442e <_IO_stdin_used+0x42e>
  401fec:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff1:	e8 ba f0 ff ff       	callq  4010b0 <printf@plt>
  401ff6:	e9 7c ff ff ff       	jmpq   401f77 <notify_server+0x13c>
  401ffb:	c3                   	retq   

0000000000401ffc <validate>:
  401ffc:	53                   	push   %rbx
  401ffd:	89 fb                	mov    %edi,%ebx
  401fff:	83 3d 02 55 00 00 00 	cmpl   $0x0,0x5502(%rip)        # 407508 <is_checker>
  402006:	74 68                	je     402070 <validate+0x74>
  402008:	39 3d ee 54 00 00    	cmp    %edi,0x54ee(%rip)        # 4074fc <vlevel>
  40200e:	75 2d                	jne    40203d <validate+0x41>
  402010:	8b 35 e2 54 00 00    	mov    0x54e2(%rip),%esi        # 4074f8 <check_level>
  402016:	39 fe                	cmp    %edi,%esi
  402018:	75 39                	jne    402053 <validate+0x57>
  40201a:	0f be 35 07 61 00 00 	movsbl 0x6107(%rip),%esi        # 408128 <target_prefix>
  402021:	48 8d 0d f8 54 00 00 	lea    0x54f8(%rip),%rcx        # 407520 <gets_buf>
  402028:	89 fa                	mov    %edi,%edx
  40202a:	48 8d 3d 27 24 00 00 	lea    0x2427(%rip),%rdi        # 404458 <_IO_stdin_used+0x458>
  402031:	b8 00 00 00 00       	mov    $0x0,%eax
  402036:	e8 75 f0 ff ff       	callq  4010b0 <printf@plt>
  40203b:	5b                   	pop    %rbx
  40203c:	c3                   	retq   
  40203d:	48 8d 3d f6 23 00 00 	lea    0x23f6(%rip),%rdi        # 40443a <_IO_stdin_used+0x43a>
  402044:	e8 37 f0 ff ff       	callq  401080 <puts@plt>
  402049:	b8 00 00 00 00       	mov    $0x0,%eax
  40204e:	e8 63 fd ff ff       	callq  401db6 <check_fail>
  402053:	89 fa                	mov    %edi,%edx
  402055:	48 8d 3d 1c 25 00 00 	lea    0x251c(%rip),%rdi        # 404578 <_IO_stdin_used+0x578>
  40205c:	b8 00 00 00 00       	mov    $0x0,%eax
  402061:	e8 4a f0 ff ff       	callq  4010b0 <printf@plt>
  402066:	b8 00 00 00 00       	mov    $0x0,%eax
  40206b:	e8 46 fd ff ff       	callq  401db6 <check_fail>
  402070:	39 3d 86 54 00 00    	cmp    %edi,0x5486(%rip)        # 4074fc <vlevel>
  402076:	74 1a                	je     402092 <validate+0x96>
  402078:	48 8d 3d bb 23 00 00 	lea    0x23bb(%rip),%rdi        # 40443a <_IO_stdin_used+0x43a>
  40207f:	e8 fc ef ff ff       	callq  401080 <puts@plt>
  402084:	89 de                	mov    %ebx,%esi
  402086:	bf 00 00 00 00       	mov    $0x0,%edi
  40208b:	e8 ab fd ff ff       	callq  401e3b <notify_server>
  402090:	eb a9                	jmp    40203b <validate+0x3f>
  402092:	0f be 15 8f 60 00 00 	movsbl 0x608f(%rip),%edx        # 408128 <target_prefix>
  402099:	89 fe                	mov    %edi,%esi
  40209b:	48 8d 3d fe 24 00 00 	lea    0x24fe(%rip),%rdi        # 4045a0 <_IO_stdin_used+0x5a0>
  4020a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a7:	e8 04 f0 ff ff       	callq  4010b0 <printf@plt>
  4020ac:	89 de                	mov    %ebx,%esi
  4020ae:	bf 01 00 00 00       	mov    $0x1,%edi
  4020b3:	e8 83 fd ff ff       	callq  401e3b <notify_server>
  4020b8:	eb 81                	jmp    40203b <validate+0x3f>

00000000004020ba <fail>:
  4020ba:	48 83 ec 08          	sub    $0x8,%rsp
  4020be:	83 3d 43 54 00 00 00 	cmpl   $0x0,0x5443(%rip)        # 407508 <is_checker>
  4020c5:	75 11                	jne    4020d8 <fail+0x1e>
  4020c7:	89 fe                	mov    %edi,%esi
  4020c9:	bf 00 00 00 00       	mov    $0x0,%edi
  4020ce:	e8 68 fd ff ff       	callq  401e3b <notify_server>
  4020d3:	48 83 c4 08          	add    $0x8,%rsp
  4020d7:	c3                   	retq   
  4020d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4020dd:	e8 d4 fc ff ff       	callq  401db6 <check_fail>

00000000004020e2 <bushandler>:
  4020e2:	48 83 ec 08          	sub    $0x8,%rsp
  4020e6:	83 3d 1b 54 00 00 00 	cmpl   $0x0,0x541b(%rip)        # 407508 <is_checker>
  4020ed:	74 16                	je     402105 <bushandler+0x23>
  4020ef:	48 8d 3d 77 23 00 00 	lea    0x2377(%rip),%rdi        # 40446d <_IO_stdin_used+0x46d>
  4020f6:	e8 85 ef ff ff       	callq  401080 <puts@plt>
  4020fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402100:	e8 b1 fc ff ff       	callq  401db6 <check_fail>
  402105:	48 8d 3d cc 24 00 00 	lea    0x24cc(%rip),%rdi        # 4045d8 <_IO_stdin_used+0x5d8>
  40210c:	e8 6f ef ff ff       	callq  401080 <puts@plt>
  402111:	48 8d 3d 5f 23 00 00 	lea    0x235f(%rip),%rdi        # 404477 <_IO_stdin_used+0x477>
  402118:	e8 63 ef ff ff       	callq  401080 <puts@plt>
  40211d:	be 00 00 00 00       	mov    $0x0,%esi
  402122:	bf 00 00 00 00       	mov    $0x0,%edi
  402127:	e8 0f fd ff ff       	callq  401e3b <notify_server>
  40212c:	bf 01 00 00 00       	mov    $0x1,%edi
  402131:	e8 ba f0 ff ff       	callq  4011f0 <exit@plt>

0000000000402136 <seghandler>:
  402136:	48 83 ec 08          	sub    $0x8,%rsp
  40213a:	83 3d c7 53 00 00 00 	cmpl   $0x0,0x53c7(%rip)        # 407508 <is_checker>
  402141:	74 16                	je     402159 <seghandler+0x23>
  402143:	48 8d 3d 43 23 00 00 	lea    0x2343(%rip),%rdi        # 40448d <_IO_stdin_used+0x48d>
  40214a:	e8 31 ef ff ff       	callq  401080 <puts@plt>
  40214f:	b8 00 00 00 00       	mov    $0x0,%eax
  402154:	e8 5d fc ff ff       	callq  401db6 <check_fail>
  402159:	48 8d 3d 98 24 00 00 	lea    0x2498(%rip),%rdi        # 4045f8 <_IO_stdin_used+0x5f8>
  402160:	e8 1b ef ff ff       	callq  401080 <puts@plt>
  402165:	48 8d 3d 0b 23 00 00 	lea    0x230b(%rip),%rdi        # 404477 <_IO_stdin_used+0x477>
  40216c:	e8 0f ef ff ff       	callq  401080 <puts@plt>
  402171:	be 00 00 00 00       	mov    $0x0,%esi
  402176:	bf 00 00 00 00       	mov    $0x0,%edi
  40217b:	e8 bb fc ff ff       	callq  401e3b <notify_server>
  402180:	bf 01 00 00 00       	mov    $0x1,%edi
  402185:	e8 66 f0 ff ff       	callq  4011f0 <exit@plt>

000000000040218a <illegalhandler>:
  40218a:	48 83 ec 08          	sub    $0x8,%rsp
  40218e:	83 3d 73 53 00 00 00 	cmpl   $0x0,0x5373(%rip)        # 407508 <is_checker>
  402195:	74 16                	je     4021ad <illegalhandler+0x23>
  402197:	48 8d 3d 02 23 00 00 	lea    0x2302(%rip),%rdi        # 4044a0 <_IO_stdin_used+0x4a0>
  40219e:	e8 dd ee ff ff       	callq  401080 <puts@plt>
  4021a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4021a8:	e8 09 fc ff ff       	callq  401db6 <check_fail>
  4021ad:	48 8d 3d 6c 24 00 00 	lea    0x246c(%rip),%rdi        # 404620 <_IO_stdin_used+0x620>
  4021b4:	e8 c7 ee ff ff       	callq  401080 <puts@plt>
  4021b9:	48 8d 3d b7 22 00 00 	lea    0x22b7(%rip),%rdi        # 404477 <_IO_stdin_used+0x477>
  4021c0:	e8 bb ee ff ff       	callq  401080 <puts@plt>
  4021c5:	be 00 00 00 00       	mov    $0x0,%esi
  4021ca:	bf 00 00 00 00       	mov    $0x0,%edi
  4021cf:	e8 67 fc ff ff       	callq  401e3b <notify_server>
  4021d4:	bf 01 00 00 00       	mov    $0x1,%edi
  4021d9:	e8 12 f0 ff ff       	callq  4011f0 <exit@plt>

00000000004021de <sigalrmhandler>:
  4021de:	48 83 ec 08          	sub    $0x8,%rsp
  4021e2:	83 3d 1f 53 00 00 00 	cmpl   $0x0,0x531f(%rip)        # 407508 <is_checker>
  4021e9:	74 16                	je     402201 <sigalrmhandler+0x23>
  4021eb:	48 8d 3d c2 22 00 00 	lea    0x22c2(%rip),%rdi        # 4044b4 <_IO_stdin_used+0x4b4>
  4021f2:	e8 89 ee ff ff       	callq  401080 <puts@plt>
  4021f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4021fc:	e8 b5 fb ff ff       	callq  401db6 <check_fail>
  402201:	be 05 00 00 00       	mov    $0x5,%esi
  402206:	48 8d 3d 43 24 00 00 	lea    0x2443(%rip),%rdi        # 404650 <_IO_stdin_used+0x650>
  40220d:	b8 00 00 00 00       	mov    $0x0,%eax
  402212:	e8 99 ee ff ff       	callq  4010b0 <printf@plt>
  402217:	be 00 00 00 00       	mov    $0x0,%esi
  40221c:	bf 00 00 00 00       	mov    $0x0,%edi
  402221:	e8 15 fc ff ff       	callq  401e3b <notify_server>
  402226:	bf 01 00 00 00       	mov    $0x1,%edi
  40222b:	e8 c0 ef ff ff       	callq  4011f0 <exit@plt>

0000000000402230 <launch>:
  402230:	55                   	push   %rbp
  402231:	48 89 e5             	mov    %rsp,%rbp
  402234:	48 89 fa             	mov    %rdi,%rdx
  402237:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40223b:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40223f:	48 29 c4             	sub    %rax,%rsp
  402242:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402247:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40224b:	be f4 00 00 00       	mov    $0xf4,%esi
  402250:	e8 6b ee ff ff       	callq  4010c0 <memset@plt>
  402255:	48 8b 05 44 52 00 00 	mov    0x5244(%rip),%rax        # 4074a0 <stdin@@GLIBC_2.2.5>
  40225c:	48 39 05 8d 52 00 00 	cmp    %rax,0x528d(%rip)        # 4074f0 <infile>
  402263:	74 2b                	je     402290 <launch+0x60>
  402265:	c7 05 8d 52 00 00 00 	movl   $0x0,0x528d(%rip)        # 4074fc <vlevel>
  40226c:	00 00 00 
  40226f:	b8 00 00 00 00       	mov    $0x0,%eax
  402274:	e8 a8 fa ff ff       	callq  401d21 <test>
  402279:	83 3d 88 52 00 00 00 	cmpl   $0x0,0x5288(%rip)        # 407508 <is_checker>
  402280:	75 21                	jne    4022a3 <launch+0x73>
  402282:	48 8d 3d 4b 22 00 00 	lea    0x224b(%rip),%rdi        # 4044d4 <_IO_stdin_used+0x4d4>
  402289:	e8 f2 ed ff ff       	callq  401080 <puts@plt>
  40228e:	c9                   	leaveq 
  40228f:	c3                   	retq   
  402290:	48 8d 3d 25 22 00 00 	lea    0x2225(%rip),%rdi        # 4044bc <_IO_stdin_used+0x4bc>
  402297:	b8 00 00 00 00       	mov    $0x0,%eax
  40229c:	e8 0f ee ff ff       	callq  4010b0 <printf@plt>
  4022a1:	eb c2                	jmp    402265 <launch+0x35>
  4022a3:	48 8d 3d 1f 22 00 00 	lea    0x221f(%rip),%rdi        # 4044c9 <_IO_stdin_used+0x4c9>
  4022aa:	e8 d1 ed ff ff       	callq  401080 <puts@plt>
  4022af:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b4:	e8 fd fa ff ff       	callq  401db6 <check_fail>

00000000004022b9 <stable_launch>:
  4022b9:	53                   	push   %rbx
  4022ba:	48 89 3d 27 52 00 00 	mov    %rdi,0x5227(%rip)        # 4074e8 <global_offset>
  4022c1:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4022c7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4022cd:	b9 32 01 00 00       	mov    $0x132,%ecx
  4022d2:	ba 07 00 00 00       	mov    $0x7,%edx
  4022d7:	be 00 00 10 00       	mov    $0x100000,%esi
  4022dc:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4022e1:	e8 ba ed ff ff       	callq  4010a0 <mmap@plt>
  4022e6:	48 89 c3             	mov    %rax,%rbx
  4022e9:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4022ef:	75 43                	jne    402334 <stable_launch+0x7b>
  4022f1:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4022f8:	48 89 15 31 5e 00 00 	mov    %rdx,0x5e31(%rip)        # 408130 <stack_top>
  4022ff:	48 89 e0             	mov    %rsp,%rax
  402302:	48 89 d4             	mov    %rdx,%rsp
  402305:	48 89 c2             	mov    %rax,%rdx
  402308:	48 89 15 d1 51 00 00 	mov    %rdx,0x51d1(%rip)        # 4074e0 <global_save_stack>
  40230f:	48 8b 3d d2 51 00 00 	mov    0x51d2(%rip),%rdi        # 4074e8 <global_offset>
  402316:	e8 15 ff ff ff       	callq  402230 <launch>
  40231b:	48 8b 05 be 51 00 00 	mov    0x51be(%rip),%rax        # 4074e0 <global_save_stack>
  402322:	48 89 c4             	mov    %rax,%rsp
  402325:	be 00 00 10 00       	mov    $0x100000,%esi
  40232a:	48 89 df             	mov    %rbx,%rdi
  40232d:	e8 4e ee ff ff       	callq  401180 <munmap@plt>
  402332:	5b                   	pop    %rbx
  402333:	c3                   	retq   
  402334:	be 00 00 10 00       	mov    $0x100000,%esi
  402339:	48 89 c7             	mov    %rax,%rdi
  40233c:	e8 3f ee ff ff       	callq  401180 <munmap@plt>
  402341:	ba 00 60 58 55       	mov    $0x55586000,%edx
  402346:	48 8d 35 3b 23 00 00 	lea    0x233b(%rip),%rsi        # 404688 <_IO_stdin_used+0x688>
  40234d:	48 8b 3d 6c 51 00 00 	mov    0x516c(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  402354:	b8 00 00 00 00       	mov    $0x0,%eax
  402359:	e8 c2 ed ff ff       	callq  401120 <fprintf@plt>
  40235e:	bf 01 00 00 00       	mov    $0x1,%edi
  402363:	e8 88 ee ff ff       	callq  4011f0 <exit@plt>

0000000000402368 <rio_readinitb>:
  402368:	89 37                	mov    %esi,(%rdi)
  40236a:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402371:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402375:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402379:	c3                   	retq   

000000000040237a <sigalrm_handler>:
  40237a:	48 83 ec 08          	sub    $0x8,%rsp
  40237e:	ba 00 00 00 00       	mov    $0x0,%edx
  402383:	48 8d 35 36 23 00 00 	lea    0x2336(%rip),%rsi        # 4046c0 <trans_char+0x10>
  40238a:	48 8b 3d 2f 51 00 00 	mov    0x512f(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  402391:	b8 00 00 00 00       	mov    $0x0,%eax
  402396:	e8 85 ed ff ff       	callq  401120 <fprintf@plt>
  40239b:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a0:	e8 4b ee ff ff       	callq  4011f0 <exit@plt>

00000000004023a5 <urlencode>:
  4023a5:	41 54                	push   %r12
  4023a7:	55                   	push   %rbp
  4023a8:	53                   	push   %rbx
  4023a9:	48 83 ec 10          	sub    $0x10,%rsp
  4023ad:	48 89 fb             	mov    %rdi,%rbx
  4023b0:	48 89 f5             	mov    %rsi,%rbp
  4023b3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4023ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4023bf:	f2 ae                	repnz scas %es:(%rdi),%al
  4023c1:	48 89 ce             	mov    %rcx,%rsi
  4023c4:	48 f7 d6             	not    %rsi
  4023c7:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4023ca:	eb 0e                	jmp    4023da <urlencode+0x35>
  4023cc:	88 55 00             	mov    %dl,0x0(%rbp)
  4023cf:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023d3:	48 83 c3 01          	add    $0x1,%rbx
  4023d7:	44 89 e0             	mov    %r12d,%eax
  4023da:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4023de:	85 c0                	test   %eax,%eax
  4023e0:	0f 84 95 00 00 00    	je     40247b <urlencode+0xd6>
  4023e6:	0f b6 13             	movzbl (%rbx),%edx
  4023e9:	80 fa 2a             	cmp    $0x2a,%dl
  4023ec:	0f 94 c1             	sete   %cl
  4023ef:	80 fa 2d             	cmp    $0x2d,%dl
  4023f2:	0f 94 c0             	sete   %al
  4023f5:	08 c1                	or     %al,%cl
  4023f7:	75 d3                	jne    4023cc <urlencode+0x27>
  4023f9:	80 fa 2e             	cmp    $0x2e,%dl
  4023fc:	74 ce                	je     4023cc <urlencode+0x27>
  4023fe:	80 fa 5f             	cmp    $0x5f,%dl
  402401:	74 c9                	je     4023cc <urlencode+0x27>
  402403:	8d 42 d0             	lea    -0x30(%rdx),%eax
  402406:	3c 09                	cmp    $0x9,%al
  402408:	76 c2                	jbe    4023cc <urlencode+0x27>
  40240a:	8d 42 bf             	lea    -0x41(%rdx),%eax
  40240d:	3c 19                	cmp    $0x19,%al
  40240f:	76 bb                	jbe    4023cc <urlencode+0x27>
  402411:	8d 42 9f             	lea    -0x61(%rdx),%eax
  402414:	3c 19                	cmp    $0x19,%al
  402416:	76 b4                	jbe    4023cc <urlencode+0x27>
  402418:	80 fa 20             	cmp    $0x20,%dl
  40241b:	74 4c                	je     402469 <urlencode+0xc4>
  40241d:	8d 42 e0             	lea    -0x20(%rdx),%eax
  402420:	3c 5f                	cmp    $0x5f,%al
  402422:	0f 96 c1             	setbe  %cl
  402425:	80 fa 09             	cmp    $0x9,%dl
  402428:	0f 94 c0             	sete   %al
  40242b:	08 c1                	or     %al,%cl
  40242d:	74 47                	je     402476 <urlencode+0xd1>
  40242f:	0f b6 d2             	movzbl %dl,%edx
  402432:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402437:	48 8d 35 17 23 00 00 	lea    0x2317(%rip),%rsi        # 404755 <trans_char+0xa5>
  40243e:	b8 00 00 00 00       	mov    $0x0,%eax
  402443:	e8 98 ed ff ff       	callq  4011e0 <sprintf@plt>
  402448:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  40244d:	88 45 00             	mov    %al,0x0(%rbp)
  402450:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  402455:	88 45 01             	mov    %al,0x1(%rbp)
  402458:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  40245d:	88 45 02             	mov    %al,0x2(%rbp)
  402460:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402464:	e9 6a ff ff ff       	jmpq   4023d3 <urlencode+0x2e>
  402469:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40246d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402471:	e9 5d ff ff ff       	jmpq   4023d3 <urlencode+0x2e>
  402476:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40247b:	48 83 c4 10          	add    $0x10,%rsp
  40247f:	5b                   	pop    %rbx
  402480:	5d                   	pop    %rbp
  402481:	41 5c                	pop    %r12
  402483:	c3                   	retq   

0000000000402484 <rio_writen>:
  402484:	41 55                	push   %r13
  402486:	41 54                	push   %r12
  402488:	55                   	push   %rbp
  402489:	53                   	push   %rbx
  40248a:	48 83 ec 08          	sub    $0x8,%rsp
  40248e:	41 89 fc             	mov    %edi,%r12d
  402491:	48 89 f5             	mov    %rsi,%rbp
  402494:	49 89 d5             	mov    %rdx,%r13
  402497:	48 89 d3             	mov    %rdx,%rbx
  40249a:	eb 06                	jmp    4024a2 <rio_writen+0x1e>
  40249c:	48 29 c3             	sub    %rax,%rbx
  40249f:	48 01 c5             	add    %rax,%rbp
  4024a2:	48 85 db             	test   %rbx,%rbx
  4024a5:	74 24                	je     4024cb <rio_writen+0x47>
  4024a7:	48 89 da             	mov    %rbx,%rdx
  4024aa:	48 89 ee             	mov    %rbp,%rsi
  4024ad:	44 89 e7             	mov    %r12d,%edi
  4024b0:	e8 db eb ff ff       	callq  401090 <write@plt>
  4024b5:	48 85 c0             	test   %rax,%rax
  4024b8:	7f e2                	jg     40249c <rio_writen+0x18>
  4024ba:	e8 81 eb ff ff       	callq  401040 <__errno_location@plt>
  4024bf:	83 38 04             	cmpl   $0x4,(%rax)
  4024c2:	75 15                	jne    4024d9 <rio_writen+0x55>
  4024c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c9:	eb d1                	jmp    40249c <rio_writen+0x18>
  4024cb:	4c 89 e8             	mov    %r13,%rax
  4024ce:	48 83 c4 08          	add    $0x8,%rsp
  4024d2:	5b                   	pop    %rbx
  4024d3:	5d                   	pop    %rbp
  4024d4:	41 5c                	pop    %r12
  4024d6:	41 5d                	pop    %r13
  4024d8:	c3                   	retq   
  4024d9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4024e0:	eb ec                	jmp    4024ce <rio_writen+0x4a>

00000000004024e2 <rio_read>:
  4024e2:	41 55                	push   %r13
  4024e4:	41 54                	push   %r12
  4024e6:	55                   	push   %rbp
  4024e7:	53                   	push   %rbx
  4024e8:	48 83 ec 08          	sub    $0x8,%rsp
  4024ec:	48 89 fb             	mov    %rdi,%rbx
  4024ef:	49 89 f5             	mov    %rsi,%r13
  4024f2:	49 89 d4             	mov    %rdx,%r12
  4024f5:	eb 0a                	jmp    402501 <rio_read+0x1f>
  4024f7:	e8 44 eb ff ff       	callq  401040 <__errno_location@plt>
  4024fc:	83 38 04             	cmpl   $0x4,(%rax)
  4024ff:	75 5a                	jne    40255b <rio_read+0x79>
  402501:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402504:	85 ed                	test   %ebp,%ebp
  402506:	7f 22                	jg     40252a <rio_read+0x48>
  402508:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40250c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402511:	48 89 ee             	mov    %rbp,%rsi
  402514:	8b 3b                	mov    (%rbx),%edi
  402516:	e8 d5 eb ff ff       	callq  4010f0 <read@plt>
  40251b:	89 43 04             	mov    %eax,0x4(%rbx)
  40251e:	85 c0                	test   %eax,%eax
  402520:	78 d5                	js     4024f7 <rio_read+0x15>
  402522:	74 40                	je     402564 <rio_read+0x82>
  402524:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402528:	eb d7                	jmp    402501 <rio_read+0x1f>
  40252a:	89 e8                	mov    %ebp,%eax
  40252c:	4c 39 e0             	cmp    %r12,%rax
  40252f:	72 03                	jb     402534 <rio_read+0x52>
  402531:	44 89 e5             	mov    %r12d,%ebp
  402534:	4c 63 e5             	movslq %ebp,%r12
  402537:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40253b:	4c 89 e2             	mov    %r12,%rdx
  40253e:	4c 89 ef             	mov    %r13,%rdi
  402541:	e8 fa eb ff ff       	callq  401140 <memcpy@plt>
  402546:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40254a:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40254d:	4c 89 e0             	mov    %r12,%rax
  402550:	48 83 c4 08          	add    $0x8,%rsp
  402554:	5b                   	pop    %rbx
  402555:	5d                   	pop    %rbp
  402556:	41 5c                	pop    %r12
  402558:	41 5d                	pop    %r13
  40255a:	c3                   	retq   
  40255b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402562:	eb ec                	jmp    402550 <rio_read+0x6e>
  402564:	b8 00 00 00 00       	mov    $0x0,%eax
  402569:	eb e5                	jmp    402550 <rio_read+0x6e>

000000000040256b <rio_readlineb>:
  40256b:	41 55                	push   %r13
  40256d:	41 54                	push   %r12
  40256f:	55                   	push   %rbp
  402570:	53                   	push   %rbx
  402571:	48 83 ec 18          	sub    $0x18,%rsp
  402575:	49 89 fd             	mov    %rdi,%r13
  402578:	48 89 f5             	mov    %rsi,%rbp
  40257b:	49 89 d4             	mov    %rdx,%r12
  40257e:	bb 01 00 00 00       	mov    $0x1,%ebx
  402583:	4c 39 e3             	cmp    %r12,%rbx
  402586:	73 44                	jae    4025cc <rio_readlineb+0x61>
  402588:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40258d:	ba 01 00 00 00       	mov    $0x1,%edx
  402592:	4c 89 ef             	mov    %r13,%rdi
  402595:	e8 48 ff ff ff       	callq  4024e2 <rio_read>
  40259a:	83 f8 01             	cmp    $0x1,%eax
  40259d:	75 19                	jne    4025b8 <rio_readlineb+0x4d>
  40259f:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4025a3:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4025a8:	88 45 00             	mov    %al,0x0(%rbp)
  4025ab:	3c 0a                	cmp    $0xa,%al
  4025ad:	74 1a                	je     4025c9 <rio_readlineb+0x5e>
  4025af:	48 83 c3 01          	add    $0x1,%rbx
  4025b3:	48 89 d5             	mov    %rdx,%rbp
  4025b6:	eb cb                	jmp    402583 <rio_readlineb+0x18>
  4025b8:	85 c0                	test   %eax,%eax
  4025ba:	75 22                	jne    4025de <rio_readlineb+0x73>
  4025bc:	48 83 fb 01          	cmp    $0x1,%rbx
  4025c0:	75 0a                	jne    4025cc <rio_readlineb+0x61>
  4025c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c7:	eb 0a                	jmp    4025d3 <rio_readlineb+0x68>
  4025c9:	48 89 d5             	mov    %rdx,%rbp
  4025cc:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4025d0:	48 89 d8             	mov    %rbx,%rax
  4025d3:	48 83 c4 18          	add    $0x18,%rsp
  4025d7:	5b                   	pop    %rbx
  4025d8:	5d                   	pop    %rbp
  4025d9:	41 5c                	pop    %r12
  4025db:	41 5d                	pop    %r13
  4025dd:	c3                   	retq   
  4025de:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4025e5:	eb ec                	jmp    4025d3 <rio_readlineb+0x68>

00000000004025e7 <submitr>:
  4025e7:	41 57                	push   %r15
  4025e9:	41 56                	push   %r14
  4025eb:	41 55                	push   %r13
  4025ed:	41 54                	push   %r12
  4025ef:	55                   	push   %rbp
  4025f0:	53                   	push   %rbx
  4025f1:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  4025f8:	49 89 fd             	mov    %rdi,%r13
  4025fb:	89 74 24 14          	mov    %esi,0x14(%rsp)
  4025ff:	49 89 d7             	mov    %rdx,%r15
  402602:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  402607:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40260c:	4d 89 ce             	mov    %r9,%r14
  40260f:	48 8b ac 24 90 a0 00 	mov    0xa090(%rsp),%rbp
  402616:	00 
  402617:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  40261e:	00 00 00 00 
  402622:	ba 00 00 00 00       	mov    $0x0,%edx
  402627:	be 01 00 00 00       	mov    $0x1,%esi
  40262c:	bf 02 00 00 00       	mov    $0x2,%edi
  402631:	e8 ea eb ff ff       	callq  401220 <socket@plt>
  402636:	85 c0                	test   %eax,%eax
  402638:	0f 88 9a 02 00 00    	js     4028d8 <submitr+0x2f1>
  40263e:	89 c3                	mov    %eax,%ebx
  402640:	4c 89 ef             	mov    %r13,%rdi
  402643:	e8 c8 ea ff ff       	callq  401110 <gethostbyname@plt>
  402648:	48 85 c0             	test   %rax,%rax
  40264b:	0f 84 d3 02 00 00    	je     402924 <submitr+0x33d>
  402651:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  402658:	00 
  402659:	48 c7 84 24 42 a0 00 	movq   $0x0,0xa042(%rsp)
  402660:	00 00 00 00 00 
  402665:	c7 84 24 4a a0 00 00 	movl   $0x0,0xa04a(%rsp)
  40266c:	00 00 00 00 
  402670:	66 c7 84 24 4e a0 00 	movw   $0x0,0xa04e(%rsp)
  402677:	00 00 00 
  40267a:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  402681:	00 02 00 
  402684:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402688:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40268c:	48 8d bc 24 44 a0 00 	lea    0xa044(%rsp),%rdi
  402693:	00 
  402694:	48 8b 31             	mov    (%rcx),%rsi
  402697:	e8 f4 ea ff ff       	callq  401190 <memmove@plt>
  40269c:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  4026a1:	66 c1 c0 08          	rol    $0x8,%ax
  4026a5:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  4026ac:	00 
  4026ad:	ba 10 00 00 00       	mov    $0x10,%edx
  4026b2:	4c 89 e6             	mov    %r12,%rsi
  4026b5:	89 df                	mov    %ebx,%edi
  4026b7:	e8 44 eb ff ff       	callq  401200 <connect@plt>
  4026bc:	85 c0                	test   %eax,%eax
  4026be:	0f 88 c8 02 00 00    	js     40298c <submitr+0x3a5>
  4026c4:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4026cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4026d0:	48 89 f1             	mov    %rsi,%rcx
  4026d3:	4c 89 f7             	mov    %r14,%rdi
  4026d6:	f2 ae                	repnz scas %es:(%rdi),%al
  4026d8:	48 89 ca             	mov    %rcx,%rdx
  4026db:	48 f7 d2             	not    %rdx
  4026de:	48 89 f1             	mov    %rsi,%rcx
  4026e1:	4c 89 ff             	mov    %r15,%rdi
  4026e4:	f2 ae                	repnz scas %es:(%rdi),%al
  4026e6:	48 f7 d1             	not    %rcx
  4026e9:	49 89 c8             	mov    %rcx,%r8
  4026ec:	48 89 f1             	mov    %rsi,%rcx
  4026ef:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4026f4:	f2 ae                	repnz scas %es:(%rdi),%al
  4026f6:	48 f7 d1             	not    %rcx
  4026f9:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4026fe:	48 89 f1             	mov    %rsi,%rcx
  402701:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402706:	f2 ae                	repnz scas %es:(%rdi),%al
  402708:	48 89 c8             	mov    %rcx,%rax
  40270b:	48 f7 d0             	not    %rax
  40270e:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402713:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402718:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40271f:	00 
  402720:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402726:	0f 87 ba 02 00 00    	ja     4029e6 <submitr+0x3ff>
  40272c:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  402733:	00 
  402734:	b9 00 04 00 00       	mov    $0x400,%ecx
  402739:	b8 00 00 00 00       	mov    $0x0,%eax
  40273e:	48 89 f7             	mov    %rsi,%rdi
  402741:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402744:	4c 89 f7             	mov    %r14,%rdi
  402747:	e8 59 fc ff ff       	callq  4023a5 <urlencode>
  40274c:	85 c0                	test   %eax,%eax
  40274e:	0f 88 05 03 00 00    	js     402a59 <submitr+0x472>
  402754:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  40275b:	00 
  40275c:	4d 89 e9             	mov    %r13,%r9
  40275f:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  402766:	00 
  402767:	4c 89 f9             	mov    %r15,%rcx
  40276a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40276f:	48 8d 35 72 1f 00 00 	lea    0x1f72(%rip),%rsi        # 4046e8 <trans_char+0x38>
  402776:	4c 89 e7             	mov    %r12,%rdi
  402779:	b8 00 00 00 00       	mov    $0x0,%eax
  40277e:	e8 5d ea ff ff       	callq  4011e0 <sprintf@plt>
  402783:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40278a:	b8 00 00 00 00       	mov    $0x0,%eax
  40278f:	4c 89 e7             	mov    %r12,%rdi
  402792:	f2 ae                	repnz scas %es:(%rdi),%al
  402794:	48 89 ca             	mov    %rcx,%rdx
  402797:	48 f7 d2             	not    %rdx
  40279a:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  40279e:	4c 89 e6             	mov    %r12,%rsi
  4027a1:	89 df                	mov    %ebx,%edi
  4027a3:	e8 dc fc ff ff       	callq  402484 <rio_writen>
  4027a8:	48 85 c0             	test   %rax,%rax
  4027ab:	0f 88 33 03 00 00    	js     402ae4 <submitr+0x4fd>
  4027b1:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  4027b8:	00 
  4027b9:	89 de                	mov    %ebx,%esi
  4027bb:	4c 89 e7             	mov    %r12,%rdi
  4027be:	e8 a5 fb ff ff       	callq  402368 <rio_readinitb>
  4027c3:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4027ca:	00 
  4027cb:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027d0:	4c 89 e7             	mov    %r12,%rdi
  4027d3:	e8 93 fd ff ff       	callq  40256b <rio_readlineb>
  4027d8:	48 85 c0             	test   %rax,%rax
  4027db:	0f 8e 72 03 00 00    	jle    402b53 <submitr+0x56c>
  4027e1:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  4027e8:	00 
  4027e9:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  4027f0:	00 
  4027f1:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  4027f8:	00 
  4027f9:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  4027fe:	48 8d 35 57 1f 00 00 	lea    0x1f57(%rip),%rsi        # 40475c <trans_char+0xac>
  402805:	b8 00 00 00 00       	mov    $0x0,%eax
  40280a:	e8 61 e9 ff ff       	callq  401170 <__isoc99_sscanf@plt>
  40280f:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402816:	00 
  402817:	b9 03 00 00 00       	mov    $0x3,%ecx
  40281c:	48 8d 3d 50 1f 00 00 	lea    0x1f50(%rip),%rdi        # 404773 <trans_char+0xc3>
  402823:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402825:	0f 97 c0             	seta   %al
  402828:	1c 00                	sbb    $0x0,%al
  40282a:	84 c0                	test   %al,%al
  40282c:	0f 84 9f 03 00 00    	je     402bd1 <submitr+0x5ea>
  402832:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402839:	00 
  40283a:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402841:	00 
  402842:	ba 00 20 00 00       	mov    $0x2000,%edx
  402847:	e8 1f fd ff ff       	callq  40256b <rio_readlineb>
  40284c:	48 85 c0             	test   %rax,%rax
  40284f:	7f be                	jg     40280f <submitr+0x228>
  402851:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402858:	3a 20 43 
  40285b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402862:	20 75 6e 
  402865:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402869:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40286d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402874:	74 6f 20 
  402877:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  40287e:	68 65 61 
  402881:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402885:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402889:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402890:	66 72 6f 
  402893:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  40289a:	20 72 65 
  40289d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028a1:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4028a5:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4028ac:	73 65 72 
  4028af:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4028b3:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  4028ba:	89 df                	mov    %ebx,%edi
  4028bc:	e8 1f e8 ff ff       	callq  4010e0 <close@plt>
  4028c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028c6:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  4028cd:	5b                   	pop    %rbx
  4028ce:	5d                   	pop    %rbp
  4028cf:	41 5c                	pop    %r12
  4028d1:	41 5d                	pop    %r13
  4028d3:	41 5e                	pop    %r14
  4028d5:	41 5f                	pop    %r15
  4028d7:	c3                   	retq   
  4028d8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028df:	3a 20 43 
  4028e2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4028e9:	20 75 6e 
  4028ec:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028f0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028f4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028fb:	74 6f 20 
  4028fe:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402905:	65 20 73 
  402908:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40290c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402910:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402917:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40291d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402922:	eb a2                	jmp    4028c6 <submitr+0x2df>
  402924:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40292b:	3a 20 44 
  40292e:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402935:	20 75 6e 
  402938:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40293c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402940:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402947:	74 6f 20 
  40294a:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402951:	76 65 20 
  402954:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402958:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40295c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402963:	72 20 61 
  402966:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40296a:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402971:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402977:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40297b:	89 df                	mov    %ebx,%edi
  40297d:	e8 5e e7 ff ff       	callq  4010e0 <close@plt>
  402982:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402987:	e9 3a ff ff ff       	jmpq   4028c6 <submitr+0x2df>
  40298c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402993:	3a 20 55 
  402996:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40299d:	20 74 6f 
  4029a0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029a4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029a8:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4029af:	65 63 74 
  4029b2:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4029b9:	68 65 20 
  4029bc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029c0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029c4:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  4029cb:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  4029d1:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  4029d5:	89 df                	mov    %ebx,%edi
  4029d7:	e8 04 e7 ff ff       	callq  4010e0 <close@plt>
  4029dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029e1:	e9 e0 fe ff ff       	jmpq   4028c6 <submitr+0x2df>
  4029e6:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4029ed:	3a 20 52 
  4029f0:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4029f7:	20 73 74 
  4029fa:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029fe:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a02:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402a09:	74 6f 6f 
  402a0c:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402a13:	65 2e 20 
  402a16:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a1a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a1e:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402a25:	61 73 65 
  402a28:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402a2f:	49 54 52 
  402a32:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a36:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a3a:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402a41:	55 46 00 
  402a44:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a48:	89 df                	mov    %ebx,%edi
  402a4a:	e8 91 e6 ff ff       	callq  4010e0 <close@plt>
  402a4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a54:	e9 6d fe ff ff       	jmpq   4028c6 <submitr+0x2df>
  402a59:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402a60:	3a 20 52 
  402a63:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402a6a:	20 73 74 
  402a6d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a71:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a75:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402a7c:	63 6f 6e 
  402a7f:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402a86:	20 61 6e 
  402a89:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a8d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a91:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402a98:	67 61 6c 
  402a9b:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402aa2:	6e 70 72 
  402aa5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402aa9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402aad:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402ab4:	6c 65 20 
  402ab7:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402abe:	63 74 65 
  402ac1:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402ac5:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402ac9:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402acf:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402ad3:	89 df                	mov    %ebx,%edi
  402ad5:	e8 06 e6 ff ff       	callq  4010e0 <close@plt>
  402ada:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402adf:	e9 e2 fd ff ff       	jmpq   4028c6 <submitr+0x2df>
  402ae4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402aeb:	3a 20 43 
  402aee:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402af5:	20 75 6e 
  402af8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402afc:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b00:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b07:	74 6f 20 
  402b0a:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402b11:	20 74 6f 
  402b14:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b18:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b1c:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402b23:	72 65 73 
  402b26:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402b2d:	65 72 76 
  402b30:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b34:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b38:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402b3e:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402b42:	89 df                	mov    %ebx,%edi
  402b44:	e8 97 e5 ff ff       	callq  4010e0 <close@plt>
  402b49:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b4e:	e9 73 fd ff ff       	jmpq   4028c6 <submitr+0x2df>
  402b53:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b5a:	3a 20 43 
  402b5d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b64:	20 75 6e 
  402b67:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b6b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b6f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b76:	74 6f 20 
  402b79:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402b80:	66 69 72 
  402b83:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b87:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b8b:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402b92:	61 64 65 
  402b95:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402b9c:	6d 20 72 
  402b9f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ba3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402ba7:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402bae:	20 73 65 
  402bb1:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402bb5:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402bbc:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402bc0:	89 df                	mov    %ebx,%edi
  402bc2:	e8 19 e5 ff ff       	callq  4010e0 <close@plt>
  402bc7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bcc:	e9 f5 fc ff ff       	jmpq   4028c6 <submitr+0x2df>
  402bd1:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402bd8:	00 
  402bd9:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402be0:	00 
  402be1:	ba 00 20 00 00       	mov    $0x2000,%edx
  402be6:	e8 80 f9 ff ff       	callq  40256b <rio_readlineb>
  402beb:	48 85 c0             	test   %rax,%rax
  402bee:	0f 8e 97 00 00 00    	jle    402c8b <submitr+0x6a4>
  402bf4:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  402bfb:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402c01:	0f 85 08 01 00 00    	jne    402d0f <submitr+0x728>
  402c07:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402c0e:	00 
  402c0f:	48 89 ef             	mov    %rbp,%rdi
  402c12:	e8 59 e4 ff ff       	callq  401070 <strcpy@plt>
  402c17:	89 df                	mov    %ebx,%edi
  402c19:	e8 c2 e4 ff ff       	callq  4010e0 <close@plt>
  402c1e:	b9 04 00 00 00       	mov    $0x4,%ecx
  402c23:	48 8d 3d 43 1b 00 00 	lea    0x1b43(%rip),%rdi        # 40476d <trans_char+0xbd>
  402c2a:	48 89 ee             	mov    %rbp,%rsi
  402c2d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c2f:	0f 97 c0             	seta   %al
  402c32:	1c 00                	sbb    $0x0,%al
  402c34:	0f be c0             	movsbl %al,%eax
  402c37:	85 c0                	test   %eax,%eax
  402c39:	0f 84 87 fc ff ff    	je     4028c6 <submitr+0x2df>
  402c3f:	b9 05 00 00 00       	mov    $0x5,%ecx
  402c44:	48 8d 3d 26 1b 00 00 	lea    0x1b26(%rip),%rdi        # 404771 <trans_char+0xc1>
  402c4b:	48 89 ee             	mov    %rbp,%rsi
  402c4e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c50:	0f 97 c0             	seta   %al
  402c53:	1c 00                	sbb    $0x0,%al
  402c55:	0f be c0             	movsbl %al,%eax
  402c58:	85 c0                	test   %eax,%eax
  402c5a:	0f 84 66 fc ff ff    	je     4028c6 <submitr+0x2df>
  402c60:	b9 03 00 00 00       	mov    $0x3,%ecx
  402c65:	48 8d 3d 0a 1b 00 00 	lea    0x1b0a(%rip),%rdi        # 404776 <trans_char+0xc6>
  402c6c:	48 89 ee             	mov    %rbp,%rsi
  402c6f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c71:	0f 97 c0             	seta   %al
  402c74:	1c 00                	sbb    $0x0,%al
  402c76:	0f be c0             	movsbl %al,%eax
  402c79:	85 c0                	test   %eax,%eax
  402c7b:	0f 84 45 fc ff ff    	je     4028c6 <submitr+0x2df>
  402c81:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c86:	e9 3b fc ff ff       	jmpq   4028c6 <submitr+0x2df>
  402c8b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c92:	3a 20 43 
  402c95:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c9c:	20 75 6e 
  402c9f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ca3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ca7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cae:	74 6f 20 
  402cb1:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402cb8:	73 74 61 
  402cbb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cbf:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402cc3:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402cca:	65 73 73 
  402ccd:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402cd4:	72 6f 6d 
  402cd7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402cdb:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402cdf:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402ce6:	6c 74 20 
  402ce9:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402ced:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402cf4:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402cfa:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402cfe:	89 df                	mov    %ebx,%edi
  402d00:	e8 db e3 ff ff       	callq  4010e0 <close@plt>
  402d05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d0a:	e9 b7 fb ff ff       	jmpq   4028c6 <submitr+0x2df>
  402d0f:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402d14:	48 8d 35 0d 1a 00 00 	lea    0x1a0d(%rip),%rsi        # 404728 <trans_char+0x78>
  402d1b:	48 89 ef             	mov    %rbp,%rdi
  402d1e:	b8 00 00 00 00       	mov    $0x0,%eax
  402d23:	e8 b8 e4 ff ff       	callq  4011e0 <sprintf@plt>
  402d28:	89 df                	mov    %ebx,%edi
  402d2a:	e8 b1 e3 ff ff       	callq  4010e0 <close@plt>
  402d2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d34:	e9 8d fb ff ff       	jmpq   4028c6 <submitr+0x2df>

0000000000402d39 <init_timeout>:
  402d39:	85 ff                	test   %edi,%edi
  402d3b:	74 26                	je     402d63 <init_timeout+0x2a>
  402d3d:	53                   	push   %rbx
  402d3e:	89 fb                	mov    %edi,%ebx
  402d40:	78 1a                	js     402d5c <init_timeout+0x23>
  402d42:	48 8d 35 31 f6 ff ff 	lea    -0x9cf(%rip),%rsi        # 40237a <sigalrm_handler>
  402d49:	bf 0e 00 00 00       	mov    $0xe,%edi
  402d4e:	e8 ad e3 ff ff       	callq  401100 <signal@plt>
  402d53:	89 df                	mov    %ebx,%edi
  402d55:	e8 76 e3 ff ff       	callq  4010d0 <alarm@plt>
  402d5a:	5b                   	pop    %rbx
  402d5b:	c3                   	retq   
  402d5c:	bb 00 00 00 00       	mov    $0x0,%ebx
  402d61:	eb df                	jmp    402d42 <init_timeout+0x9>
  402d63:	c3                   	retq   

0000000000402d64 <init_driver>:
  402d64:	41 54                	push   %r12
  402d66:	55                   	push   %rbp
  402d67:	53                   	push   %rbx
  402d68:	48 83 ec 10          	sub    $0x10,%rsp
  402d6c:	49 89 fc             	mov    %rdi,%r12
  402d6f:	be 01 00 00 00       	mov    $0x1,%esi
  402d74:	bf 0d 00 00 00       	mov    $0xd,%edi
  402d79:	e8 82 e3 ff ff       	callq  401100 <signal@plt>
  402d7e:	be 01 00 00 00       	mov    $0x1,%esi
  402d83:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d88:	e8 73 e3 ff ff       	callq  401100 <signal@plt>
  402d8d:	be 01 00 00 00       	mov    $0x1,%esi
  402d92:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d97:	e8 64 e3 ff ff       	callq  401100 <signal@plt>
  402d9c:	ba 00 00 00 00       	mov    $0x0,%edx
  402da1:	be 01 00 00 00       	mov    $0x1,%esi
  402da6:	bf 02 00 00 00       	mov    $0x2,%edi
  402dab:	e8 70 e4 ff ff       	callq  401220 <socket@plt>
  402db0:	85 c0                	test   %eax,%eax
  402db2:	0f 88 8a 00 00 00    	js     402e42 <init_driver+0xde>
  402db8:	89 c3                	mov    %eax,%ebx
  402dba:	48 8d 3d b8 19 00 00 	lea    0x19b8(%rip),%rdi        # 404779 <trans_char+0xc9>
  402dc1:	e8 4a e3 ff ff       	callq  401110 <gethostbyname@plt>
  402dc6:	48 85 c0             	test   %rax,%rax
  402dc9:	0f 84 c6 00 00 00    	je     402e95 <init_driver+0x131>
  402dcf:	48 89 e5             	mov    %rsp,%rbp
  402dd2:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402dd9:	00 00 
  402ddb:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402de2:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402de8:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402dee:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402df2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402df6:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402dfa:	48 8b 31             	mov    (%rcx),%rsi
  402dfd:	e8 8e e3 ff ff       	callq  401190 <memmove@plt>
  402e02:	66 c7 44 24 02 3c a4 	movw   $0xa43c,0x2(%rsp)
  402e09:	ba 10 00 00 00       	mov    $0x10,%edx
  402e0e:	48 89 ee             	mov    %rbp,%rsi
  402e11:	89 df                	mov    %ebx,%edi
  402e13:	e8 e8 e3 ff ff       	callq  401200 <connect@plt>
  402e18:	85 c0                	test   %eax,%eax
  402e1a:	0f 88 e7 00 00 00    	js     402f07 <init_driver+0x1a3>
  402e20:	89 df                	mov    %ebx,%edi
  402e22:	e8 b9 e2 ff ff       	callq  4010e0 <close@plt>
  402e27:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402e2e:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402e34:	b8 00 00 00 00       	mov    $0x0,%eax
  402e39:	48 83 c4 10          	add    $0x10,%rsp
  402e3d:	5b                   	pop    %rbx
  402e3e:	5d                   	pop    %rbp
  402e3f:	41 5c                	pop    %r12
  402e41:	c3                   	retq   
  402e42:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402e49:	3a 20 43 
  402e4c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402e53:	20 75 6e 
  402e56:	49 89 04 24          	mov    %rax,(%r12)
  402e5a:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402e5f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e66:	74 6f 20 
  402e69:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402e70:	65 20 73 
  402e73:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402e78:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402e7d:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402e84:	6b 65 
  402e86:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402e8d:	00 
  402e8e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e93:	eb a4                	jmp    402e39 <init_driver+0xd5>
  402e95:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402e9c:	3a 20 44 
  402e9f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402ea6:	20 75 6e 
  402ea9:	49 89 04 24          	mov    %rax,(%r12)
  402ead:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402eb2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402eb9:	74 6f 20 
  402ebc:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402ec3:	76 65 20 
  402ec6:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402ecb:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402ed0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402ed7:	72 20 61 
  402eda:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402edf:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402ee6:	72 65 
  402ee8:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402eef:	73 
  402ef0:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402ef6:	89 df                	mov    %ebx,%edi
  402ef8:	e8 e3 e1 ff ff       	callq  4010e0 <close@plt>
  402efd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f02:	e9 32 ff ff ff       	jmpq   402e39 <init_driver+0xd5>
  402f07:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402f0e:	3a 20 55 
  402f11:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402f18:	20 74 6f 
  402f1b:	49 89 04 24          	mov    %rax,(%r12)
  402f1f:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402f24:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402f2b:	65 63 74 
  402f2e:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402f35:	65 72 76 
  402f38:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402f3d:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402f42:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402f49:	72 
  402f4a:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402f50:	89 df                	mov    %ebx,%edi
  402f52:	e8 89 e1 ff ff       	callq  4010e0 <close@plt>
  402f57:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f5c:	e9 d8 fe ff ff       	jmpq   402e39 <init_driver+0xd5>

0000000000402f61 <driver_post>:
  402f61:	53                   	push   %rbx
  402f62:	4c 89 cb             	mov    %r9,%rbx
  402f65:	45 85 c0             	test   %r8d,%r8d
  402f68:	75 18                	jne    402f82 <driver_post+0x21>
  402f6a:	48 85 ff             	test   %rdi,%rdi
  402f6d:	74 05                	je     402f74 <driver_post+0x13>
  402f6f:	80 3f 00             	cmpb   $0x0,(%rdi)
  402f72:	75 32                	jne    402fa6 <driver_post+0x45>
  402f74:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f79:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f7d:	44 89 c0             	mov    %r8d,%eax
  402f80:	5b                   	pop    %rbx
  402f81:	c3                   	retq   
  402f82:	48 89 ce             	mov    %rcx,%rsi
  402f85:	48 8d 3d fb 17 00 00 	lea    0x17fb(%rip),%rdi        # 404787 <trans_char+0xd7>
  402f8c:	b8 00 00 00 00       	mov    $0x0,%eax
  402f91:	e8 1a e1 ff ff       	callq  4010b0 <printf@plt>
  402f96:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f9b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f9f:	b8 00 00 00 00       	mov    $0x0,%eax
  402fa4:	eb da                	jmp    402f80 <driver_post+0x1f>
  402fa6:	48 83 ec 08          	sub    $0x8,%rsp
  402faa:	41 51                	push   %r9
  402fac:	49 89 c9             	mov    %rcx,%r9
  402faf:	49 89 d0             	mov    %rdx,%r8
  402fb2:	48 89 f9             	mov    %rdi,%rcx
  402fb5:	48 89 f2             	mov    %rsi,%rdx
  402fb8:	be a4 3c 00 00       	mov    $0x3ca4,%esi
  402fbd:	48 8d 3d b5 17 00 00 	lea    0x17b5(%rip),%rdi        # 404779 <trans_char+0xc9>
  402fc4:	e8 1e f6 ff ff       	callq  4025e7 <submitr>
  402fc9:	48 83 c4 10          	add    $0x10,%rsp
  402fcd:	eb b1                	jmp    402f80 <driver_post+0x1f>

0000000000402fcf <check>:
  402fcf:	89 f8                	mov    %edi,%eax
  402fd1:	c1 e8 1c             	shr    $0x1c,%eax
  402fd4:	74 1d                	je     402ff3 <check+0x24>
  402fd6:	b9 00 00 00 00       	mov    $0x0,%ecx
  402fdb:	83 f9 1f             	cmp    $0x1f,%ecx
  402fde:	7f 0d                	jg     402fed <check+0x1e>
  402fe0:	89 f8                	mov    %edi,%eax
  402fe2:	d3 e8                	shr    %cl,%eax
  402fe4:	3c 0a                	cmp    $0xa,%al
  402fe6:	74 11                	je     402ff9 <check+0x2a>
  402fe8:	83 c1 08             	add    $0x8,%ecx
  402feb:	eb ee                	jmp    402fdb <check+0xc>
  402fed:	b8 01 00 00 00       	mov    $0x1,%eax
  402ff2:	c3                   	retq   
  402ff3:	b8 00 00 00 00       	mov    $0x0,%eax
  402ff8:	c3                   	retq   
  402ff9:	b8 00 00 00 00       	mov    $0x0,%eax
  402ffe:	c3                   	retq   

0000000000402fff <gencookie>:
  402fff:	53                   	push   %rbx
  403000:	83 c7 01             	add    $0x1,%edi
  403003:	e8 48 e0 ff ff       	callq  401050 <srandom@plt>
  403008:	e8 53 e1 ff ff       	callq  401160 <random@plt>
  40300d:	89 c3                	mov    %eax,%ebx
  40300f:	89 c7                	mov    %eax,%edi
  403011:	e8 b9 ff ff ff       	callq  402fcf <check>
  403016:	85 c0                	test   %eax,%eax
  403018:	74 ee                	je     403008 <gencookie+0x9>
  40301a:	89 d8                	mov    %ebx,%eax
  40301c:	5b                   	pop    %rbx
  40301d:	c3                   	retq   
  40301e:	66 90                	xchg   %ax,%ax

0000000000403020 <__libc_csu_init>:
  403020:	41 57                	push   %r15
  403022:	49 89 d7             	mov    %rdx,%r15
  403025:	41 56                	push   %r14
  403027:	49 89 f6             	mov    %rsi,%r14
  40302a:	41 55                	push   %r13
  40302c:	41 89 fd             	mov    %edi,%r13d
  40302f:	41 54                	push   %r12
  403031:	4c 8d 25 d8 3d 00 00 	lea    0x3dd8(%rip),%r12        # 406e10 <__frame_dummy_init_array_entry>
  403038:	55                   	push   %rbp
  403039:	48 8d 2d d8 3d 00 00 	lea    0x3dd8(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  403040:	53                   	push   %rbx
  403041:	4c 29 e5             	sub    %r12,%rbp
  403044:	48 83 ec 08          	sub    $0x8,%rsp
  403048:	e8 b3 df ff ff       	callq  401000 <_init>
  40304d:	48 c1 fd 03          	sar    $0x3,%rbp
  403051:	74 1b                	je     40306e <__libc_csu_init+0x4e>
  403053:	31 db                	xor    %ebx,%ebx
  403055:	0f 1f 00             	nopl   (%rax)
  403058:	4c 89 fa             	mov    %r15,%rdx
  40305b:	4c 89 f6             	mov    %r14,%rsi
  40305e:	44 89 ef             	mov    %r13d,%edi
  403061:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  403065:	48 83 c3 01          	add    $0x1,%rbx
  403069:	48 39 dd             	cmp    %rbx,%rbp
  40306c:	75 ea                	jne    403058 <__libc_csu_init+0x38>
  40306e:	48 83 c4 08          	add    $0x8,%rsp
  403072:	5b                   	pop    %rbx
  403073:	5d                   	pop    %rbp
  403074:	41 5c                	pop    %r12
  403076:	41 5d                	pop    %r13
  403078:	41 5e                	pop    %r14
  40307a:	41 5f                	pop    %r15
  40307c:	c3                   	retq   
  40307d:	0f 1f 00             	nopl   (%rax)

0000000000403080 <__libc_csu_fini>:
  403080:	c3                   	retq   

Disassembly of section .fini:

0000000000403084 <_fini>:
  403084:	48 83 ec 08          	sub    $0x8,%rsp
  403088:	48 83 c4 08          	add    $0x8,%rsp
  40308c:	c3                   	retq   
