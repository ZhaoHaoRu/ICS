
bomb：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 ed 3f 00 00 	mov    0x3fed(%rip),%rax        # 404ff8 <__gmon_start__>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	callq  *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 3f 00 00    	pushq  0x3fe2(%rip)        # 405008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 3f 00 00    	jmpq   *0x3fe4(%rip)        # 405010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <getenv@plt>:
  401030:	ff 25 e2 3f 00 00    	jmpq   *0x3fe2(%rip)        # 405018 <getenv@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <__errno_location@plt>:
  401040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 405020 <__errno_location@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <strcpy@plt>:
  401050:	ff 25 d2 3f 00 00    	jmpq   *0x3fd2(%rip)        # 405028 <strcpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <puts@plt>:
  401060:	ff 25 ca 3f 00 00    	jmpq   *0x3fca(%rip)        # 405030 <puts@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <write@plt>:
  401070:	ff 25 c2 3f 00 00    	jmpq   *0x3fc2(%rip)        # 405038 <write@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <fclose@plt>:
  401080:	ff 25 ba 3f 00 00    	jmpq   *0x3fba(%rip)        # 405040 <fclose@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <system@plt>:
  401090:	ff 25 b2 3f 00 00    	jmpq   *0x3fb2(%rip)        # 405048 <system@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <printf@plt>:
  4010a0:	ff 25 aa 3f 00 00    	jmpq   *0x3faa(%rip)        # 405050 <printf@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <rewind@plt>:
  4010b0:	ff 25 a2 3f 00 00    	jmpq   *0x3fa2(%rip)        # 405058 <rewind@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <dup@plt>:
  4010c0:	ff 25 9a 3f 00 00    	jmpq   *0x3f9a(%rip)        # 405060 <dup@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 92 3f 00 00    	jmpq   *0x3f92(%rip)        # 405068 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <fputc@plt>:
  4010e0:	ff 25 8a 3f 00 00    	jmpq   *0x3f8a(%rip)        # 405070 <fputc@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <fgets@plt>:
  4010f0:	ff 25 82 3f 00 00    	jmpq   *0x3f82(%rip)        # 405078 <fgets@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <tmpfile@plt>:
  401100:	ff 25 7a 3f 00 00    	jmpq   *0x3f7a(%rip)        # 405080 <tmpfile@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <signal@plt>:
  401110:	ff 25 72 3f 00 00    	jmpq   *0x3f72(%rip)        # 405088 <signal@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <gethostbyname@plt>:
  401120:	ff 25 6a 3f 00 00    	jmpq   *0x3f6a(%rip)        # 405090 <gethostbyname@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <fprintf@plt>:
  401130:	ff 25 62 3f 00 00    	jmpq   *0x3f62(%rip)        # 405098 <fprintf@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <strtol@plt>:
  401140:	ff 25 5a 3f 00 00    	jmpq   *0x3f5a(%rip)        # 4050a0 <strtol@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <inet_pton@plt>:
  401150:	ff 25 52 3f 00 00    	jmpq   *0x3f52(%rip)        # 4050a8 <inet_pton@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <fflush@plt>:
  401160:	ff 25 4a 3f 00 00    	jmpq   *0x3f4a(%rip)        # 4050b0 <fflush@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 42 3f 00 00    	jmpq   *0x3f42(%rip)        # 4050b8 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <memmove@plt>:
  401180:	ff 25 3a 3f 00 00    	jmpq   *0x3f3a(%rip)        # 4050c0 <memmove@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <cuserid@plt>:
  401190:	ff 25 32 3f 00 00    	jmpq   *0x3f32(%rip)        # 4050c8 <cuserid@GLIBC_2.2.5>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 2a 3f 00 00    	jmpq   *0x3f2a(%rip)        # 4050d0 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

00000000004011b0 <strcat@plt>:
  4011b0:	ff 25 22 3f 00 00    	jmpq   *0x3f22(%rip)        # 4050d8 <strcat@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	pushq  $0x18
  4011bb:	e9 60 fe ff ff       	jmpq   401020 <.plt>

00000000004011c0 <sprintf@plt>:
  4011c0:	ff 25 1a 3f 00 00    	jmpq   *0x3f1a(%rip)        # 4050e0 <sprintf@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	pushq  $0x19
  4011cb:	e9 50 fe ff ff       	jmpq   401020 <.plt>

00000000004011d0 <exit@plt>:
  4011d0:	ff 25 12 3f 00 00    	jmpq   *0x3f12(%rip)        # 4050e8 <exit@GLIBC_2.2.5>
  4011d6:	68 1a 00 00 00       	pushq  $0x1a
  4011db:	e9 40 fe ff ff       	jmpq   401020 <.plt>

00000000004011e0 <connect@plt>:
  4011e0:	ff 25 0a 3f 00 00    	jmpq   *0x3f0a(%rip)        # 4050f0 <connect@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	pushq  $0x1b
  4011eb:	e9 30 fe ff ff       	jmpq   401020 <.plt>

00000000004011f0 <fwrite@plt>:
  4011f0:	ff 25 02 3f 00 00    	jmpq   *0x3f02(%rip)        # 4050f8 <fwrite@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	pushq  $0x1c
  4011fb:	e9 20 fe ff ff       	jmpq   401020 <.plt>

0000000000401200 <sleep@plt>:
  401200:	ff 25 fa 3e 00 00    	jmpq   *0x3efa(%rip)        # 405100 <sleep@GLIBC_2.2.5>
  401206:	68 1d 00 00 00       	pushq  $0x1d
  40120b:	e9 10 fe ff ff       	jmpq   401020 <.plt>

0000000000401210 <__ctype_b_loc@plt>:
  401210:	ff 25 f2 3e 00 00    	jmpq   *0x3ef2(%rip)        # 405108 <__ctype_b_loc@GLIBC_2.3>
  401216:	68 1e 00 00 00       	pushq  $0x1e
  40121b:	e9 00 fe ff ff       	jmpq   401020 <.plt>

0000000000401220 <socket@plt>:
  401220:	ff 25 ea 3e 00 00    	jmpq   *0x3eea(%rip)        # 405110 <socket@GLIBC_2.2.5>
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
  40123f:	49 c7 c0 40 23 40 00 	mov    $0x402340,%r8
  401246:	48 c7 c1 e0 22 40 00 	mov    $0x4022e0,%rcx
  40124d:	48 c7 c7 12 13 40 00 	mov    $0x401312,%rdi
  401254:	ff 15 96 3d 00 00    	callq  *0x3d96(%rip)        # 404ff0 <__libc_start_main@GLIBC_2.2.5>
  40125a:	f4                   	hlt    
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <_dl_relocate_static_pie>:
  401260:	c3                   	retq   
  401261:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401268:	00 00 00 
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <deregister_tm_clones>:
  401270:	b8 e0 57 40 00       	mov    $0x4057e0,%eax
  401275:	48 3d e0 57 40 00    	cmp    $0x4057e0,%rax
  40127b:	74 13                	je     401290 <deregister_tm_clones+0x20>
  40127d:	b8 00 00 00 00       	mov    $0x0,%eax
  401282:	48 85 c0             	test   %rax,%rax
  401285:	74 09                	je     401290 <deregister_tm_clones+0x20>
  401287:	bf e0 57 40 00       	mov    $0x4057e0,%edi
  40128c:	ff e0                	jmpq   *%rax
  40128e:	66 90                	xchg   %ax,%ax
  401290:	c3                   	retq   
  401291:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401298:	00 00 00 00 
  40129c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012a0 <register_tm_clones>:
  4012a0:	be e0 57 40 00       	mov    $0x4057e0,%esi
  4012a5:	48 81 ee e0 57 40 00 	sub    $0x4057e0,%rsi
  4012ac:	48 c1 fe 03          	sar    $0x3,%rsi
  4012b0:	48 89 f0             	mov    %rsi,%rax
  4012b3:	48 c1 e8 3f          	shr    $0x3f,%rax
  4012b7:	48 01 c6             	add    %rax,%rsi
  4012ba:	48 d1 fe             	sar    %rsi
  4012bd:	74 11                	je     4012d0 <register_tm_clones+0x30>
  4012bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c4:	48 85 c0             	test   %rax,%rax
  4012c7:	74 07                	je     4012d0 <register_tm_clones+0x30>
  4012c9:	bf e0 57 40 00       	mov    $0x4057e0,%edi
  4012ce:	ff e0                	jmpq   *%rax
  4012d0:	c3                   	retq   
  4012d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012e0 <__do_global_dtors_aux>:
  4012e0:	80 3d 11 45 00 00 00 	cmpb   $0x0,0x4511(%rip)        # 4057f8 <completed.7325>
  4012e7:	75 17                	jne    401300 <__do_global_dtors_aux+0x20>
  4012e9:	55                   	push   %rbp
  4012ea:	48 89 e5             	mov    %rsp,%rbp
  4012ed:	e8 7e ff ff ff       	callq  401270 <deregister_tm_clones>
  4012f2:	c6 05 ff 44 00 00 01 	movb   $0x1,0x44ff(%rip)        # 4057f8 <completed.7325>
  4012f9:	5d                   	pop    %rbp
  4012fa:	c3                   	retq   
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401300:	c3                   	retq   
  401301:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401308:	00 00 00 00 
  40130c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401310 <frame_dummy>:
  401310:	eb 8e                	jmp    4012a0 <register_tm_clones>

