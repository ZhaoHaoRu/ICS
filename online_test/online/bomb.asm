
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

0000000000401140 <inet_pton@plt>:
  401140:	ff 25 5a 3f 00 00    	jmpq   *0x3f5a(%rip)        # 4050a0 <inet_pton@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <fflush@plt>:
  401150:	ff 25 52 3f 00 00    	jmpq   *0x3f52(%rip)        # 4050a8 <fflush@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <__isoc99_sscanf@plt>:
  401160:	ff 25 4a 3f 00 00    	jmpq   *0x3f4a(%rip)        # 4050b0 <__isoc99_sscanf@GLIBC_2.7>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <memmove@plt>:
  401170:	ff 25 42 3f 00 00    	jmpq   *0x3f42(%rip)        # 4050b8 <memmove@GLIBC_2.2.5>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <cuserid@plt>:
  401180:	ff 25 3a 3f 00 00    	jmpq   *0x3f3a(%rip)        # 4050c0 <cuserid@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <fopen@plt>:
  401190:	ff 25 32 3f 00 00    	jmpq   *0x3f32(%rip)        # 4050c8 <fopen@GLIBC_2.2.5>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <strcat@plt>:
  4011a0:	ff 25 2a 3f 00 00    	jmpq   *0x3f2a(%rip)        # 4050d0 <strcat@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

00000000004011b0 <sprintf@plt>:
  4011b0:	ff 25 22 3f 00 00    	jmpq   *0x3f22(%rip)        # 4050d8 <sprintf@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	pushq  $0x18
  4011bb:	e9 60 fe ff ff       	jmpq   401020 <.plt>

00000000004011c0 <exit@plt>:
  4011c0:	ff 25 1a 3f 00 00    	jmpq   *0x3f1a(%rip)        # 4050e0 <exit@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	pushq  $0x19
  4011cb:	e9 50 fe ff ff       	jmpq   401020 <.plt>

00000000004011d0 <connect@plt>:
  4011d0:	ff 25 12 3f 00 00    	jmpq   *0x3f12(%rip)        # 4050e8 <connect@GLIBC_2.2.5>
  4011d6:	68 1a 00 00 00       	pushq  $0x1a
  4011db:	e9 40 fe ff ff       	jmpq   401020 <.plt>

00000000004011e0 <fwrite@plt>:
  4011e0:	ff 25 0a 3f 00 00    	jmpq   *0x3f0a(%rip)        # 4050f0 <fwrite@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	pushq  $0x1b
  4011eb:	e9 30 fe ff ff       	jmpq   401020 <.plt>

00000000004011f0 <sleep@plt>:
  4011f0:	ff 25 02 3f 00 00    	jmpq   *0x3f02(%rip)        # 4050f8 <sleep@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	pushq  $0x1c
  4011fb:	e9 20 fe ff ff       	jmpq   401020 <.plt>

0000000000401200 <__ctype_b_loc@plt>:
  401200:	ff 25 fa 3e 00 00    	jmpq   *0x3efa(%rip)        # 405100 <__ctype_b_loc@GLIBC_2.3>
  401206:	68 1d 00 00 00       	pushq  $0x1d
  40120b:	e9 10 fe ff ff       	jmpq   401020 <.plt>

0000000000401210 <socket@plt>:
  401210:	ff 25 f2 3e 00 00    	jmpq   *0x3ef2(%rip)        # 405108 <socket@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	pushq  $0x1e
  40121b:	e9 00 fe ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401220 <_start>:
  401220:	31 ed                	xor    %ebp,%ebp
  401222:	49 89 d1             	mov    %rdx,%r9
  401225:	5e                   	pop    %rsi
  401226:	48 89 e2             	mov    %rsp,%rdx
  401229:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40122d:	50                   	push   %rax
  40122e:	54                   	push   %rsp
  40122f:	49 c7 c0 a0 20 40 00 	mov    $0x4020a0,%r8
  401236:	48 c7 c1 40 20 40 00 	mov    $0x402040,%rcx
  40123d:	48 c7 c7 02 13 40 00 	mov    $0x401302,%rdi
  401244:	ff 15 a6 3d 00 00    	callq  *0x3da6(%rip)        # 404ff0 <__libc_start_main@GLIBC_2.2.5>
  40124a:	f4                   	hlt    
  40124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401250 <_dl_relocate_static_pie>:
  401250:	c3                   	retq   
  401251:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401258:	00 00 00 
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <deregister_tm_clones>:
  401260:	b8 48 55 40 00       	mov    $0x405548,%eax
  401265:	48 3d 48 55 40 00    	cmp    $0x405548,%rax
  40126b:	74 13                	je     401280 <deregister_tm_clones+0x20>
  40126d:	b8 00 00 00 00       	mov    $0x0,%eax
  401272:	48 85 c0             	test   %rax,%rax
  401275:	74 09                	je     401280 <deregister_tm_clones+0x20>
  401277:	bf 48 55 40 00       	mov    $0x405548,%edi
  40127c:	ff e0                	jmpq   *%rax
  40127e:	66 90                	xchg   %ax,%ax
  401280:	c3                   	retq   
  401281:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401288:	00 00 00 00 
  40128c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401290 <register_tm_clones>:
  401290:	be 48 55 40 00       	mov    $0x405548,%esi
  401295:	48 81 ee 48 55 40 00 	sub    $0x405548,%rsi
  40129c:	48 c1 fe 03          	sar    $0x3,%rsi
  4012a0:	48 89 f0             	mov    %rsi,%rax
  4012a3:	48 c1 e8 3f          	shr    $0x3f,%rax
  4012a7:	48 01 c6             	add    %rax,%rsi
  4012aa:	48 d1 fe             	sar    %rsi
  4012ad:	74 11                	je     4012c0 <register_tm_clones+0x30>
  4012af:	b8 00 00 00 00       	mov    $0x0,%eax
  4012b4:	48 85 c0             	test   %rax,%rax
  4012b7:	74 07                	je     4012c0 <register_tm_clones+0x30>
  4012b9:	bf 48 55 40 00       	mov    $0x405548,%edi
  4012be:	ff e0                	jmpq   *%rax
  4012c0:	c3                   	retq   
  4012c1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012c8:	00 00 00 00 
  4012cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012d0 <__do_global_dtors_aux>:
  4012d0:	80 3d a1 42 00 00 00 	cmpb   $0x0,0x42a1(%rip)        # 405578 <completed.7325>
  4012d7:	75 17                	jne    4012f0 <__do_global_dtors_aux+0x20>
  4012d9:	55                   	push   %rbp
  4012da:	48 89 e5             	mov    %rsp,%rbp
  4012dd:	e8 7e ff ff ff       	callq  401260 <deregister_tm_clones>
  4012e2:	c6 05 8f 42 00 00 01 	movb   $0x1,0x428f(%rip)        # 405578 <completed.7325>
  4012e9:	5d                   	pop    %rbp
  4012ea:	c3                   	retq   
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4012f0:	c3                   	retq   
  4012f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012f8:	00 00 00 00 
  4012fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401300 <frame_dummy>:
  401300:	eb 8e                	jmp    401290 <register_tm_clones>

