
ctarget：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 ed 4f 00 00 	mov    0x4fed(%rip),%rax        # 405ff8 <__gmon_start__>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	callq  *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 4f 00 00    	pushq  0x4fe2(%rip)        # 406008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 4f 00 00    	jmpq   *0x4fe4(%rip)        # 406010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <strcasecmp@plt>:
  401030:	ff 25 e2 4f 00 00    	jmpq   *0x4fe2(%rip)        # 406018 <strcasecmp@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <__errno_location@plt>:
  401040:	ff 25 da 4f 00 00    	jmpq   *0x4fda(%rip)        # 406020 <__errno_location@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <srandom@plt>:
  401050:	ff 25 d2 4f 00 00    	jmpq   *0x4fd2(%rip)        # 406028 <srandom@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 ca 4f 00 00    	jmpq   *0x4fca(%rip)        # 406030 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 c2 4f 00 00    	jmpq   *0x4fc2(%rip)        # 406038 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <puts@plt>:
  401080:	ff 25 ba 4f 00 00    	jmpq   *0x4fba(%rip)        # 406040 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <write@plt>:
  401090:	ff 25 b2 4f 00 00    	jmpq   *0x4fb2(%rip)        # 406048 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <mmap@plt>:
  4010a0:	ff 25 aa 4f 00 00    	jmpq   *0x4faa(%rip)        # 406050 <mmap@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <printf@plt>:
  4010b0:	ff 25 a2 4f 00 00    	jmpq   *0x4fa2(%rip)        # 406058 <printf@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <memset@plt>:
  4010c0:	ff 25 9a 4f 00 00    	jmpq   *0x4f9a(%rip)        # 406060 <memset@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <alarm@plt>:
  4010d0:	ff 25 92 4f 00 00    	jmpq   *0x4f92(%rip)        # 406068 <alarm@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <close@plt>:
  4010e0:	ff 25 8a 4f 00 00    	jmpq   *0x4f8a(%rip)        # 406070 <close@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <read@plt>:
  4010f0:	ff 25 82 4f 00 00    	jmpq   *0x4f82(%rip)        # 406078 <read@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <signal@plt>:
  401100:	ff 25 7a 4f 00 00    	jmpq   *0x4f7a(%rip)        # 406080 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 72 4f 00 00    	jmpq   *0x4f72(%rip)        # 406088 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <fprintf@plt>:
  401120:	ff 25 6a 4f 00 00    	jmpq   *0x4f6a(%rip)        # 406090 <fprintf@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <strtol@plt>:
  401130:	ff 25 62 4f 00 00    	jmpq   *0x4f62(%rip)        # 406098 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 5a 4f 00 00    	jmpq   *0x4f5a(%rip)        # 4060a0 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <time@plt>:
  401150:	ff 25 52 4f 00 00    	jmpq   *0x4f52(%rip)        # 4060a8 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <random@plt>:
  401160:	ff 25 4a 4f 00 00    	jmpq   *0x4f4a(%rip)        # 4060b0 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 42 4f 00 00    	jmpq   *0x4f42(%rip)        # 4060b8 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <munmap@plt>:
  401180:	ff 25 3a 4f 00 00    	jmpq   *0x4f3a(%rip)        # 4060c0 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <memmove@plt>:
  401190:	ff 25 32 4f 00 00    	jmpq   *0x4f32(%rip)        # 4060c8 <memmove@GLIBC_2.2.5>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 2a 4f 00 00    	jmpq   *0x4f2a(%rip)        # 4060d0 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 22 4f 00 00    	jmpq   *0x4f22(%rip)        # 4060d8 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	pushq  $0x18
  4011bb:	e9 60 fe ff ff       	jmpq   401020 <.plt>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 1a 4f 00 00    	jmpq   *0x4f1a(%rip)        # 4060e0 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	pushq  $0x19
  4011cb:	e9 50 fe ff ff       	jmpq   401020 <.plt>

00000000004011d0 <gethostname@plt>:
  4011d0:	ff 25 12 4f 00 00    	jmpq   *0x4f12(%rip)        # 4060e8 <gethostname@GLIBC_2.2.5>
  4011d6:	68 1a 00 00 00       	pushq  $0x1a
  4011db:	e9 40 fe ff ff       	jmpq   401020 <.plt>

00000000004011e0 <sprintf@plt>:
  4011e0:	ff 25 0a 4f 00 00    	jmpq   *0x4f0a(%rip)        # 4060f0 <sprintf@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	pushq  $0x1b
  4011eb:	e9 30 fe ff ff       	jmpq   401020 <.plt>

00000000004011f0 <exit@plt>:
  4011f0:	ff 25 02 4f 00 00    	jmpq   *0x4f02(%rip)        # 4060f8 <exit@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	pushq  $0x1c
  4011fb:	e9 20 fe ff ff       	jmpq   401020 <.plt>

0000000000401200 <connect@plt>:
  401200:	ff 25 fa 4e 00 00    	jmpq   *0x4efa(%rip)        # 406100 <connect@GLIBC_2.2.5>
  401206:	68 1d 00 00 00       	pushq  $0x1d
  40120b:	e9 10 fe ff ff       	jmpq   401020 <.plt>

0000000000401210 <getc@plt>:
  401210:	ff 25 f2 4e 00 00    	jmpq   *0x4ef2(%rip)        # 406108 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	pushq  $0x1e
  40121b:	e9 00 fe ff ff       	jmpq   401020 <.plt>

0000000000401220 <socket@plt>:
  401220:	ff 25 ea 4e 00 00    	jmpq   *0x4eea(%rip)        # 406110 <socket@GLIBC_2.2.5>
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
  40123f:	49 c7 c0 a0 2f 40 00 	mov    $0x402fa0,%r8
  401246:	48 c7 c1 40 2f 40 00 	mov    $0x402f40,%rcx
  40124d:	48 c7 c7 c9 14 40 00 	mov    $0x4014c9,%rdi
  401254:	ff 15 96 4d 00 00    	callq  *0x4d96(%rip)        # 405ff0 <__libc_start_main@GLIBC_2.2.5>
  40125a:	f4                   	hlt    
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <_dl_relocate_static_pie>:
  401260:	c3                   	retq   
  401261:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401268:	00 00 00 
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <deregister_tm_clones>:
  401270:	b8 90 64 40 00       	mov    $0x406490,%eax
  401275:	48 3d 90 64 40 00    	cmp    $0x406490,%rax
  40127b:	74 13                	je     401290 <deregister_tm_clones+0x20>
  40127d:	b8 00 00 00 00       	mov    $0x0,%eax
  401282:	48 85 c0             	test   %rax,%rax
  401285:	74 09                	je     401290 <deregister_tm_clones+0x20>
  401287:	bf 90 64 40 00       	mov    $0x406490,%edi
  40128c:	ff e0                	jmpq   *%rax
  40128e:	66 90                	xchg   %ax,%ax
  401290:	c3                   	retq   
  401291:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401298:	00 00 00 00 
  40129c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012a0 <register_tm_clones>:
  4012a0:	be 90 64 40 00       	mov    $0x406490,%esi
  4012a5:	48 81 ee 90 64 40 00 	sub    $0x406490,%rsi
  4012ac:	48 c1 fe 03          	sar    $0x3,%rsi
  4012b0:	48 89 f0             	mov    %rsi,%rax
  4012b3:	48 c1 e8 3f          	shr    $0x3f,%rax
  4012b7:	48 01 c6             	add    %rax,%rsi
  4012ba:	48 d1 fe             	sar    %rsi
  4012bd:	74 11                	je     4012d0 <register_tm_clones+0x30>
  4012bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c4:	48 85 c0             	test   %rax,%rax
  4012c7:	74 07                	je     4012d0 <register_tm_clones+0x30>
  4012c9:	bf 90 64 40 00       	mov    $0x406490,%edi
  4012ce:	ff e0                	jmpq   *%rax
  4012d0:	c3                   	retq   
  4012d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012e0 <__do_global_dtors_aux>:
  4012e0:	80 3d e1 51 00 00 00 	cmpb   $0x0,0x51e1(%rip)        # 4064c8 <completed.7325>
  4012e7:	75 17                	jne    401300 <__do_global_dtors_aux+0x20>
  4012e9:	55                   	push   %rbp
  4012ea:	48 89 e5             	mov    %rsp,%rbp
  4012ed:	e8 7e ff ff ff       	callq  401270 <deregister_tm_clones>
  4012f2:	c6 05 cf 51 00 00 01 	movb   $0x1,0x51cf(%rip)        # 4064c8 <completed.7325>
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
  401319:	83 3d e8 51 00 00 00 	cmpl   $0x0,0x51e8(%rip)        # 406508 <is_checker>
  401320:	74 4b                	je     40136d <usage+0x5b>
  401322:	48 8d 3d df 1c 00 00 	lea    0x1cdf(%rip),%rdi        # 403008 <_IO_stdin_used+0x8>
  401329:	b8 00 00 00 00       	mov    $0x0,%eax
  40132e:	e8 7d fd ff ff       	callq  4010b0 <printf@plt>
  401333:	48 8d 3d 06 1d 00 00 	lea    0x1d06(%rip),%rdi        # 403040 <_IO_stdin_used+0x40>
  40133a:	e8 41 fd ff ff       	callq  401080 <puts@plt>
  40133f:	48 8d 3d 32 1e 00 00 	lea    0x1e32(%rip),%rdi        # 403178 <_IO_stdin_used+0x178>
  401346:	e8 35 fd ff ff       	callq  401080 <puts@plt>
  40134b:	48 8d 3d 16 1d 00 00 	lea    0x1d16(%rip),%rdi        # 403068 <_IO_stdin_used+0x68>
  401352:	e8 29 fd ff ff       	callq  401080 <puts@plt>
  401357:	48 8d 3d 34 1e 00 00 	lea    0x1e34(%rip),%rdi        # 403192 <_IO_stdin_used+0x192>
  40135e:	e8 1d fd ff ff       	callq  401080 <puts@plt>
  401363:	bf 00 00 00 00       	mov    $0x0,%edi
  401368:	e8 83 fe ff ff       	callq  4011f0 <exit@plt>
  40136d:	48 8d 3d 3a 1e 00 00 	lea    0x1e3a(%rip),%rdi        # 4031ae <_IO_stdin_used+0x1ae>
  401374:	b8 00 00 00 00       	mov    $0x0,%eax
  401379:	e8 32 fd ff ff       	callq  4010b0 <printf@plt>
  40137e:	48 8d 3d 0b 1d 00 00 	lea    0x1d0b(%rip),%rdi        # 403090 <_IO_stdin_used+0x90>
  401385:	e8 f6 fc ff ff       	callq  401080 <puts@plt>
  40138a:	48 8d 3d 27 1d 00 00 	lea    0x1d27(%rip),%rdi        # 4030b8 <_IO_stdin_used+0xb8>
  401391:	e8 ea fc ff ff       	callq  401080 <puts@plt>
  401396:	48 8d 3d 2f 1e 00 00 	lea    0x1e2f(%rip),%rdi        # 4031cc <_IO_stdin_used+0x1cc>
  40139d:	e8 de fc ff ff       	callq  401080 <puts@plt>
  4013a2:	eb bf                	jmp    401363 <usage+0x51>