0000000000401312 <main>:
  401312:	53                   	push   %rbx
  401313:	83 ff 01             	cmp    $0x1,%edi
  401316:	0f 84 f8 00 00 00    	je     401414 <main+0x102>
  40131c:	48 89 f3             	mov    %rsi,%rbx
  40131f:	83 ff 02             	cmp    $0x2,%edi
  401322:	0f 85 1c 01 00 00    	jne    401444 <main+0x132>
  401328:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  40132c:	48 8d 35 d0 20 00 00 	lea    0x20d0(%rip),%rsi        # 403403 <array.3192+0x223>
  401333:	e8 68 fe ff ff       	callq  4011a0 <fopen@plt>
  401338:	48 89 05 c1 44 00 00 	mov    %rax,0x44c1(%rip)        # 405800 <infile>
  40133f:	48 85 c0             	test   %rax,%rax
  401342:	0f 84 df 00 00 00    	je     401427 <main+0x115>
  401348:	e8 a9 06 00 00       	callq  4019f6 <initialize_bomb>
  40134d:	48 8d 3d 34 1d 00 00 	lea    0x1d34(%rip),%rdi        # 403088 <_IO_stdin_used+0x88>
  401354:	e8 07 fd ff ff       	callq  401060 <puts@plt>
  401359:	48 8d 3d 68 1d 00 00 	lea    0x1d68(%rip),%rdi        # 4030c8 <_IO_stdin_used+0xc8>
  401360:	e8 fb fc ff ff       	callq  401060 <puts@plt>
  401365:	e8 db 0d 00 00       	callq  402145 <read_line>
  40136a:	48 89 c7             	mov    %rax,%rdi
  40136d:	e8 f0 00 00 00       	callq  401462 <phase_1>
  401372:	e8 cf 0e 00 00       	callq  402246 <phase_defused>
  401377:	48 8d 3d 7a 1d 00 00 	lea    0x1d7a(%rip),%rdi        # 4030f8 <_IO_stdin_used+0xf8>
  40137e:	e8 dd fc ff ff       	callq  401060 <puts@plt>
  401383:	e8 bd 0d 00 00       	callq  402145 <read_line>
  401388:	48 89 c7             	mov    %rax,%rdi
  40138b:	e8 f2 00 00 00       	callq  401482 <phase_2>
  401390:	e8 b1 0e 00 00       	callq  402246 <phase_defused>
  401395:	48 8d 3d 9f 1c 00 00 	lea    0x1c9f(%rip),%rdi        # 40303b <_IO_stdin_used+0x3b>
  40139c:	e8 bf fc ff ff       	callq  401060 <puts@plt>
  4013a1:	e8 9f 0d 00 00       	callq  402145 <read_line>
  4013a6:	48 89 c7             	mov    %rax,%rdi
  4013a9:	e8 1e 01 00 00       	callq  4014cc <phase_3>
  4013ae:	e8 93 0e 00 00       	callq  402246 <phase_defused>
  4013b3:	48 8d 3d 9f 1c 00 00 	lea    0x1c9f(%rip),%rdi        # 403059 <_IO_stdin_used+0x59>
  4013ba:	e8 a1 fc ff ff       	callq  401060 <puts@plt>
  4013bf:	e8 81 0d 00 00       	callq  402145 <read_line>
  4013c4:	48 89 c7             	mov    %rax,%rdi
  4013c7:	e8 7b 02 00 00       	callq  401647 <phase_4>
  4013cc:	e8 75 0e 00 00       	callq  402246 <phase_defused>
  4013d1:	48 8d 3d 50 1d 00 00 	lea    0x1d50(%rip),%rdi        # 403128 <_IO_stdin_used+0x128>
  4013d8:	e8 83 fc ff ff       	callq  401060 <puts@plt>
  4013dd:	e8 63 0d 00 00       	callq  402145 <read_line>
  4013e2:	48 89 c7             	mov    %rax,%rdi
  4013e5:	e8 a4 02 00 00       	callq  40168e <phase_5>
  4013ea:	e8 57 0e 00 00       	callq  402246 <phase_defused>
  4013ef:	48 8d 3d 72 1c 00 00 	lea    0x1c72(%rip),%rdi        # 403068 <_IO_stdin_used+0x68>
  4013f6:	e8 65 fc ff ff       	callq  401060 <puts@plt>
  4013fb:	e8 45 0d 00 00       	callq  402145 <read_line>
  401400:	48 89 c7             	mov    %rax,%rdi
  401403:	e8 46 03 00 00       	callq  40174e <phase_6>
  401408:	e8 39 0e 00 00       	callq  402246 <phase_defused>
  40140d:	b8 00 00 00 00       	mov    $0x0,%eax
  401412:	5b                   	pop    %rbx
  401413:	c3                   	retq   
  401414:	48 8b 05 d5 43 00 00 	mov    0x43d5(%rip),%rax        # 4057f0 <stdin@@GLIBC_2.2.5>
  40141b:	48 89 05 de 43 00 00 	mov    %rax,0x43de(%rip)        # 405800 <infile>
  401422:	e9 21 ff ff ff       	jmpq   401348 <main+0x36>
  401427:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  40142b:	48 8b 33             	mov    (%rbx),%rsi
  40142e:	48 8d 3d cf 1b 00 00 	lea    0x1bcf(%rip),%rdi        # 403004 <_IO_stdin_used+0x4>
  401435:	e8 66 fc ff ff       	callq  4010a0 <printf@plt>
  40143a:	bf 08 00 00 00       	mov    $0x8,%edi
  40143f:	e8 8c fd ff ff       	callq  4011d0 <exit@plt>
  401444:	48 8b 36             	mov    (%rsi),%rsi
  401447:	48 8d 3d d3 1b 00 00 	lea    0x1bd3(%rip),%rdi        # 403021 <_IO_stdin_used+0x21>
  40144e:	b8 00 00 00 00       	mov    $0x0,%eax
  401453:	e8 48 fc ff ff       	callq  4010a0 <printf@plt>
  401458:	bf 08 00 00 00       	mov    $0x8,%edi
  40145d:	e8 6e fd ff ff       	callq  4011d0 <exit@plt>

0000000000401462 <phase_1>:
  401462:	48 83 ec 08          	sub    $0x8,%rsp
  401466:	48 8d 35 e3 1c 00 00 	lea    0x1ce3(%rip),%rsi        # 403150 <_IO_stdin_used+0x150>
  40146d:	e8 47 04 00 00       	callq  4018b9 <strings_not_equal>
  401472:	85 c0                	test   %eax,%eax
  401474:	75 05                	jne    40147b <phase_1+0x19>
  401476:	48 83 c4 08          	add    $0x8,%rsp
  40147a:	c3                   	retq   
  40147b:	e8 48 0c 00 00       	callq  4020c8 <explode_bomb>
  401480:	eb f4                	jmp    401476 <phase_1+0x14>

0000000000401482 <phase_2>:
  401482:	55                   	push   %rbp
  401483:	53                   	push   %rbx
  401484:	48 83 ec 28          	sub    $0x28,%rsp
  401488:	48 89 e6             	mov    %rsp,%rsi
  40148b:	e8 74 0c 00 00       	callq  402104 <read_six_numbers>
  401490:	83 3c 24 01          	cmpl   $0x1,(%rsp)
  401494:	75 0a                	jne    4014a0 <phase_2+0x1e>
  401496:	48 89 e5             	mov    %rsp,%rbp
  401499:	bb 01 00 00 00       	mov    $0x1,%ebx
  40149e:	eb 15                	jmp    4014b5 <phase_2+0x33>
  4014a0:	e8 23 0c 00 00       	callq  4020c8 <explode_bomb>
  4014a5:	eb ef                	jmp    401496 <phase_2+0x14>
  4014a7:	e8 1c 0c 00 00       	callq  4020c8 <explode_bomb>
  4014ac:	48 83 c5 04          	add    $0x4,%rbp
  4014b0:	83 fb 06             	cmp    $0x6,%ebx
  4014b3:	74 10                	je     4014c5 <phase_2+0x43>
  4014b5:	83 c3 01             	add    $0x1,%ebx
  4014b8:	89 d8                	mov    %ebx,%eax
  4014ba:	0f af 45 00          	imul   0x0(%rbp),%eax
  4014be:	39 45 04             	cmp    %eax,0x4(%rbp)
  4014c1:	74 e9                	je     4014ac <phase_2+0x2a>
  4014c3:	eb e2                	jmp    4014a7 <phase_2+0x25>
  4014c5:	48 83 c4 28          	add    $0x28,%rsp
  4014c9:	5b                   	pop    %rbx
  4014ca:	5d                   	pop    %rbp
  4014cb:	c3                   	retq   

00000000004014cc <phase_3>:
  4014cc:	48 83 ec 18          	sub    $0x18,%rsp
  4014d0:	48 8d 4c 24 07       	lea    0x7(%rsp),%rcx
  4014d5:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  4014da:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
  4014df:	48 8d 35 c8 1c 00 00 	lea    0x1cc8(%rip),%rsi        # 4031ae <_IO_stdin_used+0x1ae>
  4014e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4014eb:	e8 80 fc ff ff       	callq  401170 <__isoc99_sscanf@plt>
  4014f0:	83 f8 02             	cmp    $0x2,%eax
  4014f3:	7e 1f                	jle    401514 <phase_3+0x48>
  4014f5:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
  4014fa:	0f 87 05 01 00 00    	ja     401605 <phase_3+0x139>
  401500:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401504:	48 8d 15 b5 1c 00 00 	lea    0x1cb5(%rip),%rdx        # 4031c0 <_IO_stdin_used+0x1c0>
  40150b:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40150f:	48 01 d0             	add    %rdx,%rax
  401512:	ff e0                	jmpq   *%rax
  401514:	e8 af 0b 00 00       	callq  4020c8 <explode_bomb>
  401519:	eb da                	jmp    4014f5 <phase_3+0x29>
  40151b:	b8 67 00 00 00       	mov    $0x67,%eax
  401520:	81 7c 24 08 bb 01 00 	cmpl   $0x1bb,0x8(%rsp)
  401527:	00 
  401528:	0f 84 e1 00 00 00    	je     40160f <phase_3+0x143>
  40152e:	e8 95 0b 00 00       	callq  4020c8 <explode_bomb>
  401533:	b8 67 00 00 00       	mov    $0x67,%eax
  401538:	e9 d2 00 00 00       	jmpq   40160f <phase_3+0x143>
  40153d:	b8 67 00 00 00       	mov    $0x67,%eax
  401542:	81 7c 24 08 43 02 00 	cmpl   $0x243,0x8(%rsp)
  401549:	00 
  40154a:	0f 84 bf 00 00 00    	je     40160f <phase_3+0x143>
  401550:	e8 73 0b 00 00       	callq  4020c8 <explode_bomb>
  401555:	b8 67 00 00 00       	mov    $0x67,%eax
  40155a:	e9 b0 00 00 00       	jmpq   40160f <phase_3+0x143>
  40155f:	b8 70 00 00 00       	mov    $0x70,%eax
  401564:	81 7c 24 08 2e 03 00 	cmpl   $0x32e,0x8(%rsp)
  40156b:	00 
  40156c:	0f 84 9d 00 00 00    	je     40160f <phase_3+0x143>
  401572:	e8 51 0b 00 00       	callq  4020c8 <explode_bomb>
  401577:	b8 70 00 00 00       	mov    $0x70,%eax
  40157c:	e9 8e 00 00 00       	jmpq   40160f <phase_3+0x143>
  401581:	b8 6c 00 00 00       	mov    $0x6c,%eax
  401586:	81 7c 24 08 22 01 00 	cmpl   $0x122,0x8(%rsp)
  40158d:	00 
  40158e:	74 7f                	je     40160f <phase_3+0x143>
  401590:	e8 33 0b 00 00       	callq  4020c8 <explode_bomb>
  401595:	b8 6c 00 00 00       	mov    $0x6c,%eax
  40159a:	eb 73                	jmp    40160f <phase_3+0x143>
  40159c:	b8 66 00 00 00       	mov    $0x66,%eax
  4015a1:	81 7c 24 08 7d 02 00 	cmpl   $0x27d,0x8(%rsp)
  4015a8:	00 
  4015a9:	74 64                	je     40160f <phase_3+0x143>
  4015ab:	e8 18 0b 00 00       	callq  4020c8 <explode_bomb>
  4015b0:	b8 66 00 00 00       	mov    $0x66,%eax
  4015b5:	eb 58                	jmp    40160f <phase_3+0x143>
  4015b7:	b8 68 00 00 00       	mov    $0x68,%eax
  4015bc:	81 7c 24 08 03 02 00 	cmpl   $0x203,0x8(%rsp)
  4015c3:	00 
  4015c4:	74 49                	je     40160f <phase_3+0x143>
  4015c6:	e8 fd 0a 00 00       	callq  4020c8 <explode_bomb>
  4015cb:	b8 68 00 00 00       	mov    $0x68,%eax
  4015d0:	eb 3d                	jmp    40160f <phase_3+0x143>
  4015d2:	b8 66 00 00 00       	mov    $0x66,%eax
  4015d7:	83 7c 24 08 7d       	cmpl   $0x7d,0x8(%rsp)
  4015dc:	74 31                	je     40160f <phase_3+0x143>
  4015de:	e8 e5 0a 00 00       	callq  4020c8 <explode_bomb>
  4015e3:	b8 66 00 00 00       	mov    $0x66,%eax
  4015e8:	eb 25                	jmp    40160f <phase_3+0x143>
  4015ea:	b8 6e 00 00 00       	mov    $0x6e,%eax
  4015ef:	81 7c 24 08 cf 03 00 	cmpl   $0x3cf,0x8(%rsp)
  4015f6:	00 
  4015f7:	74 16                	je     40160f <phase_3+0x143>
  4015f9:	e8 ca 0a 00 00       	callq  4020c8 <explode_bomb>
  4015fe:	b8 6e 00 00 00       	mov    $0x6e,%eax
  401603:	eb 0a                	jmp    40160f <phase_3+0x143>
  401605:	e8 be 0a 00 00       	callq  4020c8 <explode_bomb>
  40160a:	b8 6e 00 00 00       	mov    $0x6e,%eax
  40160f:	38 44 24 07          	cmp    %al,0x7(%rsp)
  401613:	75 05                	jne    40161a <phase_3+0x14e>
  401615:	48 83 c4 18          	add    $0x18,%rsp
  401619:	c3                   	retq   
  40161a:	e8 a9 0a 00 00       	callq  4020c8 <explode_bomb>
  40161f:	eb f4                	jmp    401615 <phase_3+0x149>