0000000000401302 <main>:
  401302:	53                   	push   %rbx
  401303:	83 ff 01             	cmp    $0x1,%edi
  401306:	0f 84 9e 00 00 00    	je     4013aa <main+0xa8>
  40130c:	48 89 f3             	mov    %rsi,%rbx
  40130f:	83 ff 02             	cmp    $0x2,%edi
  401312:	0f 85 c2 00 00 00    	jne    4013da <main+0xd8>
  401318:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  40131c:	48 8d 35 b0 20 00 00 	lea    0x20b0(%rip),%rsi        # 4033d3 <array.3176+0x253>
  401323:	e8 68 fe ff ff       	callq  401190 <fopen@plt>
  401328:	48 89 05 51 42 00 00 	mov    %rax,0x4251(%rip)        # 405580 <infile>
  40132f:	48 85 c0             	test   %rax,%rax
  401332:	0f 84 85 00 00 00    	je     4013bd <main+0xbb>
  401338:	e8 ea 03 00 00       	callq  401727 <initialize_bomb>
  40133d:	48 8d 3d 1c 1d 00 00 	lea    0x1d1c(%rip),%rdi        # 403060 <_IO_stdin_used+0x60>
  401344:	e8 17 fd ff ff       	callq  401060 <puts@plt>
  401349:	48 8d 3d 50 1d 00 00 	lea    0x1d50(%rip),%rdi        # 4030a0 <_IO_stdin_used+0xa0>
  401350:	e8 0b fd ff ff       	callq  401060 <puts@plt>
  401355:	e8 1c 0b 00 00       	callq  401e76 <read_line>
  40135a:	48 89 c7             	mov    %rax,%rdi
  40135d:	e8 96 00 00 00       	callq  4013f8 <phase_1>
  401362:	e8 10 0c 00 00       	callq  401f77 <phase_defused>
  401367:	48 8d 3d 62 1d 00 00 	lea    0x1d62(%rip),%rdi        # 4030d0 <_IO_stdin_used+0xd0>
  40136e:	e8 ed fc ff ff       	callq  401060 <puts@plt>
  401373:	e8 fe 0a 00 00       	callq  401e76 <read_line>
  401378:	48 89 c7             	mov    %rax,%rdi
  40137b:	e8 98 00 00 00       	callq  401418 <phase_2>
  401380:	e8 f2 0b 00 00       	callq  401f77 <phase_defused>
  401385:	48 8d 3d af 1c 00 00 	lea    0x1caf(%rip),%rdi        # 40303b <_IO_stdin_used+0x3b>
  40138c:	e8 cf fc ff ff       	callq  401060 <puts@plt>
  401391:	e8 e0 0a 00 00       	callq  401e76 <read_line>
  401396:	48 89 c7             	mov    %rax,%rdi
  401399:	e8 c7 00 00 00       	callq  401465 <phase_3>
  40139e:	e8 d4 0b 00 00       	callq  401f77 <phase_defused>
  4013a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a8:	5b                   	pop    %rbx
  4013a9:	c3                   	retq   
  4013aa:	48 8b 05 bf 41 00 00 	mov    0x41bf(%rip),%rax        # 405570 <stdin@@GLIBC_2.2.5>
  4013b1:	48 89 05 c8 41 00 00 	mov    %rax,0x41c8(%rip)        # 405580 <infile>
  4013b8:	e9 7b ff ff ff       	jmpq   401338 <main+0x36>
  4013bd:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  4013c1:	48 8b 33             	mov    (%rbx),%rsi
  4013c4:	48 8d 3d 39 1c 00 00 	lea    0x1c39(%rip),%rdi        # 403004 <_IO_stdin_used+0x4>
  4013cb:	e8 d0 fc ff ff       	callq  4010a0 <printf@plt>
  4013d0:	bf 08 00 00 00       	mov    $0x8,%edi
  4013d5:	e8 e6 fd ff ff       	callq  4011c0 <exit@plt>
  4013da:	48 8b 36             	mov    (%rsi),%rsi
  4013dd:	48 8d 3d 3d 1c 00 00 	lea    0x1c3d(%rip),%rdi        # 403021 <_IO_stdin_used+0x21>
  4013e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4013e9:	e8 b2 fc ff ff       	callq  4010a0 <printf@plt>
  4013ee:	bf 08 00 00 00       	mov    $0x8,%edi
  4013f3:	e8 c8 fd ff ff       	callq  4011c0 <exit@plt>

00000000004013f8 <phase_1>:
  4013f8:	48 83 ec 08          	sub    $0x8,%rsp
  4013fc:	48 8d 35 fd 1c 00 00 	lea    0x1cfd(%rip),%rsi        # 403100 <_IO_stdin_used+0x100>
  401403:	e8 e2 01 00 00       	callq  4015ea <strings_not_equal>
  401408:	85 c0                	test   %eax,%eax
  40140a:	75 05                	jne    401411 <phase_1+0x19>
  40140c:	48 83 c4 08          	add    $0x8,%rsp
  401410:	c3                   	retq   
  401411:	e8 e3 09 00 00       	callq  401df9 <explode_bomb>
  401416:	eb f4                	jmp    40140c <phase_1+0x14>

0000000000401418 <phase_2>:
  401418:	55                   	push   %rbp
  401419:	53                   	push   %rbx
  40141a:	48 83 ec 28          	sub    $0x28,%rsp
  40141e:	48 89 e6             	mov    %rsp,%rsi
  401421:	e8 0f 0a 00 00       	callq  401e35 <read_six_numbers>
  401426:	83 3c 24 01          	cmpl   $0x1,(%rsp)
  40142a:	75 0a                	jne    401436 <phase_2+0x1e>
  40142c:	48 89 e5             	mov    %rsp,%rbp
  40142f:	bb 01 00 00 00       	mov    $0x1,%ebx
  401434:	eb 15                	jmp    40144b <phase_2+0x33>
  401436:	e8 be 09 00 00       	callq  401df9 <explode_bomb>
  40143b:	eb ef                	jmp    40142c <phase_2+0x14>
  40143d:	e8 b7 09 00 00       	callq  401df9 <explode_bomb>
  401442:	48 83 c5 04          	add    $0x4,%rbp
  401446:	83 fb 06             	cmp    $0x6,%ebx
  401449:	74 13                	je     40145e <phase_2+0x46>
  40144b:	83 c3 01             	add    $0x1,%ebx
  40144e:	89 d8                	mov    %ebx,%eax
  401450:	0f af 45 00          	imul   0x0(%rbp),%eax
  401454:	83 e8 01             	sub    $0x1,%eax
  401457:	39 45 04             	cmp    %eax,0x4(%rbp)
  40145a:	74 e6                	je     401442 <phase_2+0x2a>
  40145c:	eb df                	jmp    40143d <phase_2+0x25>
  40145e:	48 83 c4 28          	add    $0x28,%rsp
  401462:	5b                   	pop    %rbx
  401463:	5d                   	pop    %rbp
  401464:	c3                   	retq   

0000000000401465 <phase_3>:
  401465:	48 83 ec 18          	sub    $0x18,%rsp
  401469:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  40146e:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401473:	48 8d 35 65 20 00 00 	lea    0x2065(%rip),%rsi        # 4034df <array.3176+0x35f>
  40147a:	b8 00 00 00 00       	mov    $0x0,%eax
  40147f:	e8 dc fc ff ff       	callq  401160 <__isoc99_sscanf@plt>
  401484:	83 f8 01             	cmp    $0x1,%eax
  401487:	7e 1b                	jle    4014a4 <phase_3+0x3f>
  401489:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
  40148e:	77 4c                	ja     4014dc <phase_3+0x77>
  401490:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401494:	48 8d 15 c5 1c 00 00 	lea    0x1cc5(%rip),%rdx        # 403160 <_IO_stdin_used+0x160>
  40149b:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40149f:	48 01 d0             	add    %rdx,%rax
  4014a2:	ff e0                	jmpq   *%rax
  4014a4:	e8 50 09 00 00       	callq  401df9 <explode_bomb>
  4014a9:	eb de                	jmp    401489 <phase_3+0x24>
  4014ab:	b8 9b 01 00 00       	mov    $0x19b,%eax
  4014b0:	eb 3b                	jmp    4014ed <phase_3+0x88>
  4014b2:	b8 da 00 00 00       	mov    $0xda,%eax
  4014b7:	eb 34                	jmp    4014ed <phase_3+0x88>
  4014b9:	b8 bc 00 00 00       	mov    $0xbc,%eax
  4014be:	eb 2d                	jmp    4014ed <phase_3+0x88>
  4014c0:	b8 a0 01 00 00       	mov    $0x1a0,%eax
  4014c5:	eb 26                	jmp    4014ed <phase_3+0x88>
  4014c7:	b8 e7 00 00 00       	mov    $0xe7,%eax
  4014cc:	eb 1f                	jmp    4014ed <phase_3+0x88>
  4014ce:	b8 05 03 00 00       	mov    $0x305,%eax
  4014d3:	eb 18                	jmp    4014ed <phase_3+0x88>
  4014d5:	b8 07 02 00 00       	mov    $0x207,%eax
  4014da:	eb 11                	jmp    4014ed <phase_3+0x88>
  4014dc:	e8 18 09 00 00       	callq  401df9 <explode_bomb>
  4014e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4014e6:	eb 05                	jmp    4014ed <phase_3+0x88>
  4014e8:	b8 ff 01 00 00       	mov    $0x1ff,%eax
  4014ed:	39 44 24 08          	cmp    %eax,0x8(%rsp)
  4014f1:	75 05                	jne    4014f8 <phase_3+0x93>
  4014f3:	48 83 c4 18          	add    $0x18,%rsp
  4014f7:	c3                   	retq   
  4014f8:	e8 fc 08 00 00       	callq  401df9 <explode_bomb>
  4014fd:	eb f4                	jmp    4014f3 <phase_3+0x8e>

00000000004014ff <secret_phase>:
  4014ff:	53                   	push   %rbx
  401500:	e8 71 09 00 00       	callq  401e76 <read_line>
  401505:	48 89 c3             	mov    %rax,%rbx
  401508:	48 89 c7             	mov    %rax,%rdi
  40150b:	e8 bd 00 00 00       	callq  4015cd <string_length>
  401510:	83 f8 06             	cmp    $0x6,%eax
  401513:	75 31                	jne    401546 <secret_phase+0x47>
  401515:	48 89 da             	mov    %rbx,%rdx
  401518:	48 8d 43 06          	lea    0x6(%rbx),%rax
  40151c:	be 00 00 00 00       	mov    $0x0,%esi
  401521:	48 8d 3d 58 1c 00 00 	lea    0x1c58(%rip),%rdi        # 403180 <array.3176>
  401528:	0f b6 0a             	movzbl (%rdx),%ecx
  40152b:	83 e1 0f             	and    $0xf,%ecx
  40152e:	03 34 8f             	add    (%rdi,%rcx,4),%esi
  401531:	48 83 c2 01          	add    $0x1,%rdx
  401535:	48 39 c2             	cmp    %rax,%rdx
  401538:	75 ee                	jne    401528 <secret_phase+0x29>
  40153a:	83 fe 36             	cmp    $0x36,%esi
  40153d:	75 0e                	jne    40154d <secret_phase+0x4e>
  40153f:	e8 33 0a 00 00       	callq  401f77 <phase_defused>
  401544:	5b                   	pop    %rbx
  401545:	c3                   	retq   
  401546:	e8 ae 08 00 00       	callq  401df9 <explode_bomb>
  40154b:	eb c8                	jmp    401515 <secret_phase+0x16>
  40154d:	e8 a7 08 00 00       	callq  401df9 <explode_bomb>
  401552:	eb eb                	jmp    40153f <secret_phase+0x40>