00000000004013a4 <initialize_target>:
  4013a4:	55                   	push   %rbp
  4013a5:	53                   	push   %rbx
  4013a6:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  4013ad:	89 f5                	mov    %esi,%ebp
  4013af:	89 3d 43 51 00 00    	mov    %edi,0x5143(%rip)        # 4064f8 <check_level>
  4013b5:	8b 3d 75 4d 00 00    	mov    0x4d75(%rip),%edi        # 406130 <target_id>
  4013bb:	e8 5f 1b 00 00       	callq  402f1f <gencookie>
  4013c0:	89 05 3e 51 00 00    	mov    %eax,0x513e(%rip)        # 406504 <cookie>
  4013c6:	89 c7                	mov    %eax,%edi
  4013c8:	e8 52 1b 00 00       	callq  402f1f <gencookie>
  4013cd:	89 05 2d 51 00 00    	mov    %eax,0x512d(%rip)        # 406500 <authkey>
  4013d3:	8b 05 57 4d 00 00    	mov    0x4d57(%rip),%eax        # 406130 <target_id>
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
  401406:	48 89 05 73 50 00 00 	mov    %rax,0x5073(%rip)        # 406480 <buf_offset>
  40140d:	c6 05 14 5d 00 00 63 	movb   $0x63,0x5d14(%rip)        # 407128 <target_prefix>
  401414:	83 3d 6d 50 00 00 00 	cmpl   $0x0,0x506d(%rip)        # 406488 <notify>
  40141b:	74 09                	je     401426 <initialize_target+0x82>
  40141d:	83 3d e4 50 00 00 00 	cmpl   $0x0,0x50e4(%rip)        # 406508 <is_checker>
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
  40145e:	48 8d 15 fb 4c 00 00 	lea    0x4cfb(%rip),%rdx        # 406160 <host_table>
  401465:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  401469:	48 85 ff             	test   %rdi,%rdi
  40146c:	74 27                	je     401495 <initialize_target+0xf1>
  40146e:	48 89 e6             	mov    %rsp,%rsi
  401471:	e8 ba fb ff ff       	callq  401030 <strcasecmp@plt>
  401476:	85 c0                	test   %eax,%eax
  401478:	74 1b                	je     401495 <initialize_target+0xf1>
  40147a:	83 c3 01             	add    $0x1,%ebx
  40147d:	eb dc                	jmp    40145b <initialize_target+0xb7>
  40147f:	48 8d 3d 62 1c 00 00 	lea    0x1c62(%rip),%rdi        # 4030e8 <_IO_stdin_used+0xe8>
  401486:	e8 f5 fb ff ff       	callq  401080 <puts@plt>
  40148b:	bf 08 00 00 00       	mov    $0x8,%edi
  401490:	e8 5b fd ff ff       	callq  4011f0 <exit@plt>
  401495:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40149c:	00 
  40149d:	e8 e2 17 00 00       	callq  402c84 <init_driver>
  4014a2:	85 c0                	test   %eax,%eax
  4014a4:	79 80                	jns    401426 <initialize_target+0x82>
  4014a6:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4014ad:	00 
  4014ae:	48 8d 3d 6b 1c 00 00 	lea    0x1c6b(%rip),%rdi        # 403120 <_IO_stdin_used+0x120>
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
  4014d6:	48 c7 c6 56 20 40 00 	mov    $0x402056,%rsi
  4014dd:	bf 0b 00 00 00       	mov    $0xb,%edi
  4014e2:	e8 19 fc ff ff       	callq  401100 <signal@plt>
  4014e7:	48 c7 c6 02 20 40 00 	mov    $0x402002,%rsi
  4014ee:	bf 07 00 00 00       	mov    $0x7,%edi
  4014f3:	e8 08 fc ff ff       	callq  401100 <signal@plt>
  4014f8:	48 c7 c6 aa 20 40 00 	mov    $0x4020aa,%rsi
  4014ff:	bf 04 00 00 00       	mov    $0x4,%edi
  401504:	e8 f7 fb ff ff       	callq  401100 <signal@plt>
  401509:	83 3d f8 4f 00 00 00 	cmpl   $0x0,0x4ff8(%rip)        # 406508 <is_checker>
  401510:	75 26                	jne    401538 <main+0x6f>
  401512:	4c 8d 25 d4 1c 00 00 	lea    0x1cd4(%rip),%r12        # 4031ed <_IO_stdin_used+0x1ed>
  401519:	48 8b 05 80 4f 00 00 	mov    0x4f80(%rip),%rax        # 4064a0 <stdin@@GLIBC_2.2.5>
  401520:	48 89 05 c9 4f 00 00 	mov    %rax,0x4fc9(%rip)        # 4064f0 <infile>
  401527:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40152d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401533:	e9 88 00 00 00       	jmpq   4015c0 <main+0xf7>
  401538:	48 c7 c6 fe 20 40 00 	mov    $0x4020fe,%rsi
  40153f:	bf 0e 00 00 00       	mov    $0xe,%edi
  401544:	e8 b7 fb ff ff       	callq  401100 <signal@plt>
  401549:	bf 05 00 00 00       	mov    $0x5,%edi
  40154e:	e8 7d fb ff ff       	callq  4010d0 <alarm@plt>
  401553:	4c 8d 25 8b 1c 00 00 	lea    0x1c8b(%rip),%r12        # 4031e5 <_IO_stdin_used+0x1e5>
  40155a:	eb bd                	jmp    401519 <main+0x50>
  40155c:	48 8b 3b             	mov    (%rbx),%rdi
  40155f:	e8 ae fd ff ff       	callq  401312 <usage>
  401564:	48 8d 35 0a 1f 00 00 	lea    0x1f0a(%rip),%rsi        # 403475 <_IO_stdin_used+0x475>
  40156b:	48 8b 3d 36 4f 00 00 	mov    0x4f36(%rip),%rdi        # 4064a8 <optarg@@GLIBC_2.2.5>
  401572:	e8 29 fc ff ff       	callq  4011a0 <fopen@plt>
  401577:	48 89 05 72 4f 00 00 	mov    %rax,0x4f72(%rip)        # 4064f0 <infile>
  40157e:	48 85 c0             	test   %rax,%rax
  401581:	75 3d                	jne    4015c0 <main+0xf7>
  401583:	48 8b 15 1e 4f 00 00 	mov    0x4f1e(%rip),%rdx        # 4064a8 <optarg@@GLIBC_2.2.5>
  40158a:	48 8d 35 61 1c 00 00 	lea    0x1c61(%rip),%rsi        # 4031f2 <_IO_stdin_used+0x1f2>
  401591:	48 8b 3d 28 4f 00 00 	mov    0x4f28(%rip),%rdi        # 4064c0 <stderr@@GLIBC_2.2.5>
  401598:	e8 83 fb ff ff       	callq  401120 <fprintf@plt>
  40159d:	b8 01 00 00 00       	mov    $0x1,%eax
  4015a2:	e9 ce 00 00 00       	jmpq   401675 <main+0x1ac>
  4015a7:	ba 10 00 00 00       	mov    $0x10,%edx
  4015ac:	be 00 00 00 00       	mov    $0x0,%esi
  4015b1:	48 8b 3d f0 4e 00 00 	mov    0x4ef0(%rip),%rdi        # 4064a8 <optarg@@GLIBC_2.2.5>
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
  4015de:	48 8d 15 4b 1c 00 00 	lea    0x1c4b(%rip),%rdx        # 403230 <_IO_stdin_used+0x230>
  4015e5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4015e9:	48 01 d0             	add    %rdx,%rax
  4015ec:	ff e0                	jmpq   *%rax
  4015ee:	ba 0a 00 00 00       	mov    $0xa,%edx
  4015f3:	be 00 00 00 00       	mov    $0x0,%esi
  4015f8:	48 8b 3d a9 4e 00 00 	mov    0x4ea9(%rip),%rdi        # 4064a8 <optarg@@GLIBC_2.2.5>
  4015ff:	e8 2c fb ff ff       	callq  401130 <strtol@plt>
  401604:	41 89 c5             	mov    %eax,%r13d
  401607:	eb b7                	jmp    4015c0 <main+0xf7>
  401609:	c7 05 75 4e 00 00 00 	movl   $0x0,0x4e75(%rip)        # 406488 <notify>
  401610:	00 00 00 
  401613:	eb ab                	jmp    4015c0 <main+0xf7>
  401615:	48 8d 3d f3 1b 00 00 	lea    0x1bf3(%rip),%rdi        # 40320f <_IO_stdin_used+0x20f>
  40161c:	b8 00 00 00 00       	mov    $0x0,%eax
  401621:	e8 8a fa ff ff       	callq  4010b0 <printf@plt>
  401626:	48 8b 3b             	mov    (%rbx),%rdi
  401629:	e8 e4 fc ff ff       	callq  401312 <usage>
  40162e:	be 00 00 00 00       	mov    $0x0,%esi
  401633:	44 89 ef             	mov    %r13d,%edi
  401636:	e8 69 fd ff ff       	callq  4013a4 <initialize_target>
  40163b:	83 3d c6 4e 00 00 00 	cmpl   $0x0,0x4ec6(%rip)        # 406508 <is_checker>
  401642:	74 09                	je     40164d <main+0x184>
  401644:	44 39 35 b5 4e 00 00 	cmp    %r14d,0x4eb5(%rip)        # 406500 <authkey>
  40164b:	75 31                	jne    40167e <main+0x1b5>
  40164d:	8b 35 b1 4e 00 00    	mov    0x4eb1(%rip),%esi        # 406504 <cookie>
  401653:	48 8d 3d c8 1b 00 00 	lea    0x1bc8(%rip),%rdi        # 403222 <_IO_stdin_used+0x222>
  40165a:	b8 00 00 00 00       	mov    $0x0,%eax
  40165f:	e8 4c fa ff ff       	callq  4010b0 <printf@plt>
  401664:	48 8b 3d 15 4e 00 00 	mov    0x4e15(%rip),%rdi        # 406480 <buf_offset>
  40166b:	e8 69 0b 00 00       	callq  4021d9 <stable_launch>
  401670:	b8 00 00 00 00       	mov    $0x0,%eax
  401675:	5b                   	pop    %rbx
  401676:	5d                   	pop    %rbp
  401677:	41 5c                	pop    %r12
  401679:	41 5d                	pop    %r13
  40167b:	41 5e                	pop    %r14
  40167d:	c3                   	retq   
  40167e:	44 89 f6             	mov    %r14d,%esi
  401681:	48 8d 3d c0 1a 00 00 	lea    0x1ac0(%rip),%rdi        # 403148 <_IO_stdin_used+0x148>
  401688:	b8 00 00 00 00       	mov    $0x0,%eax
  40168d:	e8 1e fa ff ff       	callq  4010b0 <printf@plt>
  401692:	b8 00 00 00 00       	mov    $0x0,%eax
  401697:	e8 3a 06 00 00       	callq  401cd6 <check_fail>
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
  401ac1:	e8 43 02 00 00       	callq  401d09 <Gets>
  401ac6:	b8 01 00 00 00       	mov    $0x1,%eax
  401acb:	48 83 c4 18          	add    $0x18,%rsp
  401acf:	c3                   	retq   

0000000000401ad0 <touch1>:
  401ad0:	48 83 ec 08          	sub    $0x8,%rsp
  401ad4:	c7 05 1e 4a 00 00 01 	movl   $0x1,0x4a1e(%rip)        # 4064fc <vlevel>
  401adb:	00 00 00 
  401ade:	48 8d 3d e6 17 00 00 	lea    0x17e6(%rip),%rdi        # 4032cb <_IO_stdin_used+0x2cb>
  401ae5:	e8 96 f5 ff ff       	callq  401080 <puts@plt>
  401aea:	bf 01 00 00 00       	mov    $0x1,%edi
  401aef:	e8 28 04 00 00       	callq  401f1c <validate>
  401af4:	bf 00 00 00 00       	mov    $0x0,%edi
  401af9:	e8 f2 f6 ff ff       	callq  4011f0 <exit@plt>