0000000000401621 <func4>:
  401621:	b8 01 00 00 00       	mov    $0x1,%eax
  401626:	85 ff                	test   %edi,%edi
  401628:	7e 1c                	jle    401646 <func4+0x25>
  40162a:	48 83 ec 08          	sub    $0x8,%rsp
  40162e:	83 ef 01             	sub    $0x1,%edi
  401631:	e8 eb ff ff ff       	callq  401621 <func4>
  401636:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
  40163d:	29 c2                	sub    %eax,%edx
  40163f:	89 d0                	mov    %edx,%eax
  401641:	48 83 c4 08          	add    $0x8,%rsp
  401645:	c3                   	retq   
  401646:	c3                   	retq   

0000000000401647 <phase_4>:
  401647:	48 83 ec 18          	sub    $0x18,%rsp
  40164b:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401650:	48 8d 35 5d 1b 00 00 	lea    0x1b5d(%rip),%rsi        # 4031b4 <_IO_stdin_used+0x1b4>
  401657:	b8 00 00 00 00       	mov    $0x0,%eax
  40165c:	e8 0f fb ff ff       	callq  401170 <__isoc99_sscanf@plt>
  401661:	83 f8 01             	cmp    $0x1,%eax
  401664:	75 07                	jne    40166d <phase_4+0x26>
  401666:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  40166b:	7f 05                	jg     401672 <phase_4+0x2b>
  40166d:	e8 56 0a 00 00       	callq  4020c8 <explode_bomb>
  401672:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401676:	e8 a6 ff ff ff       	callq  401621 <func4>
  40167b:	3d 91 cb 01 00       	cmp    $0x1cb91,%eax
  401680:	75 05                	jne    401687 <phase_4+0x40>
  401682:	48 83 c4 18          	add    $0x18,%rsp
  401686:	c3                   	retq   
  401687:	e8 3c 0a 00 00       	callq  4020c8 <explode_bomb>
  40168c:	eb f4                	jmp    401682 <phase_4+0x3b>

000000000040168e <phase_5>:
  40168e:	53                   	push   %rbx
  40168f:	48 83 ec 10          	sub    $0x10,%rsp
  401693:	48 89 fb             	mov    %rdi,%rbx
  401696:	e8 01 02 00 00       	callq  40189c <string_length>
  40169b:	83 f8 06             	cmp    $0x6,%eax
  40169e:	75 45                	jne    4016e5 <phase_5+0x57>
  4016a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a5:	48 8d 0d 34 1b 00 00 	lea    0x1b34(%rip),%rcx        # 4031e0 <array.3192>
  4016ac:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  4016b0:	83 e2 0f             	and    $0xf,%edx
  4016b3:	0f b6 14 11          	movzbl (%rcx,%rdx,1),%edx
  4016b7:	88 54 04 09          	mov    %dl,0x9(%rsp,%rax,1)
  4016bb:	48 83 c0 01          	add    $0x1,%rax
  4016bf:	48 83 f8 06          	cmp    $0x6,%rax
  4016c3:	75 e7                	jne    4016ac <phase_5+0x1e>
  4016c5:	c6 44 24 0f 00       	movb   $0x0,0xf(%rsp)
  4016ca:	48 8d 7c 24 09       	lea    0x9(%rsp),%rdi
  4016cf:	48 8d 35 e1 1a 00 00 	lea    0x1ae1(%rip),%rsi        # 4031b7 <_IO_stdin_used+0x1b7>
  4016d6:	e8 de 01 00 00       	callq  4018b9 <strings_not_equal>
  4016db:	85 c0                	test   %eax,%eax
  4016dd:	75 0d                	jne    4016ec <phase_5+0x5e>
  4016df:	48 83 c4 10          	add    $0x10,%rsp
  4016e3:	5b                   	pop    %rbx
  4016e4:	c3                   	retq   
  4016e5:	e8 de 09 00 00       	callq  4020c8 <explode_bomb>
  4016ea:	eb b4                	jmp    4016a0 <phase_5+0x12>
  4016ec:	e8 d7 09 00 00       	callq  4020c8 <explode_bomb>
  4016f1:	eb ec                	jmp    4016df <phase_5+0x51>

00000000004016f3 <fun6>:
  4016f3:	48 89 f8             	mov    %rdi,%rax
  4016f6:	4c 8b 47 08          	mov    0x8(%rdi),%r8
  4016fa:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
  401701:	00 
  401702:	4d 85 c0             	test   %r8,%r8
  401705:	75 2a                	jne    401731 <fun6+0x3e>
  401707:	c3                   	retq   
  401708:	48 89 d1             	mov    %rdx,%rcx
  40170b:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  40170f:	48 85 d2             	test   %rdx,%rdx
  401712:	74 09                	je     40171d <fun6+0x2a>
  401714:	39 32                	cmp    %esi,(%rdx)
  401716:	7f f0                	jg     401708 <fun6+0x15>
  401718:	48 39 ca             	cmp    %rcx,%rdx
  40171b:	74 2b                	je     401748 <fun6+0x55>
  40171d:	4c 89 41 08          	mov    %r8,0x8(%rcx)
  401721:	49 8b 48 08          	mov    0x8(%r8),%rcx
  401725:	49 89 50 08          	mov    %rdx,0x8(%r8)
  401729:	49 89 c8             	mov    %rcx,%r8
  40172c:	48 85 c9             	test   %rcx,%rcx
  40172f:	74 1c                	je     40174d <fun6+0x5a>
  401731:	48 85 c0             	test   %rax,%rax
  401734:	74 0a                	je     401740 <fun6+0x4d>
  401736:	41 8b 30             	mov    (%r8),%esi
  401739:	48 89 c1             	mov    %rax,%rcx
  40173c:	39 30                	cmp    %esi,(%rax)
  40173e:	7f cb                	jg     40170b <fun6+0x18>
  401740:	48 89 c2             	mov    %rax,%rdx
  401743:	4c 89 c0             	mov    %r8,%rax
  401746:	eb d9                	jmp    401721 <fun6+0x2e>
  401748:	4c 89 c0             	mov    %r8,%rax
  40174b:	eb d4                	jmp    401721 <fun6+0x2e>
  40174d:	c3                   	retq   

000000000040174e <phase_6>:
  40174e:	48 83 ec 08          	sub    $0x8,%rsp
  401752:	ba 0a 00 00 00       	mov    $0xa,%edx
  401757:	be 00 00 00 00       	mov    $0x0,%esi
  40175c:	e8 df f9 ff ff       	callq  401140 <strtol@plt>
  401761:	89 05 e9 3f 00 00    	mov    %eax,0x3fe9(%rip)        # 405750 <node0>
  401767:	48 8d 3d e2 3f 00 00 	lea    0x3fe2(%rip),%rdi        # 405750 <node0>
  40176e:	e8 80 ff ff ff       	callq  4016f3 <fun6>
  401773:	48 8b 40 08          	mov    0x8(%rax),%rax
  401777:	8b 0d d3 3f 00 00    	mov    0x3fd3(%rip),%ecx        # 405750 <node0>
  40177d:	39 08                	cmp    %ecx,(%rax)
  40177f:	75 05                	jne    401786 <phase_6+0x38>
  401781:	48 83 c4 08          	add    $0x8,%rsp
  401785:	c3                   	retq   
  401786:	e8 3d 09 00 00       	callq  4020c8 <explode_bomb>
  40178b:	eb f4                	jmp    401781 <phase_6+0x33>

000000000040178d <fun7>:
  40178d:	48 85 ff             	test   %rdi,%rdi
  401790:	74 32                	je     4017c4 <fun7+0x37>
  401792:	48 83 ec 08          	sub    $0x8,%rsp
  401796:	8b 17                	mov    (%rdi),%edx
  401798:	39 f2                	cmp    %esi,%edx
  40179a:	7f 0c                	jg     4017a8 <fun7+0x1b>
  40179c:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a1:	75 12                	jne    4017b5 <fun7+0x28>
  4017a3:	48 83 c4 08          	add    $0x8,%rsp
  4017a7:	c3                   	retq   
  4017a8:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  4017ac:	e8 dc ff ff ff       	callq  40178d <fun7>
  4017b1:	01 c0                	add    %eax,%eax
  4017b3:	eb ee                	jmp    4017a3 <fun7+0x16>
  4017b5:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  4017b9:	e8 cf ff ff ff       	callq  40178d <fun7>
  4017be:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4017c2:	eb df                	jmp    4017a3 <fun7+0x16>
  4017c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4017c9:	c3                   	retq   