0000000000401554 <sig_handler>:
  401554:	48 83 ec 08          	sub    $0x8,%rsp
  401558:	48 8d 3d 61 1c 00 00 	lea    0x1c61(%rip),%rdi        # 4031c0 <array.3176+0x40>
  40155f:	e8 fc fa ff ff       	callq  401060 <puts@plt>
  401564:	bf 03 00 00 00       	mov    $0x3,%edi
  401569:	e8 82 fc ff ff       	callq  4011f0 <sleep@plt>
  40156e:	48 8d 3d 7c 1d 00 00 	lea    0x1d7c(%rip),%rdi        # 4032f1 <array.3176+0x171>
  401575:	b8 00 00 00 00       	mov    $0x0,%eax
  40157a:	e8 21 fb ff ff       	callq  4010a0 <printf@plt>
  40157f:	48 8b 3d da 3f 00 00 	mov    0x3fda(%rip),%rdi        # 405560 <stdout@@GLIBC_2.2.5>
  401586:	e8 c5 fb ff ff       	callq  401150 <fflush@plt>
  40158b:	bf 01 00 00 00       	mov    $0x1,%edi
  401590:	e8 5b fc ff ff       	callq  4011f0 <sleep@plt>
  401595:	48 8d 3d 5d 1d 00 00 	lea    0x1d5d(%rip),%rdi        # 4032f9 <array.3176+0x179>
  40159c:	e8 bf fa ff ff       	callq  401060 <puts@plt>
  4015a1:	bf 10 00 00 00       	mov    $0x10,%edi
  4015a6:	e8 15 fc ff ff       	callq  4011c0 <exit@plt>

00000000004015ab <invalid_phase>:
  4015ab:	48 83 ec 08          	sub    $0x8,%rsp
  4015af:	48 89 fe             	mov    %rdi,%rsi
  4015b2:	48 8d 3d 48 1d 00 00 	lea    0x1d48(%rip),%rdi        # 403301 <array.3176+0x181>
  4015b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4015be:	e8 dd fa ff ff       	callq  4010a0 <printf@plt>
  4015c3:	bf 08 00 00 00       	mov    $0x8,%edi
  4015c8:	e8 f3 fb ff ff       	callq  4011c0 <exit@plt>

00000000004015cd <string_length>:
  4015cd:	80 3f 00             	cmpb   $0x0,(%rdi)
  4015d0:	74 12                	je     4015e4 <string_length+0x17>
  4015d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4015d7:	48 83 c7 01          	add    $0x1,%rdi
  4015db:	83 c0 01             	add    $0x1,%eax
  4015de:	80 3f 00             	cmpb   $0x0,(%rdi)
  4015e1:	75 f4                	jne    4015d7 <string_length+0xa>
  4015e3:	c3                   	retq   
  4015e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015e9:	c3                   	retq   

00000000004015ea <strings_not_equal>:
  4015ea:	41 54                	push   %r12
  4015ec:	55                   	push   %rbp
  4015ed:	53                   	push   %rbx
  4015ee:	48 89 fb             	mov    %rdi,%rbx
  4015f1:	48 89 f5             	mov    %rsi,%rbp
  4015f4:	e8 d4 ff ff ff       	callq  4015cd <string_length>
  4015f9:	41 89 c4             	mov    %eax,%r12d
  4015fc:	48 89 ef             	mov    %rbp,%rdi
  4015ff:	e8 c9 ff ff ff       	callq  4015cd <string_length>
  401604:	ba 01 00 00 00       	mov    $0x1,%edx
  401609:	41 39 c4             	cmp    %eax,%r12d
  40160c:	75 2f                	jne    40163d <strings_not_equal+0x53>
  40160e:	0f b6 03             	movzbl (%rbx),%eax
  401611:	84 c0                	test   %al,%al
  401613:	74 2f                	je     401644 <strings_not_equal+0x5a>
  401615:	3a 45 00             	cmp    0x0(%rbp),%al
  401618:	75 31                	jne    40164b <strings_not_equal+0x61>
  40161a:	b8 01 00 00 00       	mov    $0x1,%eax
  40161f:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
  401623:	84 d2                	test   %dl,%dl
  401625:	74 11                	je     401638 <strings_not_equal+0x4e>
  401627:	48 83 c0 01          	add    $0x1,%rax
  40162b:	38 54 05 ff          	cmp    %dl,-0x1(%rbp,%rax,1)
  40162f:	74 ee                	je     40161f <strings_not_equal+0x35>
  401631:	ba 01 00 00 00       	mov    $0x1,%edx
  401636:	eb 05                	jmp    40163d <strings_not_equal+0x53>
  401638:	ba 00 00 00 00       	mov    $0x0,%edx
  40163d:	89 d0                	mov    %edx,%eax
  40163f:	5b                   	pop    %rbx
  401640:	5d                   	pop    %rbp
  401641:	41 5c                	pop    %r12
  401643:	c3                   	retq   
  401644:	ba 00 00 00 00       	mov    $0x0,%edx
  401649:	eb f2                	jmp    40163d <strings_not_equal+0x53>
  40164b:	ba 01 00 00 00       	mov    $0x1,%edx
  401650:	eb eb                	jmp    40163d <strings_not_equal+0x53>

0000000000401652 <open_clientfd>:
  401652:	41 54                	push   %r12
  401654:	55                   	push   %rbp
  401655:	53                   	push   %rbx
  401656:	48 83 ec 10          	sub    $0x10,%rsp
  40165a:	49 89 fc             	mov    %rdi,%r12
  40165d:	89 f5                	mov    %esi,%ebp
  40165f:	ba 00 00 00 00       	mov    $0x0,%edx
  401664:	be 01 00 00 00       	mov    $0x1,%esi
  401669:	bf 02 00 00 00       	mov    $0x2,%edi
  40166e:	e8 9d fb ff ff       	callq  401210 <socket@plt>
  401673:	85 c0                	test   %eax,%eax
  401675:	78 6e                	js     4016e5 <open_clientfd+0x93>
  401677:	89 c3                	mov    %eax,%ebx
  401679:	4c 89 e7             	mov    %r12,%rdi
  40167c:	e8 9f fa ff ff       	callq  401120 <gethostbyname@plt>
  401681:	48 85 c0             	test   %rax,%rax
  401684:	74 75                	je     4016fb <open_clientfd+0xa9>
  401686:	49 89 e4             	mov    %rsp,%r12
  401689:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  401690:	00 00 
  401692:	41 c7 44 24 0a 00 00 	movl   $0x0,0xa(%r12)
  401699:	00 00 
  40169b:	66 41 c7 44 24 0e 00 	movw   $0x0,0xe(%r12)
  4016a2:	00 
  4016a3:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4016a9:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4016ad:	48 8b 40 18          	mov    0x18(%rax),%rax
  4016b1:	49 8d 7c 24 04       	lea    0x4(%r12),%rdi
  4016b6:	48 8b 30             	mov    (%rax),%rsi
  4016b9:	e8 b2 fa ff ff       	callq  401170 <memmove@plt>
  4016be:	66 c1 c5 08          	rol    $0x8,%bp
  4016c2:	66 89 6c 24 02       	mov    %bp,0x2(%rsp)
  4016c7:	ba 10 00 00 00       	mov    $0x10,%edx
  4016cc:	4c 89 e6             	mov    %r12,%rsi
  4016cf:	89 df                	mov    %ebx,%edi
  4016d1:	e8 fa fa ff ff       	callq  4011d0 <connect@plt>
  4016d6:	85 c0                	test   %eax,%eax
  4016d8:	78 37                	js     401711 <open_clientfd+0xbf>
  4016da:	89 d8                	mov    %ebx,%eax
  4016dc:	48 83 c4 10          	add    $0x10,%rsp
  4016e0:	5b                   	pop    %rbx
  4016e1:	5d                   	pop    %rbp
  4016e2:	41 5c                	pop    %r12
  4016e4:	c3                   	retq   
  4016e5:	48 8d 3d 26 1c 00 00 	lea    0x1c26(%rip),%rdi        # 403312 <array.3176+0x192>
  4016ec:	e8 6f f9 ff ff       	callq  401060 <puts@plt>
  4016f1:	bf 08 00 00 00       	mov    $0x8,%edi
  4016f6:	e8 c5 fa ff ff       	callq  4011c0 <exit@plt>
  4016fb:	48 8d 3d 1e 1c 00 00 	lea    0x1c1e(%rip),%rdi        # 403320 <array.3176+0x1a0>
  401702:	e8 59 f9 ff ff       	callq  401060 <puts@plt>
  401707:	bf 08 00 00 00       	mov    $0x8,%edi
  40170c:	e8 af fa ff ff       	callq  4011c0 <exit@plt>
  401711:	48 8d 3d 16 1c 00 00 	lea    0x1c16(%rip),%rdi        # 40332e <array.3176+0x1ae>
  401718:	e8 43 f9 ff ff       	callq  401060 <puts@plt>
  40171d:	bf 08 00 00 00       	mov    $0x8,%edi
  401722:	e8 99 fa ff ff       	callq  4011c0 <exit@plt>