0000000000401afe <touch2>:
  401afe:	48 83 ec 08          	sub    $0x8,%rsp
  401b02:	89 fe                	mov    %edi,%esi
  401b04:	c7 05 ee 49 00 00 02 	movl   $0x2,0x49ee(%rip)        # 4064fc <vlevel>
  401b0b:	00 00 00 
  401b0e:	39 3d f0 49 00 00    	cmp    %edi,0x49f0(%rip)        # 406504 <cookie>
  401b14:	74 25                	je     401b3b <touch2+0x3d>
  401b16:	48 8d 3d fb 17 00 00 	lea    0x17fb(%rip),%rdi        # 403318 <_IO_stdin_used+0x318>
  401b1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b22:	e8 89 f5 ff ff       	callq  4010b0 <printf@plt>
  401b27:	bf 02 00 00 00       	mov    $0x2,%edi
  401b2c:	e8 a9 04 00 00       	callq  401fda <fail>
  401b31:	bf 00 00 00 00       	mov    $0x0,%edi
  401b36:	e8 b5 f6 ff ff       	callq  4011f0 <exit@plt>
  401b3b:	48 8d 3d ae 17 00 00 	lea    0x17ae(%rip),%rdi        # 4032f0 <_IO_stdin_used+0x2f0>
  401b42:	b8 00 00 00 00       	mov    $0x0,%eax
  401b47:	e8 64 f5 ff ff       	callq  4010b0 <printf@plt>
  401b4c:	bf 02 00 00 00       	mov    $0x2,%edi
  401b51:	e8 c6 03 00 00       	callq  401f1c <validate>
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
  401ba4:	48 8d 35 3d 17 00 00 	lea    0x173d(%rip),%rsi        # 4032e8 <_IO_stdin_used+0x2e8>
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
  401bdd:	c7 05 15 49 00 00 03 	movl   $0x3,0x4915(%rip)        # 4064fc <vlevel>
  401be4:	00 00 00 
  401be7:	48 89 fe             	mov    %rdi,%rsi
  401bea:	8b 3d 14 49 00 00    	mov    0x4914(%rip),%edi        # 406504 <cookie>
  401bf0:	e8 63 ff ff ff       	callq  401b58 <hexmatch>
  401bf5:	85 c0                	test   %eax,%eax
  401bf7:	74 28                	je     401c21 <touch3+0x48>
  401bf9:	48 89 de             	mov    %rbx,%rsi
  401bfc:	48 8d 3d 3d 17 00 00 	lea    0x173d(%rip),%rdi        # 403340 <_IO_stdin_used+0x340>
  401c03:	b8 00 00 00 00       	mov    $0x0,%eax
  401c08:	e8 a3 f4 ff ff       	callq  4010b0 <printf@plt>
  401c0d:	bf 03 00 00 00       	mov    $0x3,%edi
  401c12:	e8 05 03 00 00       	callq  401f1c <validate>
  401c17:	bf 00 00 00 00       	mov    $0x0,%edi
  401c1c:	e8 cf f5 ff ff       	callq  4011f0 <exit@plt>
  401c21:	48 89 de             	mov    %rbx,%rsi
  401c24:	48 8d 3d 3d 17 00 00 	lea    0x173d(%rip),%rdi        # 403368 <_IO_stdin_used+0x368>
  401c2b:	b8 00 00 00 00       	mov    $0x0,%eax
  401c30:	e8 7b f4 ff ff       	callq  4010b0 <printf@plt>
  401c35:	bf 03 00 00 00       	mov    $0x3,%edi
  401c3a:	e8 9b 03 00 00       	callq  401fda <fail>
  401c3f:	eb d6                	jmp    401c17 <touch3+0x3e>

0000000000401c41 <test>:
  401c41:	48 83 ec 08          	sub    $0x8,%rsp
  401c45:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4a:	e8 6b fe ff ff       	callq  401aba <getbuf>
  401c4f:	89 c6                	mov    %eax,%esi
  401c51:	48 8d 3d 38 17 00 00 	lea    0x1738(%rip),%rdi        # 403390 <_IO_stdin_used+0x390>
  401c58:	b8 00 00 00 00       	mov    $0x0,%eax
  401c5d:	e8 4e f4 ff ff       	callq  4010b0 <printf@plt>
  401c62:	48 83 c4 08          	add    $0x8,%rsp
  401c66:	c3                   	retq   

0000000000401c67 <save_char>:
  401c67:	8b 05 b7 54 00 00    	mov    0x54b7(%rip),%eax        # 407124 <gets_cnt>
  401c6d:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c72:	7f 4a                	jg     401cbe <save_char+0x57>
  401c74:	89 f9                	mov    %edi,%ecx
  401c76:	c0 e9 04             	shr    $0x4,%cl
  401c79:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c7c:	4c 8d 05 2d 1a 00 00 	lea    0x1a2d(%rip),%r8        # 4036b0 <trans_char>
  401c83:	83 e1 0f             	and    $0xf,%ecx
  401c86:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401c8b:	48 8d 0d 8e 48 00 00 	lea    0x488e(%rip),%rcx        # 406520 <gets_buf>
  401c92:	48 63 f2             	movslq %edx,%rsi
  401c95:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401c99:	8d 72 01             	lea    0x1(%rdx),%esi
  401c9c:	83 e7 0f             	and    $0xf,%edi
  401c9f:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401ca4:	48 63 f6             	movslq %esi,%rsi
  401ca7:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401cab:	83 c2 02             	add    $0x2,%edx
  401cae:	48 63 d2             	movslq %edx,%rdx
  401cb1:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401cb5:	83 c0 01             	add    $0x1,%eax
  401cb8:	89 05 66 54 00 00    	mov    %eax,0x5466(%rip)        # 407124 <gets_cnt>
  401cbe:	c3                   	retq   

0000000000401cbf <save_term>:
  401cbf:	8b 05 5f 54 00 00    	mov    0x545f(%rip),%eax        # 407124 <gets_cnt>
  401cc5:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401cc8:	48 98                	cltq   
  401cca:	48 8d 15 4f 48 00 00 	lea    0x484f(%rip),%rdx        # 406520 <gets_buf>
  401cd1:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401cd5:	c3                   	retq   

0000000000401cd6 <check_fail>:
  401cd6:	48 83 ec 08          	sub    $0x8,%rsp
  401cda:	0f be 35 47 54 00 00 	movsbl 0x5447(%rip),%esi        # 407128 <target_prefix>
  401ce1:	48 8d 0d 38 48 00 00 	lea    0x4838(%rip),%rcx        # 406520 <gets_buf>
  401ce8:	8b 15 0a 48 00 00    	mov    0x480a(%rip),%edx        # 4064f8 <check_level>
  401cee:	48 8d 3d be 16 00 00 	lea    0x16be(%rip),%rdi        # 4033b3 <_IO_stdin_used+0x3b3>
  401cf5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cfa:	e8 b1 f3 ff ff       	callq  4010b0 <printf@plt>
  401cff:	bf 01 00 00 00       	mov    $0x1,%edi
  401d04:	e8 e7 f4 ff ff       	callq  4011f0 <exit@plt>

0000000000401d09 <Gets>:
  401d09:	41 54                	push   %r12
  401d0b:	55                   	push   %rbp
  401d0c:	53                   	push   %rbx
  401d0d:	49 89 fc             	mov    %rdi,%r12
  401d10:	c7 05 0a 54 00 00 00 	movl   $0x0,0x540a(%rip)        # 407124 <gets_cnt>
  401d17:	00 00 00 
  401d1a:	48 89 fb             	mov    %rdi,%rbx
  401d1d:	48 8b 3d cc 47 00 00 	mov    0x47cc(%rip),%rdi        # 4064f0 <infile>
  401d24:	e8 e7 f4 ff ff       	callq  401210 <getc@plt>
  401d29:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d2c:	74 18                	je     401d46 <Gets+0x3d>
  401d2e:	83 f8 0a             	cmp    $0xa,%eax
  401d31:	74 13                	je     401d46 <Gets+0x3d>
  401d33:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401d37:	88 03                	mov    %al,(%rbx)
  401d39:	0f b6 f8             	movzbl %al,%edi
  401d3c:	e8 26 ff ff ff       	callq  401c67 <save_char>
  401d41:	48 89 eb             	mov    %rbp,%rbx
  401d44:	eb d7                	jmp    401d1d <Gets+0x14>
  401d46:	c6 03 00             	movb   $0x0,(%rbx)
  401d49:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4e:	e8 6c ff ff ff       	callq  401cbf <save_term>
  401d53:	4c 89 e0             	mov    %r12,%rax
  401d56:	5b                   	pop    %rbx
  401d57:	5d                   	pop    %rbp
  401d58:	41 5c                	pop    %r12
  401d5a:	c3                   	retq   

0000000000401d5b <notify_server>:
  401d5b:	83 3d a6 47 00 00 00 	cmpl   $0x0,0x47a6(%rip)        # 406508 <is_checker>
  401d62:	0f 85 b3 01 00 00    	jne    401f1b <notify_server+0x1c0>
  401d68:	55                   	push   %rbp
  401d69:	53                   	push   %rbx
  401d6a:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401d71:	89 fb                	mov    %edi,%ebx
  401d73:	81 3d a7 53 00 00 9c 	cmpl   $0x1f9c,0x53a7(%rip)        # 407124 <gets_cnt>
  401d7a:	1f 00 00 
  401d7d:	0f 8f b8 00 00 00    	jg     401e3b <notify_server+0xe0>
  401d83:	44 0f be 0d 9d 53 00 	movsbl 0x539d(%rip),%r9d        # 407128 <target_prefix>
  401d8a:	00 
  401d8b:	83 3d f6 46 00 00 00 	cmpl   $0x0,0x46f6(%rip)        # 406488 <notify>
  401d92:	0f 84 be 00 00 00    	je     401e56 <notify_server+0xfb>
  401d98:	44 8b 05 61 47 00 00 	mov    0x4761(%rip),%r8d        # 406500 <authkey>
  401d9f:	85 db                	test   %ebx,%ebx
  401da1:	0f 84 ba 00 00 00    	je     401e61 <notify_server+0x106>
  401da7:	48 8d 2d 20 16 00 00 	lea    0x1620(%rip),%rbp        # 4033ce <_IO_stdin_used+0x3ce>
  401dae:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401db5:	00 
  401db6:	48 8d 05 63 47 00 00 	lea    0x4763(%rip),%rax        # 406520 <gets_buf>
  401dbd:	50                   	push   %rax
  401dbe:	56                   	push   %rsi
  401dbf:	48 89 e9             	mov    %rbp,%rcx
  401dc2:	8b 15 68 43 00 00    	mov    0x4368(%rip),%edx        # 406130 <target_id>
  401dc8:	48 8d 35 04 16 00 00 	lea    0x1604(%rip),%rsi        # 4033d3 <_IO_stdin_used+0x3d3>
  401dcf:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd4:	e8 07 f4 ff ff       	callq  4011e0 <sprintf@plt>
  401dd9:	48 83 c4 10          	add    $0x10,%rsp
  401ddd:	83 3d a4 46 00 00 00 	cmpl   $0x0,0x46a4(%rip)        # 406488 <notify>
  401de4:	0f 84 b7 00 00 00    	je     401ea1 <notify_server+0x146>
  401dea:	85 db                	test   %ebx,%ebx
  401dec:	0f 84 99 00 00 00    	je     401e8b <notify_server+0x130>
  401df2:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401df9:	00 
  401dfa:	49 89 e1             	mov    %rsp,%r9
  401dfd:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e03:	48 8b 15 3e 43 00 00 	mov    0x433e(%rip),%rdx        # 406148 <lab>
  401e0a:	48 8b 35 3f 43 00 00 	mov    0x433f(%rip),%rsi        # 406150 <course>
  401e11:	48 8b 3d 28 43 00 00 	mov    0x4328(%rip),%rdi        # 406140 <user_id>
  401e18:	e8 64 10 00 00       	callq  402e81 <driver_post>
  401e1d:	85 c0                	test   %eax,%eax
  401e1f:	78 4c                	js     401e6d <notify_server+0x112>
  401e21:	48 8d 3d f0 16 00 00 	lea    0x16f0(%rip),%rdi        # 403518 <_IO_stdin_used+0x518>
  401e28:	e8 53 f2 ff ff       	callq  401080 <puts@plt>
  401e2d:	48 8d 3d c7 15 00 00 	lea    0x15c7(%rip),%rdi        # 4033fb <_IO_stdin_used+0x3fb>
  401e34:	e8 47 f2 ff ff       	callq  401080 <puts@plt>
  401e39:	eb 5c                	jmp    401e97 <notify_server+0x13c>
  401e3b:	48 8d 3d a6 16 00 00 	lea    0x16a6(%rip),%rdi        # 4034e8 <_IO_stdin_used+0x4e8>
  401e42:	b8 00 00 00 00       	mov    $0x0,%eax
  401e47:	e8 64 f2 ff ff       	callq  4010b0 <printf@plt>
  401e4c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e51:	e8 9a f3 ff ff       	callq  4011f0 <exit@plt>
  401e56:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401e5c:	e9 3e ff ff ff       	jmpq   401d9f <notify_server+0x44>
  401e61:	48 8d 2d 61 15 00 00 	lea    0x1561(%rip),%rbp        # 4033c9 <_IO_stdin_used+0x3c9>
  401e68:	e9 41 ff ff ff       	jmpq   401dae <notify_server+0x53>
  401e6d:	48 89 e6             	mov    %rsp,%rsi
  401e70:	48 8d 3d 78 15 00 00 	lea    0x1578(%rip),%rdi        # 4033ef <_IO_stdin_used+0x3ef>
  401e77:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7c:	e8 2f f2 ff ff       	callq  4010b0 <printf@plt>
  401e81:	bf 01 00 00 00       	mov    $0x1,%edi
  401e86:	e8 65 f3 ff ff       	callq  4011f0 <exit@plt>
  401e8b:	48 8d 3d 73 15 00 00 	lea    0x1573(%rip),%rdi        # 403405 <_IO_stdin_used+0x405>
  401e92:	e8 e9 f1 ff ff       	callq  401080 <puts@plt>
  401e97:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401e9e:	5b                   	pop    %rbx
  401e9f:	5d                   	pop    %rbp
  401ea0:	c3                   	retq   
  401ea1:	48 89 ee             	mov    %rbp,%rsi
  401ea4:	48 8d 3d a5 16 00 00 	lea    0x16a5(%rip),%rdi        # 403550 <_IO_stdin_used+0x550>
  401eab:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb0:	e8 fb f1 ff ff       	callq  4010b0 <printf@plt>
  401eb5:	48 8b 35 84 42 00 00 	mov    0x4284(%rip),%rsi        # 406140 <user_id>
  401ebc:	48 8d 3d 49 15 00 00 	lea    0x1549(%rip),%rdi        # 40340c <_IO_stdin_used+0x40c>
  401ec3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec8:	e8 e3 f1 ff ff       	callq  4010b0 <printf@plt>
  401ecd:	48 8b 35 7c 42 00 00 	mov    0x427c(%rip),%rsi        # 406150 <course>
  401ed4:	48 8d 3d 3e 15 00 00 	lea    0x153e(%rip),%rdi        # 403419 <_IO_stdin_used+0x419>
  401edb:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee0:	e8 cb f1 ff ff       	callq  4010b0 <printf@plt>
  401ee5:	48 8b 35 5c 42 00 00 	mov    0x425c(%rip),%rsi        # 406148 <lab>
  401eec:	48 8d 3d 32 15 00 00 	lea    0x1532(%rip),%rdi        # 403425 <_IO_stdin_used+0x425>
  401ef3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef8:	e8 b3 f1 ff ff       	callq  4010b0 <printf@plt>
  401efd:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401f04:	00 
  401f05:	48 8d 3d 22 15 00 00 	lea    0x1522(%rip),%rdi        # 40342e <_IO_stdin_used+0x42e>
  401f0c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f11:	e8 9a f1 ff ff       	callq  4010b0 <printf@plt>
  401f16:	e9 7c ff ff ff       	jmpq   401e97 <notify_server+0x13c>
  401f1b:	c3                   	retq   