00000000004017ca <secret_phase>:
  4017ca:	53                   	push   %rbx
  4017cb:	e8 75 09 00 00       	callq  402145 <read_line>
  4017d0:	ba 0a 00 00 00       	mov    $0xa,%edx
  4017d5:	be 00 00 00 00       	mov    $0x0,%esi
  4017da:	48 89 c7             	mov    %rax,%rdi
  4017dd:	e8 5e f9 ff ff       	callq  401140 <strtol@plt>
  4017e2:	48 89 c3             	mov    %rax,%rbx
  4017e5:	8d 40 ff             	lea    -0x1(%rax),%eax
  4017e8:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  4017ed:	77 26                	ja     401815 <secret_phase+0x4b>
  4017ef:	89 de                	mov    %ebx,%esi
  4017f1:	48 8d 3d 78 3e 00 00 	lea    0x3e78(%rip),%rdi        # 405670 <n1>
  4017f8:	e8 90 ff ff ff       	callq  40178d <fun7>
  4017fd:	83 f8 07             	cmp    $0x7,%eax
  401800:	75 1a                	jne    40181c <secret_phase+0x52>
  401802:	48 8d 3d 7f 19 00 00 	lea    0x197f(%rip),%rdi        # 403188 <_IO_stdin_used+0x188>
  401809:	e8 52 f8 ff ff       	callq  401060 <puts@plt>
  40180e:	e8 33 0a 00 00       	callq  402246 <phase_defused>
  401813:	5b                   	pop    %rbx
  401814:	c3                   	retq   
  401815:	e8 ae 08 00 00       	callq  4020c8 <explode_bomb>
  40181a:	eb d3                	jmp    4017ef <secret_phase+0x25>
  40181c:	e8 a7 08 00 00       	callq  4020c8 <explode_bomb>
  401821:	eb df                	jmp    401802 <secret_phase+0x38>

0000000000401823 <sig_handler>:
  401823:	48 83 ec 08          	sub    $0x8,%rsp
  401827:	48 8d 3d c2 19 00 00 	lea    0x19c2(%rip),%rdi        # 4031f0 <array.3192+0x10>
  40182e:	e8 2d f8 ff ff       	callq  401060 <puts@plt>
  401833:	bf 03 00 00 00       	mov    $0x3,%edi
  401838:	e8 c3 f9 ff ff       	callq  401200 <sleep@plt>
  40183d:	48 8d 3d dd 1a 00 00 	lea    0x1add(%rip),%rdi        # 403321 <array.3192+0x141>
  401844:	b8 00 00 00 00       	mov    $0x0,%eax
  401849:	e8 52 f8 ff ff       	callq  4010a0 <printf@plt>
  40184e:	48 8b 3d 8b 3f 00 00 	mov    0x3f8b(%rip),%rdi        # 4057e0 <stdout@@GLIBC_2.2.5>
  401855:	e8 06 f9 ff ff       	callq  401160 <fflush@plt>
  40185a:	bf 01 00 00 00       	mov    $0x1,%edi
  40185f:	e8 9c f9 ff ff       	callq  401200 <sleep@plt>
  401864:	48 8d 3d be 1a 00 00 	lea    0x1abe(%rip),%rdi        # 403329 <array.3192+0x149>
  40186b:	e8 f0 f7 ff ff       	callq  401060 <puts@plt>
  401870:	bf 10 00 00 00       	mov    $0x10,%edi
  401875:	e8 56 f9 ff ff       	callq  4011d0 <exit@plt>

000000000040187a <invalid_phase>:
  40187a:	48 83 ec 08          	sub    $0x8,%rsp
  40187e:	48 89 fe             	mov    %rdi,%rsi
  401881:	48 8d 3d a9 1a 00 00 	lea    0x1aa9(%rip),%rdi        # 403331 <array.3192+0x151>
  401888:	b8 00 00 00 00       	mov    $0x0,%eax
  40188d:	e8 0e f8 ff ff       	callq  4010a0 <printf@plt>
  401892:	bf 08 00 00 00       	mov    $0x8,%edi
  401897:	e8 34 f9 ff ff       	callq  4011d0 <exit@plt>

000000000040189c <string_length>:
  40189c:	80 3f 00             	cmpb   $0x0,(%rdi)
  40189f:	74 12                	je     4018b3 <string_length+0x17>
  4018a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4018a6:	48 83 c7 01          	add    $0x1,%rdi
  4018aa:	83 c0 01             	add    $0x1,%eax
  4018ad:	80 3f 00             	cmpb   $0x0,(%rdi)
  4018b0:	75 f4                	jne    4018a6 <string_length+0xa>
  4018b2:	c3                   	retq   
  4018b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b8:	c3                   	retq   

00000000004018b9 <strings_not_equal>:
  4018b9:	41 54                	push   %r12
  4018bb:	55                   	push   %rbp
  4018bc:	53                   	push   %rbx
  4018bd:	48 89 fb             	mov    %rdi,%rbx
  4018c0:	48 89 f5             	mov    %rsi,%rbp
  4018c3:	e8 d4 ff ff ff       	callq  40189c <string_length>
  4018c8:	41 89 c4             	mov    %eax,%r12d
  4018cb:	48 89 ef             	mov    %rbp,%rdi
  4018ce:	e8 c9 ff ff ff       	callq  40189c <string_length>
  4018d3:	ba 01 00 00 00       	mov    $0x1,%edx
  4018d8:	41 39 c4             	cmp    %eax,%r12d
  4018db:	75 2f                	jne    40190c <strings_not_equal+0x53>
  4018dd:	0f b6 03             	movzbl (%rbx),%eax
  4018e0:	84 c0                	test   %al,%al
  4018e2:	74 2f                	je     401913 <strings_not_equal+0x5a>
  4018e4:	3a 45 00             	cmp    0x0(%rbp),%al
  4018e7:	75 31                	jne    40191a <strings_not_equal+0x61>
  4018e9:	b8 01 00 00 00       	mov    $0x1,%eax
  4018ee:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  4018f2:	84 d2                	test   %dl,%dl
  4018f4:	74 11                	je     401907 <strings_not_equal+0x4e>
  4018f6:	48 83 c0 01          	add    $0x1,%rax
  4018fa:	38 54 05 ff          	cmp    %dl,-0x1(%rbp,%rax,1)
  4018fe:	74 ee                	je     4018ee <strings_not_equal+0x35>
  401900:	ba 01 00 00 00       	mov    $0x1,%edx
  401905:	eb 05                	jmp    40190c <strings_not_equal+0x53>
  401907:	ba 00 00 00 00       	mov    $0x0,%edx
  40190c:	89 d0                	mov    %edx,%eax
  40190e:	5b                   	pop    %rbx
  40190f:	5d                   	pop    %rbp
  401910:	41 5c                	pop    %r12
  401912:	c3                   	retq   
  401913:	ba 00 00 00 00       	mov    $0x0,%edx
  401918:	eb f2                	jmp    40190c <strings_not_equal+0x53>
  40191a:	ba 01 00 00 00       	mov    $0x1,%edx
  40191f:	eb eb                	jmp    40190c <strings_not_equal+0x53>

0000000000401921 <open_clientfd>:
  401921:	41 54                	push   %r12
  401923:	55                   	push   %rbp
  401924:	53                   	push   %rbx
  401925:	48 83 ec 10          	sub    $0x10,%rsp
  401929:	49 89 fc             	mov    %rdi,%r12
  40192c:	89 f5                	mov    %esi,%ebp
  40192e:	ba 00 00 00 00       	mov    $0x0,%edx
  401933:	be 01 00 00 00       	mov    $0x1,%esi
  401938:	bf 02 00 00 00       	mov    $0x2,%edi
  40193d:	e8 de f8 ff ff       	callq  401220 <socket@plt>
  401942:	85 c0                	test   %eax,%eax
  401944:	78 6e                	js     4019b4 <open_clientfd+0x93>
  401946:	89 c3                	mov    %eax,%ebx
  401948:	4c 89 e7             	mov    %r12,%rdi
  40194b:	e8 d0 f7 ff ff       	callq  401120 <gethostbyname@plt>
  401950:	48 85 c0             	test   %rax,%rax
  401953:	74 75                	je     4019ca <open_clientfd+0xa9>
  401955:	49 89 e4             	mov    %rsp,%r12
  401958:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  40195f:	00 00 
  401961:	41 c7 44 24 0a 00 00 	movl   $0x0,0xa(%r12)
  401968:	00 00 
  40196a:	66 41 c7 44 24 0e 00 	movw   $0x0,0xe(%r12)
  401971:	00 
  401972:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  401978:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40197c:	48 8b 40 18          	mov    0x18(%rax),%rax
  401980:	49 8d 7c 24 04       	lea    0x4(%r12),%rdi
  401985:	48 8b 30             	mov    (%rax),%rsi
  401988:	e8 f3 f7 ff ff       	callq  401180 <memmove@plt>
  40198d:	66 c1 c5 08          	rol    $0x8,%bp
  401991:	66 89 6c 24 02       	mov    %bp,0x2(%rsp)
  401996:	ba 10 00 00 00       	mov    $0x10,%edx
  40199b:	4c 89 e6             	mov    %r12,%rsi
  40199e:	89 df                	mov    %ebx,%edi
  4019a0:	e8 3b f8 ff ff       	callq  4011e0 <connect@plt>
  4019a5:	85 c0                	test   %eax,%eax
  4019a7:	78 37                	js     4019e0 <open_clientfd+0xbf>
  4019a9:	89 d8                	mov    %ebx,%eax
  4019ab:	48 83 c4 10          	add    $0x10,%rsp
  4019af:	5b                   	pop    %rbx
  4019b0:	5d                   	pop    %rbp
  4019b1:	41 5c                	pop    %r12
  4019b3:	c3                   	retq   
  4019b4:	48 8d 3d 87 19 00 00 	lea    0x1987(%rip),%rdi        # 403342 <array.3192+0x162>
  4019bb:	e8 a0 f6 ff ff       	callq  401060 <puts@plt>
  4019c0:	bf 08 00 00 00       	mov    $0x8,%edi
  4019c5:	e8 06 f8 ff ff       	callq  4011d0 <exit@plt>
  4019ca:	48 8d 3d 7f 19 00 00 	lea    0x197f(%rip),%rdi        # 403350 <array.3192+0x170>
  4019d1:	e8 8a f6 ff ff       	callq  401060 <puts@plt>
  4019d6:	bf 08 00 00 00       	mov    $0x8,%edi
  4019db:	e8 f0 f7 ff ff       	callq  4011d0 <exit@plt>
  4019e0:	48 8d 3d 77 19 00 00 	lea    0x1977(%rip),%rdi        # 40335e <array.3192+0x17e>
  4019e7:	e8 74 f6 ff ff       	callq  401060 <puts@plt>
  4019ec:	bf 08 00 00 00       	mov    $0x8,%edi
  4019f1:	e8 da f7 ff ff       	callq  4011d0 <exit@plt>