0000000000401727 <initialize_bomb>:
  401727:	48 83 ec 08          	sub    $0x8,%rsp
  40172b:	48 8d 35 22 fe ff ff 	lea    -0x1de(%rip),%rsi        # 401554 <sig_handler>
  401732:	bf 02 00 00 00       	mov    $0x2,%edi
  401737:	e8 d4 f9 ff ff       	callq  401110 <signal@plt>
  40173c:	be 50 00 00 00       	mov    $0x50,%esi
  401741:	48 8d 3d f4 1b 00 00 	lea    0x1bf4(%rip),%rdi        # 40333c <array.3176+0x1bc>
  401748:	e8 05 ff ff ff       	callq  401652 <open_clientfd>
  40174d:	89 c7                	mov    %eax,%edi
  40174f:	e8 7c f9 ff ff       	callq  4010d0 <close@plt>
  401754:	48 83 c4 08          	add    $0x8,%rsp
  401758:	c3                   	retq   

0000000000401759 <blank_line>:
  401759:	55                   	push   %rbp
  40175a:	53                   	push   %rbx
  40175b:	48 83 ec 08          	sub    $0x8,%rsp
  40175f:	48 89 fd             	mov    %rdi,%rbp
  401762:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401766:	84 db                	test   %bl,%bl
  401768:	74 1e                	je     401788 <blank_line+0x2f>
  40176a:	e8 91 fa ff ff       	callq  401200 <__ctype_b_loc@plt>
  40176f:	48 83 c5 01          	add    $0x1,%rbp
  401773:	48 0f be db          	movsbq %bl,%rbx
  401777:	48 8b 00             	mov    (%rax),%rax
  40177a:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  40177f:	75 e1                	jne    401762 <blank_line+0x9>
  401781:	b8 00 00 00 00       	mov    $0x0,%eax
  401786:	eb 05                	jmp    40178d <blank_line+0x34>
  401788:	b8 01 00 00 00       	mov    $0x1,%eax
  40178d:	48 83 c4 08          	add    $0x8,%rsp
  401791:	5b                   	pop    %rbx
  401792:	5d                   	pop    %rbp
  401793:	c3                   	retq   

0000000000401794 <skip>:
  401794:	55                   	push   %rbp
  401795:	53                   	push   %rbx
  401796:	48 83 ec 08          	sub    $0x8,%rsp
  40179a:	48 8d 2d ff 3d 00 00 	lea    0x3dff(%rip),%rbp        # 4055a0 <input_strings>
  4017a1:	48 63 05 d4 3d 00 00 	movslq 0x3dd4(%rip),%rax        # 40557c <num_input_strings>
  4017a8:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  4017ac:	48 c1 e7 04          	shl    $0x4,%rdi
  4017b0:	48 01 ef             	add    %rbp,%rdi
  4017b3:	48 8b 15 c6 3d 00 00 	mov    0x3dc6(%rip),%rdx        # 405580 <infile>
  4017ba:	be 50 00 00 00       	mov    $0x50,%esi
  4017bf:	e8 2c f9 ff ff       	callq  4010f0 <fgets@plt>
  4017c4:	48 89 c3             	mov    %rax,%rbx
  4017c7:	48 85 c0             	test   %rax,%rax
  4017ca:	74 0c                	je     4017d8 <skip+0x44>
  4017cc:	48 89 c7             	mov    %rax,%rdi
  4017cf:	e8 85 ff ff ff       	callq  401759 <blank_line>
  4017d4:	85 c0                	test   %eax,%eax
  4017d6:	75 c9                	jne    4017a1 <skip+0xd>
  4017d8:	48 89 d8             	mov    %rbx,%rax
  4017db:	48 83 c4 08          	add    $0x8,%rsp
  4017df:	5b                   	pop    %rbx
  4017e0:	5d                   	pop    %rbp
  4017e1:	c3                   	retq   

00000000004017e2 <writen>:
  4017e2:	41 56                	push   %r14
  4017e4:	41 55                	push   %r13
  4017e6:	41 54                	push   %r12
  4017e8:	55                   	push   %rbp
  4017e9:	53                   	push   %rbx
  4017ea:	49 89 d6             	mov    %rdx,%r14
  4017ed:	48 85 d2             	test   %rdx,%rdx
  4017f0:	74 3b                	je     40182d <writen+0x4b>
  4017f2:	41 89 fc             	mov    %edi,%r12d
  4017f5:	48 89 f5             	mov    %rsi,%rbp
  4017f8:	48 89 d3             	mov    %rdx,%rbx
  4017fb:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401801:	eb 08                	jmp    40180b <writen+0x29>
  401803:	48 01 c5             	add    %rax,%rbp
  401806:	48 29 c3             	sub    %rax,%rbx
  401809:	74 22                	je     40182d <writen+0x4b>
  40180b:	48 89 da             	mov    %rbx,%rdx
  40180e:	48 89 ee             	mov    %rbp,%rsi
  401811:	44 89 e7             	mov    %r12d,%edi
  401814:	e8 57 f8 ff ff       	callq  401070 <write@plt>
  401819:	48 85 c0             	test   %rax,%rax
  40181c:	7f e5                	jg     401803 <writen+0x21>
  40181e:	e8 1d f8 ff ff       	callq  401040 <__errno_location@plt>
  401823:	83 38 04             	cmpl   $0x4,(%rax)
  401826:	75 11                	jne    401839 <writen+0x57>
  401828:	4c 89 e8             	mov    %r13,%rax
  40182b:	eb d6                	jmp    401803 <writen+0x21>
  40182d:	4c 89 f0             	mov    %r14,%rax
  401830:	5b                   	pop    %rbx
  401831:	5d                   	pop    %rbp
  401832:	41 5c                	pop    %r12
  401834:	41 5d                	pop    %r13
  401836:	41 5e                	pop    %r14
  401838:	c3                   	retq   
  401839:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401840:	eb ee                	jmp    401830 <writen+0x4e>