0000000000401f1c <validate>:
  401f1c:	53                   	push   %rbx
  401f1d:	89 fb                	mov    %edi,%ebx
  401f1f:	83 3d e2 45 00 00 00 	cmpl   $0x0,0x45e2(%rip)        # 406508 <is_checker>
  401f26:	74 68                	je     401f90 <validate+0x74>
  401f28:	39 3d ce 45 00 00    	cmp    %edi,0x45ce(%rip)        # 4064fc <vlevel>
  401f2e:	75 2d                	jne    401f5d <validate+0x41>
  401f30:	8b 35 c2 45 00 00    	mov    0x45c2(%rip),%esi        # 4064f8 <check_level>
  401f36:	39 fe                	cmp    %edi,%esi
  401f38:	75 39                	jne    401f73 <validate+0x57>
  401f3a:	0f be 35 e7 51 00 00 	movsbl 0x51e7(%rip),%esi        # 407128 <target_prefix>
  401f41:	48 8d 0d d8 45 00 00 	lea    0x45d8(%rip),%rcx        # 406520 <gets_buf>
  401f48:	89 fa                	mov    %edi,%edx
  401f4a:	48 8d 3d 07 15 00 00 	lea    0x1507(%rip),%rdi        # 403458 <_IO_stdin_used+0x458>
  401f51:	b8 00 00 00 00       	mov    $0x0,%eax
  401f56:	e8 55 f1 ff ff       	callq  4010b0 <printf@plt>
  401f5b:	5b                   	pop    %rbx
  401f5c:	c3                   	retq   
  401f5d:	48 8d 3d d6 14 00 00 	lea    0x14d6(%rip),%rdi        # 40343a <_IO_stdin_used+0x43a>
  401f64:	e8 17 f1 ff ff       	callq  401080 <puts@plt>
  401f69:	b8 00 00 00 00       	mov    $0x0,%eax
  401f6e:	e8 63 fd ff ff       	callq  401cd6 <check_fail>
  401f73:	89 fa                	mov    %edi,%edx
  401f75:	48 8d 3d fc 15 00 00 	lea    0x15fc(%rip),%rdi        # 403578 <_IO_stdin_used+0x578>
  401f7c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f81:	e8 2a f1 ff ff       	callq  4010b0 <printf@plt>
  401f86:	b8 00 00 00 00       	mov    $0x0,%eax
  401f8b:	e8 46 fd ff ff       	callq  401cd6 <check_fail>
  401f90:	39 3d 66 45 00 00    	cmp    %edi,0x4566(%rip)        # 4064fc <vlevel>
  401f96:	74 1a                	je     401fb2 <validate+0x96>
  401f98:	48 8d 3d 9b 14 00 00 	lea    0x149b(%rip),%rdi        # 40343a <_IO_stdin_used+0x43a>
  401f9f:	e8 dc f0 ff ff       	callq  401080 <puts@plt>
  401fa4:	89 de                	mov    %ebx,%esi
  401fa6:	bf 00 00 00 00       	mov    $0x0,%edi
  401fab:	e8 ab fd ff ff       	callq  401d5b <notify_server>
  401fb0:	eb a9                	jmp    401f5b <validate+0x3f>
  401fb2:	0f be 15 6f 51 00 00 	movsbl 0x516f(%rip),%edx        # 407128 <target_prefix>
  401fb9:	89 fe                	mov    %edi,%esi
  401fbb:	48 8d 3d de 15 00 00 	lea    0x15de(%rip),%rdi        # 4035a0 <_IO_stdin_used+0x5a0>
  401fc2:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc7:	e8 e4 f0 ff ff       	callq  4010b0 <printf@plt>
  401fcc:	89 de                	mov    %ebx,%esi
  401fce:	bf 01 00 00 00       	mov    $0x1,%edi
  401fd3:	e8 83 fd ff ff       	callq  401d5b <notify_server>
  401fd8:	eb 81                	jmp    401f5b <validate+0x3f>

0000000000401fda <fail>:
  401fda:	48 83 ec 08          	sub    $0x8,%rsp
  401fde:	83 3d 23 45 00 00 00 	cmpl   $0x0,0x4523(%rip)        # 406508 <is_checker>
  401fe5:	75 11                	jne    401ff8 <fail+0x1e>
  401fe7:	89 fe                	mov    %edi,%esi
  401fe9:	bf 00 00 00 00       	mov    $0x0,%edi
  401fee:	e8 68 fd ff ff       	callq  401d5b <notify_server>
  401ff3:	48 83 c4 08          	add    $0x8,%rsp
  401ff7:	c3                   	retq   
  401ff8:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffd:	e8 d4 fc ff ff       	callq  401cd6 <check_fail>

0000000000402002 <bushandler>:
  402002:	48 83 ec 08          	sub    $0x8,%rsp
  402006:	83 3d fb 44 00 00 00 	cmpl   $0x0,0x44fb(%rip)        # 406508 <is_checker>
  40200d:	74 16                	je     402025 <bushandler+0x23>
  40200f:	48 8d 3d 57 14 00 00 	lea    0x1457(%rip),%rdi        # 40346d <_IO_stdin_used+0x46d>
  402016:	e8 65 f0 ff ff       	callq  401080 <puts@plt>
  40201b:	b8 00 00 00 00       	mov    $0x0,%eax
  402020:	e8 b1 fc ff ff       	callq  401cd6 <check_fail>
  402025:	48 8d 3d ac 15 00 00 	lea    0x15ac(%rip),%rdi        # 4035d8 <_IO_stdin_used+0x5d8>
  40202c:	e8 4f f0 ff ff       	callq  401080 <puts@plt>
  402031:	48 8d 3d 3f 14 00 00 	lea    0x143f(%rip),%rdi        # 403477 <_IO_stdin_used+0x477>
  402038:	e8 43 f0 ff ff       	callq  401080 <puts@plt>
  40203d:	be 00 00 00 00       	mov    $0x0,%esi
  402042:	bf 00 00 00 00       	mov    $0x0,%edi
  402047:	e8 0f fd ff ff       	callq  401d5b <notify_server>
  40204c:	bf 01 00 00 00       	mov    $0x1,%edi
  402051:	e8 9a f1 ff ff       	callq  4011f0 <exit@plt>

0000000000402056 <seghandler>:
  402056:	48 83 ec 08          	sub    $0x8,%rsp
  40205a:	83 3d a7 44 00 00 00 	cmpl   $0x0,0x44a7(%rip)        # 406508 <is_checker>
  402061:	74 16                	je     402079 <seghandler+0x23>
  402063:	48 8d 3d 23 14 00 00 	lea    0x1423(%rip),%rdi        # 40348d <_IO_stdin_used+0x48d>
  40206a:	e8 11 f0 ff ff       	callq  401080 <puts@plt>
  40206f:	b8 00 00 00 00       	mov    $0x0,%eax
  402074:	e8 5d fc ff ff       	callq  401cd6 <check_fail>
  402079:	48 8d 3d 78 15 00 00 	lea    0x1578(%rip),%rdi        # 4035f8 <_IO_stdin_used+0x5f8>
  402080:	e8 fb ef ff ff       	callq  401080 <puts@plt>
  402085:	48 8d 3d eb 13 00 00 	lea    0x13eb(%rip),%rdi        # 403477 <_IO_stdin_used+0x477>
  40208c:	e8 ef ef ff ff       	callq  401080 <puts@plt>
  402091:	be 00 00 00 00       	mov    $0x0,%esi
  402096:	bf 00 00 00 00       	mov    $0x0,%edi
  40209b:	e8 bb fc ff ff       	callq  401d5b <notify_server>
  4020a0:	bf 01 00 00 00       	mov    $0x1,%edi
  4020a5:	e8 46 f1 ff ff       	callq  4011f0 <exit@plt>

00000000004020aa <illegalhandler>:
  4020aa:	48 83 ec 08          	sub    $0x8,%rsp
  4020ae:	83 3d 53 44 00 00 00 	cmpl   $0x0,0x4453(%rip)        # 406508 <is_checker>
  4020b5:	74 16                	je     4020cd <illegalhandler+0x23>
  4020b7:	48 8d 3d e2 13 00 00 	lea    0x13e2(%rip),%rdi        # 4034a0 <_IO_stdin_used+0x4a0>
  4020be:	e8 bd ef ff ff       	callq  401080 <puts@plt>
  4020c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4020c8:	e8 09 fc ff ff       	callq  401cd6 <check_fail>
  4020cd:	48 8d 3d 4c 15 00 00 	lea    0x154c(%rip),%rdi        # 403620 <_IO_stdin_used+0x620>
  4020d4:	e8 a7 ef ff ff       	callq  401080 <puts@plt>
  4020d9:	48 8d 3d 97 13 00 00 	lea    0x1397(%rip),%rdi        # 403477 <_IO_stdin_used+0x477>
  4020e0:	e8 9b ef ff ff       	callq  401080 <puts@plt>
  4020e5:	be 00 00 00 00       	mov    $0x0,%esi
  4020ea:	bf 00 00 00 00       	mov    $0x0,%edi
  4020ef:	e8 67 fc ff ff       	callq  401d5b <notify_server>
  4020f4:	bf 01 00 00 00       	mov    $0x1,%edi
  4020f9:	e8 f2 f0 ff ff       	callq  4011f0 <exit@plt>