00000000004019f6 <initialize_bomb>:
  4019f6:	48 83 ec 08          	sub    $0x8,%rsp
  4019fa:	48 8d 35 22 fe ff ff 	lea    -0x1de(%rip),%rsi        # 401823 <sig_handler>
  401a01:	bf 02 00 00 00       	mov    $0x2,%edi
  401a06:	e8 05 f7 ff ff       	callq  401110 <signal@plt>
  401a0b:	be 50 00 00 00       	mov    $0x50,%esi
  401a10:	48 8d 3d 55 19 00 00 	lea    0x1955(%rip),%rdi        # 40336c <array.3192+0x18c>
  401a17:	e8 05 ff ff ff       	callq  401921 <open_clientfd>
  401a1c:	89 c7                	mov    %eax,%edi
  401a1e:	e8 ad f6 ff ff       	callq  4010d0 <close@plt>
  401a23:	48 83 c4 08          	add    $0x8,%rsp
  401a27:	c3                   	retq   

0000000000401a28 <blank_line>:
  401a28:	55                   	push   %rbp
  401a29:	53                   	push   %rbx
  401a2a:	48 83 ec 08          	sub    $0x8,%rsp
  401a2e:	48 89 fd             	mov    %rdi,%rbp
  401a31:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401a35:	84 db                	test   %bl,%bl
  401a37:	74 1e                	je     401a57 <blank_line+0x2f>
  401a39:	e8 d2 f7 ff ff       	callq  401210 <__ctype_b_loc@plt>
  401a3e:	48 83 c5 01          	add    $0x1,%rbp
  401a42:	48 0f be db          	movsbq %bl,%rbx
  401a46:	48 8b 00             	mov    (%rax),%rax
  401a49:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401a4e:	75 e1                	jne    401a31 <blank_line+0x9>
  401a50:	b8 00 00 00 00       	mov    $0x0,%eax
  401a55:	eb 05                	jmp    401a5c <blank_line+0x34>
  401a57:	b8 01 00 00 00       	mov    $0x1,%eax
  401a5c:	48 83 c4 08          	add    $0x8,%rsp
  401a60:	5b                   	pop    %rbx
  401a61:	5d                   	pop    %rbp
  401a62:	c3                   	retq   

0000000000401a63 <skip>:
  401a63:	55                   	push   %rbp
  401a64:	53                   	push   %rbx
  401a65:	48 83 ec 08          	sub    $0x8,%rsp
  401a69:	48 8d 2d b0 3d 00 00 	lea    0x3db0(%rip),%rbp        # 405820 <input_strings>
  401a70:	48 63 05 85 3d 00 00 	movslq 0x3d85(%rip),%rax        # 4057fc <num_input_strings>
  401a77:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401a7b:	48 c1 e7 04          	shl    $0x4,%rdi
  401a7f:	48 01 ef             	add    %rbp,%rdi
  401a82:	48 8b 15 77 3d 00 00 	mov    0x3d77(%rip),%rdx        # 405800 <infile>
  401a89:	be 50 00 00 00       	mov    $0x50,%esi
  401a8e:	e8 5d f6 ff ff       	callq  4010f0 <fgets@plt>
  401a93:	48 89 c3             	mov    %rax,%rbx
  401a96:	48 85 c0             	test   %rax,%rax
  401a99:	74 0c                	je     401aa7 <skip+0x44>
  401a9b:	48 89 c7             	mov    %rax,%rdi
  401a9e:	e8 85 ff ff ff       	callq  401a28 <blank_line>
  401aa3:	85 c0                	test   %eax,%eax
  401aa5:	75 c9                	jne    401a70 <skip+0xd>
  401aa7:	48 89 d8             	mov    %rbx,%rax
  401aaa:	48 83 c4 08          	add    $0x8,%rsp
  401aae:	5b                   	pop    %rbx
  401aaf:	5d                   	pop    %rbp
  401ab0:	c3                   	retq   

0000000000401ab1 <writen>:
  401ab1:	41 56                	push   %r14
  401ab3:	41 55                	push   %r13
  401ab5:	41 54                	push   %r12
  401ab7:	55                   	push   %rbp
  401ab8:	53                   	push   %rbx
  401ab9:	49 89 d6             	mov    %rdx,%r14
  401abc:	48 85 d2             	test   %rdx,%rdx
  401abf:	74 3b                	je     401afc <writen+0x4b>
  401ac1:	41 89 fc             	mov    %edi,%r12d
  401ac4:	48 89 f5             	mov    %rsi,%rbp
  401ac7:	48 89 d3             	mov    %rdx,%rbx
  401aca:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401ad0:	eb 08                	jmp    401ada <writen+0x29>
  401ad2:	48 01 c5             	add    %rax,%rbp
  401ad5:	48 29 c3             	sub    %rax,%rbx
  401ad8:	74 22                	je     401afc <writen+0x4b>
  401ada:	48 89 da             	mov    %rbx,%rdx
  401add:	48 89 ee             	mov    %rbp,%rsi
  401ae0:	44 89 e7             	mov    %r12d,%edi
  401ae3:	e8 88 f5 ff ff       	callq  401070 <write@plt>
  401ae8:	48 85 c0             	test   %rax,%rax
  401aeb:	7f e5                	jg     401ad2 <writen+0x21>
  401aed:	e8 4e f5 ff ff       	callq  401040 <__errno_location@plt>
  401af2:	83 38 04             	cmpl   $0x4,(%rax)
  401af5:	75 11                	jne    401b08 <writen+0x57>
  401af7:	4c 89 e8             	mov    %r13,%rax
  401afa:	eb d6                	jmp    401ad2 <writen+0x21>
  401afc:	4c 89 f0             	mov    %r14,%rax
  401aff:	5b                   	pop    %rbx
  401b00:	5d                   	pop    %rbp
  401b01:	41 5c                	pop    %r12
  401b03:	41 5d                	pop    %r13
  401b05:	41 5e                	pop    %r14
  401b07:	c3                   	retq   
  401b08:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401b0f:	eb ee                	jmp    401aff <writen+0x4e>