0000000000401842 <send_msg>:
  401842:	41 57                	push   %r15
  401844:	41 56                	push   %r14
  401846:	41 55                	push   %r13
  401848:	41 54                	push   %r12
  40184a:	55                   	push   %rbp
  40184b:	53                   	push   %rbx
  40184c:	48 81 ec 78 24 00 00 	sub    $0x2478,%rsp
  401853:	41 89 fc             	mov    %edi,%r12d
  401856:	ba 00 00 00 00       	mov    $0x0,%edx
  40185b:	be 01 00 00 00       	mov    $0x1,%esi
  401860:	bf 02 00 00 00       	mov    $0x2,%edi
  401865:	e8 a6 f9 ff ff       	callq  401210 <socket@plt>
  40186a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40186e:	85 c0                	test   %eax,%eax
  401870:	0f 88 28 02 00 00    	js     401a9e <send_msg+0x25c>
  401876:	48 8d 94 24 64 24 00 	lea    0x2464(%rsp),%rdx
  40187d:	00 
  40187e:	48 c7 84 24 64 24 00 	movq   $0x0,0x2464(%rsp)
  401885:	00 00 00 00 00 
  40188a:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%rdx)
  401891:	66 c7 84 24 60 24 00 	movw   $0x2,0x2460(%rsp)
  401898:	00 02 00 
  40189b:	66 c7 84 24 62 24 00 	movw   $0x62cc,0x2462(%rsp)
  4018a2:	00 cc 62 
  4018a5:	48 8d 35 90 1a 00 00 	lea    0x1a90(%rip),%rsi        # 40333c <array.3176+0x1bc>
  4018ac:	bf 02 00 00 00       	mov    $0x2,%edi
  4018b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b6:	e8 85 f8 ff ff       	callq  401140 <inet_pton@plt>
  4018bb:	85 c0                	test   %eax,%eax
  4018bd:	0f 88 0d 02 00 00    	js     401ad0 <send_msg+0x28e>
  4018c3:	48 8d b4 24 60 24 00 	lea    0x2460(%rsp),%rsi
  4018ca:	00 
  4018cb:	ba 10 00 00 00       	mov    $0x10,%edx
  4018d0:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  4018d4:	e8 f7 f8 ff ff       	callq  4011d0 <connect@plt>
  4018d9:	85 c0                	test   %eax,%eax
  4018db:	0f 88 2a 02 00 00    	js     401b0b <send_msg+0x2c9>
  4018e1:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
  4018e6:	48 b8 53 75 62 6a 65 	movabs $0x3a7463656a627553,%rax
  4018ed:	63 74 3a 
  4018f0:	48 ba 20 42 6f 6d 62 	movabs $0x6f6e20626d6f4220,%rdx
  4018f7:	20 6e 6f 
  4018fa:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  4018ff:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
  401904:	48 b8 74 69 66 69 63 	movabs $0x6974616369666974,%rax
  40190b:	61 74 69 
  40190e:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
  401913:	c7 44 24 78 6f 6e 0a 	movl   $0xa6e6f,0x78(%rsp)
  40191a:	00 
  40191b:	48 8d 9c 24 60 04 00 	lea    0x460(%rsp),%rbx
  401922:	00 
  401923:	48 89 ee             	mov    %rbp,%rsi
  401926:	48 89 df             	mov    %rbx,%rdi
  401929:	e8 72 f8 ff ff       	callq  4011a0 <strcat@plt>
  40192e:	66 c7 44 24 60 0a 00 	movw   $0xa,0x60(%rsp)
  401935:	48 89 ee             	mov    %rbp,%rsi
  401938:	48 89 df             	mov    %rbx,%rdi
  40193b:	e8 60 f8 ff ff       	callq  4011a0 <strcat@plt>
  401940:	bf 00 00 00 00       	mov    $0x0,%edi
  401945:	e8 36 f8 ff ff       	callq  401180 <cuserid@plt>
  40194a:	48 85 c0             	test   %rax,%rax
  40194d:	0f 84 f3 01 00 00    	je     401b46 <send_msg+0x304>
  401953:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401958:	48 89 c6             	mov    %rax,%rsi
  40195b:	e8 f0 f6 ff ff       	callq  401050 <strcpy@plt>
  401960:	45 85 e4             	test   %r12d,%r12d
  401963:	4c 8d 0d e0 19 00 00 	lea    0x19e0(%rip),%r9        # 40334a <array.3176+0x1ca>
  40196a:	48 8d 05 e1 19 00 00 	lea    0x19e1(%rip),%rax        # 403352 <array.3176+0x1d2>
  401971:	4c 0f 44 c8          	cmove  %rax,%r9
  401975:	48 8d 5c 24 60       	lea    0x60(%rsp),%rbx
  40197a:	48 83 ec 08          	sub    $0x8,%rsp
  40197e:	8b 05 f8 3b 00 00    	mov    0x3bf8(%rip),%eax        # 40557c <num_input_strings>
  401984:	50                   	push   %rax
  401985:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  40198a:	8b 0d b0 3b 00 00    	mov    0x3bb0(%rip),%ecx        # 405540 <bomb_id>
  401990:	48 8d 15 a9 37 00 00 	lea    0x37a9(%rip),%rdx        # 405140 <lab_id>
  401997:	48 8d 35 d8 19 00 00 	lea    0x19d8(%rip),%rsi        # 403376 <array.3176+0x1f6>
  40199e:	48 89 df             	mov    %rbx,%rdi
  4019a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a6:	e8 05 f8 ff ff       	callq  4011b0 <sprintf@plt>
  4019ab:	48 8d bc 24 70 04 00 	lea    0x470(%rsp),%rdi
  4019b2:	00 
  4019b3:	48 89 de             	mov    %rbx,%rsi
  4019b6:	e8 e5 f7 ff ff       	callq  4011a0 <strcat@plt>
  4019bb:	48 83 c4 10          	add    $0x10,%rsp
  4019bf:	83 3d b6 3b 00 00 00 	cmpl   $0x0,0x3bb6(%rip)        # 40557c <num_input_strings>
  4019c6:	7e 6b                	jle    401a33 <send_msg+0x1f1>
  4019c8:	48 8d 2d d1 3b 00 00 	lea    0x3bd1(%rip),%rbp        # 4055a0 <input_strings>
  4019cf:	bb 00 00 00 00       	mov    $0x0,%ebx
  4019d4:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
  4019d9:	4c 8d 64 24 60       	lea    0x60(%rsp),%r12
  4019de:	4c 8d 35 5b 37 00 00 	lea    0x375b(%rip),%r14        # 405140 <lab_id>
  4019e5:	4c 8d ac 24 60 04 00 	lea    0x460(%rsp),%r13
  4019ec:	00 
  4019ed:	83 c3 01             	add    $0x1,%ebx
  4019f0:	48 83 ec 08          	sub    $0x8,%rsp
  4019f4:	55                   	push   %rbp
  4019f5:	41 89 d9             	mov    %ebx,%r9d
  4019f8:	4d 89 f8             	mov    %r15,%r8
  4019fb:	8b 0d 3f 3b 00 00    	mov    0x3b3f(%rip),%ecx        # 405540 <bomb_id>
  401a01:	4c 89 f2             	mov    %r14,%rdx
  401a04:	48 8d 35 87 19 00 00 	lea    0x1987(%rip),%rsi        # 403392 <array.3176+0x212>
  401a0b:	4c 89 e7             	mov    %r12,%rdi
  401a0e:	b8 00 00 00 00       	mov    $0x0,%eax
  401a13:	e8 98 f7 ff ff       	callq  4011b0 <sprintf@plt>
  401a18:	4c 89 e6             	mov    %r12,%rsi
  401a1b:	4c 89 ef             	mov    %r13,%rdi
  401a1e:	e8 7d f7 ff ff       	callq  4011a0 <strcat@plt>
  401a23:	48 83 c5 50          	add    $0x50,%rbp
  401a27:	48 83 c4 10          	add    $0x10,%rsp
  401a2b:	3b 1d 4b 3b 00 00    	cmp    0x3b4b(%rip),%ebx        # 40557c <num_input_strings>
  401a31:	7c ba                	jl     4019ed <send_msg+0x1ab>
  401a33:	48 8d ac 24 60 04 00 	lea    0x460(%rsp),%rbp
  401a3a:	00 
  401a3b:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
  401a42:	bb 00 00 00 00       	mov    $0x0,%ebx
  401a47:	4c 89 e1             	mov    %r12,%rcx
  401a4a:	48 89 ef             	mov    %rbp,%rdi
  401a4d:	89 d8                	mov    %ebx,%eax
  401a4f:	f2 ae                	repnz scas %es:(%rdi),%al
  401a51:	48 f7 d1             	not    %rcx
  401a54:	4a 8d 14 21          	lea    (%rcx,%r12,1),%rdx
  401a58:	48 89 ee             	mov    %rbp,%rsi
  401a5b:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401a5f:	e8 7e fd ff ff       	callq  4017e2 <writen>
  401a64:	48 89 c2             	mov    %rax,%rdx
  401a67:	4c 89 e1             	mov    %r12,%rcx
  401a6a:	48 89 ef             	mov    %rbp,%rdi
  401a6d:	89 d8                	mov    %ebx,%eax
  401a6f:	f2 ae                	repnz scas %es:(%rdi),%al
  401a71:	48 89 cb             	mov    %rcx,%rbx
  401a74:	48 f7 d3             	not    %rbx
  401a77:	4c 01 e3             	add    %r12,%rbx
  401a7a:	48 39 da             	cmp    %rbx,%rdx
  401a7d:	0f 82 dc 00 00 00    	jb     401b5f <send_msg+0x31d>
  401a83:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401a87:	e8 44 f6 ff ff       	callq  4010d0 <close@plt>
  401a8c:	48 81 c4 78 24 00 00 	add    $0x2478,%rsp
  401a93:	5b                   	pop    %rbx
  401a94:	5d                   	pop    %rbp
  401a95:	41 5c                	pop    %r12
  401a97:	41 5d                	pop    %r13
  401a99:	41 5e                	pop    %r14
  401a9b:	41 5f                	pop    %r15
  401a9d:	c3                   	retq   
  401a9e:	48 8d 15 b6 18 00 00 	lea    0x18b6(%rip),%rdx        # 40335b <array.3176+0x1db>
  401aa5:	48 8d 35 71 15 00 00 	lea    0x1571(%rip),%rsi        # 40301d <_IO_stdin_used+0x1d>
  401aac:	48 8b 3d ad 3a 00 00 	mov    0x3aad(%rip),%rdi        # 405560 <stdout@@GLIBC_2.2.5>
  401ab3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ab8:	e8 73 f6 ff ff       	callq  401130 <fprintf@plt>
  401abd:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401ac1:	e8 0a f6 ff ff       	callq  4010d0 <close@plt>
  401ac6:	bf 01 00 00 00       	mov    $0x1,%edi
  401acb:	e8 f0 f6 ff ff       	callq  4011c0 <exit@plt>
  401ad0:	48 8d 15 f8 18 00 00 	lea    0x18f8(%rip),%rdx        # 4033cf <array.3176+0x24f>
  401ad7:	48 8d 35 3f 15 00 00 	lea    0x153f(%rip),%rsi        # 40301d <_IO_stdin_used+0x1d>
  401ade:	48 8b 3d 7b 3a 00 00 	mov    0x3a7b(%rip),%rdi        # 405560 <stdout@@GLIBC_2.2.5>
  401ae5:	b8 00 00 00 00       	mov    $0x0,%eax
  401aea:	e8 41 f6 ff ff       	callq  401130 <fprintf@plt>
  401aef:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  401af4:	75 0a                	jne    401b00 <send_msg+0x2be>
  401af6:	bf 01 00 00 00       	mov    $0x1,%edi
  401afb:	e8 c0 f6 ff ff       	callq  4011c0 <exit@plt>
  401b00:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401b04:	e8 c7 f5 ff ff       	callq  4010d0 <close@plt>
  401b09:	eb eb                	jmp    401af6 <send_msg+0x2b4>
  401b0b:	48 8d 15 56 18 00 00 	lea    0x1856(%rip),%rdx        # 403368 <array.3176+0x1e8>
  401b12:	48 8d 35 04 15 00 00 	lea    0x1504(%rip),%rsi        # 40301d <_IO_stdin_used+0x1d>
  401b19:	48 8b 3d 40 3a 00 00 	mov    0x3a40(%rip),%rdi        # 405560 <stdout@@GLIBC_2.2.5>
  401b20:	b8 00 00 00 00       	mov    $0x0,%eax
  401b25:	e8 06 f6 ff ff       	callq  401130 <fprintf@plt>
  401b2a:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  401b2f:	75 0a                	jne    401b3b <send_msg+0x2f9>
  401b31:	bf 01 00 00 00       	mov    $0x1,%edi
  401b36:	e8 85 f6 ff ff       	callq  4011c0 <exit@plt>
  401b3b:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401b3f:	e8 8c f5 ff ff       	callq  4010d0 <close@plt>
  401b44:	eb eb                	jmp    401b31 <send_msg+0x2ef>
  401b46:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%rsp)
  401b4d:	6f 
  401b4e:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%rsp)
  401b55:	c6 44 24 16 00       	movb   $0x0,0x16(%rsp)
  401b5a:	e9 01 fe ff ff       	jmpq   401960 <send_msg+0x11e>
  401b5f:	48 8d 15 48 18 00 00 	lea    0x1848(%rip),%rdx        # 4033ae <array.3176+0x22e>
  401b66:	48 8d 35 b0 14 00 00 	lea    0x14b0(%rip),%rsi        # 40301d <_IO_stdin_used+0x1d>
  401b6d:	48 8b 3d ec 39 00 00 	mov    0x39ec(%rip),%rdi        # 405560 <stdout@@GLIBC_2.2.5>
  401b74:	e8 b7 f5 ff ff       	callq  401130 <fprintf@plt>
  401b79:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  401b7e:	75 0a                	jne    401b8a <send_msg+0x348>
  401b80:	bf 01 00 00 00       	mov    $0x1,%edi
  401b85:	e8 36 f6 ff ff       	callq  4011c0 <exit@plt>
  401b8a:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401b8e:	e8 3d f5 ff ff       	callq  4010d0 <close@plt>
  401b93:	eb eb                	jmp    401b80 <send_msg+0x33e>