00000000004020fe <sigalrmhandler>:
  4020fe:	48 83 ec 08          	sub    $0x8,%rsp
  402102:	83 3d ff 43 00 00 00 	cmpl   $0x0,0x43ff(%rip)        # 406508 <is_checker>
  402109:	74 16                	je     402121 <sigalrmhandler+0x23>
  40210b:	48 8d 3d a2 13 00 00 	lea    0x13a2(%rip),%rdi        # 4034b4 <_IO_stdin_used+0x4b4>
  402112:	e8 69 ef ff ff       	callq  401080 <puts@plt>
  402117:	b8 00 00 00 00       	mov    $0x0,%eax
  40211c:	e8 b5 fb ff ff       	callq  401cd6 <check_fail>
  402121:	be 05 00 00 00       	mov    $0x5,%esi
  402126:	48 8d 3d 23 15 00 00 	lea    0x1523(%rip),%rdi        # 403650 <_IO_stdin_used+0x650>
  40212d:	b8 00 00 00 00       	mov    $0x0,%eax
  402132:	e8 79 ef ff ff       	callq  4010b0 <printf@plt>
  402137:	be 00 00 00 00       	mov    $0x0,%esi
  40213c:	bf 00 00 00 00       	mov    $0x0,%edi
  402141:	e8 15 fc ff ff       	callq  401d5b <notify_server>
  402146:	bf 01 00 00 00       	mov    $0x1,%edi
  40214b:	e8 a0 f0 ff ff       	callq  4011f0 <exit@plt>

0000000000402150 <launch>:
  402150:	55                   	push   %rbp
  402151:	48 89 e5             	mov    %rsp,%rbp
  402154:	48 89 fa             	mov    %rdi,%rdx
  402157:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40215b:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40215f:	48 29 c4             	sub    %rax,%rsp
  402162:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402167:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40216b:	be f4 00 00 00       	mov    $0xf4,%esi
  402170:	e8 4b ef ff ff       	callq  4010c0 <memset@plt>
  402175:	48 8b 05 24 43 00 00 	mov    0x4324(%rip),%rax        # 4064a0 <stdin@@GLIBC_2.2.5>
  40217c:	48 39 05 6d 43 00 00 	cmp    %rax,0x436d(%rip)        # 4064f0 <infile>
  402183:	74 2b                	je     4021b0 <launch+0x60>
  402185:	c7 05 6d 43 00 00 00 	movl   $0x0,0x436d(%rip)        # 4064fc <vlevel>
  40218c:	00 00 00 
  40218f:	b8 00 00 00 00       	mov    $0x0,%eax
  402194:	e8 a8 fa ff ff       	callq  401c41 <test>
  402199:	83 3d 68 43 00 00 00 	cmpl   $0x0,0x4368(%rip)        # 406508 <is_checker>
  4021a0:	75 21                	jne    4021c3 <launch+0x73>
  4021a2:	48 8d 3d 2b 13 00 00 	lea    0x132b(%rip),%rdi        # 4034d4 <_IO_stdin_used+0x4d4>
  4021a9:	e8 d2 ee ff ff       	callq  401080 <puts@plt>
  4021ae:	c9                   	leaveq 
  4021af:	c3                   	retq   
  4021b0:	48 8d 3d 05 13 00 00 	lea    0x1305(%rip),%rdi        # 4034bc <_IO_stdin_used+0x4bc>
  4021b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4021bc:	e8 ef ee ff ff       	callq  4010b0 <printf@plt>
  4021c1:	eb c2                	jmp    402185 <launch+0x35>
  4021c3:	48 8d 3d ff 12 00 00 	lea    0x12ff(%rip),%rdi        # 4034c9 <_IO_stdin_used+0x4c9>
  4021ca:	e8 b1 ee ff ff       	callq  401080 <puts@plt>
  4021cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d4:	e8 fd fa ff ff       	callq  401cd6 <check_fail>

00000000004021d9 <stable_launch>:
  4021d9:	53                   	push   %rbx
  4021da:	48 89 3d 07 43 00 00 	mov    %rdi,0x4307(%rip)        # 4064e8 <global_offset>
  4021e1:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4021e7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4021ed:	b9 32 01 00 00       	mov    $0x132,%ecx
  4021f2:	ba 07 00 00 00       	mov    $0x7,%edx
  4021f7:	be 00 00 10 00       	mov    $0x100000,%esi
  4021fc:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402201:	e8 9a ee ff ff       	callq  4010a0 <mmap@plt>
  402206:	48 89 c3             	mov    %rax,%rbx
  402209:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40220f:	75 43                	jne    402254 <stable_launch+0x7b>
  402211:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402218:	48 89 15 11 4f 00 00 	mov    %rdx,0x4f11(%rip)        # 407130 <stack_top>
  40221f:	48 89 e0             	mov    %rsp,%rax
  402222:	48 89 d4             	mov    %rdx,%rsp
  402225:	48 89 c2             	mov    %rax,%rdx
  402228:	48 89 15 b1 42 00 00 	mov    %rdx,0x42b1(%rip)        # 4064e0 <global_save_stack>
  40222f:	48 8b 3d b2 42 00 00 	mov    0x42b2(%rip),%rdi        # 4064e8 <global_offset>
  402236:	e8 15 ff ff ff       	callq  402150 <launch>
  40223b:	48 8b 05 9e 42 00 00 	mov    0x429e(%rip),%rax        # 4064e0 <global_save_stack>
  402242:	48 89 c4             	mov    %rax,%rsp
  402245:	be 00 00 10 00       	mov    $0x100000,%esi
  40224a:	48 89 df             	mov    %rbx,%rdi
  40224d:	e8 2e ef ff ff       	callq  401180 <munmap@plt>
  402252:	5b                   	pop    %rbx
  402253:	c3                   	retq   
  402254:	be 00 00 10 00       	mov    $0x100000,%esi
  402259:	48 89 c7             	mov    %rax,%rdi
  40225c:	e8 1f ef ff ff       	callq  401180 <munmap@plt>
  402261:	ba 00 60 58 55       	mov    $0x55586000,%edx
  402266:	48 8d 35 1b 14 00 00 	lea    0x141b(%rip),%rsi        # 403688 <_IO_stdin_used+0x688>
  40226d:	48 8b 3d 4c 42 00 00 	mov    0x424c(%rip),%rdi        # 4064c0 <stderr@@GLIBC_2.2.5>
  402274:	b8 00 00 00 00       	mov    $0x0,%eax
  402279:	e8 a2 ee ff ff       	callq  401120 <fprintf@plt>
  40227e:	bf 01 00 00 00       	mov    $0x1,%edi
  402283:	e8 68 ef ff ff       	callq  4011f0 <exit@plt>

0000000000402288 <rio_readinitb>:
  402288:	89 37                	mov    %esi,(%rdi)
  40228a:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402291:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402295:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402299:	c3                   	retq   

000000000040229a <sigalrm_handler>:
  40229a:	48 83 ec 08          	sub    $0x8,%rsp
  40229e:	ba 00 00 00 00       	mov    $0x0,%edx
  4022a3:	48 8d 35 16 14 00 00 	lea    0x1416(%rip),%rsi        # 4036c0 <trans_char+0x10>
  4022aa:	48 8b 3d 0f 42 00 00 	mov    0x420f(%rip),%rdi        # 4064c0 <stderr@@GLIBC_2.2.5>
  4022b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b6:	e8 65 ee ff ff       	callq  401120 <fprintf@plt>
  4022bb:	bf 01 00 00 00       	mov    $0x1,%edi
  4022c0:	e8 2b ef ff ff       	callq  4011f0 <exit@plt>

00000000004022c5 <urlencode>:
  4022c5:	41 54                	push   %r12
  4022c7:	55                   	push   %rbp
  4022c8:	53                   	push   %rbx
  4022c9:	48 83 ec 10          	sub    $0x10,%rsp
  4022cd:	48 89 fb             	mov    %rdi,%rbx
  4022d0:	48 89 f5             	mov    %rsi,%rbp
  4022d3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022da:	b8 00 00 00 00       	mov    $0x0,%eax
  4022df:	f2 ae                	repnz scas %es:(%rdi),%al
  4022e1:	48 89 ce             	mov    %rcx,%rsi
  4022e4:	48 f7 d6             	not    %rsi
  4022e7:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4022ea:	eb 0e                	jmp    4022fa <urlencode+0x35>
  4022ec:	88 55 00             	mov    %dl,0x0(%rbp)
  4022ef:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4022f3:	48 83 c3 01          	add    $0x1,%rbx
  4022f7:	44 89 e0             	mov    %r12d,%eax
  4022fa:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4022fe:	85 c0                	test   %eax,%eax
  402300:	0f 84 95 00 00 00    	je     40239b <urlencode+0xd6>
  402306:	0f b6 13             	movzbl (%rbx),%edx
  402309:	80 fa 2a             	cmp    $0x2a,%dl
  40230c:	0f 94 c1             	sete   %cl
  40230f:	80 fa 2d             	cmp    $0x2d,%dl
  402312:	0f 94 c0             	sete   %al
  402315:	08 c1                	or     %al,%cl
  402317:	75 d3                	jne    4022ec <urlencode+0x27>
  402319:	80 fa 2e             	cmp    $0x2e,%dl
  40231c:	74 ce                	je     4022ec <urlencode+0x27>
  40231e:	80 fa 5f             	cmp    $0x5f,%dl
  402321:	74 c9                	je     4022ec <urlencode+0x27>
  402323:	8d 42 d0             	lea    -0x30(%rdx),%eax
  402326:	3c 09                	cmp    $0x9,%al
  402328:	76 c2                	jbe    4022ec <urlencode+0x27>
  40232a:	8d 42 bf             	lea    -0x41(%rdx),%eax
  40232d:	3c 19                	cmp    $0x19,%al
  40232f:	76 bb                	jbe    4022ec <urlencode+0x27>
  402331:	8d 42 9f             	lea    -0x61(%rdx),%eax
  402334:	3c 19                	cmp    $0x19,%al
  402336:	76 b4                	jbe    4022ec <urlencode+0x27>
  402338:	80 fa 20             	cmp    $0x20,%dl
  40233b:	74 4c                	je     402389 <urlencode+0xc4>
  40233d:	8d 42 e0             	lea    -0x20(%rdx),%eax
  402340:	3c 5f                	cmp    $0x5f,%al
  402342:	0f 96 c1             	setbe  %cl
  402345:	80 fa 09             	cmp    $0x9,%dl
  402348:	0f 94 c0             	sete   %al
  40234b:	08 c1                	or     %al,%cl
  40234d:	74 47                	je     402396 <urlencode+0xd1>
  40234f:	0f b6 d2             	movzbl %dl,%edx
  402352:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402357:	48 8d 35 f7 13 00 00 	lea    0x13f7(%rip),%rsi        # 403755 <trans_char+0xa5>
  40235e:	b8 00 00 00 00       	mov    $0x0,%eax
  402363:	e8 78 ee ff ff       	callq  4011e0 <sprintf@plt>
  402368:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  40236d:	88 45 00             	mov    %al,0x0(%rbp)
  402370:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  402375:	88 45 01             	mov    %al,0x1(%rbp)
  402378:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  40237d:	88 45 02             	mov    %al,0x2(%rbp)
  402380:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402384:	e9 6a ff ff ff       	jmpq   4022f3 <urlencode+0x2e>
  402389:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40238d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402391:	e9 5d ff ff ff       	jmpq   4022f3 <urlencode+0x2e>
  402396:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40239b:	48 83 c4 10          	add    $0x10,%rsp
  40239f:	5b                   	pop    %rbx
  4023a0:	5d                   	pop    %rbp
  4023a1:	41 5c                	pop    %r12
  4023a3:	c3                   	retq   