0000000000401b11 <send_msg>:
  401b11:	41 57                	push   %r15
  401b13:	41 56                	push   %r14
  401b15:	41 55                	push   %r13
  401b17:	41 54                	push   %r12
  401b19:	55                   	push   %rbp
  401b1a:	53                   	push   %rbx
  401b1b:	48 81 ec 78 24 00 00 	sub    $0x2478,%rsp
  401b22:	41 89 fc             	mov    %edi,%r12d
  401b25:	ba 00 00 00 00       	mov    $0x0,%edx
  401b2a:	be 01 00 00 00       	mov    $0x1,%esi
  401b2f:	bf 02 00 00 00       	mov    $0x2,%edi
  401b34:	e8 e7 f6 ff ff       	callq  401220 <socket@plt>
  401b39:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b3d:	85 c0                	test   %eax,%eax
  401b3f:	0f 88 28 02 00 00    	js     401d6d <send_msg+0x25c>
  401b45:	48 8d 94 24 64 24 00 	lea    0x2464(%rsp),%rdx
  401b4c:	00 
  401b4d:	48 c7 84 24 64 24 00 	movq   $0x0,0x2464(%rsp)
  401b54:	00 00 00 00 00 
  401b59:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%rdx)
  401b60:	66 c7 84 24 60 24 00 	movw   $0x2,0x2460(%rsp)
  401b67:	00 02 00 
  401b6a:	66 c7 84 24 62 24 00 	movw   $0x7ac8,0x2462(%rsp)
  401b71:	00 c8 7a 
  401b74:	48 8d 35 f1 17 00 00 	lea    0x17f1(%rip),%rsi        # 40336c <array.3192+0x18c>
  401b7b:	bf 02 00 00 00       	mov    $0x2,%edi
  401b80:	b8 00 00 00 00       	mov    $0x0,%eax
  401b85:	e8 c6 f5 ff ff       	callq  401150 <inet_pton@plt>
  401b8a:	85 c0                	test   %eax,%eax
  401b8c:	0f 88 0d 02 00 00    	js     401d9f <send_msg+0x28e>
  401b92:	48 8d b4 24 60 24 00 	lea    0x2460(%rsp),%rsi
  401b99:	00 
  401b9a:	ba 10 00 00 00       	mov    $0x10,%edx
  401b9f:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401ba3:	e8 38 f6 ff ff       	callq  4011e0 <connect@plt>
  401ba8:	85 c0                	test   %eax,%eax
  401baa:	0f 88 2a 02 00 00    	js     401dda <send_msg+0x2c9>
  401bb0:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
  401bb5:	48 b8 53 75 62 6a 65 	movabs $0x3a7463656a627553,%rax
  401bbc:	63 74 3a 
  401bbf:	48 ba 20 42 6f 6d 62 	movabs $0x6f6e20626d6f4220,%rdx
  401bc6:	20 6e 6f 
  401bc9:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  401bce:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
  401bd3:	48 b8 74 69 66 69 63 	movabs $0x6974616369666974,%rax
  401bda:	61 74 69 
  401bdd:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  401be2:	c7 44 24 78 6f 6e 0a 	movl   $0xa6e6f,0x78(%rsp)
  401be9:	00 
  401bea:	48 8d 9c 24 60 04 00 	lea    0x460(%rsp),%rbx
  401bf1:	00 
  401bf2:	48 89 ee             	mov    %rbp,%rsi
  401bf5:	48 89 df             	mov    %rbx,%rdi
  401bf8:	e8 b3 f5 ff ff       	callq  4011b0 <strcat@plt>
  401bfd:	66 c7 44 24 60 0a 00 	movw   $0xa,0x60(%rsp)
  401c04:	48 89 ee             	mov    %rbp,%rsi
  401c07:	48 89 df             	mov    %rbx,%rdi
  401c0a:	e8 a1 f5 ff ff       	callq  4011b0 <strcat@plt>
  401c0f:	bf 00 00 00 00       	mov    $0x0,%edi
  401c14:	e8 77 f5 ff ff       	callq  401190 <cuserid@plt>
  401c19:	48 85 c0             	test   %rax,%rax
  401c1c:	0f 84 f3 01 00 00    	je     401e15 <send_msg+0x304>
  401c22:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401c27:	48 89 c6             	mov    %rax,%rsi
  401c2a:	e8 21 f4 ff ff       	callq  401050 <strcpy@plt>
  401c2f:	45 85 e4             	test   %r12d,%r12d
  401c32:	4c 8d 0d 41 17 00 00 	lea    0x1741(%rip),%r9        # 40337a <array.3192+0x19a>
  401c39:	48 8d 05 42 17 00 00 	lea    0x1742(%rip),%rax        # 403382 <array.3192+0x1a2>
  401c40:	4c 0f 44 c8          	cmove  %rax,%r9
  401c44:	48 8d 5c 24 60       	lea    0x60(%rsp),%rbx
  401c49:	48 83 ec 08          	sub    $0x8,%rsp
  401c4d:	8b 05 a9 3b 00 00    	mov    0x3ba9(%rip),%eax        # 4057fc <num_input_strings>
  401c53:	50                   	push   %rax
  401c54:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  401c59:	8b 0d 01 3a 00 00    	mov    0x3a01(%rip),%ecx        # 405660 <bomb_id>
  401c5f:	48 8d 15 fa 35 00 00 	lea    0x35fa(%rip),%rdx        # 405260 <lab_id>
  401c66:	48 8d 35 39 17 00 00 	lea    0x1739(%rip),%rsi        # 4033a6 <array.3192+0x1c6>
  401c6d:	48 89 df             	mov    %rbx,%rdi
  401c70:	b8 00 00 00 00       	mov    $0x0,%eax
  401c75:	e8 46 f5 ff ff       	callq  4011c0 <sprintf@plt>
  401c7a:	48 8d bc 24 70 04 00 	lea    0x470(%rsp),%rdi
  401c81:	00 
  401c82:	48 89 de             	mov    %rbx,%rsi
  401c85:	e8 26 f5 ff ff       	callq  4011b0 <strcat@plt>
  401c8a:	48 83 c4 10          	add    $0x10,%rsp
  401c8e:	83 3d 67 3b 00 00 00 	cmpl   $0x0,0x3b67(%rip)        # 4057fc <num_input_strings>
  401c95:	7e 6b                	jle    401d02 <send_msg+0x1f1>
  401c97:	48 8d 2d 82 3b 00 00 	lea    0x3b82(%rip),%rbp        # 405820 <input_strings>
  401c9e:	bb 00 00 00 00       	mov    $0x0,%ebx
  401ca3:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  401ca8:	4c 8d 64 24 60       	lea    0x60(%rsp),%r12
  401cad:	4c 8d 35 ac 35 00 00 	lea    0x35ac(%rip),%r14        # 405260 <lab_id>
  401cb4:	4c 8d ac 24 60 04 00 	lea    0x460(%rsp),%r13
  401cbb:	00 
  401cbc:	83 c3 01             	add    $0x1,%ebx
  401cbf:	48 83 ec 08          	sub    $0x8,%rsp
  401cc3:	55                   	push   %rbp
  401cc4:	41 89 d9             	mov    %ebx,%r9d
  401cc7:	4d 89 f8             	mov    %r15,%r8
  401cca:	8b 0d 90 39 00 00    	mov    0x3990(%rip),%ecx        # 405660 <bomb_id>
  401cd0:	4c 89 f2             	mov    %r14,%rdx
  401cd3:	48 8d 35 e8 16 00 00 	lea    0x16e8(%rip),%rsi        # 4033c2 <array.3192+0x1e2>
  401cda:	4c 89 e7             	mov    %r12,%rdi
  401cdd:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce2:	e8 d9 f4 ff ff       	callq  4011c0 <sprintf@plt>
  401ce7:	4c 89 e6             	mov    %r12,%rsi
  401cea:	4c 89 ef             	mov    %r13,%rdi
  401ced:	e8 be f4 ff ff       	callq  4011b0 <strcat@plt>
  401cf2:	48 83 c5 50          	add    $0x50,%rbp
  401cf6:	48 83 c4 10          	add    $0x10,%rsp
  401cfa:	3b 1d fc 3a 00 00    	cmp    0x3afc(%rip),%ebx        # 4057fc <num_input_strings>
  401d00:	7c ba                	jl     401cbc <send_msg+0x1ab>
  401d02:	48 8d ac 24 60 04 00 	lea    0x460(%rsp),%rbp
  401d09:	00 
  401d0a:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
  401d11:	bb 00 00 00 00       	mov    $0x0,%ebx
  401d16:	4c 89 e1             	mov    %r12,%rcx
  401d19:	48 89 ef             	mov    %rbp,%rdi
  401d1c:	89 d8                	mov    %ebx,%eax
  401d1e:	f2 ae                	repnz scas %es:(%rdi),%al
  401d20:	48 f7 d1             	not    %rcx
  401d23:	4a 8d 14 21          	lea    (%rcx,%r12,1),%rdx
  401d27:	48 89 ee             	mov    %rbp,%rsi
  401d2a:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401d2e:	e8 7e fd ff ff       	callq  401ab1 <writen>
  401d33:	48 89 c2             	mov    %rax,%rdx
  401d36:	4c 89 e1             	mov    %r12,%rcx
  401d39:	48 89 ef             	mov    %rbp,%rdi
  401d3c:	89 d8                	mov    %ebx,%eax
  401d3e:	f2 ae                	repnz scas %es:(%rdi),%al
  401d40:	48 89 cb             	mov    %rcx,%rbx
  401d43:	48 f7 d3             	not    %rbx
  401d46:	4c 01 e3             	add    %r12,%rbx
  401d49:	48 39 da             	cmp    %rbx,%rdx
  401d4c:	0f 82 dc 00 00 00    	jb     401e2e <send_msg+0x31d>
  401d52:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401d56:	e8 75 f3 ff ff       	callq  4010d0 <close@plt>
  401d5b:	48 81 c4 78 24 00 00 	add    $0x2478,%rsp
  401d62:	5b                   	pop    %rbx
  401d63:	5d                   	pop    %rbp
  401d64:	41 5c                	pop    %r12
  401d66:	41 5d                	pop    %r13
  401d68:	41 5e                	pop    %r14
  401d6a:	41 5f                	pop    %r15
  401d6c:	c3                   	retq   
  401d6d:	48 8d 15 17 16 00 00 	lea    0x1617(%rip),%rdx        # 40338b <array.3192+0x1ab>
  401d74:	48 8d 35 a2 12 00 00 	lea    0x12a2(%rip),%rsi        # 40301d <_IO_stdin_used+0x1d>
  401d7b:	48 8b 3d 5e 3a 00 00 	mov    0x3a5e(%rip),%rdi        # 4057e0 <stdout@@GLIBC_2.2.5>
  401d82:	b8 00 00 00 00       	mov    $0x0,%eax
  401d87:	e8 a4 f3 ff ff       	callq  401130 <fprintf@plt>
  401d8c:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401d90:	e8 3b f3 ff ff       	callq  4010d0 <close@plt>
  401d95:	bf 01 00 00 00       	mov    $0x1,%edi
  401d9a:	e8 31 f4 ff ff       	callq  4011d0 <exit@plt>
  401d9f:	48 8d 15 59 16 00 00 	lea    0x1659(%rip),%rdx        # 4033ff <array.3192+0x21f>
  401da6:	48 8d 35 70 12 00 00 	lea    0x1270(%rip),%rsi        # 40301d <_IO_stdin_used+0x1d>
  401dad:	48 8b 3d 2c 3a 00 00 	mov    0x3a2c(%rip),%rdi        # 4057e0 <stdout@@GLIBC_2.2.5>
  401db4:	b8 00 00 00 00       	mov    $0x0,%eax
  401db9:	e8 72 f3 ff ff       	callq  401130 <fprintf@plt>
  401dbe:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  401dc3:	75 0a                	jne    401dcf <send_msg+0x2be>
  401dc5:	bf 01 00 00 00       	mov    $0x1,%edi
  401dca:	e8 01 f4 ff ff       	callq  4011d0 <exit@plt>
  401dcf:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401dd3:	e8 f8 f2 ff ff       	callq  4010d0 <close@plt>
  401dd8:	eb eb                	jmp    401dc5 <send_msg+0x2b4>
  401dda:	48 8d 15 b7 15 00 00 	lea    0x15b7(%rip),%rdx        # 403398 <array.3192+0x1b8>
  401de1:	48 8d 35 35 12 00 00 	lea    0x1235(%rip),%rsi        # 40301d <_IO_stdin_used+0x1d>
  401de8:	48 8b 3d f1 39 00 00 	mov    0x39f1(%rip),%rdi        # 4057e0 <stdout@@GLIBC_2.2.5>
  401def:	b8 00 00 00 00       	mov    $0x0,%eax
  401df4:	e8 37 f3 ff ff       	callq  401130 <fprintf@plt>
  401df9:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  401dfe:	75 0a                	jne    401e0a <send_msg+0x2f9>
  401e00:	bf 01 00 00 00       	mov    $0x1,%edi
  401e05:	e8 c6 f3 ff ff       	callq  4011d0 <exit@plt>
  401e0a:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401e0e:	e8 bd f2 ff ff       	callq  4010d0 <close@plt>
  401e13:	eb eb                	jmp    401e00 <send_msg+0x2ef>
  401e15:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%rsp)
  401e1c:	6f 
  401e1d:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%rsp)
  401e24:	c6 44 24 16 00       	movb   $0x0,0x16(%rsp)
  401e29:	e9 01 fe ff ff       	jmpq   401c2f <send_msg+0x11e>
  401e2e:	48 8d 15 a9 15 00 00 	lea    0x15a9(%rip),%rdx        # 4033de <array.3192+0x1fe>
  401e35:	48 8d 35 e1 11 00 00 	lea    0x11e1(%rip),%rsi        # 40301d <_IO_stdin_used+0x1d>
  401e3c:	48 8b 3d 9d 39 00 00 	mov    0x399d(%rip),%rdi        # 4057e0 <stdout@@GLIBC_2.2.5>
  401e43:	e8 e8 f2 ff ff       	callq  401130 <fprintf@plt>
  401e48:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  401e4d:	75 0a                	jne    401e59 <send_msg+0x348>
  401e4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401e54:	e8 77 f3 ff ff       	callq  4011d0 <exit@plt>
  401e59:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401e5d:	e8 6e f2 ff ff       	callq  4010d0 <close@plt>
  401e62:	eb eb                	jmp    401e4f <send_msg+0x33e>