0000000000401b95 <send_msg_2>:
  401b95:	41 56                	push   %r14
  401b97:	41 55                	push   %r13
  401b99:	41 54                	push   %r12
  401b9b:	55                   	push   %rbp
  401b9c:	53                   	push   %rbx
  401b9d:	48 83 ec 50          	sub    $0x50,%rsp
  401ba1:	89 fb                	mov    %edi,%ebx
  401ba3:	bf 00 00 00 00       	mov    $0x0,%edi
  401ba8:	e8 13 f5 ff ff       	callq  4010c0 <dup@plt>
  401bad:	83 f8 ff             	cmp    $0xffffffff,%eax
  401bb0:	0f 84 91 01 00 00    	je     401d47 <send_msg_2+0x1b2>
  401bb6:	41 89 c6             	mov    %eax,%r14d
  401bb9:	bf 00 00 00 00       	mov    $0x0,%edi
  401bbe:	e8 0d f5 ff ff       	callq  4010d0 <close@plt>
  401bc3:	83 f8 ff             	cmp    $0xffffffff,%eax
  401bc6:	0f 84 91 01 00 00    	je     401d5d <send_msg_2+0x1c8>
  401bcc:	e8 2f f5 ff ff       	callq  401100 <tmpfile@plt>
  401bd1:	49 89 c4             	mov    %rax,%r12
  401bd4:	48 85 c0             	test   %rax,%rax
  401bd7:	0f 84 96 01 00 00    	je     401d73 <send_msg_2+0x1de>
  401bdd:	48 89 c1             	mov    %rax,%rcx
  401be0:	ba 1b 00 00 00       	mov    $0x1b,%edx
  401be5:	be 01 00 00 00       	mov    $0x1,%esi
  401bea:	48 8d 3d 0c 18 00 00 	lea    0x180c(%rip),%rdi        # 4033fd <array.3176+0x27d>
  401bf1:	e8 ea f5 ff ff       	callq  4011e0 <fwrite@plt>
  401bf6:	4c 89 e6             	mov    %r12,%rsi
  401bf9:	bf 0a 00 00 00       	mov    $0xa,%edi
  401bfe:	e8 dd f4 ff ff       	callq  4010e0 <fputc@plt>
  401c03:	bf 00 00 00 00       	mov    $0x0,%edi
  401c08:	e8 73 f5 ff ff       	callq  401180 <cuserid@plt>
  401c0d:	48 85 c0             	test   %rax,%rax
  401c10:	0f 84 73 01 00 00    	je     401d89 <send_msg_2+0x1f4>
  401c16:	48 89 e7             	mov    %rsp,%rdi
  401c19:	48 89 c6             	mov    %rax,%rsi
  401c1c:	e8 2f f4 ff ff       	callq  401050 <strcpy@plt>
  401c21:	85 db                	test   %ebx,%ebx
  401c23:	4c 8d 0d 20 17 00 00 	lea    0x1720(%rip),%r9        # 40334a <array.3176+0x1ca>
  401c2a:	48 8d 05 21 17 00 00 	lea    0x1721(%rip),%rax        # 403352 <array.3176+0x1d2>
  401c31:	4c 0f 44 c8          	cmove  %rax,%r9
  401c35:	48 83 ec 08          	sub    $0x8,%rsp
  401c39:	8b 05 3d 39 00 00    	mov    0x393d(%rip),%eax        # 40557c <num_input_strings>
  401c3f:	50                   	push   %rax
  401c40:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401c45:	8b 0d f5 38 00 00    	mov    0x38f5(%rip),%ecx        # 405540 <bomb_id>
  401c4b:	48 8d 15 ee 34 00 00 	lea    0x34ee(%rip),%rdx        # 405140 <lab_id>
  401c52:	48 8d 35 1d 17 00 00 	lea    0x171d(%rip),%rsi        # 403376 <array.3176+0x1f6>
  401c59:	4c 89 e7             	mov    %r12,%rdi
  401c5c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c61:	e8 ca f4 ff ff       	callq  401130 <fprintf@plt>
  401c66:	48 83 c4 10          	add    $0x10,%rsp
  401c6a:	83 3d 0b 39 00 00 00 	cmpl   $0x0,0x390b(%rip)        # 40557c <num_input_strings>
  401c71:	7e 4e                	jle    401cc1 <send_msg_2+0x12c>
  401c73:	48 8d 2d 26 39 00 00 	lea    0x3926(%rip),%rbp        # 4055a0 <input_strings>
  401c7a:	bb 00 00 00 00       	mov    $0x0,%ebx
  401c7f:	49 89 e5             	mov    %rsp,%r13
  401c82:	83 c3 01             	add    $0x1,%ebx
  401c85:	48 83 ec 08          	sub    $0x8,%rsp
  401c89:	55                   	push   %rbp
  401c8a:	41 89 d9             	mov    %ebx,%r9d
  401c8d:	4d 89 e8             	mov    %r13,%r8
  401c90:	8b 0d aa 38 00 00    	mov    0x38aa(%rip),%ecx        # 405540 <bomb_id>
  401c96:	48 8d 15 a3 34 00 00 	lea    0x34a3(%rip),%rdx        # 405140 <lab_id>
  401c9d:	48 8d 35 ee 16 00 00 	lea    0x16ee(%rip),%rsi        # 403392 <array.3176+0x212>
  401ca4:	4c 89 e7             	mov    %r12,%rdi
  401ca7:	b8 00 00 00 00       	mov    $0x0,%eax
  401cac:	e8 7f f4 ff ff       	callq  401130 <fprintf@plt>
  401cb1:	48 83 c5 50          	add    $0x50,%rbp
  401cb5:	48 83 c4 10          	add    $0x10,%rsp
  401cb9:	3b 1d bd 38 00 00    	cmp    0x38bd(%rip),%ebx        # 40557c <num_input_strings>
  401cbf:	7c c1                	jl     401c82 <send_msg_2+0xed>
  401cc1:	4c 89 e7             	mov    %r12,%rdi
  401cc4:	e8 e7 f3 ff ff       	callq  4010b0 <rewind@plt>
  401cc9:	4c 8d 05 49 17 00 00 	lea    0x1749(%rip),%r8        # 403419 <array.3176+0x299>
  401cd0:	48 8d 0d 4c 17 00 00 	lea    0x174c(%rip),%rcx        # 403423 <array.3176+0x2a3>
  401cd7:	48 8d 15 50 17 00 00 	lea    0x1750(%rip),%rdx        # 40342e <array.3176+0x2ae>
  401cde:	48 8d 35 60 17 00 00 	lea    0x1760(%rip),%rsi        # 403445 <array.3176+0x2c5>
  401ce5:	48 8d 3d f4 3e 00 00 	lea    0x3ef4(%rip),%rdi        # 405be0 <scratch>
  401cec:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf1:	e8 ba f4 ff ff       	callq  4011b0 <sprintf@plt>
  401cf6:	48 8d 3d e3 3e 00 00 	lea    0x3ee3(%rip),%rdi        # 405be0 <scratch>
  401cfd:	e8 8e f3 ff ff       	callq  401090 <system@plt>
  401d02:	85 c0                	test   %eax,%eax
  401d04:	0f 85 97 00 00 00    	jne    401da1 <send_msg_2+0x20c>
  401d0a:	4c 89 e7             	mov    %r12,%rdi
  401d0d:	e8 6e f3 ff ff       	callq  401080 <fclose@plt>
  401d12:	85 c0                	test   %eax,%eax
  401d14:	0f 85 9d 00 00 00    	jne    401db7 <send_msg_2+0x222>
  401d1a:	44 89 f7             	mov    %r14d,%edi
  401d1d:	e8 9e f3 ff ff       	callq  4010c0 <dup@plt>
  401d22:	85 c0                	test   %eax,%eax
  401d24:	0f 85 a3 00 00 00    	jne    401dcd <send_msg_2+0x238>
  401d2a:	44 89 f7             	mov    %r14d,%edi
  401d2d:	e8 9e f3 ff ff       	callq  4010d0 <close@plt>
  401d32:	85 c0                	test   %eax,%eax
  401d34:	0f 85 a9 00 00 00    	jne    401de3 <send_msg_2+0x24e>
  401d3a:	48 83 c4 50          	add    $0x50,%rsp
  401d3e:	5b                   	pop    %rbx
  401d3f:	5d                   	pop    %rbp
  401d40:	41 5c                	pop    %r12
  401d42:	41 5d                	pop    %r13
  401d44:	41 5e                	pop    %r14
  401d46:	c3                   	retq   
  401d47:	48 8d 3d 73 16 00 00 	lea    0x1673(%rip),%rdi        # 4033c1 <array.3176+0x241>
  401d4e:	e8 0d f3 ff ff       	callq  401060 <puts@plt>
  401d53:	bf 08 00 00 00       	mov    $0x8,%edi
  401d58:	e8 63 f4 ff ff       	callq  4011c0 <exit@plt>
  401d5d:	48 8d 3d 71 16 00 00 	lea    0x1671(%rip),%rdi        # 4033d5 <array.3176+0x255>
  401d64:	e8 f7 f2 ff ff       	callq  401060 <puts@plt>
  401d69:	bf 08 00 00 00       	mov    $0x8,%edi
  401d6e:	e8 4d f4 ff ff       	callq  4011c0 <exit@plt>
  401d73:	48 8d 3d 6e 16 00 00 	lea    0x166e(%rip),%rdi        # 4033e8 <array.3176+0x268>
  401d7a:	e8 e1 f2 ff ff       	callq  401060 <puts@plt>
  401d7f:	bf 08 00 00 00       	mov    $0x8,%edi
  401d84:	e8 37 f4 ff ff       	callq  4011c0 <exit@plt>
  401d89:	c7 04 24 6e 6f 62 6f 	movl   $0x6f626f6e,(%rsp)
  401d90:	66 c7 44 24 04 64 79 	movw   $0x7964,0x4(%rsp)
  401d97:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
  401d9c:	e9 80 fe ff ff       	jmpq   401c21 <send_msg_2+0x8c>
  401da1:	48 8d 3d a6 16 00 00 	lea    0x16a6(%rip),%rdi        # 40344e <array.3176+0x2ce>
  401da8:	e8 b3 f2 ff ff       	callq  401060 <puts@plt>
  401dad:	bf 08 00 00 00       	mov    $0x8,%edi
  401db2:	e8 09 f4 ff ff       	callq  4011c0 <exit@plt>
  401db7:	48 8d 3d aa 16 00 00 	lea    0x16aa(%rip),%rdi        # 403468 <array.3176+0x2e8>
  401dbe:	e8 9d f2 ff ff       	callq  401060 <puts@plt>
  401dc3:	bf 08 00 00 00       	mov    $0x8,%edi
  401dc8:	e8 f3 f3 ff ff       	callq  4011c0 <exit@plt>
  401dcd:	48 8d 3d ad 16 00 00 	lea    0x16ad(%rip),%rdi        # 403481 <array.3176+0x301>
  401dd4:	e8 87 f2 ff ff       	callq  401060 <puts@plt>
  401dd9:	bf 08 00 00 00       	mov    $0x8,%edi
  401dde:	e8 dd f3 ff ff       	callq  4011c0 <exit@plt>
  401de3:	48 8d 3d b2 16 00 00 	lea    0x16b2(%rip),%rdi        # 40349c <array.3176+0x31c>
  401dea:	e8 71 f2 ff ff       	callq  401060 <puts@plt>
  401def:	bf 08 00 00 00       	mov    $0x8,%edi
  401df4:	e8 c7 f3 ff ff       	callq  4011c0 <exit@plt>