00000000004023a4 <rio_writen>:
  4023a4:	41 55                	push   %r13
  4023a6:	41 54                	push   %r12
  4023a8:	55                   	push   %rbp
  4023a9:	53                   	push   %rbx
  4023aa:	48 83 ec 08          	sub    $0x8,%rsp
  4023ae:	41 89 fc             	mov    %edi,%r12d
  4023b1:	48 89 f5             	mov    %rsi,%rbp
  4023b4:	49 89 d5             	mov    %rdx,%r13
  4023b7:	48 89 d3             	mov    %rdx,%rbx
  4023ba:	eb 06                	jmp    4023c2 <rio_writen+0x1e>
  4023bc:	48 29 c3             	sub    %rax,%rbx
  4023bf:	48 01 c5             	add    %rax,%rbp
  4023c2:	48 85 db             	test   %rbx,%rbx
  4023c5:	74 24                	je     4023eb <rio_writen+0x47>
  4023c7:	48 89 da             	mov    %rbx,%rdx
  4023ca:	48 89 ee             	mov    %rbp,%rsi
  4023cd:	44 89 e7             	mov    %r12d,%edi
  4023d0:	e8 bb ec ff ff       	callq  401090 <write@plt>
  4023d5:	48 85 c0             	test   %rax,%rax
  4023d8:	7f e2                	jg     4023bc <rio_writen+0x18>
  4023da:	e8 61 ec ff ff       	callq  401040 <__errno_location@plt>
  4023df:	83 38 04             	cmpl   $0x4,(%rax)
  4023e2:	75 15                	jne    4023f9 <rio_writen+0x55>
  4023e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e9:	eb d1                	jmp    4023bc <rio_writen+0x18>
  4023eb:	4c 89 e8             	mov    %r13,%rax
  4023ee:	48 83 c4 08          	add    $0x8,%rsp
  4023f2:	5b                   	pop    %rbx
  4023f3:	5d                   	pop    %rbp
  4023f4:	41 5c                	pop    %r12
  4023f6:	41 5d                	pop    %r13
  4023f8:	c3                   	retq   
  4023f9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402400:	eb ec                	jmp    4023ee <rio_writen+0x4a>

0000000000402402 <rio_read>:
  402402:	41 55                	push   %r13
  402404:	41 54                	push   %r12
  402406:	55                   	push   %rbp
  402407:	53                   	push   %rbx
  402408:	48 83 ec 08          	sub    $0x8,%rsp
  40240c:	48 89 fb             	mov    %rdi,%rbx
  40240f:	49 89 f5             	mov    %rsi,%r13
  402412:	49 89 d4             	mov    %rdx,%r12
  402415:	eb 0a                	jmp    402421 <rio_read+0x1f>
  402417:	e8 24 ec ff ff       	callq  401040 <__errno_location@plt>
  40241c:	83 38 04             	cmpl   $0x4,(%rax)
  40241f:	75 5a                	jne    40247b <rio_read+0x79>
  402421:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402424:	85 ed                	test   %ebp,%ebp
  402426:	7f 22                	jg     40244a <rio_read+0x48>
  402428:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40242c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402431:	48 89 ee             	mov    %rbp,%rsi
  402434:	8b 3b                	mov    (%rbx),%edi
  402436:	e8 b5 ec ff ff       	callq  4010f0 <read@plt>
  40243b:	89 43 04             	mov    %eax,0x4(%rbx)
  40243e:	85 c0                	test   %eax,%eax
  402440:	78 d5                	js     402417 <rio_read+0x15>
  402442:	74 40                	je     402484 <rio_read+0x82>
  402444:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402448:	eb d7                	jmp    402421 <rio_read+0x1f>
  40244a:	89 e8                	mov    %ebp,%eax
  40244c:	4c 39 e0             	cmp    %r12,%rax
  40244f:	72 03                	jb     402454 <rio_read+0x52>
  402451:	44 89 e5             	mov    %r12d,%ebp
  402454:	4c 63 e5             	movslq %ebp,%r12
  402457:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40245b:	4c 89 e2             	mov    %r12,%rdx
  40245e:	4c 89 ef             	mov    %r13,%rdi
  402461:	e8 da ec ff ff       	callq  401140 <memcpy@plt>
  402466:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40246a:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40246d:	4c 89 e0             	mov    %r12,%rax
  402470:	48 83 c4 08          	add    $0x8,%rsp
  402474:	5b                   	pop    %rbx
  402475:	5d                   	pop    %rbp
  402476:	41 5c                	pop    %r12
  402478:	41 5d                	pop    %r13
  40247a:	c3                   	retq   
  40247b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402482:	eb ec                	jmp    402470 <rio_read+0x6e>
  402484:	b8 00 00 00 00       	mov    $0x0,%eax
  402489:	eb e5                	jmp    402470 <rio_read+0x6e>

000000000040248b <rio_readlineb>:
  40248b:	41 55                	push   %r13
  40248d:	41 54                	push   %r12
  40248f:	55                   	push   %rbp
  402490:	53                   	push   %rbx
  402491:	48 83 ec 18          	sub    $0x18,%rsp
  402495:	49 89 fd             	mov    %rdi,%r13
  402498:	48 89 f5             	mov    %rsi,%rbp
  40249b:	49 89 d4             	mov    %rdx,%r12
  40249e:	bb 01 00 00 00       	mov    $0x1,%ebx
  4024a3:	4c 39 e3             	cmp    %r12,%rbx
  4024a6:	73 44                	jae    4024ec <rio_readlineb+0x61>
  4024a8:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4024ad:	ba 01 00 00 00       	mov    $0x1,%edx
  4024b2:	4c 89 ef             	mov    %r13,%rdi
  4024b5:	e8 48 ff ff ff       	callq  402402 <rio_read>
  4024ba:	83 f8 01             	cmp    $0x1,%eax
  4024bd:	75 19                	jne    4024d8 <rio_readlineb+0x4d>
  4024bf:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4024c3:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4024c8:	88 45 00             	mov    %al,0x0(%rbp)
  4024cb:	3c 0a                	cmp    $0xa,%al
  4024cd:	74 1a                	je     4024e9 <rio_readlineb+0x5e>
  4024cf:	48 83 c3 01          	add    $0x1,%rbx
  4024d3:	48 89 d5             	mov    %rdx,%rbp
  4024d6:	eb cb                	jmp    4024a3 <rio_readlineb+0x18>
  4024d8:	85 c0                	test   %eax,%eax
  4024da:	75 22                	jne    4024fe <rio_readlineb+0x73>
  4024dc:	48 83 fb 01          	cmp    $0x1,%rbx
  4024e0:	75 0a                	jne    4024ec <rio_readlineb+0x61>
  4024e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4024e7:	eb 0a                	jmp    4024f3 <rio_readlineb+0x68>
  4024e9:	48 89 d5             	mov    %rdx,%rbp
  4024ec:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4024f0:	48 89 d8             	mov    %rbx,%rax
  4024f3:	48 83 c4 18          	add    $0x18,%rsp
  4024f7:	5b                   	pop    %rbx
  4024f8:	5d                   	pop    %rbp
  4024f9:	41 5c                	pop    %r12
  4024fb:	41 5d                	pop    %r13
  4024fd:	c3                   	retq   
  4024fe:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402505:	eb ec                	jmp    4024f3 <rio_readlineb+0x68>