0000000000401e64 <send_msg_2>:
  401e64:	41 56                	push   %r14
  401e66:	41 55                	push   %r13
  401e68:	41 54                	push   %r12
  401e6a:	55                   	push   %rbp
  401e6b:	53                   	push   %rbx
  401e6c:	48 83 ec 50          	sub    $0x50,%rsp
  401e70:	89 fb                	mov    %edi,%ebx
  401e72:	bf 00 00 00 00       	mov    $0x0,%edi
  401e77:	e8 44 f2 ff ff       	callq  4010c0 <dup@plt>
  401e7c:	83 f8 ff             	cmp    $0xffffffff,%eax
  401e7f:	0f 84 91 01 00 00    	je     402016 <send_msg_2+0x1b2>
  401e85:	41 89 c6             	mov    %eax,%r14d
  401e88:	bf 00 00 00 00       	mov    $0x0,%edi
  401e8d:	e8 3e f2 ff ff       	callq  4010d0 <close@plt>
  401e92:	83 f8 ff             	cmp    $0xffffffff,%eax
  401e95:	0f 84 91 01 00 00    	je     40202c <send_msg_2+0x1c8>
  401e9b:	e8 60 f2 ff ff       	callq  401100 <tmpfile@plt>
  401ea0:	49 89 c4             	mov    %rax,%r12
  401ea3:	48 85 c0             	test   %rax,%rax
  401ea6:	0f 84 96 01 00 00    	je     402042 <send_msg_2+0x1de>
  401eac:	48 89 c1             	mov    %rax,%rcx
  401eaf:	ba 1b 00 00 00       	mov    $0x1b,%edx
  401eb4:	be 01 00 00 00       	mov    $0x1,%esi
  401eb9:	48 8d 3d 6d 15 00 00 	lea    0x156d(%rip),%rdi        # 40342d <array.3192+0x24d>
  401ec0:	e8 2b f3 ff ff       	callq  4011f0 <fwrite@plt>
  401ec5:	4c 89 e6             	mov    %r12,%rsi
  401ec8:	bf 0a 00 00 00       	mov    $0xa,%edi
  401ecd:	e8 0e f2 ff ff       	callq  4010e0 <fputc@plt>
  401ed2:	bf 00 00 00 00       	mov    $0x0,%edi
  401ed7:	e8 b4 f2 ff ff       	callq  401190 <cuserid@plt>
  401edc:	48 85 c0             	test   %rax,%rax
  401edf:	0f 84 73 01 00 00    	je     402058 <send_msg_2+0x1f4>
  401ee5:	48 89 e7             	mov    %rsp,%rdi
  401ee8:	48 89 c6             	mov    %rax,%rsi
  401eeb:	e8 60 f1 ff ff       	callq  401050 <strcpy@plt>
  401ef0:	85 db                	test   %ebx,%ebx
  401ef2:	4c 8d 0d 81 14 00 00 	lea    0x1481(%rip),%r9        # 40337a <array.3192+0x19a>
  401ef9:	48 8d 05 82 14 00 00 	lea    0x1482(%rip),%rax        # 403382 <array.3192+0x1a2>
  401f00:	4c 0f 44 c8          	cmove  %rax,%r9
  401f04:	48 83 ec 08          	sub    $0x8,%rsp
  401f08:	8b 05 ee 38 00 00    	mov    0x38ee(%rip),%eax        # 4057fc <num_input_strings>
  401f0e:	50                   	push   %rax
  401f0f:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401f14:	8b 0d 46 37 00 00    	mov    0x3746(%rip),%ecx        # 405660 <bomb_id>
  401f1a:	48 8d 15 3f 33 00 00 	lea    0x333f(%rip),%rdx        # 405260 <lab_id>
  401f21:	48 8d 35 7e 14 00 00 	lea    0x147e(%rip),%rsi        # 4033a6 <array.3192+0x1c6>
  401f28:	4c 89 e7             	mov    %r12,%rdi
  401f2b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f30:	e8 fb f1 ff ff       	callq  401130 <fprintf@plt>
  401f35:	48 83 c4 10          	add    $0x10,%rsp
  401f39:	83 3d bc 38 00 00 00 	cmpl   $0x0,0x38bc(%rip)        # 4057fc <num_input_strings>
  401f40:	7e 4e                	jle    401f90 <send_msg_2+0x12c>
  401f42:	48 8d 2d d7 38 00 00 	lea    0x38d7(%rip),%rbp        # 405820 <input_strings>
  401f49:	bb 00 00 00 00       	mov    $0x0,%ebx
  401f4e:	49 89 e5             	mov    %rsp,%r13
  401f51:	83 c3 01             	add    $0x1,%ebx
  401f54:	48 83 ec 08          	sub    $0x8,%rsp
  401f58:	55                   	push   %rbp
  401f59:	41 89 d9             	mov    %ebx,%r9d
  401f5c:	4d 89 e8             	mov    %r13,%r8
  401f5f:	8b 0d fb 36 00 00    	mov    0x36fb(%rip),%ecx        # 405660 <bomb_id>
  401f65:	48 8d 15 f4 32 00 00 	lea    0x32f4(%rip),%rdx        # 405260 <lab_id>
  401f6c:	48 8d 35 4f 14 00 00 	lea    0x144f(%rip),%rsi        # 4033c2 <array.3192+0x1e2>
  401f73:	4c 89 e7             	mov    %r12,%rdi
  401f76:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7b:	e8 b0 f1 ff ff       	callq  401130 <fprintf@plt>
  401f80:	48 83 c5 50          	add    $0x50,%rbp
  401f84:	48 83 c4 10          	add    $0x10,%rsp
  401f88:	3b 1d 6e 38 00 00    	cmp    0x386e(%rip),%ebx        # 4057fc <num_input_strings>
  401f8e:	7c c1                	jl     401f51 <send_msg_2+0xed>
  401f90:	4c 89 e7             	mov    %r12,%rdi
  401f93:	e8 18 f1 ff ff       	callq  4010b0 <rewind@plt>
  401f98:	4c 8d 05 aa 14 00 00 	lea    0x14aa(%rip),%r8        # 403449 <array.3192+0x269>
  401f9f:	48 8d 0d ad 14 00 00 	lea    0x14ad(%rip),%rcx        # 403453 <array.3192+0x273>
  401fa6:	48 8d 15 ae 14 00 00 	lea    0x14ae(%rip),%rdx        # 40345b <array.3192+0x27b>
  401fad:	48 8d 35 be 14 00 00 	lea    0x14be(%rip),%rsi        # 403472 <array.3192+0x292>
  401fb4:	48 8d 3d a5 3e 00 00 	lea    0x3ea5(%rip),%rdi        # 405e60 <scratch>
  401fbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc0:	e8 fb f1 ff ff       	callq  4011c0 <sprintf@plt>
  401fc5:	48 8d 3d 94 3e 00 00 	lea    0x3e94(%rip),%rdi        # 405e60 <scratch>
  401fcc:	e8 bf f0 ff ff       	callq  401090 <system@plt>
  401fd1:	85 c0                	test   %eax,%eax
  401fd3:	0f 85 97 00 00 00    	jne    402070 <send_msg_2+0x20c>
  401fd9:	4c 89 e7             	mov    %r12,%rdi
  401fdc:	e8 9f f0 ff ff       	callq  401080 <fclose@plt>
  401fe1:	85 c0                	test   %eax,%eax
  401fe3:	0f 85 9d 00 00 00    	jne    402086 <send_msg_2+0x222>
  401fe9:	44 89 f7             	mov    %r14d,%edi
  401fec:	e8 cf f0 ff ff       	callq  4010c0 <dup@plt>
  401ff1:	85 c0                	test   %eax,%eax
  401ff3:	0f 85 a3 00 00 00    	jne    40209c <send_msg_2+0x238>
  401ff9:	44 89 f7             	mov    %r14d,%edi
  401ffc:	e8 cf f0 ff ff       	callq  4010d0 <close@plt>
  402001:	85 c0                	test   %eax,%eax
  402003:	0f 85 a9 00 00 00    	jne    4020b2 <send_msg_2+0x24e>
  402009:	48 83 c4 50          	add    $0x50,%rsp
  40200d:	5b                   	pop    %rbx
  40200e:	5d                   	pop    %rbp
  40200f:	41 5c                	pop    %r12
  402011:	41 5d                	pop    %r13
  402013:	41 5e                	pop    %r14
  402015:	c3                   	retq   
  402016:	48 8d 3d d4 13 00 00 	lea    0x13d4(%rip),%rdi        # 4033f1 <array.3192+0x211>
  40201d:	e8 3e f0 ff ff       	callq  401060 <puts@plt>
  402022:	bf 08 00 00 00       	mov    $0x8,%edi
  402027:	e8 a4 f1 ff ff       	callq  4011d0 <exit@plt>
  40202c:	48 8d 3d d2 13 00 00 	lea    0x13d2(%rip),%rdi        # 403405 <array.3192+0x225>
  402033:	e8 28 f0 ff ff       	callq  401060 <puts@plt>
  402038:	bf 08 00 00 00       	mov    $0x8,%edi
  40203d:	e8 8e f1 ff ff       	callq  4011d0 <exit@plt>
  402042:	48 8d 3d cf 13 00 00 	lea    0x13cf(%rip),%rdi        # 403418 <array.3192+0x238>
  402049:	e8 12 f0 ff ff       	callq  401060 <puts@plt>
  40204e:	bf 08 00 00 00       	mov    $0x8,%edi
  402053:	e8 78 f1 ff ff       	callq  4011d0 <exit@plt>
  402058:	c7 04 24 6e 6f 62 6f 	movl   $0x6f626f6e,(%rsp)
  40205f:	66 c7 44 24 04 64 79 	movw   $0x7964,0x4(%rsp)
  402066:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
  40206b:	e9 80 fe ff ff       	jmpq   401ef0 <send_msg_2+0x8c>
  402070:	48 8d 3d 04 14 00 00 	lea    0x1404(%rip),%rdi        # 40347b <array.3192+0x29b>
  402077:	e8 e4 ef ff ff       	callq  401060 <puts@plt>
  40207c:	bf 08 00 00 00       	mov    $0x8,%edi
  402081:	e8 4a f1 ff ff       	callq  4011d0 <exit@plt>
  402086:	48 8d 3d 08 14 00 00 	lea    0x1408(%rip),%rdi        # 403495 <array.3192+0x2b5>
  40208d:	e8 ce ef ff ff       	callq  401060 <puts@plt>
  402092:	bf 08 00 00 00       	mov    $0x8,%edi
  402097:	e8 34 f1 ff ff       	callq  4011d0 <exit@plt>
  40209c:	48 8d 3d 0b 14 00 00 	lea    0x140b(%rip),%rdi        # 4034ae <array.3192+0x2ce>
  4020a3:	e8 b8 ef ff ff       	callq  401060 <puts@plt>
  4020a8:	bf 08 00 00 00       	mov    $0x8,%edi
  4020ad:	e8 1e f1 ff ff       	callq  4011d0 <exit@plt>
  4020b2:	48 8d 3d 10 14 00 00 	lea    0x1410(%rip),%rdi        # 4034c9 <array.3192+0x2e9>
  4020b9:	e8 a2 ef ff ff       	callq  401060 <puts@plt>
  4020be:	bf 08 00 00 00       	mov    $0x8,%edi
  4020c3:	e8 08 f1 ff ff       	callq  4011d0 <exit@plt>

00000000004020c8 <explode_bomb>:
  4020c8:	48 83 ec 08          	sub    $0x8,%rsp
  4020cc:	48 8d 3d 0d 14 00 00 	lea    0x140d(%rip),%rdi        # 4034e0 <array.3192+0x300>
  4020d3:	e8 88 ef ff ff       	callq  401060 <puts@plt>
  4020d8:	48 8d 3d 0a 14 00 00 	lea    0x140a(%rip),%rdi        # 4034e9 <array.3192+0x309>
  4020df:	e8 7c ef ff ff       	callq  401060 <puts@plt>
  4020e4:	bf 00 00 00 00       	mov    $0x0,%edi
  4020e9:	e8 23 fa ff ff       	callq  401b11 <send_msg>
  4020ee:	48 8d 3d 33 11 00 00 	lea    0x1133(%rip),%rdi        # 403228 <array.3192+0x48>
  4020f5:	e8 66 ef ff ff       	callq  401060 <puts@plt>
  4020fa:	bf 08 00 00 00       	mov    $0x8,%edi
  4020ff:	e8 cc f0 ff ff       	callq  4011d0 <exit@plt>