0000000000401df9 <explode_bomb>:
  401df9:	48 83 ec 08          	sub    $0x8,%rsp
  401dfd:	48 8d 3d af 16 00 00 	lea    0x16af(%rip),%rdi        # 4034b3 <array.3176+0x333>
  401e04:	e8 57 f2 ff ff       	callq  401060 <puts@plt>
  401e09:	48 8d 3d ac 16 00 00 	lea    0x16ac(%rip),%rdi        # 4034bc <array.3176+0x33c>
  401e10:	e8 4b f2 ff ff       	callq  401060 <puts@plt>
  401e15:	bf 00 00 00 00       	mov    $0x0,%edi
  401e1a:	e8 23 fa ff ff       	callq  401842 <send_msg>
  401e1f:	48 8d 3d d2 13 00 00 	lea    0x13d2(%rip),%rdi        # 4031f8 <array.3176+0x78>
  401e26:	e8 35 f2 ff ff       	callq  401060 <puts@plt>
  401e2b:	bf 08 00 00 00       	mov    $0x8,%edi
  401e30:	e8 8b f3 ff ff       	callq  4011c0 <exit@plt>

0000000000401e35 <read_six_numbers>:
  401e35:	48 83 ec 08          	sub    $0x8,%rsp
  401e39:	48 89 f2             	mov    %rsi,%rdx
  401e3c:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401e40:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401e44:	50                   	push   %rax
  401e45:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401e49:	50                   	push   %rax
  401e4a:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401e4e:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401e52:	48 8d 35 7a 16 00 00 	lea    0x167a(%rip),%rsi        # 4034d3 <array.3176+0x353>
  401e59:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5e:	e8 fd f2 ff ff       	callq  401160 <__isoc99_sscanf@plt>
  401e63:	48 83 c4 10          	add    $0x10,%rsp
  401e67:	83 f8 05             	cmp    $0x5,%eax
  401e6a:	7e 05                	jle    401e71 <read_six_numbers+0x3c>
  401e6c:	48 83 c4 08          	add    $0x8,%rsp
  401e70:	c3                   	retq   
  401e71:	e8 83 ff ff ff       	callq  401df9 <explode_bomb>