0000000000402507 <submitr>:
  402507:	41 57                	push   %r15
  402509:	41 56                	push   %r14
  40250b:	41 55                	push   %r13
  40250d:	41 54                	push   %r12
  40250f:	55                   	push   %rbp
  402510:	53                   	push   %rbx
  402511:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  402518:	49 89 fd             	mov    %rdi,%r13
  40251b:	89 74 24 14          	mov    %esi,0x14(%rsp)
  40251f:	49 89 d7             	mov    %rdx,%r15
  402522:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  402527:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40252c:	4d 89 ce             	mov    %r9,%r14
  40252f:	48 8b ac 24 90 a0 00 	mov    0xa090(%rsp),%rbp
  402536:	00 
  402537:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  40253e:	00 00 00 00 
  402542:	ba 00 00 00 00       	mov    $0x0,%edx
  402547:	be 01 00 00 00       	mov    $0x1,%esi
  40254c:	bf 02 00 00 00       	mov    $0x2,%edi
  402551:	e8 ca ec ff ff       	callq  401220 <socket@plt>
  402556:	85 c0                	test   %eax,%eax
  402558:	0f 88 9a 02 00 00    	js     4027f8 <submitr+0x2f1>
  40255e:	89 c3                	mov    %eax,%ebx
  402560:	4c 89 ef             	mov    %r13,%rdi
  402563:	e8 a8 eb ff ff       	callq  401110 <gethostbyname@plt>
  402568:	48 85 c0             	test   %rax,%rax
  40256b:	0f 84 d3 02 00 00    	je     402844 <submitr+0x33d>
  402571:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  402578:	00 
  402579:	48 c7 84 24 42 a0 00 	movq   $0x0,0xa042(%rsp)
  402580:	00 00 00 00 00 
  402585:	c7 84 24 4a a0 00 00 	movl   $0x0,0xa04a(%rsp)
  40258c:	00 00 00 00 
  402590:	66 c7 84 24 4e a0 00 	movw   $0x0,0xa04e(%rsp)
  402597:	00 00 00 
  40259a:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  4025a1:	00 02 00 
  4025a4:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4025a8:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4025ac:	48 8d bc 24 44 a0 00 	lea    0xa044(%rsp),%rdi
  4025b3:	00 
  4025b4:	48 8b 31             	mov    (%rcx),%rsi
  4025b7:	e8 d4 eb ff ff       	callq  401190 <memmove@plt>
  4025bc:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  4025c1:	66 c1 c0 08          	rol    $0x8,%ax
  4025c5:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  4025cc:	00 
  4025cd:	ba 10 00 00 00       	mov    $0x10,%edx
  4025d2:	4c 89 e6             	mov    %r12,%rsi
  4025d5:	89 df                	mov    %ebx,%edi
  4025d7:	e8 24 ec ff ff       	callq  401200 <connect@plt>
  4025dc:	85 c0                	test   %eax,%eax
  4025de:	0f 88 c8 02 00 00    	js     4028ac <submitr+0x3a5>
  4025e4:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  4025eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4025f0:	48 89 f1             	mov    %rsi,%rcx
  4025f3:	4c 89 f7             	mov    %r14,%rdi
  4025f6:	f2 ae                	repnz scas %es:(%rdi),%al
  4025f8:	48 89 ca             	mov    %rcx,%rdx
  4025fb:	48 f7 d2             	not    %rdx
  4025fe:	48 89 f1             	mov    %rsi,%rcx
  402601:	4c 89 ff             	mov    %r15,%rdi
  402604:	f2 ae                	repnz scas %es:(%rdi),%al
  402606:	48 f7 d1             	not    %rcx
  402609:	49 89 c8             	mov    %rcx,%r8
  40260c:	48 89 f1             	mov    %rsi,%rcx
  40260f:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402614:	f2 ae                	repnz scas %es:(%rdi),%al
  402616:	48 f7 d1             	not    %rcx
  402619:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40261e:	48 89 f1             	mov    %rsi,%rcx
  402621:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402626:	f2 ae                	repnz scas %es:(%rdi),%al
  402628:	48 89 c8             	mov    %rcx,%rax
  40262b:	48 f7 d0             	not    %rax
  40262e:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402633:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402638:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40263f:	00 
  402640:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402646:	0f 87 ba 02 00 00    	ja     402906 <submitr+0x3ff>
  40264c:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  402653:	00 
  402654:	b9 00 04 00 00       	mov    $0x400,%ecx
  402659:	b8 00 00 00 00       	mov    $0x0,%eax
  40265e:	48 89 f7             	mov    %rsi,%rdi
  402661:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402664:	4c 89 f7             	mov    %r14,%rdi
  402667:	e8 59 fc ff ff       	callq  4022c5 <urlencode>
  40266c:	85 c0                	test   %eax,%eax
  40266e:	0f 88 05 03 00 00    	js     402979 <submitr+0x472>
  402674:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  40267b:	00 
  40267c:	4d 89 e9             	mov    %r13,%r9
  40267f:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  402686:	00 
  402687:	4c 89 f9             	mov    %r15,%rcx
  40268a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  40268f:	48 8d 35 52 10 00 00 	lea    0x1052(%rip),%rsi        # 4036e8 <trans_char+0x38>
  402696:	4c 89 e7             	mov    %r12,%rdi
  402699:	b8 00 00 00 00       	mov    $0x0,%eax
  40269e:	e8 3d eb ff ff       	callq  4011e0 <sprintf@plt>
  4026a3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4026aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4026af:	4c 89 e7             	mov    %r12,%rdi
  4026b2:	f2 ae                	repnz scas %es:(%rdi),%al
  4026b4:	48 89 ca             	mov    %rcx,%rdx
  4026b7:	48 f7 d2             	not    %rdx
  4026ba:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  4026be:	4c 89 e6             	mov    %r12,%rsi
  4026c1:	89 df                	mov    %ebx,%edi
  4026c3:	e8 dc fc ff ff       	callq  4023a4 <rio_writen>
  4026c8:	48 85 c0             	test   %rax,%rax
  4026cb:	0f 88 33 03 00 00    	js     402a04 <submitr+0x4fd>
  4026d1:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  4026d8:	00 
  4026d9:	89 de                	mov    %ebx,%esi
  4026db:	4c 89 e7             	mov    %r12,%rdi
  4026de:	e8 a5 fb ff ff       	callq  402288 <rio_readinitb>
  4026e3:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4026ea:	00 
  4026eb:	ba 00 20 00 00       	mov    $0x2000,%edx
  4026f0:	4c 89 e7             	mov    %r12,%rdi
  4026f3:	e8 93 fd ff ff       	callq  40248b <rio_readlineb>
  4026f8:	48 85 c0             	test   %rax,%rax
  4026fb:	0f 8e 72 03 00 00    	jle    402a73 <submitr+0x56c>
  402701:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  402708:	00 
  402709:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  402710:	00 
  402711:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  402718:	00 
  402719:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  40271e:	48 8d 35 37 10 00 00 	lea    0x1037(%rip),%rsi        # 40375c <trans_char+0xac>
  402725:	b8 00 00 00 00       	mov    $0x0,%eax
  40272a:	e8 41 ea ff ff       	callq  401170 <__isoc99_sscanf@plt>
  40272f:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402736:	00 
  402737:	b9 03 00 00 00       	mov    $0x3,%ecx
  40273c:	48 8d 3d 30 10 00 00 	lea    0x1030(%rip),%rdi        # 403773 <trans_char+0xc3>
  402743:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402745:	0f 97 c0             	seta   %al
  402748:	1c 00                	sbb    $0x0,%al
  40274a:	84 c0                	test   %al,%al
  40274c:	0f 84 9f 03 00 00    	je     402af1 <submitr+0x5ea>
  402752:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402759:	00 
  40275a:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402761:	00 
  402762:	ba 00 20 00 00       	mov    $0x2000,%edx
  402767:	e8 1f fd ff ff       	callq  40248b <rio_readlineb>
  40276c:	48 85 c0             	test   %rax,%rax
  40276f:	7f be                	jg     40272f <submitr+0x228>
  402771:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402778:	3a 20 43 
  40277b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402782:	20 75 6e 
  402785:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402789:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40278d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402794:	74 6f 20 
  402797:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  40279e:	68 65 61 
  4027a1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4027a5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4027a9:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4027b0:	66 72 6f 
  4027b3:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  4027ba:	20 72 65 
  4027bd:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4027c1:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4027c5:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4027cc:	73 65 72 
  4027cf:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4027d3:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  4027da:	89 df                	mov    %ebx,%edi
  4027dc:	e8 ff e8 ff ff       	callq  4010e0 <close@plt>
  4027e1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027e6:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  4027ed:	5b                   	pop    %rbx
  4027ee:	5d                   	pop    %rbp
  4027ef:	41 5c                	pop    %r12
  4027f1:	41 5d                	pop    %r13
  4027f3:	41 5e                	pop    %r14
  4027f5:	41 5f                	pop    %r15
  4027f7:	c3                   	retq   
  4027f8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027ff:	3a 20 43 
  402802:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402809:	20 75 6e 
  40280c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402810:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402814:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40281b:	74 6f 20 
  40281e:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402825:	65 20 73 
  402828:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40282c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402830:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402837:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40283d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402842:	eb a2                	jmp    4027e6 <submitr+0x2df>
  402844:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40284b:	3a 20 44 
  40284e:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402855:	20 75 6e 
  402858:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40285c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402860:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402867:	74 6f 20 
  40286a:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402871:	76 65 20 
  402874:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402878:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40287c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402883:	72 20 61 
  402886:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40288a:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402891:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402897:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40289b:	89 df                	mov    %ebx,%edi
  40289d:	e8 3e e8 ff ff       	callq  4010e0 <close@plt>
  4028a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028a7:	e9 3a ff ff ff       	jmpq   4027e6 <submitr+0x2df>
  4028ac:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4028b3:	3a 20 55 
  4028b6:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4028bd:	20 74 6f 
  4028c0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028c4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028c8:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4028cf:	65 63 74 
  4028d2:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  4028d9:	68 65 20 
  4028dc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028e0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028e4:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  4028eb:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  4028f1:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  4028f5:	89 df                	mov    %ebx,%edi
  4028f7:	e8 e4 e7 ff ff       	callq  4010e0 <close@plt>
  4028fc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402901:	e9 e0 fe ff ff       	jmpq   4027e6 <submitr+0x2df>
  402906:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40290d:	3a 20 52 
  402910:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402917:	20 73 74 
  40291a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40291e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402922:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402929:	74 6f 6f 
  40292c:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402933:	65 2e 20 
  402936:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40293a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40293e:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402945:	61 73 65 
  402948:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  40294f:	49 54 52 
  402952:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402956:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40295a:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402961:	55 46 00 
  402964:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402968:	89 df                	mov    %ebx,%edi
  40296a:	e8 71 e7 ff ff       	callq  4010e0 <close@plt>
  40296f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402974:	e9 6d fe ff ff       	jmpq   4027e6 <submitr+0x2df>
  402979:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402980:	3a 20 52 
  402983:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40298a:	20 73 74 
  40298d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402991:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402995:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40299c:	63 6f 6e 
  40299f:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4029a6:	20 61 6e 
  4029a9:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029ad:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029b1:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4029b8:	67 61 6c 
  4029bb:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4029c2:	6e 70 72 
  4029c5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029c9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4029cd:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4029d4:	6c 65 20 
  4029d7:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  4029de:	63 74 65 
  4029e1:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4029e5:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4029e9:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  4029ef:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  4029f3:	89 df                	mov    %ebx,%edi
  4029f5:	e8 e6 e6 ff ff       	callq  4010e0 <close@plt>
  4029fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029ff:	e9 e2 fd ff ff       	jmpq   4027e6 <submitr+0x2df>
  402a04:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a0b:	3a 20 43 
  402a0e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a15:	20 75 6e 
  402a18:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a1c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a20:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a27:	74 6f 20 
  402a2a:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402a31:	20 74 6f 
  402a34:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a38:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a3c:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402a43:	72 65 73 
  402a46:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402a4d:	65 72 76 
  402a50:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a54:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a58:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402a5e:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402a62:	89 df                	mov    %ebx,%edi
  402a64:	e8 77 e6 ff ff       	callq  4010e0 <close@plt>
  402a69:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a6e:	e9 73 fd ff ff       	jmpq   4027e6 <submitr+0x2df>
  402a73:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a7a:	3a 20 43 
  402a7d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a84:	20 75 6e 
  402a87:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a8b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a8f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a96:	74 6f 20 
  402a99:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402aa0:	66 69 72 
  402aa3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402aa7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402aab:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402ab2:	61 64 65 
  402ab5:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402abc:	6d 20 72 
  402abf:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ac3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402ac7:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402ace:	20 73 65 
  402ad1:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402ad5:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402adc:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402ae0:	89 df                	mov    %ebx,%edi
  402ae2:	e8 f9 e5 ff ff       	callq  4010e0 <close@plt>
  402ae7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402aec:	e9 f5 fc ff ff       	jmpq   4027e6 <submitr+0x2df>
  402af1:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402af8:	00 
  402af9:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402b00:	00 
  402b01:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b06:	e8 80 f9 ff ff       	callq  40248b <rio_readlineb>
  402b0b:	48 85 c0             	test   %rax,%rax
  402b0e:	0f 8e 97 00 00 00    	jle    402bab <submitr+0x6a4>
  402b14:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  402b1b:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402b21:	0f 85 08 01 00 00    	jne    402c2f <submitr+0x728>
  402b27:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402b2e:	00 
  402b2f:	48 89 ef             	mov    %rbp,%rdi
  402b32:	e8 39 e5 ff ff       	callq  401070 <strcpy@plt>
  402b37:	89 df                	mov    %ebx,%edi
  402b39:	e8 a2 e5 ff ff       	callq  4010e0 <close@plt>
  402b3e:	b9 04 00 00 00       	mov    $0x4,%ecx
  402b43:	48 8d 3d 23 0c 00 00 	lea    0xc23(%rip),%rdi        # 40376d <trans_char+0xbd>
  402b4a:	48 89 ee             	mov    %rbp,%rsi
  402b4d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b4f:	0f 97 c0             	seta   %al
  402b52:	1c 00                	sbb    $0x0,%al
  402b54:	0f be c0             	movsbl %al,%eax
  402b57:	85 c0                	test   %eax,%eax
  402b59:	0f 84 87 fc ff ff    	je     4027e6 <submitr+0x2df>
  402b5f:	b9 05 00 00 00       	mov    $0x5,%ecx
  402b64:	48 8d 3d 06 0c 00 00 	lea    0xc06(%rip),%rdi        # 403771 <trans_char+0xc1>
  402b6b:	48 89 ee             	mov    %rbp,%rsi
  402b6e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b70:	0f 97 c0             	seta   %al
  402b73:	1c 00                	sbb    $0x0,%al
  402b75:	0f be c0             	movsbl %al,%eax
  402b78:	85 c0                	test   %eax,%eax
  402b7a:	0f 84 66 fc ff ff    	je     4027e6 <submitr+0x2df>
  402b80:	b9 03 00 00 00       	mov    $0x3,%ecx
  402b85:	48 8d 3d ea 0b 00 00 	lea    0xbea(%rip),%rdi        # 403776 <trans_char+0xc6>
  402b8c:	48 89 ee             	mov    %rbp,%rsi
  402b8f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b91:	0f 97 c0             	seta   %al
  402b94:	1c 00                	sbb    $0x0,%al
  402b96:	0f be c0             	movsbl %al,%eax
  402b99:	85 c0                	test   %eax,%eax
  402b9b:	0f 84 45 fc ff ff    	je     4027e6 <submitr+0x2df>
  402ba1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ba6:	e9 3b fc ff ff       	jmpq   4027e6 <submitr+0x2df>
  402bab:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402bb2:	3a 20 43 
  402bb5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402bbc:	20 75 6e 
  402bbf:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bc3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bc7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bce:	74 6f 20 
  402bd1:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402bd8:	73 74 61 
  402bdb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bdf:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402be3:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402bea:	65 73 73 
  402bed:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402bf4:	72 6f 6d 
  402bf7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bfb:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402bff:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402c06:	6c 74 20 
  402c09:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c0d:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402c14:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402c1a:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402c1e:	89 df                	mov    %ebx,%edi
  402c20:	e8 bb e4 ff ff       	callq  4010e0 <close@plt>
  402c25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c2a:	e9 b7 fb ff ff       	jmpq   4027e6 <submitr+0x2df>
  402c2f:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402c34:	48 8d 35 ed 0a 00 00 	lea    0xaed(%rip),%rsi        # 403728 <trans_char+0x78>
  402c3b:	48 89 ef             	mov    %rbp,%rdi
  402c3e:	b8 00 00 00 00       	mov    $0x0,%eax
  402c43:	e8 98 e5 ff ff       	callq  4011e0 <sprintf@plt>
  402c48:	89 df                	mov    %ebx,%edi
  402c4a:	e8 91 e4 ff ff       	callq  4010e0 <close@plt>
  402c4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c54:	e9 8d fb ff ff       	jmpq   4027e6 <submitr+0x2df>

0000000000402c59 <init_timeout>:
  402c59:	85 ff                	test   %edi,%edi
  402c5b:	74 26                	je     402c83 <init_timeout+0x2a>
  402c5d:	53                   	push   %rbx
  402c5e:	89 fb                	mov    %edi,%ebx
  402c60:	78 1a                	js     402c7c <init_timeout+0x23>
  402c62:	48 8d 35 31 f6 ff ff 	lea    -0x9cf(%rip),%rsi        # 40229a <sigalrm_handler>
  402c69:	bf 0e 00 00 00       	mov    $0xe,%edi
  402c6e:	e8 8d e4 ff ff       	callq  401100 <signal@plt>
  402c73:	89 df                	mov    %ebx,%edi
  402c75:	e8 56 e4 ff ff       	callq  4010d0 <alarm@plt>
  402c7a:	5b                   	pop    %rbx
  402c7b:	c3                   	retq   
  402c7c:	bb 00 00 00 00       	mov    $0x0,%ebx
  402c81:	eb df                	jmp    402c62 <init_timeout+0x9>
  402c83:	c3                   	retq   