0000000000402104 <read_six_numbers>:
  402104:	48 83 ec 08          	sub    $0x8,%rsp
  402108:	48 89 f2             	mov    %rsi,%rdx
  40210b:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  40210f:	48 8d 46 14          	lea    0x14(%rsi),%rax
  402113:	50                   	push   %rax
  402114:	48 8d 46 10          	lea    0x10(%rsi),%rax
  402118:	50                   	push   %rax
  402119:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  40211d:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  402121:	48 8d 35 d8 13 00 00 	lea    0x13d8(%rip),%rsi        # 403500 <array.3192+0x320>
  402128:	b8 00 00 00 00       	mov    $0x0,%eax
  40212d:	e8 3e f0 ff ff       	callq  401170 <__isoc99_sscanf@plt>
  402132:	48 83 c4 10          	add    $0x10,%rsp
  402136:	83 f8 05             	cmp    $0x5,%eax
  402139:	7e 05                	jle    402140 <read_six_numbers+0x3c>
  40213b:	48 83 c4 08          	add    $0x8,%rsp
  40213f:	c3                   	retq   
  402140:	e8 83 ff ff ff       	callq  4020c8 <explode_bomb>

0000000000402145 <read_line>:
  402145:	48 83 ec 08          	sub    $0x8,%rsp
  402149:	b8 00 00 00 00       	mov    $0x0,%eax
  40214e:	e8 10 f9 ff ff       	callq  401a63 <skip>
  402153:	48 85 c0             	test   %rax,%rax
  402156:	74 6f                	je     4021c7 <read_line+0x82>
  402158:	8b 35 9e 36 00 00    	mov    0x369e(%rip),%esi        # 4057fc <num_input_strings>
  40215e:	48 63 c6             	movslq %esi,%rax
  402161:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  402165:	48 c1 e2 04          	shl    $0x4,%rdx
  402169:	48 8d 05 b0 36 00 00 	lea    0x36b0(%rip),%rax        # 405820 <input_strings>
  402170:	48 01 c2             	add    %rax,%rdx
  402173:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40217a:	b8 00 00 00 00       	mov    $0x0,%eax
  40217f:	48 89 d7             	mov    %rdx,%rdi
  402182:	f2 ae                	repnz scas %es:(%rdi),%al
  402184:	48 f7 d1             	not    %rcx
  402187:	48 83 e9 01          	sub    $0x1,%rcx
  40218b:	83 f9 4f             	cmp    $0x4f,%ecx
  40218e:	0f 84 a1 00 00 00    	je     402235 <read_line+0xf0>
  402194:	83 e9 01             	sub    $0x1,%ecx
  402197:	48 63 c9             	movslq %ecx,%rcx
  40219a:	48 63 c6             	movslq %esi,%rax
  40219d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4021a1:	48 c1 e0 04          	shl    $0x4,%rax
  4021a5:	48 89 c7             	mov    %rax,%rdi
  4021a8:	48 8d 05 71 36 00 00 	lea    0x3671(%rip),%rax        # 405820 <input_strings>
  4021af:	48 01 f8             	add    %rdi,%rax
  4021b2:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
  4021b6:	83 c6 01             	add    $0x1,%esi
  4021b9:	89 35 3d 36 00 00    	mov    %esi,0x363d(%rip)        # 4057fc <num_input_strings>
  4021bf:	48 89 d0             	mov    %rdx,%rax
  4021c2:	48 83 c4 08          	add    $0x8,%rsp
  4021c6:	c3                   	retq   
  4021c7:	48 8b 05 22 36 00 00 	mov    0x3622(%rip),%rax        # 4057f0 <stdin@@GLIBC_2.2.5>
  4021ce:	48 39 05 2b 36 00 00 	cmp    %rax,0x362b(%rip)        # 405800 <infile>
  4021d5:	74 1b                	je     4021f2 <read_line+0xad>
  4021d7:	48 8d 3d 52 13 00 00 	lea    0x1352(%rip),%rdi        # 403530 <array.3192+0x350>
  4021de:	e8 4d ee ff ff       	callq  401030 <getenv@plt>
  4021e3:	48 85 c0             	test   %rax,%rax
  4021e6:	74 1b                	je     402203 <read_line+0xbe>
  4021e8:	bf 00 00 00 00       	mov    $0x0,%edi
  4021ed:	e8 de ef ff ff       	callq  4011d0 <exit@plt>
  4021f2:	48 8d 3d 19 13 00 00 	lea    0x1319(%rip),%rdi        # 403512 <array.3192+0x332>
  4021f9:	e8 62 ee ff ff       	callq  401060 <puts@plt>
  4021fe:	e8 c5 fe ff ff       	callq  4020c8 <explode_bomb>
  402203:	48 8b 05 e6 35 00 00 	mov    0x35e6(%rip),%rax        # 4057f0 <stdin@@GLIBC_2.2.5>
  40220a:	48 89 05 ef 35 00 00 	mov    %rax,0x35ef(%rip)        # 405800 <infile>
  402211:	b8 00 00 00 00       	mov    $0x0,%eax
  402216:	e8 48 f8 ff ff       	callq  401a63 <skip>
  40221b:	48 85 c0             	test   %rax,%rax
  40221e:	0f 85 34 ff ff ff    	jne    402158 <read_line+0x13>
  402224:	48 8d 3d e7 12 00 00 	lea    0x12e7(%rip),%rdi        # 403512 <array.3192+0x332>
  40222b:	e8 30 ee ff ff       	callq  401060 <puts@plt>
  402230:	e8 93 fe ff ff       	callq  4020c8 <explode_bomb>
  402235:	48 8d 3d ff 12 00 00 	lea    0x12ff(%rip),%rdi        # 40353b <array.3192+0x35b>
  40223c:	e8 1f ee ff ff       	callq  401060 <puts@plt>
  402241:	e8 82 fe ff ff       	callq  4020c8 <explode_bomb>

0000000000402246 <phase_defused>:
  402246:	48 83 ec 68          	sub    $0x68,%rsp
  40224a:	bf 01 00 00 00       	mov    $0x1,%edi
  40224f:	e8 bd f8 ff ff       	callq  401b11 <send_msg>
  402254:	83 3d a1 35 00 00 06 	cmpl   $0x6,0x35a1(%rip)        # 4057fc <num_input_strings>
  40225b:	74 05                	je     402262 <phase_defused+0x1c>
  40225d:	48 83 c4 68          	add    $0x68,%rsp
  402261:	c3                   	retq   
  402262:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  402267:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  40226c:	48 8d 35 e3 12 00 00 	lea    0x12e3(%rip),%rsi        # 403556 <array.3192+0x376>
  402273:	48 8d 3d 96 36 00 00 	lea    0x3696(%rip),%rdi        # 405910 <input_strings+0xf0>
  40227a:	b8 00 00 00 00       	mov    $0x0,%eax
  40227f:	e8 ec ee ff ff       	callq  401170 <__isoc99_sscanf@plt>
  402284:	83 f8 02             	cmp    $0x2,%eax
  402287:	74 1a                	je     4022a3 <phase_defused+0x5d>
  402289:	48 8d 3d 20 10 00 00 	lea    0x1020(%rip),%rdi        # 4032b0 <array.3192+0xd0>
  402290:	e8 cb ed ff ff       	callq  401060 <puts@plt>
  402295:	48 8d 3d 44 10 00 00 	lea    0x1044(%rip),%rdi        # 4032e0 <array.3192+0x100>
  40229c:	e8 bf ed ff ff       	callq  401060 <puts@plt>
  4022a1:	eb ba                	jmp    40225d <phase_defused+0x17>
  4022a3:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4022a8:	48 8d 35 ad 12 00 00 	lea    0x12ad(%rip),%rsi        # 40355c <array.3192+0x37c>
  4022af:	e8 05 f6 ff ff       	callq  4018b9 <strings_not_equal>
  4022b4:	85 c0                	test   %eax,%eax
  4022b6:	75 d1                	jne    402289 <phase_defused+0x43>
  4022b8:	48 8d 3d 91 0f 00 00 	lea    0xf91(%rip),%rdi        # 403250 <array.3192+0x70>
  4022bf:	e8 9c ed ff ff       	callq  401060 <puts@plt>
  4022c4:	48 8d 3d ad 0f 00 00 	lea    0xfad(%rip),%rdi        # 403278 <array.3192+0x98>
  4022cb:	e8 90 ed ff ff       	callq  401060 <puts@plt>
  4022d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4022d5:	e8 f0 f4 ff ff       	callq  4017ca <secret_phase>
  4022da:	eb ad                	jmp    402289 <phase_defused+0x43>
  4022dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004022e0 <__libc_csu_init>:
  4022e0:	41 57                	push   %r15
  4022e2:	49 89 d7             	mov    %rdx,%r15
  4022e5:	41 56                	push   %r14
  4022e7:	49 89 f6             	mov    %rsi,%r14
  4022ea:	41 55                	push   %r13
  4022ec:	41 89 fd             	mov    %edi,%r13d
  4022ef:	41 54                	push   %r12
  4022f1:	4c 8d 25 18 2b 00 00 	lea    0x2b18(%rip),%r12        # 404e10 <__frame_dummy_init_array_entry>
  4022f8:	55                   	push   %rbp
  4022f9:	48 8d 2d 18 2b 00 00 	lea    0x2b18(%rip),%rbp        # 404e18 <__do_global_dtors_aux_fini_array_entry>
  402300:	53                   	push   %rbx
  402301:	4c 29 e5             	sub    %r12,%rbp
  402304:	48 83 ec 08          	sub    $0x8,%rsp
  402308:	e8 f3 ec ff ff       	callq  401000 <_init>
  40230d:	48 c1 fd 03          	sar    $0x3,%rbp
  402311:	74 1b                	je     40232e <__libc_csu_init+0x4e>
  402313:	31 db                	xor    %ebx,%ebx
  402315:	0f 1f 00             	nopl   (%rax)
  402318:	4c 89 fa             	mov    %r15,%rdx
  40231b:	4c 89 f6             	mov    %r14,%rsi
  40231e:	44 89 ef             	mov    %r13d,%edi
  402321:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402325:	48 83 c3 01          	add    $0x1,%rbx
  402329:	48 39 dd             	cmp    %rbx,%rbp
  40232c:	75 ea                	jne    402318 <__libc_csu_init+0x38>
  40232e:	48 83 c4 08          	add    $0x8,%rsp
  402332:	5b                   	pop    %rbx
  402333:	5d                   	pop    %rbp
  402334:	41 5c                	pop    %r12
  402336:	41 5d                	pop    %r13
  402338:	41 5e                	pop    %r14
  40233a:	41 5f                	pop    %r15
  40233c:	c3                   	retq   
  40233d:	0f 1f 00             	nopl   (%rax)

0000000000402340 <__libc_csu_fini>:
  402340:	c3                   	retq   

Disassembly of section .fini:

0000000000402344 <_fini>:
  402344:	48 83 ec 08          	sub    $0x8,%rsp
  402348:	48 83 c4 08          	add    $0x8,%rsp
  40234c:	c3                   	retq   