0000000000401e76 <read_line>:
  401e76:	48 83 ec 08          	sub    $0x8,%rsp
  401e7a:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7f:	e8 10 f9 ff ff       	callq  401794 <skip>
  401e84:	48 85 c0             	test   %rax,%rax
  401e87:	74 6f                	je     401ef8 <read_line+0x82>
  401e89:	8b 35 ed 36 00 00    	mov    0x36ed(%rip),%esi        # 40557c <num_input_strings>
  401e8f:	48 63 c6             	movslq %esi,%rax
  401e92:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401e96:	48 c1 e2 04          	shl    $0x4,%rdx
  401e9a:	48 8d 05 ff 36 00 00 	lea    0x36ff(%rip),%rax        # 4055a0 <input_strings>
  401ea1:	48 01 c2             	add    %rax,%rdx
  401ea4:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401eab:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb0:	48 89 d7             	mov    %rdx,%rdi
  401eb3:	f2 ae                	repnz scas %es:(%rdi),%al
  401eb5:	48 f7 d1             	not    %rcx
  401eb8:	48 83 e9 01          	sub    $0x1,%rcx
  401ebc:	83 f9 4f             	cmp    $0x4f,%ecx
  401ebf:	0f 84 a1 00 00 00    	je     401f66 <read_line+0xf0>
  401ec5:	83 e9 01             	sub    $0x1,%ecx
  401ec8:	48 63 c9             	movslq %ecx,%rcx
  401ecb:	48 63 c6             	movslq %esi,%rax
  401ece:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401ed2:	48 c1 e0 04          	shl    $0x4,%rax
  401ed6:	48 89 c7             	mov    %rax,%rdi
  401ed9:	48 8d 05 c0 36 00 00 	lea    0x36c0(%rip),%rax        # 4055a0 <input_strings>
  401ee0:	48 01 f8             	add    %rdi,%rax
  401ee3:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
  401ee7:	83 c6 01             	add    $0x1,%esi
  401eea:	89 35 8c 36 00 00    	mov    %esi,0x368c(%rip)        # 40557c <num_input_strings>
  401ef0:	48 89 d0             	mov    %rdx,%rax
  401ef3:	48 83 c4 08          	add    $0x8,%rsp
  401ef7:	c3                   	retq   
  401ef8:	48 8b 05 71 36 00 00 	mov    0x3671(%rip),%rax        # 405570 <stdin@@GLIBC_2.2.5>
  401eff:	48 39 05 7a 36 00 00 	cmp    %rax,0x367a(%rip)        # 405580 <infile>
  401f06:	74 1b                	je     401f23 <read_line+0xad>
  401f08:	48 8d 3d f4 15 00 00 	lea    0x15f4(%rip),%rdi        # 403503 <array.3176+0x383>
  401f0f:	e8 1c f1 ff ff       	callq  401030 <getenv@plt>
  401f14:	48 85 c0             	test   %rax,%rax
  401f17:	74 1b                	je     401f34 <read_line+0xbe>
  401f19:	bf 00 00 00 00       	mov    $0x0,%edi
  401f1e:	e8 9d f2 ff ff       	callq  4011c0 <exit@plt>
  401f23:	48 8d 3d bb 15 00 00 	lea    0x15bb(%rip),%rdi        # 4034e5 <array.3176+0x365>
  401f2a:	e8 31 f1 ff ff       	callq  401060 <puts@plt>
  401f2f:	e8 c5 fe ff ff       	callq  401df9 <explode_bomb>
  401f34:	48 8b 05 35 36 00 00 	mov    0x3635(%rip),%rax        # 405570 <stdin@@GLIBC_2.2.5>
  401f3b:	48 89 05 3e 36 00 00 	mov    %rax,0x363e(%rip)        # 405580 <infile>
  401f42:	b8 00 00 00 00       	mov    $0x0,%eax
  401f47:	e8 48 f8 ff ff       	callq  401794 <skip>
  401f4c:	48 85 c0             	test   %rax,%rax
  401f4f:	0f 85 34 ff ff ff    	jne    401e89 <read_line+0x13>
  401f55:	48 8d 3d 89 15 00 00 	lea    0x1589(%rip),%rdi        # 4034e5 <array.3176+0x365>
  401f5c:	e8 ff f0 ff ff       	callq  401060 <puts@plt>
  401f61:	e8 93 fe ff ff       	callq  401df9 <explode_bomb>
  401f66:	48 8d 3d a1 15 00 00 	lea    0x15a1(%rip),%rdi        # 40350e <array.3176+0x38e>
  401f6d:	e8 ee f0 ff ff       	callq  401060 <puts@plt>
  401f72:	e8 82 fe ff ff       	callq  401df9 <explode_bomb>

0000000000401f77 <phase_defused>:
  401f77:	48 83 ec 78          	sub    $0x78,%rsp
  401f7b:	bf 01 00 00 00       	mov    $0x1,%edi
  401f80:	e8 bd f8 ff ff       	callq  401842 <send_msg>
  401f85:	83 3d f0 35 00 00 03 	cmpl   $0x3,0x35f0(%rip)        # 40557c <num_input_strings>
  401f8c:	74 05                	je     401f93 <phase_defused+0x1c>
  401f8e:	48 83 c4 78          	add    $0x78,%rsp
  401f92:	c3                   	retq   
  401f93:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  401f98:	48 8d 54 24 1c       	lea    0x1c(%rsp),%rdx
  401f9d:	48 83 ec 08          	sub    $0x8,%rsp
  401fa1:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
  401fa6:	50                   	push   %rax
  401fa7:	48 8d 44 24 18       	lea    0x18(%rsp),%rax
  401fac:	50                   	push   %rax
  401fad:	48 8d 44 24 24       	lea    0x24(%rsp),%rax
  401fb2:	50                   	push   %rax
  401fb3:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
  401fb8:	4c 8d 44 24 34       	lea    0x34(%rsp),%r8
  401fbd:	48 8d 35 65 15 00 00 	lea    0x1565(%rip),%rsi        # 403529 <array.3176+0x3a9>
  401fc4:	48 8d 3d 25 36 00 00 	lea    0x3625(%rip),%rdi        # 4055f0 <input_strings+0x50>
  401fcb:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd0:	e8 8b f1 ff ff       	callq  401160 <__isoc99_sscanf@plt>
  401fd5:	48 83 c4 20          	add    $0x20,%rsp
  401fd9:	83 f8 07             	cmp    $0x7,%eax
  401fdc:	74 1a                	je     401ff8 <phase_defused+0x81>
  401fde:	48 8d 3d 9b 12 00 00 	lea    0x129b(%rip),%rdi        # 403280 <array.3176+0x100>
  401fe5:	e8 76 f0 ff ff       	callq  401060 <puts@plt>
  401fea:	48 8d 3d bf 12 00 00 	lea    0x12bf(%rip),%rdi        # 4032b0 <array.3176+0x130>
  401ff1:	e8 6a f0 ff ff       	callq  401060 <puts@plt>
  401ff6:	eb 96                	jmp    401f8e <phase_defused+0x17>
  401ff8:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401ffd:	48 8d 35 3a 15 00 00 	lea    0x153a(%rip),%rsi        # 40353e <array.3176+0x3be>
  402004:	e8 e1 f5 ff ff       	callq  4015ea <strings_not_equal>
  402009:	85 c0                	test   %eax,%eax
  40200b:	75 d1                	jne    401fde <phase_defused+0x67>
  40200d:	48 8d 3d 0c 12 00 00 	lea    0x120c(%rip),%rdi        # 403220 <array.3176+0xa0>
  402014:	e8 47 f0 ff ff       	callq  401060 <puts@plt>
  402019:	48 8d 3d 28 12 00 00 	lea    0x1228(%rip),%rdi        # 403248 <array.3176+0xc8>
  402020:	e8 3b f0 ff ff       	callq  401060 <puts@plt>
  402025:	b8 00 00 00 00       	mov    $0x0,%eax
  40202a:	e8 d0 f4 ff ff       	callq  4014ff <secret_phase>
  40202f:	eb ad                	jmp    401fde <phase_defused+0x67>
  402031:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402038:	00 00 00 
  40203b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402040 <__libc_csu_init>:
  402040:	41 57                	push   %r15
  402042:	49 89 d7             	mov    %rdx,%r15
  402045:	41 56                	push   %r14
  402047:	49 89 f6             	mov    %rsi,%r14
  40204a:	41 55                	push   %r13
  40204c:	41 89 fd             	mov    %edi,%r13d
  40204f:	41 54                	push   %r12
  402051:	4c 8d 25 b8 2d 00 00 	lea    0x2db8(%rip),%r12        # 404e10 <__frame_dummy_init_array_entry>
  402058:	55                   	push   %rbp
  402059:	48 8d 2d b8 2d 00 00 	lea    0x2db8(%rip),%rbp        # 404e18 <__do_global_dtors_aux_fini_array_entry>
  402060:	53                   	push   %rbx
  402061:	4c 29 e5             	sub    %r12,%rbp
  402064:	48 83 ec 08          	sub    $0x8,%rsp
  402068:	e8 93 ef ff ff       	callq  401000 <_init>
  40206d:	48 c1 fd 03          	sar    $0x3,%rbp
  402071:	74 1b                	je     40208e <__libc_csu_init+0x4e>
  402073:	31 db                	xor    %ebx,%ebx
  402075:	0f 1f 00             	nopl   (%rax)
  402078:	4c 89 fa             	mov    %r15,%rdx
  40207b:	4c 89 f6             	mov    %r14,%rsi
  40207e:	44 89 ef             	mov    %r13d,%edi
  402081:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402085:	48 83 c3 01          	add    $0x1,%rbx
  402089:	48 39 dd             	cmp    %rbx,%rbp
  40208c:	75 ea                	jne    402078 <__libc_csu_init+0x38>
  40208e:	48 83 c4 08          	add    $0x8,%rsp
  402092:	5b                   	pop    %rbx
  402093:	5d                   	pop    %rbp
  402094:	41 5c                	pop    %r12
  402096:	41 5d                	pop    %r13
  402098:	41 5e                	pop    %r14
  40209a:	41 5f                	pop    %r15
  40209c:	c3                   	retq   
  40209d:	0f 1f 00             	nopl   (%rax)

00000000004020a0 <__libc_csu_fini>:
  4020a0:	c3                   	retq   

Disassembly of section .fini:

00000000004020a4 <_fini>:
  4020a4:	48 83 ec 08          	sub    $0x8,%rsp
  4020a8:	48 83 c4 08          	add    $0x8,%rsp
  4020ac:	c3                   	retq   