0000000000402c84 <init_driver>:
  402c84:	41 54                	push   %r12
  402c86:	55                   	push   %rbp
  402c87:	53                   	push   %rbx
  402c88:	48 83 ec 10          	sub    $0x10,%rsp
  402c8c:	49 89 fc             	mov    %rdi,%r12
  402c8f:	be 01 00 00 00       	mov    $0x1,%esi
  402c94:	bf 0d 00 00 00       	mov    $0xd,%edi
  402c99:	e8 62 e4 ff ff       	callq  401100 <signal@plt>
  402c9e:	be 01 00 00 00       	mov    $0x1,%esi
  402ca3:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402ca8:	e8 53 e4 ff ff       	callq  401100 <signal@plt>
  402cad:	be 01 00 00 00       	mov    $0x1,%esi
  402cb2:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402cb7:	e8 44 e4 ff ff       	callq  401100 <signal@plt>
  402cbc:	ba 00 00 00 00       	mov    $0x0,%edx
  402cc1:	be 01 00 00 00       	mov    $0x1,%esi
  402cc6:	bf 02 00 00 00       	mov    $0x2,%edi
  402ccb:	e8 50 e5 ff ff       	callq  401220 <socket@plt>
  402cd0:	85 c0                	test   %eax,%eax
  402cd2:	0f 88 8a 00 00 00    	js     402d62 <init_driver+0xde>
  402cd8:	89 c3                	mov    %eax,%ebx
  402cda:	48 8d 3d 98 0a 00 00 	lea    0xa98(%rip),%rdi        # 403779 <trans_char+0xc9>
  402ce1:	e8 2a e4 ff ff       	callq  401110 <gethostbyname@plt>
  402ce6:	48 85 c0             	test   %rax,%rax
  402ce9:	0f 84 c6 00 00 00    	je     402db5 <init_driver+0x131>
  402cef:	48 89 e5             	mov    %rsp,%rbp
  402cf2:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402cf9:	00 00 
  402cfb:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402d02:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402d08:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402d0e:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402d12:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d16:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402d1a:	48 8b 31             	mov    (%rcx),%rsi
  402d1d:	e8 6e e4 ff ff       	callq  401190 <memmove@plt>
  402d22:	66 c7 44 24 02 3c a4 	movw   $0xa43c,0x2(%rsp)
  402d29:	ba 10 00 00 00       	mov    $0x10,%edx
  402d2e:	48 89 ee             	mov    %rbp,%rsi
  402d31:	89 df                	mov    %ebx,%edi
  402d33:	e8 c8 e4 ff ff       	callq  401200 <connect@plt>
  402d38:	85 c0                	test   %eax,%eax
  402d3a:	0f 88 e7 00 00 00    	js     402e27 <init_driver+0x1a3>
  402d40:	89 df                	mov    %ebx,%edi
  402d42:	e8 99 e3 ff ff       	callq  4010e0 <close@plt>
  402d47:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402d4e:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402d54:	b8 00 00 00 00       	mov    $0x0,%eax
  402d59:	48 83 c4 10          	add    $0x10,%rsp
  402d5d:	5b                   	pop    %rbx
  402d5e:	5d                   	pop    %rbp
  402d5f:	41 5c                	pop    %r12
  402d61:	c3                   	retq   
  402d62:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d69:	3a 20 43 
  402d6c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d73:	20 75 6e 
  402d76:	49 89 04 24          	mov    %rax,(%r12)
  402d7a:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402d7f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d86:	74 6f 20 
  402d89:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402d90:	65 20 73 
  402d93:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402d98:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402d9d:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402da4:	6b 65 
  402da6:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402dad:	00 
  402dae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402db3:	eb a4                	jmp    402d59 <init_driver+0xd5>
  402db5:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402dbc:	3a 20 44 
  402dbf:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402dc6:	20 75 6e 
  402dc9:	49 89 04 24          	mov    %rax,(%r12)
  402dcd:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402dd2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402dd9:	74 6f 20 
  402ddc:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402de3:	76 65 20 
  402de6:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402deb:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402df0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402df7:	72 20 61 
  402dfa:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402dff:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402e06:	72 65 
  402e08:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402e0f:	73 
  402e10:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402e16:	89 df                	mov    %ebx,%edi
  402e18:	e8 c3 e2 ff ff       	callq  4010e0 <close@plt>
  402e1d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e22:	e9 32 ff ff ff       	jmpq   402d59 <init_driver+0xd5>
  402e27:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e2e:	3a 20 55 
  402e31:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402e38:	20 74 6f 
  402e3b:	49 89 04 24          	mov    %rax,(%r12)
  402e3f:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402e44:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402e4b:	65 63 74 
  402e4e:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402e55:	65 72 76 
  402e58:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402e5d:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402e62:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402e69:	72 
  402e6a:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402e70:	89 df                	mov    %ebx,%edi
  402e72:	e8 69 e2 ff ff       	callq  4010e0 <close@plt>
  402e77:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e7c:	e9 d8 fe ff ff       	jmpq   402d59 <init_driver+0xd5>

0000000000402e81 <driver_post>:
  402e81:	53                   	push   %rbx
  402e82:	4c 89 cb             	mov    %r9,%rbx
  402e85:	45 85 c0             	test   %r8d,%r8d
  402e88:	75 18                	jne    402ea2 <driver_post+0x21>
  402e8a:	48 85 ff             	test   %rdi,%rdi
  402e8d:	74 05                	je     402e94 <driver_post+0x13>
  402e8f:	80 3f 00             	cmpb   $0x0,(%rdi)
  402e92:	75 32                	jne    402ec6 <driver_post+0x45>
  402e94:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e99:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e9d:	44 89 c0             	mov    %r8d,%eax
  402ea0:	5b                   	pop    %rbx
  402ea1:	c3                   	retq   
  402ea2:	48 89 ce             	mov    %rcx,%rsi
  402ea5:	48 8d 3d db 08 00 00 	lea    0x8db(%rip),%rdi        # 403787 <trans_char+0xd7>
  402eac:	b8 00 00 00 00       	mov    $0x0,%eax
  402eb1:	e8 fa e1 ff ff       	callq  4010b0 <printf@plt>
  402eb6:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ebb:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ebf:	b8 00 00 00 00       	mov    $0x0,%eax
  402ec4:	eb da                	jmp    402ea0 <driver_post+0x1f>
  402ec6:	48 83 ec 08          	sub    $0x8,%rsp
  402eca:	41 51                	push   %r9
  402ecc:	49 89 c9             	mov    %rcx,%r9
  402ecf:	49 89 d0             	mov    %rdx,%r8
  402ed2:	48 89 f9             	mov    %rdi,%rcx
  402ed5:	48 89 f2             	mov    %rsi,%rdx
  402ed8:	be a4 3c 00 00       	mov    $0x3ca4,%esi
  402edd:	48 8d 3d 95 08 00 00 	lea    0x895(%rip),%rdi        # 403779 <trans_char+0xc9>
  402ee4:	e8 1e f6 ff ff       	callq  402507 <submitr>
  402ee9:	48 83 c4 10          	add    $0x10,%rsp
  402eed:	eb b1                	jmp    402ea0 <driver_post+0x1f>

0000000000402eef <check>:
  402eef:	89 f8                	mov    %edi,%eax
  402ef1:	c1 e8 1c             	shr    $0x1c,%eax
  402ef4:	74 1d                	je     402f13 <check+0x24>
  402ef6:	b9 00 00 00 00       	mov    $0x0,%ecx
  402efb:	83 f9 1f             	cmp    $0x1f,%ecx
  402efe:	7f 0d                	jg     402f0d <check+0x1e>
  402f00:	89 f8                	mov    %edi,%eax
  402f02:	d3 e8                	shr    %cl,%eax
  402f04:	3c 0a                	cmp    $0xa,%al
  402f06:	74 11                	je     402f19 <check+0x2a>
  402f08:	83 c1 08             	add    $0x8,%ecx
  402f0b:	eb ee                	jmp    402efb <check+0xc>
  402f0d:	b8 01 00 00 00       	mov    $0x1,%eax
  402f12:	c3                   	retq   
  402f13:	b8 00 00 00 00       	mov    $0x0,%eax
  402f18:	c3                   	retq   
  402f19:	b8 00 00 00 00       	mov    $0x0,%eax
  402f1e:	c3                   	retq   

0000000000402f1f <gencookie>:
  402f1f:	53                   	push   %rbx
  402f20:	83 c7 01             	add    $0x1,%edi
  402f23:	e8 28 e1 ff ff       	callq  401050 <srandom@plt>
  402f28:	e8 33 e2 ff ff       	callq  401160 <random@plt>
  402f2d:	89 c3                	mov    %eax,%ebx
  402f2f:	89 c7                	mov    %eax,%edi
  402f31:	e8 b9 ff ff ff       	callq  402eef <check>
  402f36:	85 c0                	test   %eax,%eax
  402f38:	74 ee                	je     402f28 <gencookie+0x9>
  402f3a:	89 d8                	mov    %ebx,%eax
  402f3c:	5b                   	pop    %rbx
  402f3d:	c3                   	retq   
  402f3e:	66 90                	xchg   %ax,%ax

0000000000402f40 <__libc_csu_init>:
  402f40:	41 57                	push   %r15
  402f42:	49 89 d7             	mov    %rdx,%r15
  402f45:	41 56                	push   %r14
  402f47:	49 89 f6             	mov    %rsi,%r14
  402f4a:	41 55                	push   %r13
  402f4c:	41 89 fd             	mov    %edi,%r13d
  402f4f:	41 54                	push   %r12
  402f51:	4c 8d 25 b8 2e 00 00 	lea    0x2eb8(%rip),%r12        # 405e10 <__frame_dummy_init_array_entry>
  402f58:	55                   	push   %rbp
  402f59:	48 8d 2d b8 2e 00 00 	lea    0x2eb8(%rip),%rbp        # 405e18 <__do_global_dtors_aux_fini_array_entry>
  402f60:	53                   	push   %rbx
  402f61:	4c 29 e5             	sub    %r12,%rbp
  402f64:	48 83 ec 08          	sub    $0x8,%rsp
  402f68:	e8 93 e0 ff ff       	callq  401000 <_init>
  402f6d:	48 c1 fd 03          	sar    $0x3,%rbp
  402f71:	74 1b                	je     402f8e <__libc_csu_init+0x4e>
  402f73:	31 db                	xor    %ebx,%ebx
  402f75:	0f 1f 00             	nopl   (%rax)
  402f78:	4c 89 fa             	mov    %r15,%rdx
  402f7b:	4c 89 f6             	mov    %r14,%rsi
  402f7e:	44 89 ef             	mov    %r13d,%edi
  402f81:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402f85:	48 83 c3 01          	add    $0x1,%rbx
  402f89:	48 39 dd             	cmp    %rbx,%rbp
  402f8c:	75 ea                	jne    402f78 <__libc_csu_init+0x38>
  402f8e:	48 83 c4 08          	add    $0x8,%rsp
  402f92:	5b                   	pop    %rbx
  402f93:	5d                   	pop    %rbp
  402f94:	41 5c                	pop    %r12
  402f96:	41 5d                	pop    %r13
  402f98:	41 5e                	pop    %r14
  402f9a:	41 5f                	pop    %r15
  402f9c:	c3                   	retq   
  402f9d:	0f 1f 00             	nopl   (%rax)

0000000000402fa0 <__libc_csu_fini>:
  402fa0:	c3                   	retq   

Disassembly of section .fini:

0000000000402fa4 <_fini>:
  402fa4:	48 83 ec 08          	sub    $0x8,%rsp
  402fa8:	48 83 c4 08          	add    $0x8,%rsp
  402fac:	c3                   	retq   
