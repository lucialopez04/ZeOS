
system:     file format elf32-i386


Disassembly of section .text.main:

00010000 <main-0x10>:
   10000:	66 90                	xchg   %ax,%ax
   10002:	66 90                	xchg   %ax,%ax
   10004:	66 90                	xchg   %ax,%ax
   10006:	66 90                	xchg   %ax,%ax
   10008:	66 90                	xchg   %ax,%ax
   1000a:	66 90                	xchg   %ax,%ax
   1000c:	66 90                	xchg   %ax,%ax
   1000e:	66 90                	xchg   %ax,%ax

00010010 <main>:
   10010:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   10014:	83 e4 f0             	and    $0xfffffff0,%esp
   10017:	ff 71 fc             	push   -0x4(%ecx)
   1001a:	55                   	push   %ebp
   1001b:	89 e5                	mov    %esp,%ebp
   1001d:	51                   	push   %ecx
   1001e:	83 ec 04             	sub    $0x4,%esp
   10021:	e8 fd 1e 00 00       	call   11f23 <set_eflags>
   10026:	b8 80 4a 01 00       	mov    $0x14a80,%eax
   1002b:	83 ec 04             	sub    $0x4,%esp
   1002e:	50                   	push   %eax
   1002f:	6a 18                	push   $0x18
   10031:	6a 18                	push   $0x18
   10033:	e8 8a 1f 00 00       	call   11fc2 <set_seg_regs>
   10038:	83 c4 10             	add    $0x10,%esp
   1003b:	83 ec 0c             	sub    $0xc,%esp
   1003e:	68 a4 2b 01 00       	push   $0x12ba4
   10043:	e8 6e 07 00 00       	call   107b6 <printk>
   10048:	83 c4 10             	add    $0x10,%esp
   1004b:	e8 a0 16 00 00       	call   116f0 <setGdt>
   10050:	e8 e2 03 00 00       	call   10437 <setIdt>
   10055:	e8 fd 16 00 00       	call   11757 <setTSS>
   1005a:	e8 59 16 00 00       	call   116b8 <init_mm>
   1005f:	e8 6c 0a 00 00       	call   10ad0 <init_sched>
   10064:	e8 ba 08 00 00       	call   10923 <init_task1>
   10069:	e8 a0 07 00 00       	call   1080e <init_idle>
   1006e:	a1 a8 3d 01 00       	mov    0x13da8,%eax
   10073:	8b 00                	mov    (%eax),%eax
   10075:	89 c2                	mov    %eax,%edx
   10077:	a1 a4 3d 01 00       	mov    0x13da4,%eax
   1007c:	8b 00                	mov    (%eax),%eax
   1007e:	05 00 00 01 00       	add    $0x10000,%eax
   10083:	83 ec 04             	sub    $0x4,%esp
   10086:	52                   	push   %edx
   10087:	68 00 00 40 00       	push   $0x400000
   1008c:	50                   	push   %eax
   1008d:	e8 17 1a 00 00       	call   11aa9 <copy_data>
   10092:	83 c4 10             	add    $0x10,%esp
   10095:	83 ec 0c             	sub    $0xc,%esp
   10098:	68 b7 2b 01 00       	push   $0x12bb7
   1009d:	e8 14 07 00 00       	call   107b6 <printk>
   100a2:	83 c4 10             	add    $0x10,%esp
   100a5:	e8 d5 00 00 00       	call   1017f <init_teclado>
   100aa:	e8 74 1e 00 00       	call   11f23 <set_eflags>
   100af:	e8 c5 1e 00 00       	call   11f79 <enable_int>
   100b4:	a1 a0 3d 01 00       	mov    0x13da0,%eax
   100b9:	83 ec 0c             	sub    $0xc,%esp
   100bc:	50                   	push   %eax
   100bd:	6a 23                	push   $0x23
   100bf:	68 00 40 41 00       	push   $0x414000
   100c4:	6a 2b                	push   $0x2b
   100c6:	6a 2b                	push   $0x2b
   100c8:	e8 86 1e 00 00       	call   11f53 <return_gate>
   100cd:	83 c4 20             	add    $0x20,%esp
   100d0:	b8 00 00 00 00       	mov    $0x0,%eax
   100d5:	8b 4d fc             	mov    -0x4(%ebp),%ecx
   100d8:	c9                   	leave  
   100d9:	8d 61 fc             	lea    -0x4(%ecx),%esp
   100dc:	c3                   	ret    

Disassembly of section .text:

000100dd <keyboard_routine>:
   100dd:	55                   	push   %ebp
   100de:	89 e5                	mov    %esp,%ebp
   100e0:	83 ec 18             	sub    $0x18,%esp
   100e3:	83 ec 0c             	sub    $0xc,%esp
   100e6:	6a 60                	push   $0x60
   100e8:	e8 9e 1e 00 00       	call   11f8b <inb>
   100ed:	83 c4 10             	add    $0x10,%esp
   100f0:	88 45 f7             	mov    %al,-0x9(%ebp)
   100f3:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   100f7:	83 e0 80             	and    $0xffffff80,%eax
   100fa:	88 45 f6             	mov    %al,-0xa(%ebp)
   100fd:	80 7d f6 00          	cmpb   $0x0,-0xa(%ebp)
   10101:	75 59                	jne    1015c <keyboard_routine+0x7f>
   10103:	83 ec 0c             	sub    $0xc,%esp
   10106:	68 48 46 01 00       	push   $0x14648
   1010b:	e8 42 1f 00 00       	call   12052 <sem_post>
   10110:	83 c4 10             	add    $0x10,%esp
   10113:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   10117:	83 e0 7f             	and    $0x7f,%eax
   1011a:	88 45 f5             	mov    %al,-0xb(%ebp)
   1011d:	80 7d f5 61          	cmpb   $0x61,-0xb(%ebp)
   10121:	77 26                	ja     10149 <keyboard_routine+0x6c>
   10123:	0f b6 45 f5          	movzbl -0xb(%ebp),%eax
   10127:	0f b6 80 c0 3d 01 00 	movzbl 0x13dc0(%eax),%eax
   1012e:	88 45 f4             	mov    %al,-0xc(%ebp)
   10131:	0f be 55 f4          	movsbl -0xc(%ebp),%edx
   10135:	a1 88 4a 01 00       	mov    0x14a88,%eax
   1013a:	83 ec 08             	sub    $0x8,%esp
   1013d:	52                   	push   %edx
   1013e:	50                   	push   %eax
   1013f:	e8 16 1c 00 00       	call   11d5a <CIRCULAR_BUFFER_ADD>
   10144:	83 c4 10             	add    $0x10,%esp
   10147:	eb 13                	jmp    1015c <keyboard_routine+0x7f>
   10149:	a1 88 4a 01 00       	mov    0x14a88,%eax
   1014e:	83 ec 08             	sub    $0x8,%esp
   10151:	6a 43                	push   $0x43
   10153:	50                   	push   %eax
   10154:	e8 01 1c 00 00       	call   11d5a <CIRCULAR_BUFFER_ADD>
   10159:	83 c4 10             	add    $0x10,%esp
   1015c:	90                   	nop
   1015d:	c9                   	leave  
   1015e:	c3                   	ret    

0001015f <clock_routine>:
   1015f:	55                   	push   %ebp
   10160:	89 e5                	mov    %esp,%ebp
   10162:	83 ec 08             	sub    $0x8,%esp
   10165:	a1 4c 46 01 00       	mov    0x1464c,%eax
   1016a:	83 c0 01             	add    $0x1,%eax
   1016d:	a3 4c 46 01 00       	mov    %eax,0x1464c
   10172:	e8 da 28 00 00       	call   12a51 <zeos_show_clock>
   10177:	e8 dd 09 00 00       	call   10b59 <schedule>
   1017c:	90                   	nop
   1017d:	c9                   	leave  
   1017e:	c3                   	ret    

0001017f <init_teclado>:
   1017f:	55                   	push   %ebp
   10180:	89 e5                	mov    %esp,%ebp
   10182:	83 ec 08             	sub    $0x8,%esp
   10185:	83 ec 08             	sub    $0x8,%esp
   10188:	6a 00                	push   $0x0
   1018a:	68 48 46 01 00       	push   $0x14648
   1018f:	e8 4f 1e 00 00       	call   11fe3 <sem_init>
   10194:	83 c4 10             	add    $0x10,%esp
   10197:	90                   	nop
   10198:	c9                   	leave  
   10199:	c3                   	ret    

0001019a <setInterruptHandler>:
   1019a:	55                   	push   %ebp
   1019b:	89 e5                	mov    %esp,%ebp
   1019d:	83 ec 10             	sub    $0x10,%esp
   101a0:	8b 45 10             	mov    0x10(%ebp),%eax
   101a3:	c1 e0 0d             	shl    $0xd,%eax
   101a6:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
   101aa:	66 81 4d fe 00 8e    	orw    $0x8e00,-0x2(%ebp)
   101b0:	8b 45 0c             	mov    0xc(%ebp),%eax
   101b3:	89 c2                	mov    %eax,%edx
   101b5:	8b 45 08             	mov    0x8(%ebp),%eax
   101b8:	66 89 14 c5 40 3e 01 	mov    %dx,0x13e40(,%eax,8)
   101bf:	00 
   101c0:	8b 45 08             	mov    0x8(%ebp),%eax
   101c3:	66 c7 04 c5 42 3e 01 	movw   $0x10,0x13e42(,%eax,8)
   101ca:	00 10 00 
   101cd:	8b 45 08             	mov    0x8(%ebp),%eax
   101d0:	0f b7 55 fe          	movzwl -0x2(%ebp),%edx
   101d4:	66 89 14 c5 44 3e 01 	mov    %dx,0x13e44(,%eax,8)
   101db:	00 
   101dc:	8b 45 0c             	mov    0xc(%ebp),%eax
   101df:	c1 e8 10             	shr    $0x10,%eax
   101e2:	89 c2                	mov    %eax,%edx
   101e4:	8b 45 08             	mov    0x8(%ebp),%eax
   101e7:	66 89 14 c5 46 3e 01 	mov    %dx,0x13e46(,%eax,8)
   101ee:	00 
   101ef:	90                   	nop
   101f0:	c9                   	leave  
   101f1:	c3                   	ret    

000101f2 <setTrapHandler>:
   101f2:	55                   	push   %ebp
   101f3:	89 e5                	mov    %esp,%ebp
   101f5:	83 ec 10             	sub    $0x10,%esp
   101f8:	8b 45 10             	mov    0x10(%ebp),%eax
   101fb:	c1 e0 0d             	shl    $0xd,%eax
   101fe:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
   10202:	66 81 4d fe 00 8e    	orw    $0x8e00,-0x2(%ebp)
   10208:	8b 45 0c             	mov    0xc(%ebp),%eax
   1020b:	89 c2                	mov    %eax,%edx
   1020d:	8b 45 08             	mov    0x8(%ebp),%eax
   10210:	66 89 14 c5 40 3e 01 	mov    %dx,0x13e40(,%eax,8)
   10217:	00 
   10218:	8b 45 08             	mov    0x8(%ebp),%eax
   1021b:	66 c7 04 c5 42 3e 01 	movw   $0x10,0x13e42(,%eax,8)
   10222:	00 10 00 
   10225:	8b 45 08             	mov    0x8(%ebp),%eax
   10228:	0f b7 55 fe          	movzwl -0x2(%ebp),%edx
   1022c:	66 89 14 c5 44 3e 01 	mov    %dx,0x13e44(,%eax,8)
   10233:	00 
   10234:	8b 45 0c             	mov    0xc(%ebp),%eax
   10237:	c1 e8 10             	shr    $0x10,%eax
   1023a:	89 c2                	mov    %eax,%edx
   1023c:	8b 45 08             	mov    0x8(%ebp),%eax
   1023f:	66 89 14 c5 46 3e 01 	mov    %dx,0x13e46(,%eax,8)
   10246:	00 
   10247:	90                   	nop
   10248:	c9                   	leave  
   10249:	c3                   	ret    

0001024a <itoh>:
   1024a:	55                   	push   %ebp
   1024b:	89 e5                	mov    %esp,%ebp
   1024d:	83 ec 10             	sub    $0x10,%esp
   10250:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   10254:	75 14                	jne    1026a <itoh+0x20>
   10256:	8b 45 0c             	mov    0xc(%ebp),%eax
   10259:	c6 00 30             	movb   $0x30,(%eax)
   1025c:	8b 45 0c             	mov    0xc(%ebp),%eax
   1025f:	83 c0 01             	add    $0x1,%eax
   10262:	c6 00 00             	movb   $0x0,(%eax)
   10265:	e9 2c 01 00 00       	jmp    10396 <itoh+0x14c>
   1026a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   10271:	e9 b0 00 00 00       	jmp    10326 <itoh+0xdc>
   10276:	8b 45 08             	mov    0x8(%ebp),%eax
   10279:	99                   	cltd   
   1027a:	c1 ea 1c             	shr    $0x1c,%edx
   1027d:	01 d0                	add    %edx,%eax
   1027f:	83 e0 0f             	and    $0xf,%eax
   10282:	29 d0                	sub    %edx,%eax
   10284:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10287:	83 7d f0 09          	cmpl   $0x9,-0x10(%ebp)
   1028b:	7f 14                	jg     102a1 <itoh+0x57>
   1028d:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10290:	8d 48 30             	lea    0x30(%eax),%ecx
   10293:	8b 55 fc             	mov    -0x4(%ebp),%edx
   10296:	8b 45 0c             	mov    0xc(%ebp),%eax
   10299:	01 d0                	add    %edx,%eax
   1029b:	89 ca                	mov    %ecx,%edx
   1029d:	88 10                	mov    %dl,(%eax)
   1029f:	eb 70                	jmp    10311 <itoh+0xc7>
   102a1:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
   102a5:	75 0d                	jne    102b4 <itoh+0x6a>
   102a7:	8b 55 fc             	mov    -0x4(%ebp),%edx
   102aa:	8b 45 0c             	mov    0xc(%ebp),%eax
   102ad:	01 d0                	add    %edx,%eax
   102af:	c6 00 61             	movb   $0x61,(%eax)
   102b2:	eb 5d                	jmp    10311 <itoh+0xc7>
   102b4:	83 7d f0 0b          	cmpl   $0xb,-0x10(%ebp)
   102b8:	75 0d                	jne    102c7 <itoh+0x7d>
   102ba:	8b 55 fc             	mov    -0x4(%ebp),%edx
   102bd:	8b 45 0c             	mov    0xc(%ebp),%eax
   102c0:	01 d0                	add    %edx,%eax
   102c2:	c6 00 62             	movb   $0x62,(%eax)
   102c5:	eb 4a                	jmp    10311 <itoh+0xc7>
   102c7:	83 7d f0 0c          	cmpl   $0xc,-0x10(%ebp)
   102cb:	75 0d                	jne    102da <itoh+0x90>
   102cd:	8b 55 fc             	mov    -0x4(%ebp),%edx
   102d0:	8b 45 0c             	mov    0xc(%ebp),%eax
   102d3:	01 d0                	add    %edx,%eax
   102d5:	c6 00 63             	movb   $0x63,(%eax)
   102d8:	eb 37                	jmp    10311 <itoh+0xc7>
   102da:	83 7d f0 0d          	cmpl   $0xd,-0x10(%ebp)
   102de:	75 0d                	jne    102ed <itoh+0xa3>
   102e0:	8b 55 fc             	mov    -0x4(%ebp),%edx
   102e3:	8b 45 0c             	mov    0xc(%ebp),%eax
   102e6:	01 d0                	add    %edx,%eax
   102e8:	c6 00 64             	movb   $0x64,(%eax)
   102eb:	eb 24                	jmp    10311 <itoh+0xc7>
   102ed:	83 7d f0 0e          	cmpl   $0xe,-0x10(%ebp)
   102f1:	75 0d                	jne    10300 <itoh+0xb6>
   102f3:	8b 55 fc             	mov    -0x4(%ebp),%edx
   102f6:	8b 45 0c             	mov    0xc(%ebp),%eax
   102f9:	01 d0                	add    %edx,%eax
   102fb:	c6 00 65             	movb   $0x65,(%eax)
   102fe:	eb 11                	jmp    10311 <itoh+0xc7>
   10300:	83 7d f0 0f          	cmpl   $0xf,-0x10(%ebp)
   10304:	75 0b                	jne    10311 <itoh+0xc7>
   10306:	8b 55 fc             	mov    -0x4(%ebp),%edx
   10309:	8b 45 0c             	mov    0xc(%ebp),%eax
   1030c:	01 d0                	add    %edx,%eax
   1030e:	c6 00 66             	movb   $0x66,(%eax)
   10311:	8b 45 08             	mov    0x8(%ebp),%eax
   10314:	8d 50 0f             	lea    0xf(%eax),%edx
   10317:	85 c0                	test   %eax,%eax
   10319:	0f 48 c2             	cmovs  %edx,%eax
   1031c:	c1 f8 04             	sar    $0x4,%eax
   1031f:	89 45 08             	mov    %eax,0x8(%ebp)
   10322:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   10326:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   1032a:	0f 8f 46 ff ff ff    	jg     10276 <itoh+0x2c>
   10330:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   10337:	eb 41                	jmp    1037a <itoh+0x130>
   10339:	8b 55 f8             	mov    -0x8(%ebp),%edx
   1033c:	8b 45 0c             	mov    0xc(%ebp),%eax
   1033f:	01 d0                	add    %edx,%eax
   10341:	0f b6 00             	movzbl (%eax),%eax
   10344:	88 45 f7             	mov    %al,-0x9(%ebp)
   10347:	8b 45 fc             	mov    -0x4(%ebp),%eax
   1034a:	2b 45 f8             	sub    -0x8(%ebp),%eax
   1034d:	8d 50 ff             	lea    -0x1(%eax),%edx
   10350:	8b 45 0c             	mov    0xc(%ebp),%eax
   10353:	01 d0                	add    %edx,%eax
   10355:	8b 4d f8             	mov    -0x8(%ebp),%ecx
   10358:	8b 55 0c             	mov    0xc(%ebp),%edx
   1035b:	01 ca                	add    %ecx,%edx
   1035d:	0f b6 00             	movzbl (%eax),%eax
   10360:	88 02                	mov    %al,(%edx)
   10362:	8b 45 fc             	mov    -0x4(%ebp),%eax
   10365:	2b 45 f8             	sub    -0x8(%ebp),%eax
   10368:	8d 50 ff             	lea    -0x1(%eax),%edx
   1036b:	8b 45 0c             	mov    0xc(%ebp),%eax
   1036e:	01 c2                	add    %eax,%edx
   10370:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   10374:	88 02                	mov    %al,(%edx)
   10376:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
   1037a:	8b 45 fc             	mov    -0x4(%ebp),%eax
   1037d:	89 c2                	mov    %eax,%edx
   1037f:	c1 ea 1f             	shr    $0x1f,%edx
   10382:	01 d0                	add    %edx,%eax
   10384:	d1 f8                	sar    %eax
   10386:	39 45 f8             	cmp    %eax,-0x8(%ebp)
   10389:	7c ae                	jl     10339 <itoh+0xef>
   1038b:	8b 55 fc             	mov    -0x4(%ebp),%edx
   1038e:	8b 45 0c             	mov    0xc(%ebp),%eax
   10391:	01 d0                	add    %edx,%eax
   10393:	c6 00 00             	movb   $0x0,(%eax)
   10396:	c9                   	leave  
   10397:	c3                   	ret    

00010398 <hexa_to_int>:
   10398:	55                   	push   %ebp
   10399:	89 e5                	mov    %esp,%ebp
   1039b:	83 ec 10             	sub    $0x10,%esp
   1039e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   103a5:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%ebp)
   103ac:	eb 27                	jmp    103d5 <hexa_to_int+0x3d>
   103ae:	8b 45 08             	mov    0x8(%ebp),%eax
   103b1:	83 e0 0f             	and    $0xf,%eax
   103b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
   103b7:	8b 45 f8             	mov    -0x8(%ebp),%eax
   103ba:	0f af 45 f4          	imul   -0xc(%ebp),%eax
   103be:	89 c2                	mov    %eax,%edx
   103c0:	8b 45 fc             	mov    -0x4(%ebp),%eax
   103c3:	01 d0                	add    %edx,%eax
   103c5:	89 45 fc             	mov    %eax,-0x4(%ebp)
   103c8:	8b 45 08             	mov    0x8(%ebp),%eax
   103cb:	c1 e8 04             	shr    $0x4,%eax
   103ce:	89 45 08             	mov    %eax,0x8(%ebp)
   103d1:	c1 65 f8 04          	shll   $0x4,-0x8(%ebp)
   103d5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   103d9:	75 d3                	jne    103ae <hexa_to_int+0x16>
   103db:	8b 45 fc             	mov    -0x4(%ebp),%eax
   103de:	c9                   	leave  
   103df:	c3                   	ret    

000103e0 <pagefault_routine>:
   103e0:	55                   	push   %ebp
   103e1:	89 e5                	mov    %esp,%ebp
   103e3:	83 ec 28             	sub    $0x28,%esp
   103e6:	ff 75 08             	push   0x8(%ebp)
   103e9:	e8 aa ff ff ff       	call   10398 <hexa_to_int>
   103ee:	83 c4 04             	add    $0x4,%esp
   103f1:	89 45 f4             	mov    %eax,-0xc(%ebp)
   103f4:	83 ec 0c             	sub    $0xc,%esp
   103f7:	68 d0 2b 01 00       	push   $0x12bd0
   103fc:	e8 b5 03 00 00       	call   107b6 <printk>
   10401:	83 c4 10             	add    $0x10,%esp
   10404:	83 ec 08             	sub    $0x8,%esp
   10407:	8d 45 dc             	lea    -0x24(%ebp),%eax
   1040a:	50                   	push   %eax
   1040b:	ff 75 f4             	push   -0xc(%ebp)
   1040e:	e8 37 fe ff ff       	call   1024a <itoh>
   10413:	83 c4 10             	add    $0x10,%esp
   10416:	83 ec 0c             	sub    $0xc,%esp
   10419:	8d 45 dc             	lea    -0x24(%ebp),%eax
   1041c:	50                   	push   %eax
   1041d:	e8 94 03 00 00       	call   107b6 <printk>
   10422:	83 c4 10             	add    $0x10,%esp
   10425:	83 ec 0c             	sub    $0xc,%esp
   10428:	68 05 2c 01 00       	push   $0x12c05
   1042d:	e8 84 03 00 00       	call   107b6 <printk>
   10432:	83 c4 10             	add    $0x10,%esp
   10435:	eb fe                	jmp    10435 <pagefault_routine+0x55>

00010437 <setIdt>:
   10437:	55                   	push   %ebp
   10438:	89 e5                	mov    %esp,%ebp
   1043a:	83 ec 08             	sub    $0x8,%esp
   1043d:	b8 40 3e 01 00       	mov    $0x13e40,%eax
   10442:	a3 42 46 01 00       	mov    %eax,0x14642
   10447:	66 c7 05 40 46 01 00 	movw   $0x7ff,0x14640
   1044e:	ff 07 
   10450:	e8 32 1e 00 00       	call   12287 <set_handlers>
   10455:	83 ec 04             	sub    $0x4,%esp
   10458:	6a 00                	push   $0x0
   1045a:	68 e1 04 01 00       	push   $0x104e1
   1045f:	6a 21                	push   $0x21
   10461:	e8 34 fd ff ff       	call   1019a <setInterruptHandler>
   10466:	83 c4 10             	add    $0x10,%esp
   10469:	83 ec 04             	sub    $0x4,%esp
   1046c:	6a 00                	push   $0x0
   1046e:	68 0e 05 01 00       	push   $0x1050e
   10473:	6a 20                	push   $0x20
   10475:	e8 20 fd ff ff       	call   1019a <setInterruptHandler>
   1047a:	83 c4 10             	add    $0x10,%esp
   1047d:	83 ec 04             	sub    $0x4,%esp
   10480:	6a 00                	push   $0x0
   10482:	68 8f 05 01 00       	push   $0x1058f
   10487:	6a 0e                	push   $0xe
   10489:	e8 0c fd ff ff       	call   1019a <setInterruptHandler>
   1048e:	83 c4 10             	add    $0x10,%esp
   10491:	83 ec 08             	sub    $0x8,%esp
   10494:	6a 10                	push   $0x10
   10496:	68 74 01 00 00       	push   $0x174
   1049b:	e8 70 1a 00 00       	call   11f10 <writeMSR>
   104a0:	83 c4 10             	add    $0x10,%esp
   104a3:	b8 80 4a 01 00       	mov    $0x14a80,%eax
   104a8:	83 ec 08             	sub    $0x8,%esp
   104ab:	50                   	push   %eax
   104ac:	68 75 01 00 00       	push   $0x175
   104b1:	e8 5a 1a 00 00       	call   11f10 <writeMSR>
   104b6:	83 c4 10             	add    $0x10,%esp
   104b9:	83 ec 08             	sub    $0x8,%esp
   104bc:	68 3b 05 01 00       	push   $0x1053b
   104c1:	68 76 01 00 00       	push   $0x176
   104c6:	e8 45 1a 00 00       	call   11f10 <writeMSR>
   104cb:	83 c4 10             	add    $0x10,%esp
   104ce:	83 ec 0c             	sub    $0xc,%esp
   104d1:	68 40 46 01 00       	push   $0x14640
   104d6:	e8 4c 1a 00 00       	call   11f27 <set_idt_reg>
   104db:	83 c4 10             	add    $0x10,%esp
   104de:	90                   	nop
   104df:	c9                   	leave  
   104e0:	c3                   	ret    

000104e1 <keyboard_handler>:
   104e1:	0f a8                	push   %gs
   104e3:	0f a0                	push   %fs
   104e5:	06                   	push   %es
   104e6:	1e                   	push   %ds
   104e7:	50                   	push   %eax
   104e8:	55                   	push   %ebp
   104e9:	57                   	push   %edi
   104ea:	56                   	push   %esi
   104eb:	53                   	push   %ebx
   104ec:	51                   	push   %ecx
   104ed:	52                   	push   %edx
   104ee:	ba 18 00 00 00       	mov    $0x18,%edx
   104f3:	8e da                	mov    %edx,%ds
   104f5:	8e c2                	mov    %edx,%es
   104f7:	b0 20                	mov    $0x20,%al
   104f9:	e6 20                	out    %al,$0x20
   104fb:	e8 dd fb ff ff       	call   100dd <keyboard_routine>
   10500:	5a                   	pop    %edx
   10501:	59                   	pop    %ecx
   10502:	5b                   	pop    %ebx
   10503:	5e                   	pop    %esi
   10504:	5f                   	pop    %edi
   10505:	5d                   	pop    %ebp
   10506:	58                   	pop    %eax
   10507:	1f                   	pop    %ds
   10508:	07                   	pop    %es
   10509:	0f a1                	pop    %fs
   1050b:	0f a9                	pop    %gs
   1050d:	cf                   	iret   

0001050e <clock_handler>:
   1050e:	0f a8                	push   %gs
   10510:	0f a0                	push   %fs
   10512:	06                   	push   %es
   10513:	1e                   	push   %ds
   10514:	50                   	push   %eax
   10515:	55                   	push   %ebp
   10516:	57                   	push   %edi
   10517:	56                   	push   %esi
   10518:	53                   	push   %ebx
   10519:	51                   	push   %ecx
   1051a:	52                   	push   %edx
   1051b:	ba 18 00 00 00       	mov    $0x18,%edx
   10520:	8e da                	mov    %edx,%ds
   10522:	8e c2                	mov    %edx,%es
   10524:	b0 20                	mov    $0x20,%al
   10526:	e6 20                	out    %al,$0x20
   10528:	e8 32 fc ff ff       	call   1015f <clock_routine>
   1052d:	5a                   	pop    %edx
   1052e:	59                   	pop    %ecx
   1052f:	5b                   	pop    %ebx
   10530:	5e                   	pop    %esi
   10531:	5f                   	pop    %edi
   10532:	5d                   	pop    %ebp
   10533:	58                   	pop    %eax
   10534:	1f                   	pop    %ds
   10535:	07                   	pop    %es
   10536:	0f a1                	pop    %fs
   10538:	0f a9                	pop    %gs
   1053a:	cf                   	iret   

0001053b <syscall_handler_sysenter>:
   1053b:	6a 2b                	push   $0x2b
   1053d:	55                   	push   %ebp
   1053e:	9c                   	pushf  
   1053f:	6a 23                	push   $0x23
   10541:	ff 75 04             	push   0x4(%ebp)
   10544:	0f a8                	push   %gs
   10546:	0f a0                	push   %fs
   10548:	06                   	push   %es
   10549:	1e                   	push   %ds
   1054a:	50                   	push   %eax
   1054b:	55                   	push   %ebp
   1054c:	57                   	push   %edi
   1054d:	56                   	push   %esi
   1054e:	53                   	push   %ebx
   1054f:	51                   	push   %ecx
   10550:	52                   	push   %edx
   10551:	ba 18 00 00 00       	mov    $0x18,%edx
   10556:	8e da                	mov    %edx,%ds
   10558:	8e c2                	mov    %edx,%es
   1055a:	83 f8 00             	cmp    $0x0,%eax
   1055d:	7c 10                	jl     1056f <sysenter_err>
   1055f:	3d 15 00 00 00       	cmp    $0x15,%eax
   10564:	7f 09                	jg     1056f <sysenter_err>
   10566:	ff 14 85 e4 05 01 00 	call   *0x105e4(,%eax,4)
   1056d:	eb 05                	jmp    10574 <sysenter_fin>

0001056f <sysenter_err>:
   1056f:	b8 d8 ff ff ff       	mov    $0xffffffd8,%eax

00010574 <sysenter_fin>:
   10574:	89 44 24 18          	mov    %eax,0x18(%esp)
   10578:	5a                   	pop    %edx
   10579:	59                   	pop    %ecx
   1057a:	5b                   	pop    %ebx
   1057b:	5e                   	pop    %esi
   1057c:	5f                   	pop    %edi
   1057d:	5d                   	pop    %ebp
   1057e:	58                   	pop    %eax
   1057f:	1f                   	pop    %ds
   10580:	07                   	pop    %es
   10581:	0f a1                	pop    %fs
   10583:	0f a9                	pop    %gs
   10585:	8b 14 24             	mov    (%esp),%edx
   10588:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
   1058c:	fb                   	sti    
   1058d:	0f 35                	sysexit 

0001058f <pagefault_handler>:
   1058f:	0f a8                	push   %gs
   10591:	0f a0                	push   %fs
   10593:	06                   	push   %es
   10594:	1e                   	push   %ds
   10595:	50                   	push   %eax
   10596:	55                   	push   %ebp
   10597:	57                   	push   %edi
   10598:	56                   	push   %esi
   10599:	53                   	push   %ebx
   1059a:	51                   	push   %ecx
   1059b:	52                   	push   %edx
   1059c:	ba 18 00 00 00       	mov    $0x18,%edx
   105a1:	8e da                	mov    %edx,%ds
   105a3:	8e c2                	mov    %edx,%es
   105a5:	ff 74 24 30          	push   0x30(%esp)
   105a9:	e8 32 fe ff ff       	call   103e0 <pagefault_routine>
   105ae:	5a                   	pop    %edx
   105af:	59                   	pop    %ecx
   105b0:	5b                   	pop    %ebx
   105b1:	5e                   	pop    %esi
   105b2:	5f                   	pop    %edi
   105b3:	5d                   	pop    %ebp
   105b4:	58                   	pop    %eax
   105b5:	1f                   	pop    %ds
   105b6:	07                   	pop    %es
   105b7:	0f a1                	pop    %fs
   105b9:	0f a9                	pop    %gs
   105bb:	cf                   	iret   

000105bc <task_switch>:
   105bc:	55                   	push   %ebp
   105bd:	89 e5                	mov    %esp,%ebp
   105bf:	56                   	push   %esi
   105c0:	57                   	push   %edi
   105c1:	53                   	push   %ebx
   105c2:	ff 75 08             	push   0x8(%ebp)
   105c5:	e8 de 04 00 00       	call   10aa8 <inner_task_switch>
   105ca:	83 c4 04             	add    $0x4,%esp
   105cd:	89 e0                	mov    %esp,%eax
   105cf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   105d4:	89 60 10             	mov    %esp,0x10(%eax)
   105d7:	8b 55 08             	mov    0x8(%ebp),%edx
   105da:	8b 62 10             	mov    0x10(%edx),%esp
   105dd:	5b                   	pop    %ebx
   105de:	5f                   	pop    %edi
   105df:	5e                   	pop    %esi
   105e0:	5d                   	pop    %ebp
   105e1:	c3                   	ret    

000105e2 <ret_from_fork>:
   105e2:	eb 90                	jmp    10574 <sysenter_fin>

000105e4 <sys_call_table>:
   105e4:	6f                   	outsl  %ds:(%esi),(%dx)
   105e5:	0d 01 00 b2 12       	or     $0x12b20001,%eax
   105ea:	01 00                	add    %eax,(%eax)
   105ec:	79 0e                	jns    105fc <sys_call_table+0x18>
   105ee:	01 00                	add    %eax,(%eax)
   105f0:	6f                   	outsl  %ds:(%esi),(%dx)
   105f1:	0d 01 00 83 0d       	or     $0xd830001,%eax
   105f6:	01 00                	add    %eax,(%eax)
   105f8:	6f                   	outsl  %ds:(%esi),(%dx)
   105f9:	0d 01 00 49 13       	or     $0x13490001,%eax
   105fe:	01 00                	add    %eax,(%eax)
   10600:	8d 13                	lea    (%ebx),%edx
   10602:	01 00                	add    %eax,(%eax)
   10604:	6f                   	outsl  %ds:(%esi),(%dx)
   10605:	0d 01 00 6f 0d       	or     $0xd6f0001,%eax
   1060a:	01 00                	add    %eax,(%eax)
   1060c:	79 0d                	jns    1061b <sys_call_table+0x37>
   1060e:	01 00                	add    %eax,(%eax)
   10610:	02 0e                	add    (%esi),%cl
   10612:	01 00                	add    %eax,(%eax)
   10614:	6f                   	outsl  %ds:(%esi),(%dx)
   10615:	0d 01 00 6f 0d       	or     $0xd6f0001,%eax
   1061a:	01 00                	add    %eax,(%eax)
   1061c:	6f                   	outsl  %ds:(%esi),(%dx)
   1061d:	0d 01 00 6f 0d       	or     $0xd6f0001,%eax
   10622:	01 00                	add    %eax,(%eax)
   10624:	6f                   	outsl  %ds:(%esi),(%dx)
   10625:	0d 01 00 6f 0d       	or     $0xd6f0001,%eax
   1062a:	01 00                	add    %eax,(%eax)
   1062c:	6f                   	outsl  %ds:(%esi),(%dx)
   1062d:	0d 01 00 6f 0d       	or     $0xd6f0001,%eax
   10632:	01 00                	add    %eax,(%eax)
   10634:	64 0e                	fs push %cs
   10636:	01 00                	add    %eax,(%eax)

00010638 <printc>:
   10638:	55                   	push   %ebp
   10639:	89 e5                	mov    %esp,%ebp
   1063b:	53                   	push   %ebx
   1063c:	83 ec 24             	sub    $0x24,%esp
   1063f:	8b 45 08             	mov    0x8(%ebp),%eax
   10642:	88 45 e4             	mov    %al,-0x1c(%ebp)
   10645:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
   10649:	83 ec 0c             	sub    $0xc,%esp
   1064c:	50                   	push   %eax
   1064d:	e8 42 19 00 00       	call   11f94 <bochs_out>
   10652:	83 c4 10             	add    $0x10,%esp
   10655:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
   10659:	75 4b                	jne    106a6 <printc+0x6e>
   1065b:	c6 05 50 46 01 00 00 	movb   $0x0,0x14650
   10662:	0f b6 05 22 3e 01 00 	movzbl 0x13e22,%eax
   10669:	0f b6 c0             	movzbl %al,%eax
   1066c:	8d 48 01             	lea    0x1(%eax),%ecx
   1066f:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
   10674:	89 c8                	mov    %ecx,%eax
   10676:	f7 ea                	imul   %edx
   10678:	89 d0                	mov    %edx,%eax
   1067a:	c1 f8 03             	sar    $0x3,%eax
   1067d:	89 cb                	mov    %ecx,%ebx
   1067f:	c1 fb 1f             	sar    $0x1f,%ebx
   10682:	29 d8                	sub    %ebx,%eax
   10684:	89 c2                	mov    %eax,%edx
   10686:	89 d0                	mov    %edx,%eax
   10688:	c1 e0 02             	shl    $0x2,%eax
   1068b:	01 d0                	add    %edx,%eax
   1068d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   10694:	01 d0                	add    %edx,%eax
   10696:	29 c1                	sub    %eax,%ecx
   10698:	89 ca                	mov    %ecx,%edx
   1069a:	89 d0                	mov    %edx,%eax
   1069c:	a2 22 3e 01 00       	mov    %al,0x13e22
   106a1:	e9 a7 00 00 00       	jmp    1074d <printc+0x115>
   106a6:	66 0f be 45 e4       	movsbw -0x1c(%ebp),%ax
   106ab:	0f b6 c0             	movzbl %al,%eax
   106ae:	80 cc 02             	or     $0x2,%ah
   106b1:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
   106b5:	c7 45 f0 00 80 0b 00 	movl   $0xb8000,-0x10(%ebp)
   106bc:	0f b6 05 22 3e 01 00 	movzbl 0x13e22,%eax
   106c3:	0f b6 d0             	movzbl %al,%edx
   106c6:	89 d0                	mov    %edx,%eax
   106c8:	c1 e0 02             	shl    $0x2,%eax
   106cb:	01 d0                	add    %edx,%eax
   106cd:	c1 e0 04             	shl    $0x4,%eax
   106d0:	89 c2                	mov    %eax,%edx
   106d2:	0f b6 05 50 46 01 00 	movzbl 0x14650,%eax
   106d9:	0f b6 c0             	movzbl %al,%eax
   106dc:	01 d0                	add    %edx,%eax
   106de:	8d 14 00             	lea    (%eax,%eax,1),%edx
   106e1:	8b 45 f0             	mov    -0x10(%ebp),%eax
   106e4:	01 c2                	add    %eax,%edx
   106e6:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
   106ea:	66 89 02             	mov    %ax,(%edx)
   106ed:	0f b6 05 50 46 01 00 	movzbl 0x14650,%eax
   106f4:	83 c0 01             	add    $0x1,%eax
   106f7:	a2 50 46 01 00       	mov    %al,0x14650
   106fc:	0f b6 05 50 46 01 00 	movzbl 0x14650,%eax
   10703:	3c 4f                	cmp    $0x4f,%al
   10705:	76 46                	jbe    1074d <printc+0x115>
   10707:	c6 05 50 46 01 00 00 	movb   $0x0,0x14650
   1070e:	0f b6 05 22 3e 01 00 	movzbl 0x13e22,%eax
   10715:	0f b6 c0             	movzbl %al,%eax
   10718:	8d 48 01             	lea    0x1(%eax),%ecx
   1071b:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
   10720:	89 c8                	mov    %ecx,%eax
   10722:	f7 ea                	imul   %edx
   10724:	89 d0                	mov    %edx,%eax
   10726:	c1 f8 03             	sar    $0x3,%eax
   10729:	89 cb                	mov    %ecx,%ebx
   1072b:	c1 fb 1f             	sar    $0x1f,%ebx
   1072e:	29 d8                	sub    %ebx,%eax
   10730:	89 c2                	mov    %eax,%edx
   10732:	89 d0                	mov    %edx,%eax
   10734:	c1 e0 02             	shl    $0x2,%eax
   10737:	01 d0                	add    %edx,%eax
   10739:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   10740:	01 d0                	add    %edx,%eax
   10742:	29 c1                	sub    %eax,%ecx
   10744:	89 ca                	mov    %ecx,%edx
   10746:	89 d0                	mov    %edx,%eax
   10748:	a2 22 3e 01 00       	mov    %al,0x13e22
   1074d:	90                   	nop
   1074e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   10751:	c9                   	leave  
   10752:	c3                   	ret    

00010753 <printc_xy>:
   10753:	55                   	push   %ebp
   10754:	89 e5                	mov    %esp,%ebp
   10756:	83 ec 28             	sub    $0x28,%esp
   10759:	8b 4d 08             	mov    0x8(%ebp),%ecx
   1075c:	8b 55 0c             	mov    0xc(%ebp),%edx
   1075f:	8b 45 10             	mov    0x10(%ebp),%eax
   10762:	88 4d e4             	mov    %cl,-0x1c(%ebp)
   10765:	88 55 e0             	mov    %dl,-0x20(%ebp)
   10768:	88 45 dc             	mov    %al,-0x24(%ebp)
   1076b:	0f b6 05 50 46 01 00 	movzbl 0x14650,%eax
   10772:	88 45 f7             	mov    %al,-0x9(%ebp)
   10775:	0f b6 05 22 3e 01 00 	movzbl 0x13e22,%eax
   1077c:	88 45 f6             	mov    %al,-0xa(%ebp)
   1077f:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
   10783:	a2 50 46 01 00       	mov    %al,0x14650
   10788:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
   1078c:	a2 22 3e 01 00       	mov    %al,0x13e22
   10791:	0f be 45 dc          	movsbl -0x24(%ebp),%eax
   10795:	83 ec 0c             	sub    $0xc,%esp
   10798:	50                   	push   %eax
   10799:	e8 9a fe ff ff       	call   10638 <printc>
   1079e:	83 c4 10             	add    $0x10,%esp
   107a1:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   107a5:	a2 50 46 01 00       	mov    %al,0x14650
   107aa:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
   107ae:	a2 22 3e 01 00       	mov    %al,0x13e22
   107b3:	90                   	nop
   107b4:	c9                   	leave  
   107b5:	c3                   	ret    

000107b6 <printk>:
   107b6:	55                   	push   %ebp
   107b7:	89 e5                	mov    %esp,%ebp
   107b9:	83 ec 18             	sub    $0x18,%esp
   107bc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   107c3:	eb 1e                	jmp    107e3 <printk+0x2d>
   107c5:	8b 55 f4             	mov    -0xc(%ebp),%edx
   107c8:	8b 45 08             	mov    0x8(%ebp),%eax
   107cb:	01 d0                	add    %edx,%eax
   107cd:	0f b6 00             	movzbl (%eax),%eax
   107d0:	0f be c0             	movsbl %al,%eax
   107d3:	83 ec 0c             	sub    $0xc,%esp
   107d6:	50                   	push   %eax
   107d7:	e8 5c fe ff ff       	call   10638 <printc>
   107dc:	83 c4 10             	add    $0x10,%esp
   107df:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   107e3:	8b 55 f4             	mov    -0xc(%ebp),%edx
   107e6:	8b 45 08             	mov    0x8(%ebp),%eax
   107e9:	01 d0                	add    %edx,%eax
   107eb:	0f b6 00             	movzbl (%eax),%eax
   107ee:	84 c0                	test   %al,%al
   107f0:	75 d3                	jne    107c5 <printk+0xf>
   107f2:	90                   	nop
   107f3:	90                   	nop
   107f4:	c9                   	leave  
   107f5:	c3                   	ret    

000107f6 <list_head_to_task_struct>:
   107f6:	55                   	push   %ebp
   107f7:	89 e5                	mov    %esp,%ebp
   107f9:	8b 45 08             	mov    0x8(%ebp),%eax
   107fc:	83 e8 08             	sub    $0x8,%eax
   107ff:	5d                   	pop    %ebp
   10800:	c3                   	ret    

00010801 <cpu_idle>:
   10801:	55                   	push   %ebp
   10802:	89 e5                	mov    %esp,%ebp
   10804:	83 ec 08             	sub    $0x8,%esp
   10807:	e8 ac 17 00 00       	call   11fb8 <__sti>
   1080c:	eb fe                	jmp    1080c <cpu_idle+0xb>

0001080e <init_idle>:
   1080e:	55                   	push   %ebp
   1080f:	89 e5                	mov    %esp,%ebp
   10811:	83 ec 28             	sub    $0x28,%esp
   10814:	e8 ce 10 00 00       	call   118e7 <alloc_frame>
   10819:	89 45 f4             	mov    %eax,-0xc(%ebp)
   1081c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1081f:	c1 e0 0c             	shl    $0xc,%eax
   10822:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10825:	83 ec 0c             	sub    $0xc,%esp
   10828:	ff 75 f0             	push   -0x10(%ebp)
   1082b:	e8 07 0c 00 00       	call   11437 <clear_page_table>
   10830:	83 c4 10             	add    $0x10,%esp
   10833:	a1 8c 4a 01 00       	mov    0x14a8c,%eax
   10838:	c1 e0 0c             	shl    $0xc,%eax
   1083b:	89 45 ec             	mov    %eax,-0x14(%ebp)
   1083e:	8b 55 f4             	mov    -0xc(%ebp),%edx
   10841:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10844:	6a 00                	push   $0x0
   10846:	52                   	push   %edx
   10847:	50                   	push   %eax
   10848:	ff 75 ec             	push   -0x14(%ebp)
   1084b:	e8 50 11 00 00       	call   119a0 <set_ss_pag>
   10850:	83 c4 10             	add    $0x10,%esp
   10853:	a1 8c 4a 01 00       	mov    0x14a8c,%eax
   10858:	89 c2                	mov    %eax,%edx
   1085a:	a1 8c 4a 01 00       	mov    0x14a8c,%eax
   1085f:	6a 00                	push   $0x0
   10861:	52                   	push   %edx
   10862:	50                   	push   %eax
   10863:	ff 75 ec             	push   -0x14(%ebp)
   10866:	e8 35 11 00 00       	call   119a0 <set_ss_pag>
   1086b:	83 c4 10             	add    $0x10,%esp
   1086e:	a1 8c 4a 01 00       	mov    0x14a8c,%eax
   10873:	6a 00                	push   $0x0
   10875:	50                   	push   %eax
   10876:	6a 00                	push   $0x0
   10878:	ff 75 f0             	push   -0x10(%ebp)
   1087b:	e8 20 11 00 00       	call   119a0 <set_ss_pag>
   10880:	83 c4 10             	add    $0x10,%esp
   10883:	e8 5f 10 00 00       	call   118e7 <alloc_frame>
   10888:	89 45 e8             	mov    %eax,-0x18(%ebp)
   1088b:	8b 45 e8             	mov    -0x18(%ebp),%eax
   1088e:	c1 e0 0c             	shl    $0xc,%eax
   10891:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   10894:	8b 55 e8             	mov    -0x18(%ebp),%edx
   10897:	8b 45 e8             	mov    -0x18(%ebp),%eax
   1089a:	6a 00                	push   $0x0
   1089c:	52                   	push   %edx
   1089d:	50                   	push   %eax
   1089e:	ff 75 ec             	push   -0x14(%ebp)
   108a1:	e8 fa 10 00 00       	call   119a0 <set_ss_pag>
   108a6:	83 c4 10             	add    $0x10,%esp
   108a9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108ac:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   108b2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108b5:	8b 55 f0             	mov    -0x10(%ebp),%edx
   108b8:	89 50 04             	mov    %edx,0x4(%eax)
   108bb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108be:	05 00 10 00 00       	add    $0x1000,%eax
   108c3:	89 45 e0             	mov    %eax,-0x20(%ebp)
   108c6:	ba 01 08 01 00       	mov    $0x10801,%edx
   108cb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108ce:	89 90 fc 0f 00 00    	mov    %edx,0xffc(%eax)
   108d4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108d7:	c7 80 f8 0f 00 00 00 	movl   $0x0,0xff8(%eax)
   108de:	00 00 00 
   108e1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108e4:	c7 80 f4 0f 00 00 00 	movl   $0x0,0xff4(%eax)
   108eb:	00 00 00 
   108ee:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108f1:	c7 80 f0 0f 00 00 00 	movl   $0x0,0xff0(%eax)
   108f8:	00 00 00 
   108fb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108fe:	c7 80 ec 0f 00 00 00 	movl   $0x0,0xfec(%eax)
   10905:	00 00 00 
   10908:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   1090b:	05 ec 0f 00 00       	add    $0xfec,%eax
   10910:	89 c2                	mov    %eax,%edx
   10912:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   10915:	89 50 10             	mov    %edx,0x10(%eax)
   10918:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   1091b:	a3 84 4a 01 00       	mov    %eax,0x14a84
   10920:	90                   	nop
   10921:	c9                   	leave  
   10922:	c3                   	ret    

00010923 <init_task1>:
   10923:	55                   	push   %ebp
   10924:	89 e5                	mov    %esp,%ebp
   10926:	83 ec 38             	sub    $0x38,%esp
   10929:	e8 b9 0f 00 00       	call   118e7 <alloc_frame>
   1092e:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10931:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10934:	c1 e0 0c             	shl    $0xc,%eax
   10937:	89 45 f0             	mov    %eax,-0x10(%ebp)
   1093a:	83 ec 0c             	sub    $0xc,%esp
   1093d:	ff 75 f0             	push   -0x10(%ebp)
   10940:	e8 f2 0a 00 00       	call   11437 <clear_page_table>
   10945:	83 c4 10             	add    $0x10,%esp
   10948:	e8 9a 0f 00 00       	call   118e7 <alloc_frame>
   1094d:	a3 8c 4a 01 00       	mov    %eax,0x14a8c
   10952:	a1 8c 4a 01 00       	mov    0x14a8c,%eax
   10957:	c1 e0 0c             	shl    $0xc,%eax
   1095a:	89 45 ec             	mov    %eax,-0x14(%ebp)
   1095d:	83 ec 0c             	sub    $0xc,%esp
   10960:	ff 75 ec             	push   -0x14(%ebp)
   10963:	e8 60 0c 00 00       	call   115c8 <set_kernel_pages>
   10968:	83 c4 10             	add    $0x10,%esp
   1096b:	e8 77 0f 00 00       	call   118e7 <alloc_frame>
   10970:	89 45 e8             	mov    %eax,-0x18(%ebp)
   10973:	8b 45 e8             	mov    -0x18(%ebp),%eax
   10976:	c1 e0 0c             	shl    $0xc,%eax
   10979:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   1097c:	83 ec 0c             	sub    $0xc,%esp
   1097f:	ff 75 e4             	push   -0x1c(%ebp)
   10982:	e8 e5 0a 00 00       	call   1146c <set_user_pages>
   10987:	83 c4 10             	add    $0x10,%esp
   1098a:	8b 55 f4             	mov    -0xc(%ebp),%edx
   1098d:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10990:	6a 00                	push   $0x0
   10992:	52                   	push   %edx
   10993:	50                   	push   %eax
   10994:	ff 75 ec             	push   -0x14(%ebp)
   10997:	e8 04 10 00 00       	call   119a0 <set_ss_pag>
   1099c:	83 c4 10             	add    $0x10,%esp
   1099f:	a1 8c 4a 01 00       	mov    0x14a8c,%eax
   109a4:	89 c2                	mov    %eax,%edx
   109a6:	a1 8c 4a 01 00       	mov    0x14a8c,%eax
   109ab:	6a 00                	push   $0x0
   109ad:	52                   	push   %edx
   109ae:	50                   	push   %eax
   109af:	ff 75 ec             	push   -0x14(%ebp)
   109b2:	e8 e9 0f 00 00       	call   119a0 <set_ss_pag>
   109b7:	83 c4 10             	add    $0x10,%esp
   109ba:	8b 55 e8             	mov    -0x18(%ebp),%edx
   109bd:	8b 45 e8             	mov    -0x18(%ebp),%eax
   109c0:	6a 01                	push   $0x1
   109c2:	52                   	push   %edx
   109c3:	50                   	push   %eax
   109c4:	ff 75 ec             	push   -0x14(%ebp)
   109c7:	e8 d4 0f 00 00       	call   119a0 <set_ss_pag>
   109cc:	83 c4 10             	add    $0x10,%esp
   109cf:	a1 8c 4a 01 00       	mov    0x14a8c,%eax
   109d4:	6a 00                	push   $0x0
   109d6:	50                   	push   %eax
   109d7:	6a 00                	push   $0x0
   109d9:	ff 75 f0             	push   -0x10(%ebp)
   109dc:	e8 bf 0f 00 00       	call   119a0 <set_ss_pag>
   109e1:	83 c4 10             	add    $0x10,%esp
   109e4:	8b 45 e8             	mov    -0x18(%ebp),%eax
   109e7:	6a 01                	push   $0x1
   109e9:	50                   	push   %eax
   109ea:	6a 01                	push   $0x1
   109ec:	ff 75 f0             	push   -0x10(%ebp)
   109ef:	e8 ac 0f 00 00       	call   119a0 <set_ss_pag>
   109f4:	83 c4 10             	add    $0x10,%esp
   109f7:	e8 eb 0e 00 00       	call   118e7 <alloc_frame>
   109fc:	89 45 e0             	mov    %eax,-0x20(%ebp)
   109ff:	8b 45 e0             	mov    -0x20(%ebp),%eax
   10a02:	c1 e0 0c             	shl    $0xc,%eax
   10a05:	89 45 dc             	mov    %eax,-0x24(%ebp)
   10a08:	e8 da 0e 00 00       	call   118e7 <alloc_frame>
   10a0d:	89 45 d8             	mov    %eax,-0x28(%ebp)
   10a10:	8b 45 d8             	mov    -0x28(%ebp),%eax
   10a13:	c1 e0 0c             	shl    $0xc,%eax
   10a16:	a3 88 4a 01 00       	mov    %eax,0x14a88
   10a1b:	8b 55 d8             	mov    -0x28(%ebp),%edx
   10a1e:	8b 45 d8             	mov    -0x28(%ebp),%eax
   10a21:	6a 00                	push   $0x0
   10a23:	52                   	push   %edx
   10a24:	50                   	push   %eax
   10a25:	ff 75 ec             	push   -0x14(%ebp)
   10a28:	e8 73 0f 00 00       	call   119a0 <set_ss_pag>
   10a2d:	83 c4 10             	add    $0x10,%esp
   10a30:	a1 88 4a 01 00       	mov    0x14a88,%eax
   10a35:	83 ec 0c             	sub    $0xc,%esp
   10a38:	50                   	push   %eax
   10a39:	e8 f0 12 00 00       	call   11d2e <INIT_CIRCULAR_BUFFER>
   10a3e:	83 c4 10             	add    $0x10,%esp
   10a41:	8b 55 e0             	mov    -0x20(%ebp),%edx
   10a44:	8b 45 e0             	mov    -0x20(%ebp),%eax
   10a47:	6a 00                	push   $0x0
   10a49:	52                   	push   %edx
   10a4a:	50                   	push   %eax
   10a4b:	ff 75 ec             	push   -0x14(%ebp)
   10a4e:	e8 4d 0f 00 00       	call   119a0 <set_ss_pag>
   10a53:	83 c4 10             	add    $0x10,%esp
   10a56:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10a59:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
   10a5f:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10a62:	8b 55 f0             	mov    -0x10(%ebp),%edx
   10a65:	89 50 04             	mov    %edx,0x4(%eax)
   10a68:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10a6b:	05 00 10 00 00       	add    $0x1000,%eax
   10a70:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   10a73:	83 ec 08             	sub    $0x8,%esp
   10a76:	ff 75 d4             	push   -0x2c(%ebp)
   10a79:	68 75 01 00 00       	push   $0x175
   10a7e:	e8 8d 14 00 00       	call   11f10 <writeMSR>
   10a83:	83 c4 10             	add    $0x10,%esp
   10a86:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   10a89:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10a8c:	89 50 10             	mov    %edx,0x10(%eax)
   10a8f:	83 ec 0c             	sub    $0xc,%esp
   10a92:	ff 75 f0             	push   -0x10(%ebp)
   10a95:	e8 04 15 00 00       	call   11f9e <set_cr3>
   10a9a:	83 c4 10             	add    $0x10,%esp
   10a9d:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10aa0:	a3 80 4a 01 00       	mov    %eax,0x14a80
   10aa5:	90                   	nop
   10aa6:	c9                   	leave  
   10aa7:	c3                   	ret    

00010aa8 <inner_task_switch>:
   10aa8:	55                   	push   %ebp
   10aa9:	89 e5                	mov    %esp,%ebp
   10aab:	83 ec 08             	sub    $0x8,%esp
   10aae:	8b 45 08             	mov    0x8(%ebp),%eax
   10ab1:	05 00 10 00 00       	add    $0x1000,%eax
   10ab6:	a3 e4 52 01 00       	mov    %eax,0x152e4
   10abb:	8b 45 08             	mov    0x8(%ebp),%eax
   10abe:	8b 40 04             	mov    0x4(%eax),%eax
   10ac1:	83 ec 0c             	sub    $0xc,%esp
   10ac4:	50                   	push   %eax
   10ac5:	e8 d4 14 00 00       	call   11f9e <set_cr3>
   10aca:	83 c4 10             	add    $0x10,%esp
   10acd:	90                   	nop
   10ace:	c9                   	leave  
   10acf:	c3                   	ret    

00010ad0 <init_sched>:
   10ad0:	55                   	push   %ebp
   10ad1:	89 e5                	mov    %esp,%ebp
   10ad3:	83 ec 08             	sub    $0x8,%esp
   10ad6:	83 ec 0c             	sub    $0xc,%esp
   10ad9:	68 60 46 01 00       	push   $0x14660
   10ade:	e8 6c 11 00 00       	call   11c4f <INIT_LIST_HEAD>
   10ae3:	83 c4 10             	add    $0x10,%esp
   10ae6:	83 ec 0c             	sub    $0xc,%esp
   10ae9:	68 48 53 01 00       	push   $0x15348
   10aee:	e8 5c 11 00 00       	call   11c4f <INIT_LIST_HEAD>
   10af3:	83 c4 10             	add    $0x10,%esp
   10af6:	90                   	nop
   10af7:	c9                   	leave  
   10af8:	c3                   	ret    

00010af9 <get_DIR>:
   10af9:	55                   	push   %ebp
   10afa:	89 e5                	mov    %esp,%ebp
   10afc:	8b 45 08             	mov    0x8(%ebp),%eax
   10aff:	8b 40 04             	mov    0x4(%eax),%eax
   10b02:	5d                   	pop    %ebp
   10b03:	c3                   	ret    

00010b04 <get_PT>:
   10b04:	55                   	push   %ebp
   10b05:	89 e5                	mov    %esp,%ebp
   10b07:	8b 45 08             	mov    0x8(%ebp),%eax
   10b0a:	8b 40 04             	mov    0x4(%eax),%eax
   10b0d:	8b 00                	mov    (%eax),%eax
   10b0f:	c1 e8 0c             	shr    $0xc,%eax
   10b12:	c1 e0 0c             	shl    $0xc,%eax
   10b15:	5d                   	pop    %ebp
   10b16:	c3                   	ret    

00010b17 <update_memory_context>:
   10b17:	55                   	push   %ebp
   10b18:	89 e5                	mov    %esp,%ebp
   10b1a:	83 ec 08             	sub    $0x8,%esp
   10b1d:	8b 45 08             	mov    0x8(%ebp),%eax
   10b20:	05 00 10 00 00       	add    $0x1000,%eax
   10b25:	a3 e4 52 01 00       	mov    %eax,0x152e4
   10b2a:	8b 45 08             	mov    0x8(%ebp),%eax
   10b2d:	8b 40 04             	mov    0x4(%eax),%eax
   10b30:	83 ec 0c             	sub    $0xc,%esp
   10b33:	50                   	push   %eax
   10b34:	e8 65 14 00 00       	call   11f9e <set_cr3>
   10b39:	83 c4 10             	add    $0x10,%esp
   10b3c:	90                   	nop
   10b3d:	c9                   	leave  
   10b3e:	c3                   	ret    

00010b3f <get_quantum>:
   10b3f:	55                   	push   %ebp
   10b40:	89 e5                	mov    %esp,%ebp
   10b42:	8b 45 08             	mov    0x8(%ebp),%eax
   10b45:	8b 40 14             	mov    0x14(%eax),%eax
   10b48:	5d                   	pop    %ebp
   10b49:	c3                   	ret    

00010b4a <set_quantum>:
   10b4a:	55                   	push   %ebp
   10b4b:	89 e5                	mov    %esp,%ebp
   10b4d:	8b 45 08             	mov    0x8(%ebp),%eax
   10b50:	8b 55 0c             	mov    0xc(%ebp),%edx
   10b53:	89 50 14             	mov    %edx,0x14(%eax)
   10b56:	90                   	nop
   10b57:	5d                   	pop    %ebp
   10b58:	c3                   	ret    

00010b59 <schedule>:
   10b59:	55                   	push   %ebp
   10b5a:	89 e5                	mov    %esp,%ebp
   10b5c:	83 ec 18             	sub    $0x18,%esp
   10b5f:	e8 4f 00 00 00       	call   10bb3 <update_sched_data_rr>
   10b64:	e8 70 00 00 00       	call   10bd9 <needs_sched_rr>
   10b69:	85 c0                	test   %eax,%eax
   10b6b:	74 43                	je     10bb0 <schedule+0x57>
   10b6d:	e8 48 14 00 00       	call   11fba <current>
   10b72:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10b75:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10b78:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10b7b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10b7e:	8b 00                	mov    (%eax),%eax
   10b80:	85 c0                	test   %eax,%eax
   10b82:	74 27                	je     10bab <schedule+0x52>
   10b84:	83 ec 0c             	sub    $0xc,%esp
   10b87:	ff 75 f0             	push   -0x10(%ebp)
   10b8a:	e8 b0 ff ff ff       	call   10b3f <get_quantum>
   10b8f:	83 c4 10             	add    $0x10,%esp
   10b92:	8b 55 f0             	mov    -0x10(%ebp),%edx
   10b95:	89 42 30             	mov    %eax,0x30(%edx)
   10b98:	83 ec 08             	sub    $0x8,%esp
   10b9b:	68 60 46 01 00       	push   $0x14660
   10ba0:	ff 75 f0             	push   -0x10(%ebp)
   10ba3:	e8 bc 00 00 00       	call   10c64 <update_process_state_rr>
   10ba8:	83 c4 10             	add    $0x10,%esp
   10bab:	e8 29 01 00 00       	call   10cd9 <sched_next_rr>
   10bb0:	90                   	nop
   10bb1:	c9                   	leave  
   10bb2:	c3                   	ret    

00010bb3 <update_sched_data_rr>:
   10bb3:	55                   	push   %ebp
   10bb4:	89 e5                	mov    %esp,%ebp
   10bb6:	83 ec 18             	sub    $0x18,%esp
   10bb9:	e8 fc 13 00 00       	call   11fba <current>
   10bbe:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10bc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10bc4:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10bc7:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10bca:	8b 40 30             	mov    0x30(%eax),%eax
   10bcd:	8d 50 ff             	lea    -0x1(%eax),%edx
   10bd0:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10bd3:	89 50 30             	mov    %edx,0x30(%eax)
   10bd6:	90                   	nop
   10bd7:	c9                   	leave  
   10bd8:	c3                   	ret    

00010bd9 <needs_sched_rr>:
   10bd9:	55                   	push   %ebp
   10bda:	89 e5                	mov    %esp,%ebp
   10bdc:	83 ec 18             	sub    $0x18,%esp
   10bdf:	e8 d6 13 00 00       	call   11fba <current>
   10be4:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10be7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10bea:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10bed:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10bf0:	8b 40 30             	mov    0x30(%eax),%eax
   10bf3:	85 c0                	test   %eax,%eax
   10bf5:	7f 38                	jg     10c2f <needs_sched_rr+0x56>
   10bf7:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10bfa:	8b 00                	mov    (%eax),%eax
   10bfc:	85 c0                	test   %eax,%eax
   10bfe:	75 2f                	jne    10c2f <needs_sched_rr+0x56>
   10c00:	83 ec 0c             	sub    $0xc,%esp
   10c03:	68 60 46 01 00       	push   $0x14660
   10c08:	e8 0e 11 00 00       	call   11d1b <list_empty>
   10c0d:	83 c4 10             	add    $0x10,%esp
   10c10:	85 c0                	test   %eax,%eax
   10c12:	74 1b                	je     10c2f <needs_sched_rr+0x56>
   10c14:	83 ec 0c             	sub    $0xc,%esp
   10c17:	ff 75 f0             	push   -0x10(%ebp)
   10c1a:	e8 20 ff ff ff       	call   10b3f <get_quantum>
   10c1f:	83 c4 10             	add    $0x10,%esp
   10c22:	8b 55 f0             	mov    -0x10(%ebp),%edx
   10c25:	89 42 30             	mov    %eax,0x30(%edx)
   10c28:	b8 00 00 00 00       	mov    $0x0,%eax
   10c2d:	eb 33                	jmp    10c62 <needs_sched_rr+0x89>
   10c2f:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10c32:	8b 40 30             	mov    0x30(%eax),%eax
   10c35:	85 c0                	test   %eax,%eax
   10c37:	7e 09                	jle    10c42 <needs_sched_rr+0x69>
   10c39:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10c3c:	8b 00                	mov    (%eax),%eax
   10c3e:	85 c0                	test   %eax,%eax
   10c40:	75 1b                	jne    10c5d <needs_sched_rr+0x84>
   10c42:	83 ec 0c             	sub    $0xc,%esp
   10c45:	68 60 46 01 00       	push   $0x14660
   10c4a:	e8 cc 10 00 00       	call   11d1b <list_empty>
   10c4f:	83 c4 10             	add    $0x10,%esp
   10c52:	85 c0                	test   %eax,%eax
   10c54:	75 07                	jne    10c5d <needs_sched_rr+0x84>
   10c56:	b8 01 00 00 00       	mov    $0x1,%eax
   10c5b:	eb 05                	jmp    10c62 <needs_sched_rr+0x89>
   10c5d:	b8 00 00 00 00       	mov    $0x0,%eax
   10c62:	c9                   	leave  
   10c63:	c3                   	ret    

00010c64 <update_process_state_rr>:
   10c64:	55                   	push   %ebp
   10c65:	89 e5                	mov    %esp,%ebp
   10c67:	83 ec 18             	sub    $0x18,%esp
   10c6a:	e8 4b 13 00 00       	call   11fba <current>
   10c6f:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10c72:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10c75:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10c78:	81 7d 0c 60 46 01 00 	cmpl   $0x14660,0xc(%ebp)
   10c7f:	75 33                	jne    10cb4 <update_process_state_rr+0x50>
   10c81:	8b 45 08             	mov    0x8(%ebp),%eax
   10c84:	83 c0 08             	add    $0x8,%eax
   10c87:	83 ec 0c             	sub    $0xc,%esp
   10c8a:	50                   	push   %eax
   10c8b:	e8 4a 10 00 00       	call   11cda <list_del>
   10c90:	83 c4 10             	add    $0x10,%esp
   10c93:	8b 45 08             	mov    0x8(%ebp),%eax
   10c96:	83 c0 08             	add    $0x8,%eax
   10c99:	83 ec 08             	sub    $0x8,%esp
   10c9c:	ff 75 0c             	push   0xc(%ebp)
   10c9f:	50                   	push   %eax
   10ca0:	e8 03 10 00 00       	call   11ca8 <list_add_tail>
   10ca5:	83 c4 10             	add    $0x10,%esp
   10ca8:	8b 45 08             	mov    0x8(%ebp),%eax
   10cab:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
   10cb2:	eb 22                	jmp    10cd6 <update_process_state_rr+0x72>
   10cb4:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
   10cb8:	75 1c                	jne    10cd6 <update_process_state_rr+0x72>
   10cba:	8b 45 08             	mov    0x8(%ebp),%eax
   10cbd:	83 c0 08             	add    $0x8,%eax
   10cc0:	83 ec 0c             	sub    $0xc,%esp
   10cc3:	50                   	push   %eax
   10cc4:	e8 11 10 00 00       	call   11cda <list_del>
   10cc9:	83 c4 10             	add    $0x10,%esp
   10ccc:	8b 45 08             	mov    0x8(%ebp),%eax
   10ccf:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
   10cd6:	90                   	nop
   10cd7:	c9                   	leave  
   10cd8:	c3                   	ret    

00010cd9 <sched_next_rr>:
   10cd9:	55                   	push   %ebp
   10cda:	89 e5                	mov    %esp,%ebp
   10cdc:	83 ec 18             	sub    $0x18,%esp
   10cdf:	83 ec 0c             	sub    $0xc,%esp
   10ce2:	68 60 46 01 00       	push   $0x14660
   10ce7:	e8 2f 10 00 00       	call   11d1b <list_empty>
   10cec:	83 c4 10             	add    $0x10,%esp
   10cef:	85 c0                	test   %eax,%eax
   10cf1:	74 0a                	je     10cfd <sched_next_rr+0x24>
   10cf3:	a1 84 4a 01 00       	mov    0x14a84,%eax
   10cf8:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10cfb:	eb 3d                	jmp    10d3a <sched_next_rr+0x61>
   10cfd:	a1 60 46 01 00       	mov    0x14660,%eax
   10d02:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10d05:	83 ec 0c             	sub    $0xc,%esp
   10d08:	ff 75 f0             	push   -0x10(%ebp)
   10d0b:	e8 ca 0f 00 00       	call   11cda <list_del>
   10d10:	83 c4 10             	add    $0x10,%esp
   10d13:	83 ec 0c             	sub    $0xc,%esp
   10d16:	ff 75 f0             	push   -0x10(%ebp)
   10d19:	e8 d8 fa ff ff       	call   107f6 <list_head_to_task_struct>
   10d1e:	83 c4 10             	add    $0x10,%esp
   10d21:	89 45 ec             	mov    %eax,-0x14(%ebp)
   10d24:	8b 45 ec             	mov    -0x14(%ebp),%eax
   10d27:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10d2a:	83 ec 08             	sub    $0x8,%esp
   10d2d:	6a 00                	push   $0x0
   10d2f:	ff 75 ec             	push   -0x14(%ebp)
   10d32:	e8 2d ff ff ff       	call   10c64 <update_process_state_rr>
   10d37:	83 c4 10             	add    $0x10,%esp
   10d3a:	83 ec 0c             	sub    $0xc,%esp
   10d3d:	ff 75 f4             	push   -0xc(%ebp)
   10d40:	e8 77 f8 ff ff       	call   105bc <task_switch>
   10d45:	83 c4 10             	add    $0x10,%esp
   10d48:	90                   	nop
   10d49:	c9                   	leave  
   10d4a:	c3                   	ret    

00010d4b <check_fd>:
   10d4b:	55                   	push   %ebp
   10d4c:	89 e5                	mov    %esp,%ebp
   10d4e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
   10d52:	74 07                	je     10d5b <check_fd+0x10>
   10d54:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
   10d59:	eb 12                	jmp    10d6d <check_fd+0x22>
   10d5b:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
   10d5f:	74 07                	je     10d68 <check_fd+0x1d>
   10d61:	b8 f3 ff ff ff       	mov    $0xfffffff3,%eax
   10d66:	eb 05                	jmp    10d6d <check_fd+0x22>
   10d68:	b8 00 00 00 00       	mov    $0x0,%eax
   10d6d:	5d                   	pop    %ebp
   10d6e:	c3                   	ret    

00010d6f <sys_ni_syscall>:
   10d6f:	55                   	push   %ebp
   10d70:	89 e5                	mov    %esp,%ebp
   10d72:	b8 da ff ff ff       	mov    $0xffffffda,%eax
   10d77:	5d                   	pop    %ebp
   10d78:	c3                   	ret    

00010d79 <sys_gettime>:
   10d79:	55                   	push   %ebp
   10d7a:	89 e5                	mov    %esp,%ebp
   10d7c:	a1 4c 46 01 00       	mov    0x1464c,%eax
   10d81:	5d                   	pop    %ebp
   10d82:	c3                   	ret    

00010d83 <sys_write>:
   10d83:	55                   	push   %ebp
   10d84:	89 e5                	mov    %esp,%ebp
   10d86:	83 ec 18             	sub    $0x18,%esp
   10d89:	6a 01                	push   $0x1
   10d8b:	ff 75 08             	push   0x8(%ebp)
   10d8e:	e8 b8 ff ff ff       	call   10d4b <check_fd>
   10d93:	83 c4 08             	add    $0x8,%esp
   10d96:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10d99:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   10d9d:	74 05                	je     10da4 <sys_write+0x21>
   10d9f:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10da2:	eb 5c                	jmp    10e00 <sys_write+0x7d>
   10da4:	8b 45 10             	mov    0x10(%ebp),%eax
   10da7:	83 ec 04             	sub    $0x4,%esp
   10daa:	50                   	push   %eax
   10dab:	ff 75 0c             	push   0xc(%ebp)
   10dae:	6a 01                	push   $0x1
   10db0:	e8 2f 0e 00 00       	call   11be4 <access_ok>
   10db5:	83 c4 10             	add    $0x10,%esp
   10db8:	83 f8 01             	cmp    $0x1,%eax
   10dbb:	74 07                	je     10dc4 <sys_write+0x41>
   10dbd:	b8 f2 ff ff ff       	mov    $0xfffffff2,%eax
   10dc2:	eb 3c                	jmp    10e00 <sys_write+0x7d>
   10dc4:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
   10dc8:	75 07                	jne    10dd1 <sys_write+0x4e>
   10dca:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
   10dcf:	eb 2f                	jmp    10e00 <sys_write+0x7d>
   10dd1:	83 ec 04             	sub    $0x4,%esp
   10dd4:	ff 75 10             	push   0x10(%ebp)
   10dd7:	68 a0 4a 01 00       	push   $0x14aa0
   10ddc:	ff 75 0c             	push   0xc(%ebp)
   10ddf:	e8 2c 0d 00 00       	call   11b10 <copy_from_user>
   10de4:	83 c4 10             	add    $0x10,%esp
   10de7:	83 ec 08             	sub    $0x8,%esp
   10dea:	ff 75 10             	push   0x10(%ebp)
   10ded:	68 a0 4a 01 00       	push   $0x14aa0
   10df2:	e8 78 0c 00 00       	call   11a6f <sys_write_console>
   10df7:	83 c4 10             	add    $0x10,%esp
   10dfa:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10dfd:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10e00:	c9                   	leave  
   10e01:	c3                   	ret    

00010e02 <sys_read>:
   10e02:	55                   	push   %ebp
   10e03:	89 e5                	mov    %esp,%ebp
   10e05:	83 ec 18             	sub    $0x18,%esp
   10e08:	8b 45 0c             	mov    0xc(%ebp),%eax
   10e0b:	83 ec 04             	sub    $0x4,%esp
   10e0e:	50                   	push   %eax
   10e0f:	ff 75 08             	push   0x8(%ebp)
   10e12:	6a 01                	push   $0x1
   10e14:	e8 cb 0d 00 00       	call   11be4 <access_ok>
   10e19:	83 c4 10             	add    $0x10,%esp
   10e1c:	83 f8 01             	cmp    $0x1,%eax
   10e1f:	74 07                	je     10e28 <sys_read+0x26>
   10e21:	b8 f2 ff ff ff       	mov    $0xfffffff2,%eax
   10e26:	eb 3a                	jmp    10e62 <sys_read+0x60>
   10e28:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   10e2f:	eb 26                	jmp    10e57 <sys_read+0x55>
   10e31:	a1 88 4a 01 00       	mov    0x14a88,%eax
   10e36:	83 ec 0c             	sub    $0xc,%esp
   10e39:	50                   	push   %eax
   10e3a:	e8 97 0f 00 00       	call   11dd6 <CIRCULAR_BUFFER_READ>
   10e3f:	83 c4 10             	add    $0x10,%esp
   10e42:	88 45 f3             	mov    %al,-0xd(%ebp)
   10e45:	8b 55 f4             	mov    -0xc(%ebp),%edx
   10e48:	8b 45 08             	mov    0x8(%ebp),%eax
   10e4b:	01 c2                	add    %eax,%edx
   10e4d:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
   10e51:	88 02                	mov    %al,(%edx)
   10e53:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   10e57:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10e5a:	3b 45 0c             	cmp    0xc(%ebp),%eax
   10e5d:	7c d2                	jl     10e31 <sys_read+0x2f>
   10e5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10e62:	c9                   	leave  
   10e63:	c3                   	ret    

00010e64 <sys_getpid>:
   10e64:	55                   	push   %ebp
   10e65:	89 e5                	mov    %esp,%ebp
   10e67:	83 ec 18             	sub    $0x18,%esp
   10e6a:	e8 4b 11 00 00       	call   11fba <current>
   10e6f:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10e72:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10e75:	8b 00                	mov    (%eax),%eax
   10e77:	c9                   	leave  
   10e78:	c3                   	ret    

00010e79 <sys_fork>:
   10e79:	55                   	push   %ebp
   10e7a:	89 e5                	mov    %esp,%ebp
   10e7c:	53                   	push   %ebx
   10e7d:	81 ec b4 00 00 00    	sub    $0xb4,%esp
   10e83:	e8 5f 0a 00 00       	call   118e7 <alloc_frame>
   10e88:	89 45 dc             	mov    %eax,-0x24(%ebp)
   10e8b:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
   10e8f:	75 0a                	jne    10e9b <sys_fork+0x22>
   10e91:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
   10e96:	e9 12 04 00 00       	jmp    112ad <sys_fork+0x434>
   10e9b:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10e9e:	c1 e0 0c             	shl    $0xc,%eax
   10ea1:	89 45 d8             	mov    %eax,-0x28(%ebp)
   10ea4:	e8 11 11 00 00       	call   11fba <current>
   10ea9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   10eac:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   10eaf:	8b 40 04             	mov    0x4(%eax),%eax
   10eb2:	8b 00                	mov    (%eax),%eax
   10eb4:	c1 e8 0c             	shr    $0xc,%eax
   10eb7:	c1 e0 0c             	shl    $0xc,%eax
   10eba:	89 45 d0             	mov    %eax,-0x30(%ebp)
   10ebd:	8b 55 dc             	mov    -0x24(%ebp),%edx
   10ec0:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10ec3:	6a 00                	push   $0x0
   10ec5:	52                   	push   %edx
   10ec6:	50                   	push   %eax
   10ec7:	ff 75 d0             	push   -0x30(%ebp)
   10eca:	e8 d1 0a 00 00       	call   119a0 <set_ss_pag>
   10ecf:	83 c4 10             	add    $0x10,%esp
   10ed2:	83 ec 0c             	sub    $0xc,%esp
   10ed5:	ff 75 d4             	push   -0x2c(%ebp)
   10ed8:	e8 1c fc ff ff       	call   10af9 <get_DIR>
   10edd:	83 c4 10             	add    $0x10,%esp
   10ee0:	83 ec 0c             	sub    $0xc,%esp
   10ee3:	50                   	push   %eax
   10ee4:	e8 b5 10 00 00       	call   11f9e <set_cr3>
   10ee9:	83 c4 10             	add    $0x10,%esp
   10eec:	83 ec 04             	sub    $0x4,%esp
   10eef:	68 00 10 00 00       	push   $0x1000
   10ef4:	ff 75 d8             	push   -0x28(%ebp)
   10ef7:	ff 75 d4             	push   -0x2c(%ebp)
   10efa:	e8 aa 0b 00 00       	call   11aa9 <copy_data>
   10eff:	83 c4 10             	add    $0x10,%esp
   10f02:	8b 45 d8             	mov    -0x28(%ebp),%eax
   10f05:	89 45 cc             	mov    %eax,-0x34(%ebp)
   10f08:	e8 da 09 00 00       	call   118e7 <alloc_frame>
   10f0d:	89 45 c8             	mov    %eax,-0x38(%ebp)
   10f10:	83 7d c8 ff          	cmpl   $0xffffffff,-0x38(%ebp)
   10f14:	75 19                	jne    10f2f <sys_fork+0xb6>
   10f16:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10f19:	83 ec 0c             	sub    $0xc,%esp
   10f1c:	50                   	push   %eax
   10f1d:	e8 64 0a 00 00       	call   11986 <free_frame>
   10f22:	83 c4 10             	add    $0x10,%esp
   10f25:	b8 0c 00 00 00       	mov    $0xc,%eax
   10f2a:	e9 7e 03 00 00       	jmp    112ad <sys_fork+0x434>
   10f2f:	8b 45 c8             	mov    -0x38(%ebp),%eax
   10f32:	c1 e0 0c             	shl    $0xc,%eax
   10f35:	89 45 c4             	mov    %eax,-0x3c(%ebp)
   10f38:	83 ec 0c             	sub    $0xc,%esp
   10f3b:	ff 75 c4             	push   -0x3c(%ebp)
   10f3e:	e8 f4 04 00 00       	call   11437 <clear_page_table>
   10f43:	83 c4 10             	add    $0x10,%esp
   10f46:	8b 45 cc             	mov    -0x34(%ebp),%eax
   10f49:	8b 55 c4             	mov    -0x3c(%ebp),%edx
   10f4c:	89 50 04             	mov    %edx,0x4(%eax)
   10f4f:	e8 66 10 00 00       	call   11fba <current>
   10f54:	8b 50 04             	mov    0x4(%eax),%edx
   10f57:	8b 45 cc             	mov    -0x34(%ebp),%eax
   10f5a:	8b 40 04             	mov    0x4(%eax),%eax
   10f5d:	8b 12                	mov    (%edx),%edx
   10f5f:	89 10                	mov    %edx,(%eax)
   10f61:	e8 81 09 00 00       	call   118e7 <alloc_frame>
   10f66:	89 45 c0             	mov    %eax,-0x40(%ebp)
   10f69:	83 7d c0 ff          	cmpl   $0xffffffff,-0x40(%ebp)
   10f6d:	75 28                	jne    10f97 <sys_fork+0x11e>
   10f6f:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10f72:	83 ec 0c             	sub    $0xc,%esp
   10f75:	50                   	push   %eax
   10f76:	e8 0b 0a 00 00       	call   11986 <free_frame>
   10f7b:	83 c4 10             	add    $0x10,%esp
   10f7e:	8b 45 c8             	mov    -0x38(%ebp),%eax
   10f81:	83 ec 0c             	sub    $0xc,%esp
   10f84:	50                   	push   %eax
   10f85:	e8 fc 09 00 00       	call   11986 <free_frame>
   10f8a:	83 c4 10             	add    $0x10,%esp
   10f8d:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
   10f92:	e9 16 03 00 00       	jmp    112ad <sys_fork+0x434>
   10f97:	8b 45 c0             	mov    -0x40(%ebp),%eax
   10f9a:	c1 e0 0c             	shl    $0xc,%eax
   10f9d:	89 45 bc             	mov    %eax,-0x44(%ebp)
   10fa0:	83 ec 0c             	sub    $0xc,%esp
   10fa3:	ff 75 bc             	push   -0x44(%ebp)
   10fa6:	e8 8c 04 00 00       	call   11437 <clear_page_table>
   10fab:	83 c4 10             	add    $0x10,%esp
   10fae:	8b 5d c0             	mov    -0x40(%ebp),%ebx
   10fb1:	83 ec 0c             	sub    $0xc,%esp
   10fb4:	ff 75 cc             	push   -0x34(%ebp)
   10fb7:	e8 3d fb ff ff       	call   10af9 <get_DIR>
   10fbc:	83 c4 10             	add    $0x10,%esp
   10fbf:	6a 01                	push   $0x1
   10fc1:	53                   	push   %ebx
   10fc2:	6a 01                	push   $0x1
   10fc4:	50                   	push   %eax
   10fc5:	e8 d6 09 00 00       	call   119a0 <set_ss_pag>
   10fca:	83 c4 10             	add    $0x10,%esp
   10fcd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   10fd0:	83 ec 0c             	sub    $0xc,%esp
   10fd3:	50                   	push   %eax
   10fd4:	e8 20 fb ff ff       	call   10af9 <get_DIR>
   10fd9:	83 c4 10             	add    $0x10,%esp
   10fdc:	89 45 b8             	mov    %eax,-0x48(%ebp)
   10fdf:	8b 45 b8             	mov    -0x48(%ebp),%eax
   10fe2:	83 c0 04             	add    $0x4,%eax
   10fe5:	8b 00                	mov    (%eax),%eax
   10fe7:	c1 e8 0c             	shr    $0xc,%eax
   10fea:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   10fed:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   10ff0:	c1 e0 0c             	shl    $0xc,%eax
   10ff3:	89 45 b0             	mov    %eax,-0x50(%ebp)
   10ff6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   10ffd:	eb 39                	jmp    11038 <sys_fork+0x1bf>
   10fff:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11002:	05 14 04 00 00       	add    $0x414,%eax
   11007:	83 ec 08             	sub    $0x8,%esp
   1100a:	50                   	push   %eax
   1100b:	ff 75 b0             	push   -0x50(%ebp)
   1100e:	e8 43 0a 00 00       	call   11a56 <get_frame>
   11013:	83 c4 10             	add    $0x10,%esp
   11016:	89 45 a0             	mov    %eax,-0x60(%ebp)
   11019:	8b 45 a0             	mov    -0x60(%ebp),%eax
   1101c:	8b 55 f4             	mov    -0xc(%ebp),%edx
   1101f:	81 c2 14 04 00 00    	add    $0x414,%edx
   11025:	6a 01                	push   $0x1
   11027:	50                   	push   %eax
   11028:	52                   	push   %edx
   11029:	ff 75 bc             	push   -0x44(%ebp)
   1102c:	e8 6f 09 00 00       	call   119a0 <set_ss_pag>
   11031:	83 c4 10             	add    $0x10,%esp
   11034:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   11038:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
   1103c:	7e c1                	jle    10fff <sys_fork+0x186>
   1103e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   11045:	e9 83 00 00 00       	jmp    110cd <sys_fork+0x254>
   1104a:	e8 98 08 00 00       	call   118e7 <alloc_frame>
   1104f:	8b 55 f0             	mov    -0x10(%ebp),%edx
   11052:	89 84 95 50 ff ff ff 	mov    %eax,-0xb0(%ebp,%edx,4)
   11059:	8b 45 f0             	mov    -0x10(%ebp),%eax
   1105c:	8b 84 85 50 ff ff ff 	mov    -0xb0(%ebp,%eax,4),%eax
   11063:	85 c0                	test   %eax,%eax
   11065:	79 62                	jns    110c9 <sys_fork+0x250>
   11067:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   1106e:	eb 1a                	jmp    1108a <sys_fork+0x211>
   11070:	8b 45 ec             	mov    -0x14(%ebp),%eax
   11073:	8b 84 85 50 ff ff ff 	mov    -0xb0(%ebp,%eax,4),%eax
   1107a:	83 ec 0c             	sub    $0xc,%esp
   1107d:	50                   	push   %eax
   1107e:	e8 03 09 00 00       	call   11986 <free_frame>
   11083:	83 c4 10             	add    $0x10,%esp
   11086:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
   1108a:	8b 45 ec             	mov    -0x14(%ebp),%eax
   1108d:	3b 45 f0             	cmp    -0x10(%ebp),%eax
   11090:	7c de                	jl     11070 <sys_fork+0x1f7>
   11092:	8b 45 dc             	mov    -0x24(%ebp),%eax
   11095:	83 ec 0c             	sub    $0xc,%esp
   11098:	50                   	push   %eax
   11099:	e8 e8 08 00 00       	call   11986 <free_frame>
   1109e:	83 c4 10             	add    $0x10,%esp
   110a1:	8b 45 c8             	mov    -0x38(%ebp),%eax
   110a4:	83 ec 0c             	sub    $0xc,%esp
   110a7:	50                   	push   %eax
   110a8:	e8 d9 08 00 00       	call   11986 <free_frame>
   110ad:	83 c4 10             	add    $0x10,%esp
   110b0:	8b 45 c0             	mov    -0x40(%ebp),%eax
   110b3:	83 ec 0c             	sub    $0xc,%esp
   110b6:	50                   	push   %eax
   110b7:	e8 ca 08 00 00       	call   11986 <free_frame>
   110bc:	83 c4 10             	add    $0x10,%esp
   110bf:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
   110c4:	e9 e4 01 00 00       	jmp    112ad <sys_fork+0x434>
   110c9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
   110cd:	83 7d f0 13          	cmpl   $0x13,-0x10(%ebp)
   110d1:	0f 8e 73 ff ff ff    	jle    1104a <sys_fork+0x1d1>
   110d7:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   110de:	eb 22                	jmp    11102 <sys_fork+0x289>
   110e0:	8b 45 e8             	mov    -0x18(%ebp),%eax
   110e3:	8b 84 85 50 ff ff ff 	mov    -0xb0(%ebp,%eax,4),%eax
   110ea:	89 c2                	mov    %eax,%edx
   110ec:	8b 45 e8             	mov    -0x18(%ebp),%eax
   110ef:	6a 01                	push   $0x1
   110f1:	52                   	push   %edx
   110f2:	50                   	push   %eax
   110f3:	ff 75 bc             	push   -0x44(%ebp)
   110f6:	e8 a5 08 00 00       	call   119a0 <set_ss_pag>
   110fb:	83 c4 10             	add    $0x10,%esp
   110fe:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
   11102:	83 7d e8 13          	cmpl   $0x13,-0x18(%ebp)
   11106:	7e d8                	jle    110e0 <sys_fork+0x267>
   11108:	c7 45 ac 1c 04 00 00 	movl   $0x41c,-0x54(%ebp)
   1110f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
   11116:	eb 27                	jmp    1113f <sys_fork+0x2c6>
   11118:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   1111b:	8b 84 85 50 ff ff ff 	mov    -0xb0(%ebp,%eax,4),%eax
   11122:	89 c2                	mov    %eax,%edx
   11124:	8b 4d ac             	mov    -0x54(%ebp),%ecx
   11127:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   1112a:	01 c8                	add    %ecx,%eax
   1112c:	6a 01                	push   $0x1
   1112e:	52                   	push   %edx
   1112f:	50                   	push   %eax
   11130:	ff 75 b0             	push   -0x50(%ebp)
   11133:	e8 68 08 00 00       	call   119a0 <set_ss_pag>
   11138:	83 c4 10             	add    $0x10,%esp
   1113b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
   1113f:	83 7d e4 13          	cmpl   $0x13,-0x1c(%ebp)
   11143:	7e d3                	jle    11118 <sys_fork+0x29f>
   11145:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
   1114c:	eb 4d                	jmp    1119b <sys_fork+0x322>
   1114e:	8b 45 e0             	mov    -0x20(%ebp),%eax
   11151:	05 00 04 00 00       	add    $0x400,%eax
   11156:	c1 e0 0c             	shl    $0xc,%eax
   11159:	89 45 a8             	mov    %eax,-0x58(%ebp)
   1115c:	8b 55 ac             	mov    -0x54(%ebp),%edx
   1115f:	8b 45 e0             	mov    -0x20(%ebp),%eax
   11162:	01 d0                	add    %edx,%eax
   11164:	c1 e0 0c             	shl    $0xc,%eax
   11167:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   1116a:	83 ec 04             	sub    $0x4,%esp
   1116d:	68 00 10 00 00       	push   $0x1000
   11172:	ff 75 a4             	push   -0x5c(%ebp)
   11175:	ff 75 a8             	push   -0x58(%ebp)
   11178:	e8 2c 09 00 00       	call   11aa9 <copy_data>
   1117d:	83 c4 10             	add    $0x10,%esp
   11180:	8b 55 ac             	mov    -0x54(%ebp),%edx
   11183:	8b 45 e0             	mov    -0x20(%ebp),%eax
   11186:	01 d0                	add    %edx,%eax
   11188:	83 ec 08             	sub    $0x8,%esp
   1118b:	50                   	push   %eax
   1118c:	ff 75 b0             	push   -0x50(%ebp)
   1118f:	e8 a7 08 00 00       	call   11a3b <del_ss_pag>
   11194:	83 c4 10             	add    $0x10,%esp
   11197:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
   1119b:	83 7d e0 13          	cmpl   $0x13,-0x20(%ebp)
   1119f:	7e ad                	jle    1114e <sys_fork+0x2d5>
   111a1:	83 ec 0c             	sub    $0xc,%esp
   111a4:	ff 75 d4             	push   -0x2c(%ebp)
   111a7:	e8 4d f9 ff ff       	call   10af9 <get_DIR>
   111ac:	83 c4 10             	add    $0x10,%esp
   111af:	83 ec 0c             	sub    $0xc,%esp
   111b2:	50                   	push   %eax
   111b3:	e8 e6 0d 00 00       	call   11f9e <set_cr3>
   111b8:	83 c4 10             	add    $0x10,%esp
   111bb:	a1 24 3e 01 00       	mov    0x13e24,%eax
   111c0:	8d 50 01             	lea    0x1(%eax),%edx
   111c3:	89 15 24 3e 01 00    	mov    %edx,0x13e24
   111c9:	8b 55 cc             	mov    -0x34(%ebp),%edx
   111cc:	89 02                	mov    %eax,(%edx)
   111ce:	8b 45 d8             	mov    -0x28(%ebp),%eax
   111d1:	c7 80 d8 0f 00 00 00 	movl   $0x0,0xfd8(%eax)
   111d8:	00 00 00 
   111db:	ba e2 05 01 00       	mov    $0x105e2,%edx
   111e0:	8b 45 d8             	mov    -0x28(%ebp),%eax
   111e3:	89 90 bc 0f 00 00    	mov    %edx,0xfbc(%eax)
   111e9:	8b 45 d8             	mov    -0x28(%ebp),%eax
   111ec:	c7 80 b8 0f 00 00 00 	movl   $0x0,0xfb8(%eax)
   111f3:	00 00 00 
   111f6:	8b 45 d8             	mov    -0x28(%ebp),%eax
   111f9:	c7 80 b4 0f 00 00 00 	movl   $0x0,0xfb4(%eax)
   11200:	00 00 00 
   11203:	8b 45 d8             	mov    -0x28(%ebp),%eax
   11206:	c7 80 b0 0f 00 00 00 	movl   $0x0,0xfb0(%eax)
   1120d:	00 00 00 
   11210:	8b 45 d8             	mov    -0x28(%ebp),%eax
   11213:	c7 80 ac 0f 00 00 00 	movl   $0x0,0xfac(%eax)
   1121a:	00 00 00 
   1121d:	8b 45 d8             	mov    -0x28(%ebp),%eax
   11220:	05 ac 0f 00 00       	add    $0xfac,%eax
   11225:	89 c2                	mov    %eax,%edx
   11227:	8b 45 cc             	mov    -0x34(%ebp),%eax
   1122a:	89 50 10             	mov    %edx,0x10(%eax)
   1122d:	8b 45 cc             	mov    -0x34(%ebp),%eax
   11230:	c7 40 14 64 00 00 00 	movl   $0x64,0x14(%eax)
   11237:	8b 45 cc             	mov    -0x34(%ebp),%eax
   1123a:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
   11241:	8b 45 cc             	mov    -0x34(%ebp),%eax
   11244:	83 c0 1c             	add    $0x1c,%eax
   11247:	83 ec 0c             	sub    $0xc,%esp
   1124a:	50                   	push   %eax
   1124b:	e8 ff 09 00 00       	call   11c4f <INIT_LIST_HEAD>
   11250:	83 c4 10             	add    $0x10,%esp
   11253:	8b 45 cc             	mov    -0x34(%ebp),%eax
   11256:	83 c0 24             	add    $0x24,%eax
   11259:	83 ec 0c             	sub    $0xc,%esp
   1125c:	50                   	push   %eax
   1125d:	e8 ed 09 00 00       	call   11c4f <INIT_LIST_HEAD>
   11262:	83 c4 10             	add    $0x10,%esp
   11265:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   11268:	8b 45 cc             	mov    -0x34(%ebp),%eax
   1126b:	89 50 2c             	mov    %edx,0x2c(%eax)
   1126e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   11271:	8d 50 1c             	lea    0x1c(%eax),%edx
   11274:	8b 45 cc             	mov    -0x34(%ebp),%eax
   11277:	83 c0 24             	add    $0x24,%eax
   1127a:	83 ec 08             	sub    $0x8,%esp
   1127d:	52                   	push   %edx
   1127e:	50                   	push   %eax
   1127f:	e8 24 0a 00 00       	call   11ca8 <list_add_tail>
   11284:	83 c4 10             	add    $0x10,%esp
   11287:	8b 45 cc             	mov    -0x34(%ebp),%eax
   1128a:	83 c0 08             	add    $0x8,%eax
   1128d:	83 ec 08             	sub    $0x8,%esp
   11290:	68 60 46 01 00       	push   $0x14660
   11295:	50                   	push   %eax
   11296:	e8 0d 0a 00 00       	call   11ca8 <list_add_tail>
   1129b:	83 c4 10             	add    $0x10,%esp
   1129e:	8b 45 cc             	mov    -0x34(%ebp),%eax
   112a1:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
   112a8:	8b 45 cc             	mov    -0x34(%ebp),%eax
   112ab:	8b 00                	mov    (%eax),%eax
   112ad:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   112b0:	c9                   	leave  
   112b1:	c3                   	ret    

000112b2 <sys_exit>:
   112b2:	55                   	push   %ebp
   112b3:	89 e5                	mov    %esp,%ebp
   112b5:	83 ec 28             	sub    $0x28,%esp
   112b8:	e8 fd 0c 00 00       	call   11fba <current>
   112bd:	89 45 f4             	mov    %eax,-0xc(%ebp)
   112c0:	83 ec 0c             	sub    $0xc,%esp
   112c3:	ff 75 f4             	push   -0xc(%ebp)
   112c6:	e8 2e f8 ff ff       	call   10af9 <get_DIR>
   112cb:	83 c4 10             	add    $0x10,%esp
   112ce:	89 45 f0             	mov    %eax,-0x10(%ebp)
   112d1:	8b 45 f0             	mov    -0x10(%ebp),%eax
   112d4:	83 c0 04             	add    $0x4,%eax
   112d7:	8b 00                	mov    (%eax),%eax
   112d9:	c1 e8 0c             	shr    $0xc,%eax
   112dc:	89 45 ec             	mov    %eax,-0x14(%ebp)
   112df:	8b 45 ec             	mov    -0x14(%ebp),%eax
   112e2:	c1 f8 0c             	sar    $0xc,%eax
   112e5:	89 45 e8             	mov    %eax,-0x18(%ebp)
   112e8:	83 ec 0c             	sub    $0xc,%esp
   112eb:	ff 75 e8             	push   -0x18(%ebp)
   112ee:	e8 37 06 00 00       	call   1192a <free_user_pages>
   112f3:	83 c4 10             	add    $0x10,%esp
   112f6:	8b 45 e8             	mov    -0x18(%ebp),%eax
   112f9:	83 c0 04             	add    $0x4,%eax
   112fc:	8b 00                	mov    (%eax),%eax
   112fe:	c1 e8 0c             	shr    $0xc,%eax
   11301:	83 ec 0c             	sub    $0xc,%esp
   11304:	50                   	push   %eax
   11305:	e8 7c 06 00 00       	call   11986 <free_frame>
   1130a:	83 c4 10             	add    $0x10,%esp
   1130d:	83 ec 08             	sub    $0x8,%esp
   11310:	6a 00                	push   $0x0
   11312:	ff 75 f0             	push   -0x10(%ebp)
   11315:	e8 3c 07 00 00       	call   11a56 <get_frame>
   1131a:	83 c4 10             	add    $0x10,%esp
   1131d:	83 ec 0c             	sub    $0xc,%esp
   11320:	50                   	push   %eax
   11321:	e8 60 06 00 00       	call   11986 <free_frame>
   11326:	83 c4 10             	add    $0x10,%esp
   11329:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1132c:	c1 e8 0c             	shr    $0xc,%eax
   1132f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   11332:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   11335:	83 ec 0c             	sub    $0xc,%esp
   11338:	50                   	push   %eax
   11339:	e8 48 06 00 00       	call   11986 <free_frame>
   1133e:	83 c4 10             	add    $0x10,%esp
   11341:	e8 93 f9 ff ff       	call   10cd9 <sched_next_rr>
   11346:	90                   	nop
   11347:	c9                   	leave  
   11348:	c3                   	ret    

00011349 <sys_block>:
   11349:	55                   	push   %ebp
   1134a:	89 e5                	mov    %esp,%ebp
   1134c:	83 ec 18             	sub    $0x18,%esp
   1134f:	e8 66 0c 00 00       	call   11fba <current>
   11354:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11357:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1135a:	8b 40 18             	mov    0x18(%eax),%eax
   1135d:	85 c0                	test   %eax,%eax
   1135f:	75 1a                	jne    1137b <sys_block+0x32>
   11361:	83 ec 08             	sub    $0x8,%esp
   11364:	68 48 53 01 00       	push   $0x15348
   11369:	ff 75 f4             	push   -0xc(%ebp)
   1136c:	e8 f3 f8 ff ff       	call   10c64 <update_process_state_rr>
   11371:	83 c4 10             	add    $0x10,%esp
   11374:	e8 60 f9 ff ff       	call   10cd9 <sched_next_rr>
   11379:	eb 0f                	jmp    1138a <sys_block+0x41>
   1137b:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1137e:	8b 40 18             	mov    0x18(%eax),%eax
   11381:	8d 50 ff             	lea    -0x1(%eax),%edx
   11384:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11387:	89 50 18             	mov    %edx,0x18(%eax)
   1138a:	90                   	nop
   1138b:	c9                   	leave  
   1138c:	c3                   	ret    

0001138d <sys_unblock>:
   1138d:	55                   	push   %ebp
   1138e:	89 e5                	mov    %esp,%ebp
   11390:	83 ec 28             	sub    $0x28,%esp
   11393:	e8 22 0c 00 00       	call   11fba <current>
   11398:	89 45 ec             	mov    %eax,-0x14(%ebp)
   1139b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   113a2:	8b 45 ec             	mov    -0x14(%ebp),%eax
   113a5:	8b 40 1c             	mov    0x1c(%eax),%eax
   113a8:	89 45 f4             	mov    %eax,-0xc(%ebp)
   113ab:	eb 2b                	jmp    113d8 <sys_unblock+0x4b>
   113ad:	83 ec 0c             	sub    $0xc,%esp
   113b0:	ff 75 f4             	push   -0xc(%ebp)
   113b3:	e8 3e f4 ff ff       	call   107f6 <list_head_to_task_struct>
   113b8:	83 c4 10             	add    $0x10,%esp
   113bb:	89 45 e8             	mov    %eax,-0x18(%ebp)
   113be:	8b 45 e8             	mov    -0x18(%ebp),%eax
   113c1:	8b 00                	mov    (%eax),%eax
   113c3:	39 45 08             	cmp    %eax,0x8(%ebp)
   113c6:	75 08                	jne    113d0 <sys_unblock+0x43>
   113c8:	8b 45 e8             	mov    -0x18(%ebp),%eax
   113cb:	89 45 f0             	mov    %eax,-0x10(%ebp)
   113ce:	eb 13                	jmp    113e3 <sys_unblock+0x56>
   113d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
   113d3:	8b 00                	mov    (%eax),%eax
   113d5:	89 45 f4             	mov    %eax,-0xc(%ebp)
   113d8:	8b 45 ec             	mov    -0x14(%ebp),%eax
   113db:	83 c0 1c             	add    $0x1c,%eax
   113de:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   113e1:	75 ca                	jne    113ad <sys_unblock+0x20>
   113e3:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   113e7:	75 07                	jne    113f0 <sys_unblock+0x63>
   113e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   113ee:	eb 45                	jmp    11435 <sys_unblock+0xa8>
   113f0:	83 ec 0c             	sub    $0xc,%esp
   113f3:	ff 75 f0             	push   -0x10(%ebp)
   113f6:	e8 fb f3 ff ff       	call   107f6 <list_head_to_task_struct>
   113fb:	83 c4 10             	add    $0x10,%esp
   113fe:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   11401:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   11404:	8b 40 34             	mov    0x34(%eax),%eax
   11407:	83 f8 02             	cmp    $0x2,%eax
   1140a:	75 15                	jne    11421 <sys_unblock+0x94>
   1140c:	83 ec 08             	sub    $0x8,%esp
   1140f:	68 60 46 01 00       	push   $0x14660
   11414:	ff 75 f0             	push   -0x10(%ebp)
   11417:	e8 48 f8 ff ff       	call   10c64 <update_process_state_rr>
   1141c:	83 c4 10             	add    $0x10,%esp
   1141f:	eb 0f                	jmp    11430 <sys_unblock+0xa3>
   11421:	8b 45 ec             	mov    -0x14(%ebp),%eax
   11424:	8b 40 18             	mov    0x18(%eax),%eax
   11427:	8d 50 01             	lea    0x1(%eax),%edx
   1142a:	8b 45 ec             	mov    -0x14(%ebp),%eax
   1142d:	89 50 18             	mov    %edx,0x18(%eax)
   11430:	b8 00 00 00 00       	mov    $0x0,%eax
   11435:	c9                   	leave  
   11436:	c3                   	ret    

00011437 <clear_page_table>:
   11437:	55                   	push   %ebp
   11438:	89 e5                	mov    %esp,%ebp
   1143a:	83 ec 10             	sub    $0x10,%esp
   1143d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   11444:	eb 19                	jmp    1145f <clear_page_table+0x28>
   11446:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11449:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11450:	8b 45 08             	mov    0x8(%ebp),%eax
   11453:	01 d0                	add    %edx,%eax
   11455:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   1145b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   1145f:	81 7d fc ff 03 00 00 	cmpl   $0x3ff,-0x4(%ebp)
   11466:	7e de                	jle    11446 <clear_page_table+0xf>
   11468:	90                   	nop
   11469:	90                   	nop
   1146a:	c9                   	leave  
   1146b:	c3                   	ret    

0001146c <set_user_pages>:
   1146c:	55                   	push   %ebp
   1146d:	89 e5                	mov    %esp,%ebp
   1146f:	83 ec 18             	sub    $0x18,%esp
   11472:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   11479:	e9 84 00 00 00       	jmp    11502 <set_user_pages+0x96>
   1147e:	e8 64 04 00 00       	call   118e7 <alloc_frame>
   11483:	89 45 f0             	mov    %eax,-0x10(%ebp)
   11486:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11489:	83 c0 14             	add    $0x14,%eax
   1148c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11493:	8b 45 08             	mov    0x8(%ebp),%eax
   11496:	01 d0                	add    %edx,%eax
   11498:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   1149e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   114a1:	83 c0 14             	add    $0x14,%eax
   114a4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   114ab:	8b 45 08             	mov    0x8(%ebp),%eax
   114ae:	01 d0                	add    %edx,%eax
   114b0:	8b 55 f0             	mov    -0x10(%ebp),%edx
   114b3:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   114b9:	89 d1                	mov    %edx,%ecx
   114bb:	c1 e1 0c             	shl    $0xc,%ecx
   114be:	8b 10                	mov    (%eax),%edx
   114c0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
   114c6:	09 ca                	or     %ecx,%edx
   114c8:	89 10                	mov    %edx,(%eax)
   114ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
   114cd:	83 c0 14             	add    $0x14,%eax
   114d0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   114d7:	8b 45 08             	mov    0x8(%ebp),%eax
   114da:	01 d0                	add    %edx,%eax
   114dc:	0f b6 10             	movzbl (%eax),%edx
   114df:	83 ca 04             	or     $0x4,%edx
   114e2:	88 10                	mov    %dl,(%eax)
   114e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
   114e7:	83 c0 14             	add    $0x14,%eax
   114ea:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   114f1:	8b 45 08             	mov    0x8(%ebp),%eax
   114f4:	01 d0                	add    %edx,%eax
   114f6:	0f b6 10             	movzbl (%eax),%edx
   114f9:	83 ca 01             	or     $0x1,%edx
   114fc:	88 10                	mov    %dl,(%eax)
   114fe:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   11502:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
   11506:	0f 8e 72 ff ff ff    	jle    1147e <set_user_pages+0x12>
   1150c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   11513:	e9 8f 00 00 00       	jmp    115a7 <set_user_pages+0x13b>
   11518:	e8 ca 03 00 00       	call   118e7 <alloc_frame>
   1151d:	89 45 f0             	mov    %eax,-0x10(%ebp)
   11520:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11523:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   1152a:	8b 45 08             	mov    0x8(%ebp),%eax
   1152d:	01 d0                	add    %edx,%eax
   1152f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   11535:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11538:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   1153f:	8b 45 08             	mov    0x8(%ebp),%eax
   11542:	01 d0                	add    %edx,%eax
   11544:	8b 55 f0             	mov    -0x10(%ebp),%edx
   11547:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   1154d:	89 d1                	mov    %edx,%ecx
   1154f:	c1 e1 0c             	shl    $0xc,%ecx
   11552:	8b 10                	mov    (%eax),%edx
   11554:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
   1155a:	09 ca                	or     %ecx,%edx
   1155c:	89 10                	mov    %edx,(%eax)
   1155e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11561:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11568:	8b 45 08             	mov    0x8(%ebp),%eax
   1156b:	01 d0                	add    %edx,%eax
   1156d:	0f b6 10             	movzbl (%eax),%edx
   11570:	83 ca 04             	or     $0x4,%edx
   11573:	88 10                	mov    %dl,(%eax)
   11575:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11578:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   1157f:	8b 45 08             	mov    0x8(%ebp),%eax
   11582:	01 d0                	add    %edx,%eax
   11584:	0f b6 10             	movzbl (%eax),%edx
   11587:	83 ca 02             	or     $0x2,%edx
   1158a:	88 10                	mov    %dl,(%eax)
   1158c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1158f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11596:	8b 45 08             	mov    0x8(%ebp),%eax
   11599:	01 d0                	add    %edx,%eax
   1159b:	0f b6 10             	movzbl (%eax),%edx
   1159e:	83 ca 01             	or     $0x1,%edx
   115a1:	88 10                	mov    %dl,(%eax)
   115a3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   115a7:	83 7d f4 13          	cmpl   $0x13,-0xc(%ebp)
   115ab:	0f 8e 67 ff ff ff    	jle    11518 <set_user_pages+0xac>
   115b1:	68 07 2c 01 00       	push   $0x12c07
   115b6:	6a 1c                	push   $0x1c
   115b8:	6a 00                	push   $0x0
   115ba:	ff 75 08             	push   0x8(%ebp)
   115bd:	e8 8a 10 00 00       	call   1264c <show_PT_range>
   115c2:	83 c4 10             	add    $0x10,%esp
   115c5:	90                   	nop
   115c6:	c9                   	leave  
   115c7:	c3                   	ret    

000115c8 <set_kernel_pages>:
   115c8:	55                   	push   %ebp
   115c9:	89 e5                	mov    %esp,%ebp
   115cb:	83 ec 18             	sub    $0x18,%esp
   115ce:	a1 a0 4e 01 00       	mov    0x14ea0,%eax
   115d3:	89 45 f4             	mov    %eax,-0xc(%ebp)
   115d6:	eb 19                	jmp    115f1 <set_kernel_pages+0x29>
   115d8:	8b 55 f4             	mov    -0xc(%ebp),%edx
   115db:	8b 45 f4             	mov    -0xc(%ebp),%eax
   115de:	6a 00                	push   $0x0
   115e0:	52                   	push   %edx
   115e1:	50                   	push   %eax
   115e2:	ff 75 08             	push   0x8(%ebp)
   115e5:	e8 b6 03 00 00       	call   119a0 <set_ss_pag>
   115ea:	83 c4 10             	add    $0x10,%esp
   115ed:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   115f1:	a1 a4 4e 01 00       	mov    0x14ea4,%eax
   115f6:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   115f9:	7c dd                	jl     115d8 <set_kernel_pages+0x10>
   115fb:	6a 00                	push   $0x0
   115fd:	68 90 00 00 00       	push   $0x90
   11602:	68 90 00 00 00       	push   $0x90
   11607:	ff 75 08             	push   0x8(%ebp)
   1160a:	e8 91 03 00 00       	call   119a0 <set_ss_pag>
   1160f:	83 c4 10             	add    $0x10,%esp
   11612:	6a 00                	push   $0x0
   11614:	68 b8 00 00 00       	push   $0xb8
   11619:	68 b8 00 00 00       	push   $0xb8
   1161e:	ff 75 08             	push   0x8(%ebp)
   11621:	e8 7a 03 00 00       	call   119a0 <set_ss_pag>
   11626:	83 c4 10             	add    $0x10,%esp
   11629:	83 ec 0c             	sub    $0xc,%esp
   1162c:	68 22 2c 01 00       	push   $0x12c22
   11631:	e8 80 f1 ff ff       	call   107b6 <printk>
   11636:	83 c4 10             	add    $0x10,%esp
   11639:	a1 a4 4e 01 00       	mov    0x14ea4,%eax
   1163e:	8b 15 a0 4e 01 00    	mov    0x14ea0,%edx
   11644:	29 d0                	sub    %edx,%eax
   11646:	8d 50 01             	lea    0x1(%eax),%edx
   11649:	a1 a0 4e 01 00       	mov    0x14ea0,%eax
   1164e:	68 24 2c 01 00       	push   $0x12c24
   11653:	52                   	push   %edx
   11654:	50                   	push   %eax
   11655:	ff 75 08             	push   0x8(%ebp)
   11658:	e8 ef 0f 00 00       	call   1264c <show_PT_range>
   1165d:	83 c4 10             	add    $0x10,%esp
   11660:	68 41 2c 01 00       	push   $0x12c41
   11665:	6a 01                	push   $0x1
   11667:	68 90 00 00 00       	push   $0x90
   1166c:	ff 75 08             	push   0x8(%ebp)
   1166f:	e8 d8 0f 00 00       	call   1264c <show_PT_range>
   11674:	83 c4 10             	add    $0x10,%esp
   11677:	68 54 2c 01 00       	push   $0x12c54
   1167c:	6a 01                	push   $0x1
   1167e:	68 b8 00 00 00       	push   $0xb8
   11683:	ff 75 08             	push   0x8(%ebp)
   11686:	e8 c1 0f 00 00       	call   1264c <show_PT_range>
   1168b:	83 c4 10             	add    $0x10,%esp
   1168e:	90                   	nop
   1168f:	c9                   	leave  
   11690:	c3                   	ret    

00011691 <set_pe_flag>:
   11691:	55                   	push   %ebp
   11692:	89 e5                	mov    %esp,%ebp
   11694:	83 ec 18             	sub    $0x18,%esp
   11697:	e8 0d 09 00 00       	call   11fa9 <read_cr0>
   1169c:	89 45 f4             	mov    %eax,-0xc(%ebp)
   1169f:	81 4d f4 00 00 00 80 	orl    $0x80000000,-0xc(%ebp)
   116a6:	8b 45 f4             	mov    -0xc(%ebp),%eax
   116a9:	83 ec 0c             	sub    $0xc,%esp
   116ac:	50                   	push   %eax
   116ad:	e8 fb 08 00 00       	call   11fad <write_cr0>
   116b2:	83 c4 10             	add    $0x10,%esp
   116b5:	90                   	nop
   116b6:	c9                   	leave  
   116b7:	c3                   	ret    

000116b8 <init_mm>:
   116b8:	55                   	push   %ebp
   116b9:	89 e5                	mov    %esp,%ebp
   116bb:	83 ec 08             	sub    $0x8,%esp
   116be:	c7 05 a0 4e 01 00 10 	movl   $0x10,0x14ea0
   116c5:	00 00 00 
   116c8:	a1 a4 3d 01 00       	mov    0x13da4,%eax
   116cd:	8b 10                	mov    (%eax),%edx
   116cf:	a1 a8 3d 01 00       	mov    0x13da8,%eax
   116d4:	8b 00                	mov    (%eax),%eax
   116d6:	01 d0                	add    %edx,%eax
   116d8:	05 00 00 01 00       	add    $0x10000,%eax
   116dd:	c1 e8 0c             	shr    $0xc,%eax
   116e0:	83 c0 01             	add    $0x1,%eax
   116e3:	a3 a4 4e 01 00       	mov    %eax,0x14ea4
   116e8:	e8 81 01 00 00       	call   1186e <init_frames>
   116ed:	90                   	nop
   116ee:	c9                   	leave  
   116ef:	c3                   	ret    

000116f0 <setGdt>:
   116f0:	55                   	push   %ebp
   116f1:	89 e5                	mov    %esp,%ebp
   116f3:	83 ec 08             	sub    $0x8,%esp
   116f6:	ba e0 52 01 00       	mov    $0x152e0,%edx
   116fb:	a1 28 3e 01 00       	mov    0x13e28,%eax
   11700:	83 c0 30             	add    $0x30,%eax
   11703:	66 89 50 02          	mov    %dx,0x2(%eax)
   11707:	b8 e0 52 01 00       	mov    $0x152e0,%eax
   1170c:	c1 e8 10             	shr    $0x10,%eax
   1170f:	89 c2                	mov    %eax,%edx
   11711:	a1 28 3e 01 00       	mov    0x13e28,%eax
   11716:	83 c0 30             	add    $0x30,%eax
   11719:	88 50 04             	mov    %dl,0x4(%eax)
   1171c:	b8 e0 52 01 00       	mov    $0x152e0,%eax
   11721:	c1 e8 18             	shr    $0x18,%eax
   11724:	89 c2                	mov    %eax,%edx
   11726:	a1 28 3e 01 00       	mov    0x13e28,%eax
   1172b:	83 c0 30             	add    $0x30,%eax
   1172e:	88 50 07             	mov    %dl,0x7(%eax)
   11731:	a1 28 3e 01 00       	mov    0x13e28,%eax
   11736:	a3 c2 52 01 00       	mov    %eax,0x152c2
   1173b:	66 c7 05 c0 52 01 00 	movw   $0x800,0x152c0
   11742:	00 08 
   11744:	83 ec 0c             	sub    $0xc,%esp
   11747:	68 c0 52 01 00       	push   $0x152c0
   1174c:	e8 e1 07 00 00       	call   11f32 <set_gdt_reg>
   11751:	83 c4 10             	add    $0x10,%esp
   11754:	90                   	nop
   11755:	c9                   	leave  
   11756:	c3                   	ret    

00011757 <setTSS>:
   11757:	55                   	push   %ebp
   11758:	89 e5                	mov    %esp,%ebp
   1175a:	83 ec 08             	sub    $0x8,%esp
   1175d:	66 c7 05 e0 52 01 00 	movw   $0x0,0x152e0
   11764:	00 00 
   11766:	b8 80 4a 01 00       	mov    $0x14a80,%eax
   1176b:	a3 e4 52 01 00       	mov    %eax,0x152e4
   11770:	66 c7 05 e8 52 01 00 	movw   $0x18,0x152e8
   11777:	18 00 
   11779:	c7 05 ec 52 01 00 00 	movl   $0x0,0x152ec
   11780:	00 00 00 
   11783:	66 c7 05 f0 52 01 00 	movw   $0x0,0x152f0
   1178a:	00 00 
   1178c:	c7 05 f4 52 01 00 00 	movl   $0x0,0x152f4
   11793:	00 00 00 
   11796:	66 c7 05 f8 52 01 00 	movw   $0x0,0x152f8
   1179d:	00 00 
   1179f:	c7 05 fc 52 01 00 00 	movl   $0x0,0x152fc
   117a6:	00 00 00 
   117a9:	c7 05 00 53 01 00 00 	movl   $0x0,0x15300
   117b0:	00 00 00 
   117b3:	c7 05 04 53 01 00 00 	movl   $0x200,0x15304
   117ba:	02 00 00 
   117bd:	c7 05 08 53 01 00 00 	movl   $0x0,0x15308
   117c4:	00 00 00 
   117c7:	c7 05 0c 53 01 00 00 	movl   $0x0,0x1530c
   117ce:	00 00 00 
   117d1:	c7 05 10 53 01 00 00 	movl   $0x0,0x15310
   117d8:	00 00 00 
   117db:	c7 05 14 53 01 00 00 	movl   $0x0,0x15314
   117e2:	00 00 00 
   117e5:	c7 05 18 53 01 00 00 	movl   $0x414000,0x15318
   117ec:	40 41 00 
   117ef:	a1 18 53 01 00       	mov    0x15318,%eax
   117f4:	a3 1c 53 01 00       	mov    %eax,0x1531c
   117f9:	c7 05 20 53 01 00 00 	movl   $0x0,0x15320
   11800:	00 00 00 
   11803:	c7 05 24 53 01 00 00 	movl   $0x0,0x15324
   1180a:	00 00 00 
   1180d:	66 c7 05 28 53 01 00 	movw   $0x2b,0x15328
   11814:	2b 00 
   11816:	66 c7 05 2c 53 01 00 	movw   $0x23,0x1532c
   1181d:	23 00 
   1181f:	66 c7 05 30 53 01 00 	movw   $0x2b,0x15330
   11826:	2b 00 
   11828:	66 c7 05 34 53 01 00 	movw   $0x2b,0x15334
   1182f:	2b 00 
   11831:	66 c7 05 38 53 01 00 	movw   $0x0,0x15338
   11838:	00 00 
   1183a:	66 c7 05 3c 53 01 00 	movw   $0x0,0x1533c
   11841:	00 00 
   11843:	66 c7 05 40 53 01 00 	movw   $0x30,0x15340
   1184a:	30 00 
   1184c:	66 c7 05 44 53 01 00 	movw   $0x0,0x15344
   11853:	00 00 
   11855:	66 c7 05 46 53 01 00 	movw   $0x0,0x15346
   1185c:	00 00 
   1185e:	83 ec 0c             	sub    $0xc,%esp
   11861:	6a 30                	push   $0x30
   11863:	e8 e0 06 00 00       	call   11f48 <set_task_reg>
   11868:	83 c4 10             	add    $0x10,%esp
   1186b:	90                   	nop
   1186c:	c9                   	leave  
   1186d:	c3                   	ret    

0001186e <init_frames>:
   1186e:	55                   	push   %ebp
   1186f:	89 e5                	mov    %esp,%ebp
   11871:	83 ec 10             	sub    $0x10,%esp
   11874:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   1187b:	eb 0f                	jmp    1188c <init_frames+0x1e>
   1187d:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11880:	05 c0 4e 01 00       	add    $0x14ec0,%eax
   11885:	c6 00 00             	movb   $0x0,(%eax)
   11888:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   1188c:	81 7d fc ff 03 00 00 	cmpl   $0x3ff,-0x4(%ebp)
   11893:	7e e8                	jle    1187d <init_frames+0xf>
   11895:	a1 a0 4e 01 00       	mov    0x14ea0,%eax
   1189a:	89 45 fc             	mov    %eax,-0x4(%ebp)
   1189d:	eb 0f                	jmp    118ae <init_frames+0x40>
   1189f:	8b 45 fc             	mov    -0x4(%ebp),%eax
   118a2:	05 c0 4e 01 00       	add    $0x14ec0,%eax
   118a7:	c6 00 01             	movb   $0x1,(%eax)
   118aa:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   118ae:	a1 a4 4e 01 00       	mov    0x14ea4,%eax
   118b3:	39 45 fc             	cmp    %eax,-0x4(%ebp)
   118b6:	7c e7                	jl     1189f <init_frames+0x31>
   118b8:	c6 05 50 4f 01 00 01 	movb   $0x1,0x14f50
   118bf:	c7 45 fc a0 00 00 00 	movl   $0xa0,-0x4(%ebp)
   118c6:	eb 0f                	jmp    118d7 <init_frames+0x69>
   118c8:	8b 45 fc             	mov    -0x4(%ebp),%eax
   118cb:	05 c0 4e 01 00       	add    $0x14ec0,%eax
   118d0:	c6 00 01             	movb   $0x1,(%eax)
   118d3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   118d7:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
   118de:	7e e8                	jle    118c8 <init_frames+0x5a>
   118e0:	b8 00 00 00 00       	mov    $0x0,%eax
   118e5:	c9                   	leave  
   118e6:	c3                   	ret    

000118e7 <alloc_frame>:
   118e7:	55                   	push   %ebp
   118e8:	89 e5                	mov    %esp,%ebp
   118ea:	83 ec 10             	sub    $0x10,%esp
   118ed:	a1 a4 4e 01 00       	mov    0x14ea4,%eax
   118f2:	89 45 fc             	mov    %eax,-0x4(%ebp)
   118f5:	eb 23                	jmp    1191a <alloc_frame+0x33>
   118f7:	8b 45 fc             	mov    -0x4(%ebp),%eax
   118fa:	05 c0 4e 01 00       	add    $0x14ec0,%eax
   118ff:	0f b6 00             	movzbl (%eax),%eax
   11902:	84 c0                	test   %al,%al
   11904:	75 10                	jne    11916 <alloc_frame+0x2f>
   11906:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11909:	05 c0 4e 01 00       	add    $0x14ec0,%eax
   1190e:	c6 00 01             	movb   $0x1,(%eax)
   11911:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11914:	eb 12                	jmp    11928 <alloc_frame+0x41>
   11916:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   1191a:	81 7d fc ff 03 00 00 	cmpl   $0x3ff,-0x4(%ebp)
   11921:	7e d4                	jle    118f7 <alloc_frame+0x10>
   11923:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   11928:	c9                   	leave  
   11929:	c3                   	ret    

0001192a <free_user_pages>:
   1192a:	55                   	push   %ebp
   1192b:	89 e5                	mov    %esp,%ebp
   1192d:	83 ec 18             	sub    $0x18,%esp
   11930:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   11937:	eb 43                	jmp    1197c <free_user_pages+0x52>
   11939:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1193c:	05 00 04 00 00       	add    $0x400,%eax
   11941:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11948:	8b 45 08             	mov    0x8(%ebp),%eax
   1194b:	01 d0                	add    %edx,%eax
   1194d:	8b 00                	mov    (%eax),%eax
   1194f:	c1 e8 0c             	shr    $0xc,%eax
   11952:	83 ec 0c             	sub    $0xc,%esp
   11955:	50                   	push   %eax
   11956:	e8 2b 00 00 00       	call   11986 <free_frame>
   1195b:	83 c4 10             	add    $0x10,%esp
   1195e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11961:	05 00 04 00 00       	add    $0x400,%eax
   11966:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   1196d:	8b 45 08             	mov    0x8(%ebp),%eax
   11970:	01 d0                	add    %edx,%eax
   11972:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   11978:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   1197c:	83 7d f4 13          	cmpl   $0x13,-0xc(%ebp)
   11980:	7e b7                	jle    11939 <free_user_pages+0xf>
   11982:	90                   	nop
   11983:	90                   	nop
   11984:	c9                   	leave  
   11985:	c3                   	ret    

00011986 <free_frame>:
   11986:	55                   	push   %ebp
   11987:	89 e5                	mov    %esp,%ebp
   11989:	81 7d 08 ff 03 00 00 	cmpl   $0x3ff,0x8(%ebp)
   11990:	77 0b                	ja     1199d <free_frame+0x17>
   11992:	8b 45 08             	mov    0x8(%ebp),%eax
   11995:	05 c0 4e 01 00       	add    $0x14ec0,%eax
   1199a:	c6 00 00             	movb   $0x0,(%eax)
   1199d:	90                   	nop
   1199e:	5d                   	pop    %ebp
   1199f:	c3                   	ret    

000119a0 <set_ss_pag>:
   119a0:	55                   	push   %ebp
   119a1:	89 e5                	mov    %esp,%ebp
   119a3:	8b 45 0c             	mov    0xc(%ebp),%eax
   119a6:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   119ad:	8b 45 08             	mov    0x8(%ebp),%eax
   119b0:	01 d0                	add    %edx,%eax
   119b2:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   119b8:	8b 45 0c             	mov    0xc(%ebp),%eax
   119bb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   119c2:	8b 45 08             	mov    0x8(%ebp),%eax
   119c5:	01 d0                	add    %edx,%eax
   119c7:	8b 55 10             	mov    0x10(%ebp),%edx
   119ca:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   119d0:	89 d1                	mov    %edx,%ecx
   119d2:	c1 e1 0c             	shl    $0xc,%ecx
   119d5:	8b 10                	mov    (%eax),%edx
   119d7:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
   119dd:	09 ca                	or     %ecx,%edx
   119df:	89 10                	mov    %edx,(%eax)
   119e1:	8b 45 0c             	mov    0xc(%ebp),%eax
   119e4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   119eb:	8b 45 08             	mov    0x8(%ebp),%eax
   119ee:	01 c2                	add    %eax,%edx
   119f0:	8b 45 14             	mov    0x14(%ebp),%eax
   119f3:	83 e0 01             	and    $0x1,%eax
   119f6:	83 e0 01             	and    $0x1,%eax
   119f9:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   11a00:	0f b6 02             	movzbl (%edx),%eax
   11a03:	83 e0 fb             	and    $0xfffffffb,%eax
   11a06:	09 c8                	or     %ecx,%eax
   11a08:	88 02                	mov    %al,(%edx)
   11a0a:	8b 45 0c             	mov    0xc(%ebp),%eax
   11a0d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11a14:	8b 45 08             	mov    0x8(%ebp),%eax
   11a17:	01 d0                	add    %edx,%eax
   11a19:	0f b6 10             	movzbl (%eax),%edx
   11a1c:	83 ca 02             	or     $0x2,%edx
   11a1f:	88 10                	mov    %dl,(%eax)
   11a21:	8b 45 0c             	mov    0xc(%ebp),%eax
   11a24:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11a2b:	8b 45 08             	mov    0x8(%ebp),%eax
   11a2e:	01 d0                	add    %edx,%eax
   11a30:	0f b6 10             	movzbl (%eax),%edx
   11a33:	83 ca 01             	or     $0x1,%edx
   11a36:	88 10                	mov    %dl,(%eax)
   11a38:	90                   	nop
   11a39:	5d                   	pop    %ebp
   11a3a:	c3                   	ret    

00011a3b <del_ss_pag>:
   11a3b:	55                   	push   %ebp
   11a3c:	89 e5                	mov    %esp,%ebp
   11a3e:	8b 45 0c             	mov    0xc(%ebp),%eax
   11a41:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11a48:	8b 45 08             	mov    0x8(%ebp),%eax
   11a4b:	01 d0                	add    %edx,%eax
   11a4d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   11a53:	90                   	nop
   11a54:	5d                   	pop    %ebp
   11a55:	c3                   	ret    

00011a56 <get_frame>:
   11a56:	55                   	push   %ebp
   11a57:	89 e5                	mov    %esp,%ebp
   11a59:	8b 45 0c             	mov    0xc(%ebp),%eax
   11a5c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11a63:	8b 45 08             	mov    0x8(%ebp),%eax
   11a66:	01 d0                	add    %edx,%eax
   11a68:	8b 00                	mov    (%eax),%eax
   11a6a:	c1 e8 0c             	shr    $0xc,%eax
   11a6d:	5d                   	pop    %ebp
   11a6e:	c3                   	ret    

00011a6f <sys_write_console>:
   11a6f:	55                   	push   %ebp
   11a70:	89 e5                	mov    %esp,%ebp
   11a72:	83 ec 18             	sub    $0x18,%esp
   11a75:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   11a7c:	eb 1e                	jmp    11a9c <sys_write_console+0x2d>
   11a7e:	8b 55 f4             	mov    -0xc(%ebp),%edx
   11a81:	8b 45 08             	mov    0x8(%ebp),%eax
   11a84:	01 d0                	add    %edx,%eax
   11a86:	0f b6 00             	movzbl (%eax),%eax
   11a89:	0f be c0             	movsbl %al,%eax
   11a8c:	83 ec 0c             	sub    $0xc,%esp
   11a8f:	50                   	push   %eax
   11a90:	e8 a3 eb ff ff       	call   10638 <printc>
   11a95:	83 c4 10             	add    $0x10,%esp
   11a98:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   11a9c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11a9f:	3b 45 0c             	cmp    0xc(%ebp),%eax
   11aa2:	7c da                	jl     11a7e <sys_write_console+0xf>
   11aa4:	8b 45 0c             	mov    0xc(%ebp),%eax
   11aa7:	c9                   	leave  
   11aa8:	c3                   	ret    

00011aa9 <copy_data>:
   11aa9:	55                   	push   %ebp
   11aaa:	89 e5                	mov    %esp,%ebp
   11aac:	83 ec 10             	sub    $0x10,%esp
   11aaf:	8b 45 08             	mov    0x8(%ebp),%eax
   11ab2:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11ab5:	8b 45 0c             	mov    0xc(%ebp),%eax
   11ab8:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11abb:	eb 1a                	jmp    11ad7 <copy_data+0x2e>
   11abd:	8b 55 fc             	mov    -0x4(%ebp),%edx
   11ac0:	8d 42 04             	lea    0x4(%edx),%eax
   11ac3:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11ac6:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11ac9:	8d 48 04             	lea    0x4(%eax),%ecx
   11acc:	89 4d f8             	mov    %ecx,-0x8(%ebp)
   11acf:	8b 12                	mov    (%edx),%edx
   11ad1:	89 10                	mov    %edx,(%eax)
   11ad3:	83 6d 10 04          	subl   $0x4,0x10(%ebp)
   11ad7:	83 7d 10 04          	cmpl   $0x4,0x10(%ebp)
   11adb:	7f e0                	jg     11abd <copy_data+0x14>
   11add:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11ae0:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11ae3:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11ae6:	89 45 f0             	mov    %eax,-0x10(%ebp)
   11ae9:	eb 1b                	jmp    11b06 <copy_data+0x5d>
   11aeb:	8b 55 f4             	mov    -0xc(%ebp),%edx
   11aee:	8d 42 01             	lea    0x1(%edx),%eax
   11af1:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11af4:	8b 45 f0             	mov    -0x10(%ebp),%eax
   11af7:	8d 48 01             	lea    0x1(%eax),%ecx
   11afa:	89 4d f0             	mov    %ecx,-0x10(%ebp)
   11afd:	0f b6 12             	movzbl (%edx),%edx
   11b00:	88 10                	mov    %dl,(%eax)
   11b02:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
   11b06:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   11b0a:	7f df                	jg     11aeb <copy_data+0x42>
   11b0c:	90                   	nop
   11b0d:	90                   	nop
   11b0e:	c9                   	leave  
   11b0f:	c3                   	ret    

00011b10 <copy_from_user>:
   11b10:	55                   	push   %ebp
   11b11:	89 e5                	mov    %esp,%ebp
   11b13:	83 ec 10             	sub    $0x10,%esp
   11b16:	8b 45 08             	mov    0x8(%ebp),%eax
   11b19:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11b1c:	8b 45 0c             	mov    0xc(%ebp),%eax
   11b1f:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11b22:	eb 1a                	jmp    11b3e <copy_from_user+0x2e>
   11b24:	8b 55 fc             	mov    -0x4(%ebp),%edx
   11b27:	8d 42 04             	lea    0x4(%edx),%eax
   11b2a:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11b2d:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11b30:	8d 48 04             	lea    0x4(%eax),%ecx
   11b33:	89 4d f8             	mov    %ecx,-0x8(%ebp)
   11b36:	8b 12                	mov    (%edx),%edx
   11b38:	89 10                	mov    %edx,(%eax)
   11b3a:	83 6d 10 04          	subl   $0x4,0x10(%ebp)
   11b3e:	83 7d 10 04          	cmpl   $0x4,0x10(%ebp)
   11b42:	7f e0                	jg     11b24 <copy_from_user+0x14>
   11b44:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11b47:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11b4a:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11b4d:	89 45 f0             	mov    %eax,-0x10(%ebp)
   11b50:	eb 1b                	jmp    11b6d <copy_from_user+0x5d>
   11b52:	8b 55 f4             	mov    -0xc(%ebp),%edx
   11b55:	8d 42 01             	lea    0x1(%edx),%eax
   11b58:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11b5b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   11b5e:	8d 48 01             	lea    0x1(%eax),%ecx
   11b61:	89 4d f0             	mov    %ecx,-0x10(%ebp)
   11b64:	0f b6 12             	movzbl (%edx),%edx
   11b67:	88 10                	mov    %dl,(%eax)
   11b69:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
   11b6d:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   11b71:	7f df                	jg     11b52 <copy_from_user+0x42>
   11b73:	b8 00 00 00 00       	mov    $0x0,%eax
   11b78:	c9                   	leave  
   11b79:	c3                   	ret    

00011b7a <copy_to_user>:
   11b7a:	55                   	push   %ebp
   11b7b:	89 e5                	mov    %esp,%ebp
   11b7d:	83 ec 10             	sub    $0x10,%esp
   11b80:	8b 45 08             	mov    0x8(%ebp),%eax
   11b83:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11b86:	8b 45 0c             	mov    0xc(%ebp),%eax
   11b89:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11b8c:	eb 1a                	jmp    11ba8 <copy_to_user+0x2e>
   11b8e:	8b 55 fc             	mov    -0x4(%ebp),%edx
   11b91:	8d 42 04             	lea    0x4(%edx),%eax
   11b94:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11b97:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11b9a:	8d 48 04             	lea    0x4(%eax),%ecx
   11b9d:	89 4d f8             	mov    %ecx,-0x8(%ebp)
   11ba0:	8b 12                	mov    (%edx),%edx
   11ba2:	89 10                	mov    %edx,(%eax)
   11ba4:	83 6d 10 04          	subl   $0x4,0x10(%ebp)
   11ba8:	83 7d 10 04          	cmpl   $0x4,0x10(%ebp)
   11bac:	7f e0                	jg     11b8e <copy_to_user+0x14>
   11bae:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11bb1:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11bb4:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11bb7:	89 45 f0             	mov    %eax,-0x10(%ebp)
   11bba:	eb 1b                	jmp    11bd7 <copy_to_user+0x5d>
   11bbc:	8b 55 f4             	mov    -0xc(%ebp),%edx
   11bbf:	8d 42 01             	lea    0x1(%edx),%eax
   11bc2:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11bc5:	8b 45 f0             	mov    -0x10(%ebp),%eax
   11bc8:	8d 48 01             	lea    0x1(%eax),%ecx
   11bcb:	89 4d f0             	mov    %ecx,-0x10(%ebp)
   11bce:	0f b6 12             	movzbl (%edx),%edx
   11bd1:	88 10                	mov    %dl,(%eax)
   11bd3:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
   11bd7:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   11bdb:	7f df                	jg     11bbc <copy_to_user+0x42>
   11bdd:	b8 00 00 00 00       	mov    $0x0,%eax
   11be2:	c9                   	leave  
   11be3:	c3                   	ret    

00011be4 <access_ok>:
   11be4:	55                   	push   %ebp
   11be5:	89 e5                	mov    %esp,%ebp
   11be7:	83 ec 10             	sub    $0x10,%esp
   11bea:	8b 45 0c             	mov    0xc(%ebp),%eax
   11bed:	c1 e8 0c             	shr    $0xc,%eax
   11bf0:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11bf3:	8b 55 0c             	mov    0xc(%ebp),%edx
   11bf6:	8b 45 10             	mov    0x10(%ebp),%eax
   11bf9:	01 d0                	add    %edx,%eax
   11bfb:	c1 e8 0c             	shr    $0xc,%eax
   11bfe:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11c01:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11c04:	3b 45 fc             	cmp    -0x4(%ebp),%eax
   11c07:	73 07                	jae    11c10 <access_ok+0x2c>
   11c09:	b8 00 00 00 00       	mov    $0x0,%eax
   11c0e:	eb 3d                	jmp    11c4d <access_ok+0x69>
   11c10:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
   11c14:	75 19                	jne    11c2f <access_ok+0x4b>
   11c16:	81 7d fc ff 03 00 00 	cmpl   $0x3ff,-0x4(%ebp)
   11c1d:	76 10                	jbe    11c2f <access_ok+0x4b>
   11c1f:	81 7d f8 14 04 00 00 	cmpl   $0x414,-0x8(%ebp)
   11c26:	77 07                	ja     11c2f <access_ok+0x4b>
   11c28:	b8 01 00 00 00       	mov    $0x1,%eax
   11c2d:	eb 1e                	jmp    11c4d <access_ok+0x69>
   11c2f:	81 7d fc ff 03 00 00 	cmpl   $0x3ff,-0x4(%ebp)
   11c36:	76 10                	jbe    11c48 <access_ok+0x64>
   11c38:	81 7d f8 1c 04 00 00 	cmpl   $0x41c,-0x8(%ebp)
   11c3f:	77 07                	ja     11c48 <access_ok+0x64>
   11c41:	b8 01 00 00 00       	mov    $0x1,%eax
   11c46:	eb 05                	jmp    11c4d <access_ok+0x69>
   11c48:	b8 00 00 00 00       	mov    $0x0,%eax
   11c4d:	c9                   	leave  
   11c4e:	c3                   	ret    

00011c4f <INIT_LIST_HEAD>:
   11c4f:	55                   	push   %ebp
   11c50:	89 e5                	mov    %esp,%ebp
   11c52:	8b 45 08             	mov    0x8(%ebp),%eax
   11c55:	8b 55 08             	mov    0x8(%ebp),%edx
   11c58:	89 10                	mov    %edx,(%eax)
   11c5a:	8b 45 08             	mov    0x8(%ebp),%eax
   11c5d:	8b 55 08             	mov    0x8(%ebp),%edx
   11c60:	89 50 04             	mov    %edx,0x4(%eax)
   11c63:	90                   	nop
   11c64:	5d                   	pop    %ebp
   11c65:	c3                   	ret    

00011c66 <__list_add>:
   11c66:	55                   	push   %ebp
   11c67:	89 e5                	mov    %esp,%ebp
   11c69:	8b 45 10             	mov    0x10(%ebp),%eax
   11c6c:	8b 55 08             	mov    0x8(%ebp),%edx
   11c6f:	89 50 04             	mov    %edx,0x4(%eax)
   11c72:	8b 45 08             	mov    0x8(%ebp),%eax
   11c75:	8b 55 10             	mov    0x10(%ebp),%edx
   11c78:	89 10                	mov    %edx,(%eax)
   11c7a:	8b 45 08             	mov    0x8(%ebp),%eax
   11c7d:	8b 55 0c             	mov    0xc(%ebp),%edx
   11c80:	89 50 04             	mov    %edx,0x4(%eax)
   11c83:	8b 45 0c             	mov    0xc(%ebp),%eax
   11c86:	8b 55 08             	mov    0x8(%ebp),%edx
   11c89:	89 10                	mov    %edx,(%eax)
   11c8b:	90                   	nop
   11c8c:	5d                   	pop    %ebp
   11c8d:	c3                   	ret    

00011c8e <list_add>:
   11c8e:	55                   	push   %ebp
   11c8f:	89 e5                	mov    %esp,%ebp
   11c91:	8b 45 0c             	mov    0xc(%ebp),%eax
   11c94:	8b 00                	mov    (%eax),%eax
   11c96:	50                   	push   %eax
   11c97:	ff 75 0c             	push   0xc(%ebp)
   11c9a:	ff 75 08             	push   0x8(%ebp)
   11c9d:	e8 c4 ff ff ff       	call   11c66 <__list_add>
   11ca2:	83 c4 0c             	add    $0xc,%esp
   11ca5:	90                   	nop
   11ca6:	c9                   	leave  
   11ca7:	c3                   	ret    

00011ca8 <list_add_tail>:
   11ca8:	55                   	push   %ebp
   11ca9:	89 e5                	mov    %esp,%ebp
   11cab:	8b 45 0c             	mov    0xc(%ebp),%eax
   11cae:	8b 40 04             	mov    0x4(%eax),%eax
   11cb1:	ff 75 0c             	push   0xc(%ebp)
   11cb4:	50                   	push   %eax
   11cb5:	ff 75 08             	push   0x8(%ebp)
   11cb8:	e8 a9 ff ff ff       	call   11c66 <__list_add>
   11cbd:	83 c4 0c             	add    $0xc,%esp
   11cc0:	90                   	nop
   11cc1:	c9                   	leave  
   11cc2:	c3                   	ret    

00011cc3 <__list_del>:
   11cc3:	55                   	push   %ebp
   11cc4:	89 e5                	mov    %esp,%ebp
   11cc6:	8b 45 0c             	mov    0xc(%ebp),%eax
   11cc9:	8b 55 08             	mov    0x8(%ebp),%edx
   11ccc:	89 50 04             	mov    %edx,0x4(%eax)
   11ccf:	8b 45 08             	mov    0x8(%ebp),%eax
   11cd2:	8b 55 0c             	mov    0xc(%ebp),%edx
   11cd5:	89 10                	mov    %edx,(%eax)
   11cd7:	90                   	nop
   11cd8:	5d                   	pop    %ebp
   11cd9:	c3                   	ret    

00011cda <list_del>:
   11cda:	55                   	push   %ebp
   11cdb:	89 e5                	mov    %esp,%ebp
   11cdd:	8b 45 08             	mov    0x8(%ebp),%eax
   11ce0:	8b 10                	mov    (%eax),%edx
   11ce2:	8b 45 08             	mov    0x8(%ebp),%eax
   11ce5:	8b 40 04             	mov    0x4(%eax),%eax
   11ce8:	52                   	push   %edx
   11ce9:	50                   	push   %eax
   11cea:	e8 d4 ff ff ff       	call   11cc3 <__list_del>
   11cef:	83 c4 08             	add    $0x8,%esp
   11cf2:	8b 45 08             	mov    0x8(%ebp),%eax
   11cf5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   11cfb:	8b 45 08             	mov    0x8(%ebp),%eax
   11cfe:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   11d05:	90                   	nop
   11d06:	c9                   	leave  
   11d07:	c3                   	ret    

00011d08 <list_is_last>:
   11d08:	55                   	push   %ebp
   11d09:	89 e5                	mov    %esp,%ebp
   11d0b:	8b 45 08             	mov    0x8(%ebp),%eax
   11d0e:	8b 00                	mov    (%eax),%eax
   11d10:	39 45 0c             	cmp    %eax,0xc(%ebp)
   11d13:	0f 94 c0             	sete   %al
   11d16:	0f b6 c0             	movzbl %al,%eax
   11d19:	5d                   	pop    %ebp
   11d1a:	c3                   	ret    

00011d1b <list_empty>:
   11d1b:	55                   	push   %ebp
   11d1c:	89 e5                	mov    %esp,%ebp
   11d1e:	8b 45 08             	mov    0x8(%ebp),%eax
   11d21:	8b 00                	mov    (%eax),%eax
   11d23:	39 45 08             	cmp    %eax,0x8(%ebp)
   11d26:	0f 94 c0             	sete   %al
   11d29:	0f b6 c0             	movzbl %al,%eax
   11d2c:	5d                   	pop    %ebp
   11d2d:	c3                   	ret    

00011d2e <INIT_CIRCULAR_BUFFER>:
   11d2e:	55                   	push   %ebp
   11d2f:	89 e5                	mov    %esp,%ebp
   11d31:	8b 45 08             	mov    0x8(%ebp),%eax
   11d34:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   11d3b:	8b 45 08             	mov    0x8(%ebp),%eax
   11d3e:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   11d45:	8b 45 08             	mov    0x8(%ebp),%eax
   11d48:	8b 55 08             	mov    0x8(%ebp),%edx
   11d4b:	89 10                	mov    %edx,(%eax)
   11d4d:	8b 45 08             	mov    0x8(%ebp),%eax
   11d50:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   11d57:	90                   	nop
   11d58:	5d                   	pop    %ebp
   11d59:	c3                   	ret    

00011d5a <CIRCULAR_BUFFER_ADD>:
   11d5a:	55                   	push   %ebp
   11d5b:	89 e5                	mov    %esp,%ebp
   11d5d:	83 ec 18             	sub    $0x18,%esp
   11d60:	8b 45 0c             	mov    0xc(%ebp),%eax
   11d63:	88 45 f4             	mov    %al,-0xc(%ebp)
   11d66:	83 ec 0c             	sub    $0xc,%esp
   11d69:	ff 75 08             	push   0x8(%ebp)
   11d6c:	e8 b0 00 00 00       	call   11e21 <CIRCULAR_BUFFER_IS_FULL>
   11d71:	83 c4 10             	add    $0x10,%esp
   11d74:	85 c0                	test   %eax,%eax
   11d76:	75 5b                	jne    11dd3 <CIRCULAR_BUFFER_ADD+0x79>
   11d78:	8b 45 08             	mov    0x8(%ebp),%eax
   11d7b:	8b 10                	mov    (%eax),%edx
   11d7d:	8b 45 08             	mov    0x8(%ebp),%eax
   11d80:	8b 40 04             	mov    0x4(%eax),%eax
   11d83:	01 c2                	add    %eax,%edx
   11d85:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
   11d89:	88 02                	mov    %al,(%edx)
   11d8b:	8b 45 08             	mov    0x8(%ebp),%eax
   11d8e:	8b 40 04             	mov    0x4(%eax),%eax
   11d91:	83 c0 01             	add    $0x1,%eax
   11d94:	99                   	cltd   
   11d95:	c1 ea 1e             	shr    $0x1e,%edx
   11d98:	01 d0                	add    %edx,%eax
   11d9a:	83 e0 03             	and    $0x3,%eax
   11d9d:	29 d0                	sub    %edx,%eax
   11d9f:	89 c2                	mov    %eax,%edx
   11da1:	8b 45 08             	mov    0x8(%ebp),%eax
   11da4:	89 50 04             	mov    %edx,0x4(%eax)
   11da7:	8b 45 08             	mov    0x8(%ebp),%eax
   11daa:	8b 50 04             	mov    0x4(%eax),%edx
   11dad:	8b 45 08             	mov    0x8(%ebp),%eax
   11db0:	8b 40 08             	mov    0x8(%eax),%eax
   11db3:	39 c2                	cmp    %eax,%edx
   11db5:	0f 94 c0             	sete   %al
   11db8:	0f b6 d0             	movzbl %al,%edx
   11dbb:	8b 45 08             	mov    0x8(%ebp),%eax
   11dbe:	89 50 0c             	mov    %edx,0xc(%eax)
   11dc1:	83 ec 0c             	sub    $0xc,%esp
   11dc4:	68 48 46 01 00       	push   $0x14648
   11dc9:	e8 84 02 00 00       	call   12052 <sem_post>
   11dce:	83 c4 10             	add    $0x10,%esp
   11dd1:	eb 01                	jmp    11dd4 <CIRCULAR_BUFFER_ADD+0x7a>
   11dd3:	90                   	nop
   11dd4:	c9                   	leave  
   11dd5:	c3                   	ret    

00011dd6 <CIRCULAR_BUFFER_READ>:
   11dd6:	55                   	push   %ebp
   11dd7:	89 e5                	mov    %esp,%ebp
   11dd9:	83 ec 18             	sub    $0x18,%esp
   11ddc:	83 ec 0c             	sub    $0xc,%esp
   11ddf:	68 48 46 01 00       	push   $0x14648
   11de4:	e8 21 02 00 00       	call   1200a <sem_wait>
   11de9:	83 c4 10             	add    $0x10,%esp
   11dec:	8b 45 08             	mov    0x8(%ebp),%eax
   11def:	8b 10                	mov    (%eax),%edx
   11df1:	8b 45 08             	mov    0x8(%ebp),%eax
   11df4:	8b 40 08             	mov    0x8(%eax),%eax
   11df7:	01 d0                	add    %edx,%eax
   11df9:	0f b6 00             	movzbl (%eax),%eax
   11dfc:	88 45 f7             	mov    %al,-0x9(%ebp)
   11dff:	8b 45 08             	mov    0x8(%ebp),%eax
   11e02:	8b 40 08             	mov    0x8(%eax),%eax
   11e05:	83 c0 01             	add    $0x1,%eax
   11e08:	99                   	cltd   
   11e09:	c1 ea 1e             	shr    $0x1e,%edx
   11e0c:	01 d0                	add    %edx,%eax
   11e0e:	83 e0 03             	and    $0x3,%eax
   11e11:	29 d0                	sub    %edx,%eax
   11e13:	89 c2                	mov    %eax,%edx
   11e15:	8b 45 08             	mov    0x8(%ebp),%eax
   11e18:	89 50 08             	mov    %edx,0x8(%eax)
   11e1b:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   11e1f:	c9                   	leave  
   11e20:	c3                   	ret    

00011e21 <CIRCULAR_BUFFER_IS_FULL>:
   11e21:	55                   	push   %ebp
   11e22:	89 e5                	mov    %esp,%ebp
   11e24:	8b 45 08             	mov    0x8(%ebp),%eax
   11e27:	8b 50 04             	mov    0x4(%eax),%edx
   11e2a:	8b 45 08             	mov    0x8(%ebp),%eax
   11e2d:	8b 40 08             	mov    0x8(%eax),%eax
   11e30:	39 c2                	cmp    %eax,%edx
   11e32:	75 11                	jne    11e45 <CIRCULAR_BUFFER_IS_FULL+0x24>
   11e34:	8b 45 08             	mov    0x8(%ebp),%eax
   11e37:	8b 40 0c             	mov    0xc(%eax),%eax
   11e3a:	85 c0                	test   %eax,%eax
   11e3c:	74 07                	je     11e45 <CIRCULAR_BUFFER_IS_FULL+0x24>
   11e3e:	b8 01 00 00 00       	mov    $0x1,%eax
   11e43:	eb 05                	jmp    11e4a <CIRCULAR_BUFFER_IS_FULL+0x29>
   11e45:	b8 00 00 00 00       	mov    $0x0,%eax
   11e4a:	5d                   	pop    %ebp
   11e4b:	c3                   	ret    

00011e4c <CIRCULAR_BUFFER_IS_EMPTY>:
   11e4c:	55                   	push   %ebp
   11e4d:	89 e5                	mov    %esp,%ebp
   11e4f:	8b 45 08             	mov    0x8(%ebp),%eax
   11e52:	8b 50 04             	mov    0x4(%eax),%edx
   11e55:	8b 45 08             	mov    0x8(%ebp),%eax
   11e58:	8b 40 08             	mov    0x8(%eax),%eax
   11e5b:	39 c2                	cmp    %eax,%edx
   11e5d:	75 11                	jne    11e70 <CIRCULAR_BUFFER_IS_EMPTY+0x24>
   11e5f:	8b 45 08             	mov    0x8(%ebp),%eax
   11e62:	8b 40 0c             	mov    0xc(%eax),%eax
   11e65:	85 c0                	test   %eax,%eax
   11e67:	75 07                	jne    11e70 <CIRCULAR_BUFFER_IS_EMPTY+0x24>
   11e69:	b8 01 00 00 00       	mov    $0x1,%eax
   11e6e:	eb 05                	jmp    11e75 <CIRCULAR_BUFFER_IS_EMPTY+0x29>
   11e70:	b8 00 00 00 00       	mov    $0x0,%eax
   11e75:	5d                   	pop    %ebp
   11e76:	c3                   	ret    

00011e77 <CIRCULAR_BUFFER_CLEAR>:
   11e77:	55                   	push   %ebp
   11e78:	89 e5                	mov    %esp,%ebp
   11e7a:	8b 45 08             	mov    0x8(%ebp),%eax
   11e7d:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   11e84:	8b 45 08             	mov    0x8(%ebp),%eax
   11e87:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   11e8e:	8b 45 08             	mov    0x8(%ebp),%eax
   11e91:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   11e98:	90                   	nop
   11e99:	5d                   	pop    %ebp
   11e9a:	c3                   	ret    

00011e9b <CIRCULAR_BUFFER_DUMP>:
   11e9b:	55                   	push   %ebp
   11e9c:	89 e5                	mov    %esp,%ebp
   11e9e:	83 ec 10             	sub    $0x10,%esp
   11ea1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   11ea8:	8b 45 08             	mov    0x8(%ebp),%eax
   11eab:	8b 40 08             	mov    0x8(%eax),%eax
   11eae:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11eb1:	eb 30                	jmp    11ee3 <CIRCULAR_BUFFER_DUMP+0x48>
   11eb3:	8b 45 08             	mov    0x8(%ebp),%eax
   11eb6:	8b 10                	mov    (%eax),%edx
   11eb8:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11ebb:	01 d0                	add    %edx,%eax
   11ebd:	0f b6 00             	movzbl (%eax),%eax
   11ec0:	8b 55 fc             	mov    -0x4(%ebp),%edx
   11ec3:	81 c2 50 53 01 00    	add    $0x15350,%edx
   11ec9:	88 02                	mov    %al,(%edx)
   11ecb:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11ece:	83 c0 01             	add    $0x1,%eax
   11ed1:	99                   	cltd   
   11ed2:	c1 ea 1e             	shr    $0x1e,%edx
   11ed5:	01 d0                	add    %edx,%eax
   11ed7:	83 e0 03             	and    $0x3,%eax
   11eda:	29 d0                	sub    %edx,%eax
   11edc:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11edf:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   11ee3:	8b 45 08             	mov    0x8(%ebp),%eax
   11ee6:	8b 40 04             	mov    0x4(%eax),%eax
   11ee9:	39 45 f8             	cmp    %eax,-0x8(%ebp)
   11eec:	75 c5                	jne    11eb3 <CIRCULAR_BUFFER_DUMP+0x18>
   11eee:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
   11ef2:	75 0a                	jne    11efe <CIRCULAR_BUFFER_DUMP+0x63>
   11ef4:	8b 45 08             	mov    0x8(%ebp),%eax
   11ef7:	8b 40 0c             	mov    0xc(%eax),%eax
   11efa:	85 c0                	test   %eax,%eax
   11efc:	75 b5                	jne    11eb3 <CIRCULAR_BUFFER_DUMP+0x18>
   11efe:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11f01:	05 50 53 01 00       	add    $0x15350,%eax
   11f06:	c6 00 00             	movb   $0x0,(%eax)
   11f09:	b8 50 53 01 00       	mov    $0x15350,%eax
   11f0e:	c9                   	leave  
   11f0f:	c3                   	ret    

00011f10 <writeMSR>:
   11f10:	55                   	push   %ebp
   11f11:	89 e5                	mov    %esp,%ebp
   11f13:	8b 4d 08             	mov    0x8(%ebp),%ecx
   11f16:	8b 45 0c             	mov    0xc(%ebp),%eax
   11f19:	8b 55 10             	mov    0x10(%ebp),%edx
   11f1c:	0f 30                	wrmsr  
   11f1e:	5d                   	pop    %ebp
   11f1f:	c3                   	ret    

00011f20 <get_eflags>:
   11f20:	9c                   	pushf  
   11f21:	58                   	pop    %eax
   11f22:	c3                   	ret    

00011f23 <set_eflags>:
   11f23:	6a 00                	push   $0x0
   11f25:	9d                   	popf   
   11f26:	c3                   	ret    

00011f27 <set_idt_reg>:
   11f27:	55                   	push   %ebp
   11f28:	89 e5                	mov    %esp,%ebp
   11f2a:	8b 45 08             	mov    0x8(%ebp),%eax
   11f2d:	0f 01 18             	lidtl  (%eax)
   11f30:	5d                   	pop    %ebp
   11f31:	c3                   	ret    

00011f32 <set_gdt_reg>:
   11f32:	55                   	push   %ebp
   11f33:	89 e5                	mov    %esp,%ebp
   11f35:	8b 45 08             	mov    0x8(%ebp),%eax
   11f38:	0f 01 10             	lgdtl  (%eax)
   11f3b:	5d                   	pop    %ebp
   11f3c:	c3                   	ret    

00011f3d <set_ldt_reg>:
   11f3d:	55                   	push   %ebp
   11f3e:	89 e5                	mov    %esp,%ebp
   11f40:	8b 45 08             	mov    0x8(%ebp),%eax
   11f43:	0f 00 d0             	lldt   %ax
   11f46:	5d                   	pop    %ebp
   11f47:	c3                   	ret    

00011f48 <set_task_reg>:
   11f48:	55                   	push   %ebp
   11f49:	89 e5                	mov    %esp,%ebp
   11f4b:	8b 45 08             	mov    0x8(%ebp),%eax
   11f4e:	0f 00 d8             	ltr    %ax
   11f51:	5d                   	pop    %ebp
   11f52:	c3                   	ret    

00011f53 <return_gate>:
   11f53:	55                   	push   %ebp
   11f54:	89 e5                	mov    %esp,%ebp
   11f56:	8b 45 08             	mov    0x8(%ebp),%eax
   11f59:	8e c0                	mov    %eax,%es
   11f5b:	8e d8                	mov    %eax,%ds
   11f5d:	8b 45 10             	mov    0x10(%ebp),%eax
   11f60:	83 e8 10             	sub    $0x10,%eax
   11f63:	8b 0d ac 3d 01 00    	mov    0x13dac,%ecx
   11f69:	8b 09                	mov    (%ecx),%ecx
   11f6b:	89 48 0c             	mov    %ecx,0xc(%eax)
   11f6e:	ff 75 0c             	push   0xc(%ebp)
   11f71:	50                   	push   %eax
   11f72:	ff 75 14             	push   0x14(%ebp)
   11f75:	ff 75 18             	push   0x18(%ebp)
   11f78:	cb                   	lret   

00011f79 <enable_int>:
   11f79:	55                   	push   %ebp
   11f7a:	89 e5                	mov    %esp,%ebp
   11f7c:	b0 fc                	mov    $0xfc,%al
   11f7e:	e6 21                	out    %al,$0x21
   11f80:	e8 03 00 00 00       	call   11f88 <delay>
   11f85:	fb                   	sti    
   11f86:	5d                   	pop    %ebp
   11f87:	c3                   	ret    

00011f88 <delay>:
   11f88:	eb 00                	jmp    11f8a <a>

00011f8a <a>:
   11f8a:	c3                   	ret    

00011f8b <inb>:
   11f8b:	55                   	push   %ebp
   11f8c:	89 e5                	mov    %esp,%ebp
   11f8e:	8b 55 08             	mov    0x8(%ebp),%edx
   11f91:	ec                   	in     (%dx),%al
   11f92:	5d                   	pop    %ebp
   11f93:	c3                   	ret    

00011f94 <bochs_out>:
   11f94:	55                   	push   %ebp
   11f95:	89 e5                	mov    %esp,%ebp
   11f97:	8b 45 08             	mov    0x8(%ebp),%eax
   11f9a:	e6 e9                	out    %al,$0xe9
   11f9c:	5d                   	pop    %ebp
   11f9d:	c3                   	ret    

00011f9e <set_cr3>:
   11f9e:	55                   	push   %ebp
   11f9f:	89 e5                	mov    %esp,%ebp
   11fa1:	8b 45 08             	mov    0x8(%ebp),%eax
   11fa4:	0f 22 d8             	mov    %eax,%cr3
   11fa7:	5d                   	pop    %ebp
   11fa8:	c3                   	ret    

00011fa9 <read_cr0>:
   11fa9:	0f 20 c0             	mov    %cr0,%eax
   11fac:	c3                   	ret    

00011fad <write_cr0>:
   11fad:	55                   	push   %ebp
   11fae:	89 e5                	mov    %esp,%ebp
   11fb0:	8b 45 08             	mov    0x8(%ebp),%eax
   11fb3:	0f 22 c0             	mov    %eax,%cr0
   11fb6:	5d                   	pop    %ebp
   11fb7:	c3                   	ret    

00011fb8 <__sti>:
   11fb8:	fb                   	sti    
   11fb9:	c3                   	ret    

00011fba <current>:
   11fba:	89 e0                	mov    %esp,%eax
   11fbc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   11fc1:	c3                   	ret    

00011fc2 <set_seg_regs>:
   11fc2:	55                   	push   %ebp
   11fc3:	89 e5                	mov    %esp,%ebp
   11fc5:	8b 45 08             	mov    0x8(%ebp),%eax
   11fc8:	fc                   	cld    
   11fc9:	8e d8                	mov    %eax,%ds
   11fcb:	8e c0                	mov    %eax,%es
   11fcd:	8e e0                	mov    %eax,%fs
   11fcf:	8e e8                	mov    %eax,%gs
   11fd1:	8b 45 0c             	mov    0xc(%ebp),%eax
   11fd4:	8b 4d 10             	mov    0x10(%ebp),%ecx
   11fd7:	83 e9 10             	sub    $0x10,%ecx
   11fda:	8b 55 04             	mov    0x4(%ebp),%edx
   11fdd:	8e d0                	mov    %eax,%ss
   11fdf:	89 cc                	mov    %ecx,%esp
   11fe1:	52                   	push   %edx
   11fe2:	c3                   	ret    

00011fe3 <sem_init>:
   11fe3:	55                   	push   %ebp
   11fe4:	89 e5                	mov    %esp,%ebp
   11fe6:	83 ec 08             	sub    $0x8,%esp
   11fe9:	8b 45 08             	mov    0x8(%ebp),%eax
   11fec:	8b 55 0c             	mov    0xc(%ebp),%edx
   11fef:	89 10                	mov    %edx,(%eax)
   11ff1:	8b 45 08             	mov    0x8(%ebp),%eax
   11ff4:	83 c0 04             	add    $0x4,%eax
   11ff7:	83 ec 0c             	sub    $0xc,%esp
   11ffa:	50                   	push   %eax
   11ffb:	e8 4f fc ff ff       	call   11c4f <INIT_LIST_HEAD>
   12000:	83 c4 10             	add    $0x10,%esp
   12003:	b8 00 00 00 00       	mov    $0x0,%eax
   12008:	c9                   	leave  
   12009:	c3                   	ret    

0001200a <sem_wait>:
   1200a:	55                   	push   %ebp
   1200b:	89 e5                	mov    %esp,%ebp
   1200d:	83 ec 18             	sub    $0x18,%esp
   12010:	8b 45 08             	mov    0x8(%ebp),%eax
   12013:	8b 00                	mov    (%eax),%eax
   12015:	8d 50 ff             	lea    -0x1(%eax),%edx
   12018:	8b 45 08             	mov    0x8(%ebp),%eax
   1201b:	89 10                	mov    %edx,(%eax)
   1201d:	8b 45 08             	mov    0x8(%ebp),%eax
   12020:	8b 00                	mov    (%eax),%eax
   12022:	85 c0                	test   %eax,%eax
   12024:	79 25                	jns    1204b <sem_wait+0x41>
   12026:	e8 8f ff ff ff       	call   11fba <current>
   1202b:	83 c0 08             	add    $0x8,%eax
   1202e:	89 45 f4             	mov    %eax,-0xc(%ebp)
   12031:	8b 45 08             	mov    0x8(%ebp),%eax
   12034:	83 c0 04             	add    $0x4,%eax
   12037:	83 ec 08             	sub    $0x8,%esp
   1203a:	50                   	push   %eax
   1203b:	ff 75 f4             	push   -0xc(%ebp)
   1203e:	e8 65 fc ff ff       	call   11ca8 <list_add_tail>
   12043:	83 c4 10             	add    $0x10,%esp
   12046:	e8 8e ec ff ff       	call   10cd9 <sched_next_rr>
   1204b:	b8 00 00 00 00       	mov    $0x0,%eax
   12050:	c9                   	leave  
   12051:	c3                   	ret    

00012052 <sem_post>:
   12052:	55                   	push   %ebp
   12053:	89 e5                	mov    %esp,%ebp
   12055:	83 ec 18             	sub    $0x18,%esp
   12058:	8b 45 08             	mov    0x8(%ebp),%eax
   1205b:	8b 00                	mov    (%eax),%eax
   1205d:	8d 50 01             	lea    0x1(%eax),%edx
   12060:	8b 45 08             	mov    0x8(%ebp),%eax
   12063:	89 10                	mov    %edx,(%eax)
   12065:	8b 45 08             	mov    0x8(%ebp),%eax
   12068:	8b 00                	mov    (%eax),%eax
   1206a:	85 c0                	test   %eax,%eax
   1206c:	7f 2a                	jg     12098 <sem_post+0x46>
   1206e:	8b 45 08             	mov    0x8(%ebp),%eax
   12071:	8b 40 04             	mov    0x4(%eax),%eax
   12074:	89 45 f4             	mov    %eax,-0xc(%ebp)
   12077:	83 ec 0c             	sub    $0xc,%esp
   1207a:	ff 75 f4             	push   -0xc(%ebp)
   1207d:	e8 58 fc ff ff       	call   11cda <list_del>
   12082:	83 c4 10             	add    $0x10,%esp
   12085:	83 ec 08             	sub    $0x8,%esp
   12088:	68 60 46 01 00       	push   $0x14660
   1208d:	ff 75 f4             	push   -0xc(%ebp)
   12090:	e8 13 fc ff ff       	call   11ca8 <list_add_tail>
   12095:	83 c4 10             	add    $0x10,%esp
   12098:	b8 00 00 00 00       	mov    $0x0,%eax
   1209d:	c9                   	leave  
   1209e:	c3                   	ret    

0001209f <exception_msg>:
   1209f:	55                   	push   %ebp
   120a0:	89 e5                	mov    %esp,%ebp
   120a2:	83 ec 08             	sub    $0x8,%esp
   120a5:	83 ec 0c             	sub    $0xc,%esp
   120a8:	ff 75 08             	push   0x8(%ebp)
   120ab:	e8 06 e7 ff ff       	call   107b6 <printk>
   120b0:	83 c4 10             	add    $0x10,%esp
   120b3:	83 ec 0c             	sub    $0xc,%esp
   120b6:	68 74 2c 01 00       	push   $0x12c74
   120bb:	e8 f6 e6 ff ff       	call   107b6 <printk>
   120c0:	83 c4 10             	add    $0x10,%esp
   120c3:	eb fe                	jmp    120c3 <exception_msg+0x24>

000120c5 <divide_error_routine>:
   120c5:	55                   	push   %ebp
   120c6:	89 e5                	mov    %esp,%ebp
   120c8:	83 ec 08             	sub    $0x8,%esp
   120cb:	83 ec 0c             	sub    $0xc,%esp
   120ce:	68 a3 2e 01 00       	push   $0x12ea3
   120d3:	e8 c7 ff ff ff       	call   1209f <exception_msg>
   120d8:	83 c4 10             	add    $0x10,%esp
   120db:	90                   	nop
   120dc:	c9                   	leave  
   120dd:	c3                   	ret    

000120de <debug_routine>:
   120de:	55                   	push   %ebp
   120df:	89 e5                	mov    %esp,%ebp
   120e1:	83 ec 08             	sub    $0x8,%esp
   120e4:	83 ec 0c             	sub    $0xc,%esp
   120e7:	68 b8 2e 01 00       	push   $0x12eb8
   120ec:	e8 ae ff ff ff       	call   1209f <exception_msg>
   120f1:	83 c4 10             	add    $0x10,%esp
   120f4:	90                   	nop
   120f5:	c9                   	leave  
   120f6:	c3                   	ret    

000120f7 <nm1_routine>:
   120f7:	55                   	push   %ebp
   120f8:	89 e5                	mov    %esp,%ebp
   120fa:	83 ec 08             	sub    $0x8,%esp
   120fd:	83 ec 0c             	sub    $0xc,%esp
   12100:	68 c6 2e 01 00       	push   $0x12ec6
   12105:	e8 95 ff ff ff       	call   1209f <exception_msg>
   1210a:	83 c4 10             	add    $0x10,%esp
   1210d:	90                   	nop
   1210e:	c9                   	leave  
   1210f:	c3                   	ret    

00012110 <breakpoint_routine>:
   12110:	55                   	push   %ebp
   12111:	89 e5                	mov    %esp,%ebp
   12113:	83 ec 08             	sub    $0x8,%esp
   12116:	83 ec 0c             	sub    $0xc,%esp
   12119:	68 d2 2e 01 00       	push   $0x12ed2
   1211e:	e8 7c ff ff ff       	call   1209f <exception_msg>
   12123:	83 c4 10             	add    $0x10,%esp
   12126:	90                   	nop
   12127:	c9                   	leave  
   12128:	c3                   	ret    

00012129 <overflow_routine>:
   12129:	55                   	push   %ebp
   1212a:	89 e5                	mov    %esp,%ebp
   1212c:	83 ec 08             	sub    $0x8,%esp
   1212f:	83 ec 0c             	sub    $0xc,%esp
   12132:	68 e5 2e 01 00       	push   $0x12ee5
   12137:	e8 63 ff ff ff       	call   1209f <exception_msg>
   1213c:	83 c4 10             	add    $0x10,%esp
   1213f:	90                   	nop
   12140:	c9                   	leave  
   12141:	c3                   	ret    

00012142 <bounds_check_routine>:
   12142:	55                   	push   %ebp
   12143:	89 e5                	mov    %esp,%ebp
   12145:	83 ec 08             	sub    $0x8,%esp
   12148:	83 ec 0c             	sub    $0xc,%esp
   1214b:	68 f6 2e 01 00       	push   $0x12ef6
   12150:	e8 4a ff ff ff       	call   1209f <exception_msg>
   12155:	83 c4 10             	add    $0x10,%esp
   12158:	90                   	nop
   12159:	c9                   	leave  
   1215a:	c3                   	ret    

0001215b <invalid_opcode_routine>:
   1215b:	55                   	push   %ebp
   1215c:	89 e5                	mov    %esp,%ebp
   1215e:	83 ec 08             	sub    $0x8,%esp
   12161:	83 ec 0c             	sub    $0xc,%esp
   12164:	68 0b 2f 01 00       	push   $0x12f0b
   12169:	e8 31 ff ff ff       	call   1209f <exception_msg>
   1216e:	83 c4 10             	add    $0x10,%esp
   12171:	90                   	nop
   12172:	c9                   	leave  
   12173:	c3                   	ret    

00012174 <device_not_available_routine>:
   12174:	55                   	push   %ebp
   12175:	89 e5                	mov    %esp,%ebp
   12177:	83 ec 08             	sub    $0x8,%esp
   1217a:	83 ec 0c             	sub    $0xc,%esp
   1217d:	68 22 2f 01 00       	push   $0x12f22
   12182:	e8 18 ff ff ff       	call   1209f <exception_msg>
   12187:	83 c4 10             	add    $0x10,%esp
   1218a:	90                   	nop
   1218b:	c9                   	leave  
   1218c:	c3                   	ret    

0001218d <double_fault_routine>:
   1218d:	55                   	push   %ebp
   1218e:	89 e5                	mov    %esp,%ebp
   12190:	83 ec 08             	sub    $0x8,%esp
   12193:	83 ec 0c             	sub    $0xc,%esp
   12196:	68 3f 2f 01 00       	push   $0x12f3f
   1219b:	e8 ff fe ff ff       	call   1209f <exception_msg>
   121a0:	83 c4 10             	add    $0x10,%esp
   121a3:	90                   	nop
   121a4:	c9                   	leave  
   121a5:	c3                   	ret    

000121a6 <coprocessor_segment_overrun_routine>:
   121a6:	55                   	push   %ebp
   121a7:	89 e5                	mov    %esp,%ebp
   121a9:	83 ec 08             	sub    $0x8,%esp
   121ac:	83 ec 0c             	sub    $0xc,%esp
   121af:	68 50 2f 01 00       	push   $0x12f50
   121b4:	e8 e6 fe ff ff       	call   1209f <exception_msg>
   121b9:	83 c4 10             	add    $0x10,%esp
   121bc:	90                   	nop
   121bd:	c9                   	leave  
   121be:	c3                   	ret    

000121bf <invalid_tss_routine>:
   121bf:	55                   	push   %ebp
   121c0:	89 e5                	mov    %esp,%ebp
   121c2:	83 ec 08             	sub    $0x8,%esp
   121c5:	83 ec 0c             	sub    $0xc,%esp
   121c8:	68 74 2f 01 00       	push   $0x12f74
   121cd:	e8 cd fe ff ff       	call   1209f <exception_msg>
   121d2:	83 c4 10             	add    $0x10,%esp
   121d5:	90                   	nop
   121d6:	c9                   	leave  
   121d7:	c3                   	ret    

000121d8 <segment_not_present_routine>:
   121d8:	55                   	push   %ebp
   121d9:	89 e5                	mov    %esp,%ebp
   121db:	83 ec 08             	sub    $0x8,%esp
   121de:	83 ec 0c             	sub    $0xc,%esp
   121e1:	68 88 2f 01 00       	push   $0x12f88
   121e6:	e8 b4 fe ff ff       	call   1209f <exception_msg>
   121eb:	83 c4 10             	add    $0x10,%esp
   121ee:	90                   	nop
   121ef:	c9                   	leave  
   121f0:	c3                   	ret    

000121f1 <stack_exception_routine>:
   121f1:	55                   	push   %ebp
   121f2:	89 e5                	mov    %esp,%ebp
   121f4:	83 ec 08             	sub    $0x8,%esp
   121f7:	83 ec 0c             	sub    $0xc,%esp
   121fa:	68 a4 2f 01 00       	push   $0x12fa4
   121ff:	e8 9b fe ff ff       	call   1209f <exception_msg>
   12204:	83 c4 10             	add    $0x10,%esp
   12207:	90                   	nop
   12208:	c9                   	leave  
   12209:	c3                   	ret    

0001220a <general_protection_routine>:
   1220a:	55                   	push   %ebp
   1220b:	89 e5                	mov    %esp,%ebp
   1220d:	83 ec 08             	sub    $0x8,%esp
   12210:	83 ec 0c             	sub    $0xc,%esp
   12213:	68 bc 2f 01 00       	push   $0x12fbc
   12218:	e8 82 fe ff ff       	call   1209f <exception_msg>
   1221d:	83 c4 10             	add    $0x10,%esp
   12220:	90                   	nop
   12221:	c9                   	leave  
   12222:	c3                   	ret    

00012223 <page_fault_routine>:
   12223:	55                   	push   %ebp
   12224:	89 e5                	mov    %esp,%ebp
   12226:	83 ec 08             	sub    $0x8,%esp
   12229:	83 ec 0c             	sub    $0xc,%esp
   1222c:	68 d7 2f 01 00       	push   $0x12fd7
   12231:	e8 69 fe ff ff       	call   1209f <exception_msg>
   12236:	83 c4 10             	add    $0x10,%esp
   12239:	90                   	nop
   1223a:	c9                   	leave  
   1223b:	c3                   	ret    

0001223c <intel_reserved_routine>:
   1223c:	55                   	push   %ebp
   1223d:	89 e5                	mov    %esp,%ebp
   1223f:	83 ec 08             	sub    $0x8,%esp
   12242:	83 ec 0c             	sub    $0xc,%esp
   12245:	68 e4 2f 01 00       	push   $0x12fe4
   1224a:	e8 50 fe ff ff       	call   1209f <exception_msg>
   1224f:	83 c4 10             	add    $0x10,%esp
   12252:	90                   	nop
   12253:	c9                   	leave  
   12254:	c3                   	ret    

00012255 <floating_point_error_routine>:
   12255:	55                   	push   %ebp
   12256:	89 e5                	mov    %esp,%ebp
   12258:	83 ec 08             	sub    $0x8,%esp
   1225b:	83 ec 0c             	sub    $0xc,%esp
   1225e:	68 fb 2f 01 00       	push   $0x12ffb
   12263:	e8 37 fe ff ff       	call   1209f <exception_msg>
   12268:	83 c4 10             	add    $0x10,%esp
   1226b:	90                   	nop
   1226c:	c9                   	leave  
   1226d:	c3                   	ret    

0001226e <alignment_check_routine>:
   1226e:	55                   	push   %ebp
   1226f:	89 e5                	mov    %esp,%ebp
   12271:	83 ec 08             	sub    $0x8,%esp
   12274:	83 ec 0c             	sub    $0xc,%esp
   12277:	68 12 30 01 00       	push   $0x13012
   1227c:	e8 1e fe ff ff       	call   1209f <exception_msg>
   12281:	83 c4 10             	add    $0x10,%esp
   12284:	90                   	nop
   12285:	c9                   	leave  
   12286:	c3                   	ret    

00012287 <set_handlers>:
   12287:	55                   	push   %ebp
   12288:	89 e5                	mov    %esp,%ebp
   1228a:	83 ec 08             	sub    $0x8,%esp
   1228d:	83 ec 04             	sub    $0x4,%esp
   12290:	6a 00                	push   $0x0
   12292:	68 f8 23 01 00       	push   $0x123f8
   12297:	6a 00                	push   $0x0
   12299:	e8 fc de ff ff       	call   1019a <setInterruptHandler>
   1229e:	83 c4 10             	add    $0x10,%esp
   122a1:	83 ec 04             	sub    $0x4,%esp
   122a4:	6a 00                	push   $0x0
   122a6:	68 fd 23 01 00       	push   $0x123fd
   122ab:	6a 01                	push   $0x1
   122ad:	e8 e8 de ff ff       	call   1019a <setInterruptHandler>
   122b2:	83 c4 10             	add    $0x10,%esp
   122b5:	83 ec 04             	sub    $0x4,%esp
   122b8:	6a 00                	push   $0x0
   122ba:	68 02 24 01 00       	push   $0x12402
   122bf:	6a 02                	push   $0x2
   122c1:	e8 d4 de ff ff       	call   1019a <setInterruptHandler>
   122c6:	83 c4 10             	add    $0x10,%esp
   122c9:	83 ec 04             	sub    $0x4,%esp
   122cc:	6a 00                	push   $0x0
   122ce:	68 07 24 01 00       	push   $0x12407
   122d3:	6a 03                	push   $0x3
   122d5:	e8 c0 de ff ff       	call   1019a <setInterruptHandler>
   122da:	83 c4 10             	add    $0x10,%esp
   122dd:	83 ec 04             	sub    $0x4,%esp
   122e0:	6a 00                	push   $0x0
   122e2:	68 0c 24 01 00       	push   $0x1240c
   122e7:	6a 04                	push   $0x4
   122e9:	e8 ac de ff ff       	call   1019a <setInterruptHandler>
   122ee:	83 c4 10             	add    $0x10,%esp
   122f1:	83 ec 04             	sub    $0x4,%esp
   122f4:	6a 00                	push   $0x0
   122f6:	68 11 24 01 00       	push   $0x12411
   122fb:	6a 05                	push   $0x5
   122fd:	e8 98 de ff ff       	call   1019a <setInterruptHandler>
   12302:	83 c4 10             	add    $0x10,%esp
   12305:	83 ec 04             	sub    $0x4,%esp
   12308:	6a 00                	push   $0x0
   1230a:	68 16 24 01 00       	push   $0x12416
   1230f:	6a 06                	push   $0x6
   12311:	e8 84 de ff ff       	call   1019a <setInterruptHandler>
   12316:	83 c4 10             	add    $0x10,%esp
   12319:	83 ec 04             	sub    $0x4,%esp
   1231c:	6a 00                	push   $0x0
   1231e:	68 1b 24 01 00       	push   $0x1241b
   12323:	6a 07                	push   $0x7
   12325:	e8 70 de ff ff       	call   1019a <setInterruptHandler>
   1232a:	83 c4 10             	add    $0x10,%esp
   1232d:	83 ec 04             	sub    $0x4,%esp
   12330:	6a 00                	push   $0x0
   12332:	68 20 24 01 00       	push   $0x12420
   12337:	6a 08                	push   $0x8
   12339:	e8 5c de ff ff       	call   1019a <setInterruptHandler>
   1233e:	83 c4 10             	add    $0x10,%esp
   12341:	83 ec 04             	sub    $0x4,%esp
   12344:	6a 00                	push   $0x0
   12346:	68 25 24 01 00       	push   $0x12425
   1234b:	6a 09                	push   $0x9
   1234d:	e8 48 de ff ff       	call   1019a <setInterruptHandler>
   12352:	83 c4 10             	add    $0x10,%esp
   12355:	83 ec 04             	sub    $0x4,%esp
   12358:	6a 00                	push   $0x0
   1235a:	68 2a 24 01 00       	push   $0x1242a
   1235f:	6a 0a                	push   $0xa
   12361:	e8 34 de ff ff       	call   1019a <setInterruptHandler>
   12366:	83 c4 10             	add    $0x10,%esp
   12369:	83 ec 04             	sub    $0x4,%esp
   1236c:	6a 00                	push   $0x0
   1236e:	68 2f 24 01 00       	push   $0x1242f
   12373:	6a 0b                	push   $0xb
   12375:	e8 20 de ff ff       	call   1019a <setInterruptHandler>
   1237a:	83 c4 10             	add    $0x10,%esp
   1237d:	83 ec 04             	sub    $0x4,%esp
   12380:	6a 00                	push   $0x0
   12382:	68 34 24 01 00       	push   $0x12434
   12387:	6a 0c                	push   $0xc
   12389:	e8 0c de ff ff       	call   1019a <setInterruptHandler>
   1238e:	83 c4 10             	add    $0x10,%esp
   12391:	83 ec 04             	sub    $0x4,%esp
   12394:	6a 00                	push   $0x0
   12396:	68 39 24 01 00       	push   $0x12439
   1239b:	6a 0d                	push   $0xd
   1239d:	e8 f8 dd ff ff       	call   1019a <setInterruptHandler>
   123a2:	83 c4 10             	add    $0x10,%esp
   123a5:	83 ec 04             	sub    $0x4,%esp
   123a8:	6a 00                	push   $0x0
   123aa:	68 3e 24 01 00       	push   $0x1243e
   123af:	6a 0e                	push   $0xe
   123b1:	e8 e4 dd ff ff       	call   1019a <setInterruptHandler>
   123b6:	83 c4 10             	add    $0x10,%esp
   123b9:	83 ec 04             	sub    $0x4,%esp
   123bc:	6a 00                	push   $0x0
   123be:	68 43 24 01 00       	push   $0x12443
   123c3:	6a 0f                	push   $0xf
   123c5:	e8 d0 dd ff ff       	call   1019a <setInterruptHandler>
   123ca:	83 c4 10             	add    $0x10,%esp
   123cd:	83 ec 04             	sub    $0x4,%esp
   123d0:	6a 00                	push   $0x0
   123d2:	68 48 24 01 00       	push   $0x12448
   123d7:	6a 10                	push   $0x10
   123d9:	e8 bc dd ff ff       	call   1019a <setInterruptHandler>
   123de:	83 c4 10             	add    $0x10,%esp
   123e1:	83 ec 04             	sub    $0x4,%esp
   123e4:	6a 00                	push   $0x0
   123e6:	68 4d 24 01 00       	push   $0x1244d
   123eb:	6a 11                	push   $0x11
   123ed:	e8 a8 dd ff ff       	call   1019a <setInterruptHandler>
   123f2:	83 c4 10             	add    $0x10,%esp
   123f5:	90                   	nop
   123f6:	c9                   	leave  
   123f7:	c3                   	ret    

000123f8 <divide_error_handler>:
   123f8:	e8 c8 fc ff ff       	call   120c5 <divide_error_routine>

000123fd <debug_handler>:
   123fd:	e8 dc fc ff ff       	call   120de <debug_routine>

00012402 <nm1_handler>:
   12402:	e8 f0 fc ff ff       	call   120f7 <nm1_routine>

00012407 <breakpoint_handler>:
   12407:	e8 04 fd ff ff       	call   12110 <breakpoint_routine>

0001240c <overflow_handler>:
   1240c:	e8 18 fd ff ff       	call   12129 <overflow_routine>

00012411 <bounds_check_handler>:
   12411:	e8 2c fd ff ff       	call   12142 <bounds_check_routine>

00012416 <invalid_opcode_handler>:
   12416:	e8 40 fd ff ff       	call   1215b <invalid_opcode_routine>

0001241b <device_not_available_handler>:
   1241b:	e8 54 fd ff ff       	call   12174 <device_not_available_routine>

00012420 <double_fault_handler>:
   12420:	e8 68 fd ff ff       	call   1218d <double_fault_routine>

00012425 <coprocessor_segment_overrun_handler>:
   12425:	e8 7c fd ff ff       	call   121a6 <coprocessor_segment_overrun_routine>

0001242a <invalid_tss_handler>:
   1242a:	e8 90 fd ff ff       	call   121bf <invalid_tss_routine>

0001242f <segment_not_present_handler>:
   1242f:	e8 a4 fd ff ff       	call   121d8 <segment_not_present_routine>

00012434 <stack_exception_handler>:
   12434:	e8 b8 fd ff ff       	call   121f1 <stack_exception_routine>

00012439 <general_protection_handler>:
   12439:	e8 cc fd ff ff       	call   1220a <general_protection_routine>

0001243e <page_fault_handler>:
   1243e:	e8 e0 fd ff ff       	call   12223 <page_fault_routine>

00012443 <intel_reserved_handler>:
   12443:	e8 f4 fd ff ff       	call   1223c <intel_reserved_routine>

00012448 <floating_point_error_handler>:
   12448:	e8 08 fe ff ff       	call   12255 <floating_point_error_routine>

0001244d <alignment_check_handler>:
   1244d:	e8 1c fe ff ff       	call   1226e <alignment_check_routine>

00012452 <itoa_hex>:
   12452:	55                   	push   %ebp
   12453:	89 e5                	mov    %esp,%ebp
   12455:	83 ec 10             	sub    $0x10,%esp
   12458:	c7 45 f4 2a 30 01 00 	movl   $0x1302a,-0xc(%ebp)
   1245f:	8b 45 0c             	mov    0xc(%ebp),%eax
   12462:	c6 00 30             	movb   $0x30,(%eax)
   12465:	8b 45 0c             	mov    0xc(%ebp),%eax
   12468:	83 c0 01             	add    $0x1,%eax
   1246b:	c6 00 78             	movb   $0x78,(%eax)
   1246e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   12472:	75 1a                	jne    1248e <itoa_hex+0x3c>
   12474:	8b 45 0c             	mov    0xc(%ebp),%eax
   12477:	83 c0 02             	add    $0x2,%eax
   1247a:	c6 00 30             	movb   $0x30,(%eax)
   1247d:	8b 45 0c             	mov    0xc(%ebp),%eax
   12480:	83 c0 03             	add    $0x3,%eax
   12483:	c6 00 00             	movb   $0x0,(%eax)
   12486:	8b 45 0c             	mov    0xc(%ebp),%eax
   12489:	e9 bb 00 00 00       	jmp    12549 <itoa_hex+0xf7>
   1248e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   12495:	eb 3a                	jmp    124d1 <itoa_hex+0x7f>
   12497:	8b 45 08             	mov    0x8(%ebp),%eax
   1249a:	99                   	cltd   
   1249b:	c1 ea 1c             	shr    $0x1c,%edx
   1249e:	01 d0                	add    %edx,%eax
   124a0:	83 e0 0f             	and    $0xf,%eax
   124a3:	29 d0                	sub    %edx,%eax
   124a5:	89 c2                	mov    %eax,%edx
   124a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   124aa:	01 d0                	add    %edx,%eax
   124ac:	8b 55 fc             	mov    -0x4(%ebp),%edx
   124af:	8d 4a 02             	lea    0x2(%edx),%ecx
   124b2:	8b 55 0c             	mov    0xc(%ebp),%edx
   124b5:	01 ca                	add    %ecx,%edx
   124b7:	0f b6 00             	movzbl (%eax),%eax
   124ba:	88 02                	mov    %al,(%edx)
   124bc:	8b 45 08             	mov    0x8(%ebp),%eax
   124bf:	8d 50 0f             	lea    0xf(%eax),%edx
   124c2:	85 c0                	test   %eax,%eax
   124c4:	0f 48 c2             	cmovs  %edx,%eax
   124c7:	c1 f8 04             	sar    $0x4,%eax
   124ca:	89 45 08             	mov    %eax,0x8(%ebp)
   124cd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   124d1:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   124d5:	7f c0                	jg     12497 <itoa_hex+0x45>
   124d7:	8b 45 fc             	mov    -0x4(%ebp),%eax
   124da:	8d 50 02             	lea    0x2(%eax),%edx
   124dd:	8b 45 0c             	mov    0xc(%ebp),%eax
   124e0:	01 d0                	add    %edx,%eax
   124e2:	c6 00 00             	movb   $0x0,(%eax)
   124e5:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   124ec:	eb 47                	jmp    12535 <itoa_hex+0xe3>
   124ee:	8b 45 f8             	mov    -0x8(%ebp),%eax
   124f1:	8d 50 02             	lea    0x2(%eax),%edx
   124f4:	8b 45 0c             	mov    0xc(%ebp),%eax
   124f7:	01 d0                	add    %edx,%eax
   124f9:	0f b6 00             	movzbl (%eax),%eax
   124fc:	88 45 f3             	mov    %al,-0xd(%ebp)
   124ff:	8b 45 fc             	mov    -0x4(%ebp),%eax
   12502:	2b 45 f8             	sub    -0x8(%ebp),%eax
   12505:	8d 50 01             	lea    0x1(%eax),%edx
   12508:	8b 45 0c             	mov    0xc(%ebp),%eax
   1250b:	01 d0                	add    %edx,%eax
   1250d:	8b 55 f8             	mov    -0x8(%ebp),%edx
   12510:	8d 4a 02             	lea    0x2(%edx),%ecx
   12513:	8b 55 0c             	mov    0xc(%ebp),%edx
   12516:	01 ca                	add    %ecx,%edx
   12518:	0f b6 00             	movzbl (%eax),%eax
   1251b:	88 02                	mov    %al,(%edx)
   1251d:	8b 45 fc             	mov    -0x4(%ebp),%eax
   12520:	2b 45 f8             	sub    -0x8(%ebp),%eax
   12523:	8d 50 01             	lea    0x1(%eax),%edx
   12526:	8b 45 0c             	mov    0xc(%ebp),%eax
   12529:	01 c2                	add    %eax,%edx
   1252b:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
   1252f:	88 02                	mov    %al,(%edx)
   12531:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
   12535:	8b 45 fc             	mov    -0x4(%ebp),%eax
   12538:	89 c2                	mov    %eax,%edx
   1253a:	c1 ea 1f             	shr    $0x1f,%edx
   1253d:	01 d0                	add    %edx,%eax
   1253f:	d1 f8                	sar    %eax
   12541:	39 45 f8             	cmp    %eax,-0x8(%ebp)
   12544:	7c a8                	jl     124ee <itoa_hex+0x9c>
   12546:	8b 45 0c             	mov    0xc(%ebp),%eax
   12549:	c9                   	leave  
   1254a:	c3                   	ret    

0001254b <printRange>:
   1254b:	55                   	push   %ebp
   1254c:	89 e5                	mov    %esp,%ebp
   1254e:	83 ec 18             	sub    $0x18,%esp
   12551:	8d 45 ee             	lea    -0x12(%ebp),%eax
   12554:	50                   	push   %eax
   12555:	ff 75 08             	push   0x8(%ebp)
   12558:	e8 f5 fe ff ff       	call   12452 <itoa_hex>
   1255d:	83 c4 08             	add    $0x8,%esp
   12560:	83 ec 0c             	sub    $0xc,%esp
   12563:	50                   	push   %eax
   12564:	e8 4d e2 ff ff       	call   107b6 <printk>
   12569:	83 c4 10             	add    $0x10,%esp
   1256c:	83 ec 0c             	sub    $0xc,%esp
   1256f:	68 3b 30 01 00       	push   $0x1303b
   12574:	e8 3d e2 ff ff       	call   107b6 <printk>
   12579:	83 c4 10             	add    $0x10,%esp
   1257c:	83 ec 08             	sub    $0x8,%esp
   1257f:	8d 45 ee             	lea    -0x12(%ebp),%eax
   12582:	50                   	push   %eax
   12583:	ff 75 0c             	push   0xc(%ebp)
   12586:	e8 c7 fe ff ff       	call   12452 <itoa_hex>
   1258b:	83 c4 10             	add    $0x10,%esp
   1258e:	83 ec 0c             	sub    $0xc,%esp
   12591:	50                   	push   %eax
   12592:	e8 1f e2 ff ff       	call   107b6 <printk>
   12597:	83 c4 10             	add    $0x10,%esp
   1259a:	83 ec 0c             	sub    $0xc,%esp
   1259d:	68 3d 30 01 00       	push   $0x1303d
   125a2:	e8 0f e2 ff ff       	call   107b6 <printk>
   125a7:	83 c4 10             	add    $0x10,%esp
   125aa:	83 ec 08             	sub    $0x8,%esp
   125ad:	8d 45 ee             	lea    -0x12(%ebp),%eax
   125b0:	50                   	push   %eax
   125b1:	ff 75 10             	push   0x10(%ebp)
   125b4:	e8 99 fe ff ff       	call   12452 <itoa_hex>
   125b9:	83 c4 10             	add    $0x10,%esp
   125bc:	83 ec 0c             	sub    $0xc,%esp
   125bf:	50                   	push   %eax
   125c0:	e8 f1 e1 ff ff       	call   107b6 <printk>
   125c5:	83 c4 10             	add    $0x10,%esp
   125c8:	83 ec 0c             	sub    $0xc,%esp
   125cb:	68 3b 30 01 00       	push   $0x1303b
   125d0:	e8 e1 e1 ff ff       	call   107b6 <printk>
   125d5:	83 c4 10             	add    $0x10,%esp
   125d8:	83 ec 08             	sub    $0x8,%esp
   125db:	8d 45 ee             	lea    -0x12(%ebp),%eax
   125de:	50                   	push   %eax
   125df:	ff 75 14             	push   0x14(%ebp)
   125e2:	e8 6b fe ff ff       	call   12452 <itoa_hex>
   125e7:	83 c4 10             	add    $0x10,%esp
   125ea:	83 ec 0c             	sub    $0xc,%esp
   125ed:	50                   	push   %eax
   125ee:	e8 c3 e1 ff ff       	call   107b6 <printk>
   125f3:	83 c4 10             	add    $0x10,%esp
   125f6:	83 ec 0c             	sub    $0xc,%esp
   125f9:	68 42 30 01 00       	push   $0x13042
   125fe:	e8 b3 e1 ff ff       	call   107b6 <printk>
   12603:	83 c4 10             	add    $0x10,%esp
   12606:	8b 45 0c             	mov    0xc(%ebp),%eax
   12609:	2b 45 08             	sub    0x8(%ebp),%eax
   1260c:	8d 50 01             	lea    0x1(%eax),%edx
   1260f:	83 ec 08             	sub    $0x8,%esp
   12612:	8d 45 ee             	lea    -0x12(%ebp),%eax
   12615:	50                   	push   %eax
   12616:	52                   	push   %edx
   12617:	e8 e7 02 00 00       	call   12903 <itoa>
   1261c:	83 c4 10             	add    $0x10,%esp
   1261f:	83 ec 0c             	sub    $0xc,%esp
   12622:	50                   	push   %eax
   12623:	e8 8e e1 ff ff       	call   107b6 <printk>
   12628:	83 c4 10             	add    $0x10,%esp
   1262b:	83 ec 0c             	sub    $0xc,%esp
   1262e:	68 45 30 01 00       	push   $0x13045
   12633:	e8 7e e1 ff ff       	call   107b6 <printk>
   12638:	83 c4 10             	add    $0x10,%esp
   1263b:	83 ec 0c             	sub    $0xc,%esp
   1263e:	ff 75 18             	push   0x18(%ebp)
   12641:	e8 70 e1 ff ff       	call   107b6 <printk>
   12646:	83 c4 10             	add    $0x10,%esp
   12649:	90                   	nop
   1264a:	c9                   	leave  
   1264b:	c3                   	ret    

0001264c <show_PT_range>:
   1264c:	55                   	push   %ebp
   1264d:	89 e5                	mov    %esp,%ebp
   1264f:	83 ec 18             	sub    $0x18,%esp
   12652:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
   12659:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
   12660:	8b 45 0c             	mov    0xc(%ebp),%eax
   12663:	89 45 ec             	mov    %eax,-0x14(%ebp)
   12666:	e9 1d 01 00 00       	jmp    12788 <show_PT_range+0x13c>
   1266b:	8b 45 ec             	mov    -0x14(%ebp),%eax
   1266e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   12675:	8b 45 08             	mov    0x8(%ebp),%eax
   12678:	01 d0                	add    %edx,%eax
   1267a:	0f b6 00             	movzbl (%eax),%eax
   1267d:	83 e0 01             	and    $0x1,%eax
   12680:	84 c0                	test   %al,%al
   12682:	0f 84 b8 00 00 00    	je     12740 <show_PT_range+0xf4>
   12688:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   1268c:	79 22                	jns    126b0 <show_PT_range+0x64>
   1268e:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12691:	89 45 f4             	mov    %eax,-0xc(%ebp)
   12694:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12697:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   1269e:	8b 45 08             	mov    0x8(%ebp),%eax
   126a1:	01 d0                	add    %edx,%eax
   126a3:	8b 00                	mov    (%eax),%eax
   126a5:	c1 e8 0c             	shr    $0xc,%eax
   126a8:	89 45 f0             	mov    %eax,-0x10(%ebp)
   126ab:	e9 d4 00 00 00       	jmp    12784 <show_PT_range+0x138>
   126b0:	8b 45 ec             	mov    -0x14(%ebp),%eax
   126b3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   126ba:	8b 45 08             	mov    0x8(%ebp),%eax
   126bd:	01 d0                	add    %edx,%eax
   126bf:	8b 00                	mov    (%eax),%eax
   126c1:	c1 e8 0c             	shr    $0xc,%eax
   126c4:	89 c2                	mov    %eax,%edx
   126c6:	8b 45 ec             	mov    -0x14(%ebp),%eax
   126c9:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
   126ce:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   126d5:	8b 45 08             	mov    0x8(%ebp),%eax
   126d8:	01 c8                	add    %ecx,%eax
   126da:	8b 00                	mov    (%eax),%eax
   126dc:	c1 e8 0c             	shr    $0xc,%eax
   126df:	83 c0 01             	add    $0x1,%eax
   126e2:	39 c2                	cmp    %eax,%edx
   126e4:	0f 84 9a 00 00 00    	je     12784 <show_PT_range+0x138>
   126ea:	8b 45 ec             	mov    -0x14(%ebp),%eax
   126ed:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
   126f2:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   126f9:	8b 45 08             	mov    0x8(%ebp),%eax
   126fc:	01 d0                	add    %edx,%eax
   126fe:	8b 00                	mov    (%eax),%eax
   12700:	c1 e8 0c             	shr    $0xc,%eax
   12703:	89 c2                	mov    %eax,%edx
   12705:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12708:	83 e8 01             	sub    $0x1,%eax
   1270b:	83 ec 0c             	sub    $0xc,%esp
   1270e:	ff 75 14             	push   0x14(%ebp)
   12711:	52                   	push   %edx
   12712:	ff 75 f0             	push   -0x10(%ebp)
   12715:	50                   	push   %eax
   12716:	ff 75 f4             	push   -0xc(%ebp)
   12719:	e8 2d fe ff ff       	call   1254b <printRange>
   1271e:	83 c4 20             	add    $0x20,%esp
   12721:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12724:	89 45 f4             	mov    %eax,-0xc(%ebp)
   12727:	8b 45 ec             	mov    -0x14(%ebp),%eax
   1272a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   12731:	8b 45 08             	mov    0x8(%ebp),%eax
   12734:	01 d0                	add    %edx,%eax
   12736:	8b 00                	mov    (%eax),%eax
   12738:	c1 e8 0c             	shr    $0xc,%eax
   1273b:	89 45 f0             	mov    %eax,-0x10(%ebp)
   1273e:	eb 44                	jmp    12784 <show_PT_range+0x138>
   12740:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   12744:	78 3e                	js     12784 <show_PT_range+0x138>
   12746:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12749:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
   1274e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   12755:	8b 45 08             	mov    0x8(%ebp),%eax
   12758:	01 d0                	add    %edx,%eax
   1275a:	8b 00                	mov    (%eax),%eax
   1275c:	c1 e8 0c             	shr    $0xc,%eax
   1275f:	89 c2                	mov    %eax,%edx
   12761:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12764:	83 e8 01             	sub    $0x1,%eax
   12767:	83 ec 0c             	sub    $0xc,%esp
   1276a:	ff 75 14             	push   0x14(%ebp)
   1276d:	52                   	push   %edx
   1276e:	ff 75 f0             	push   -0x10(%ebp)
   12771:	50                   	push   %eax
   12772:	ff 75 f4             	push   -0xc(%ebp)
   12775:	e8 d1 fd ff ff       	call   1254b <printRange>
   1277a:	83 c4 20             	add    $0x20,%esp
   1277d:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
   12784:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
   12788:	8b 55 0c             	mov    0xc(%ebp),%edx
   1278b:	8b 45 10             	mov    0x10(%ebp),%eax
   1278e:	01 d0                	add    %edx,%eax
   12790:	39 45 ec             	cmp    %eax,-0x14(%ebp)
   12793:	0f 8c d2 fe ff ff    	jl     1266b <show_PT_range+0x1f>
   12799:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   1279d:	78 37                	js     127d6 <show_PT_range+0x18a>
   1279f:	8b 45 ec             	mov    -0x14(%ebp),%eax
   127a2:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
   127a7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   127ae:	8b 45 08             	mov    0x8(%ebp),%eax
   127b1:	01 d0                	add    %edx,%eax
   127b3:	8b 00                	mov    (%eax),%eax
   127b5:	c1 e8 0c             	shr    $0xc,%eax
   127b8:	89 c2                	mov    %eax,%edx
   127ba:	8b 45 ec             	mov    -0x14(%ebp),%eax
   127bd:	83 e8 01             	sub    $0x1,%eax
   127c0:	83 ec 0c             	sub    $0xc,%esp
   127c3:	ff 75 14             	push   0x14(%ebp)
   127c6:	52                   	push   %edx
   127c7:	ff 75 f0             	push   -0x10(%ebp)
   127ca:	50                   	push   %eax
   127cb:	ff 75 f4             	push   -0xc(%ebp)
   127ce:	e8 78 fd ff ff       	call   1254b <printRange>
   127d3:	83 c4 20             	add    $0x20,%esp
   127d6:	90                   	nop
   127d7:	c9                   	leave  
   127d8:	c3                   	ret    

000127d9 <show_PT>:
   127d9:	55                   	push   %ebp
   127da:	89 e5                	mov    %esp,%ebp
   127dc:	83 ec 08             	sub    $0x8,%esp
   127df:	83 ec 0c             	sub    $0xc,%esp
   127e2:	68 4d 30 01 00       	push   $0x1304d
   127e7:	e8 ca df ff ff       	call   107b6 <printk>
   127ec:	83 c4 10             	add    $0x10,%esp
   127ef:	68 63 30 01 00       	push   $0x13063
   127f4:	68 00 04 00 00       	push   $0x400
   127f9:	6a 00                	push   $0x0
   127fb:	ff 75 08             	push   0x8(%ebp)
   127fe:	e8 49 fe ff ff       	call   1264c <show_PT_range>
   12803:	83 c4 10             	add    $0x10,%esp
   12806:	90                   	nop
   12807:	c9                   	leave  
   12808:	c3                   	ret    

00012809 <prepare_mono_address_space>:
   12809:	55                   	push   %ebp
   1280a:	89 e5                	mov    %esp,%ebp
   1280c:	83 ec 28             	sub    $0x28,%esp
   1280f:	e8 d3 f0 ff ff       	call   118e7 <alloc_frame>
   12814:	89 45 f4             	mov    %eax,-0xc(%ebp)
   12817:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1281a:	c1 e0 0c             	shl    $0xc,%eax
   1281d:	89 45 f0             	mov    %eax,-0x10(%ebp)
   12820:	83 ec 0c             	sub    $0xc,%esp
   12823:	ff 75 f0             	push   -0x10(%ebp)
   12826:	e8 0c ec ff ff       	call   11437 <clear_page_table>
   1282b:	83 c4 10             	add    $0x10,%esp
   1282e:	e8 b4 f0 ff ff       	call   118e7 <alloc_frame>
   12833:	89 45 ec             	mov    %eax,-0x14(%ebp)
   12836:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12839:	c1 e0 0c             	shl    $0xc,%eax
   1283c:	89 45 e8             	mov    %eax,-0x18(%ebp)
   1283f:	83 ec 0c             	sub    $0xc,%esp
   12842:	ff 75 e8             	push   -0x18(%ebp)
   12845:	e8 ed eb ff ff       	call   11437 <clear_page_table>
   1284a:	83 c4 10             	add    $0x10,%esp
   1284d:	83 ec 0c             	sub    $0xc,%esp
   12850:	ff 75 f0             	push   -0x10(%ebp)
   12853:	e8 70 ed ff ff       	call   115c8 <set_kernel_pages>
   12858:	83 c4 10             	add    $0x10,%esp
   1285b:	e8 87 f0 ff ff       	call   118e7 <alloc_frame>
   12860:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   12863:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   12866:	c1 e0 0c             	shl    $0xc,%eax
   12869:	89 45 e0             	mov    %eax,-0x20(%ebp)
   1286c:	83 ec 0c             	sub    $0xc,%esp
   1286f:	ff 75 e0             	push   -0x20(%ebp)
   12872:	e8 c0 eb ff ff       	call   11437 <clear_page_table>
   12877:	83 c4 10             	add    $0x10,%esp
   1287a:	83 ec 0c             	sub    $0xc,%esp
   1287d:	ff 75 e0             	push   -0x20(%ebp)
   12880:	e8 e7 eb ff ff       	call   1146c <set_user_pages>
   12885:	83 c4 10             	add    $0x10,%esp
   12888:	8b 55 ec             	mov    -0x14(%ebp),%edx
   1288b:	8b 45 ec             	mov    -0x14(%ebp),%eax
   1288e:	6a 00                	push   $0x0
   12890:	52                   	push   %edx
   12891:	50                   	push   %eax
   12892:	ff 75 f0             	push   -0x10(%ebp)
   12895:	e8 06 f1 ff ff       	call   119a0 <set_ss_pag>
   1289a:	83 c4 10             	add    $0x10,%esp
   1289d:	8b 55 f4             	mov    -0xc(%ebp),%edx
   128a0:	8b 45 f4             	mov    -0xc(%ebp),%eax
   128a3:	6a 00                	push   $0x0
   128a5:	52                   	push   %edx
   128a6:	50                   	push   %eax
   128a7:	ff 75 f0             	push   -0x10(%ebp)
   128aa:	e8 f1 f0 ff ff       	call   119a0 <set_ss_pag>
   128af:	83 c4 10             	add    $0x10,%esp
   128b2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   128b5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   128b8:	6a 00                	push   $0x0
   128ba:	52                   	push   %edx
   128bb:	50                   	push   %eax
   128bc:	ff 75 f0             	push   -0x10(%ebp)
   128bf:	e8 dc f0 ff ff       	call   119a0 <set_ss_pag>
   128c4:	83 c4 10             	add    $0x10,%esp
   128c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   128ca:	6a 00                	push   $0x0
   128cc:	50                   	push   %eax
   128cd:	6a 00                	push   $0x0
   128cf:	ff 75 e8             	push   -0x18(%ebp)
   128d2:	e8 c9 f0 ff ff       	call   119a0 <set_ss_pag>
   128d7:	83 c4 10             	add    $0x10,%esp
   128da:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   128dd:	6a 01                	push   $0x1
   128df:	50                   	push   %eax
   128e0:	6a 01                	push   $0x1
   128e2:	ff 75 e8             	push   -0x18(%ebp)
   128e5:	e8 b6 f0 ff ff       	call   119a0 <set_ss_pag>
   128ea:	83 c4 10             	add    $0x10,%esp
   128ed:	83 ec 0c             	sub    $0xc,%esp
   128f0:	ff 75 e8             	push   -0x18(%ebp)
   128f3:	e8 a6 f6 ff ff       	call   11f9e <set_cr3>
   128f8:	83 c4 10             	add    $0x10,%esp
   128fb:	e8 91 ed ff ff       	call   11691 <set_pe_flag>
   12900:	90                   	nop
   12901:	c9                   	leave  
   12902:	c3                   	ret    

00012903 <itoa>:
   12903:	55                   	push   %ebp
   12904:	89 e5                	mov    %esp,%ebp
   12906:	53                   	push   %ebx
   12907:	83 ec 10             	sub    $0x10,%esp
   1290a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   1290e:	75 17                	jne    12927 <itoa+0x24>
   12910:	8b 45 0c             	mov    0xc(%ebp),%eax
   12913:	c6 00 30             	movb   $0x30,(%eax)
   12916:	8b 45 0c             	mov    0xc(%ebp),%eax
   12919:	83 c0 01             	add    $0x1,%eax
   1291c:	c6 00 00             	movb   $0x0,(%eax)
   1291f:	8b 45 0c             	mov    0xc(%ebp),%eax
   12922:	e9 cf 00 00 00       	jmp    129f6 <itoa+0xf3>
   12927:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   1292e:	eb 57                	jmp    12987 <itoa+0x84>
   12930:	8b 4d 08             	mov    0x8(%ebp),%ecx
   12933:	ba 67 66 66 66       	mov    $0x66666667,%edx
   12938:	89 c8                	mov    %ecx,%eax
   1293a:	f7 ea                	imul   %edx
   1293c:	89 d0                	mov    %edx,%eax
   1293e:	c1 f8 02             	sar    $0x2,%eax
   12941:	89 cb                	mov    %ecx,%ebx
   12943:	c1 fb 1f             	sar    $0x1f,%ebx
   12946:	29 d8                	sub    %ebx,%eax
   12948:	89 c2                	mov    %eax,%edx
   1294a:	89 d0                	mov    %edx,%eax
   1294c:	c1 e0 02             	shl    $0x2,%eax
   1294f:	01 d0                	add    %edx,%eax
   12951:	01 c0                	add    %eax,%eax
   12953:	29 c1                	sub    %eax,%ecx
   12955:	89 ca                	mov    %ecx,%edx
   12957:	89 d0                	mov    %edx,%eax
   12959:	8d 48 30             	lea    0x30(%eax),%ecx
   1295c:	8b 55 f8             	mov    -0x8(%ebp),%edx
   1295f:	8b 45 0c             	mov    0xc(%ebp),%eax
   12962:	01 d0                	add    %edx,%eax
   12964:	89 ca                	mov    %ecx,%edx
   12966:	88 10                	mov    %dl,(%eax)
   12968:	8b 4d 08             	mov    0x8(%ebp),%ecx
   1296b:	ba 67 66 66 66       	mov    $0x66666667,%edx
   12970:	89 c8                	mov    %ecx,%eax
   12972:	f7 ea                	imul   %edx
   12974:	89 d0                	mov    %edx,%eax
   12976:	c1 f8 02             	sar    $0x2,%eax
   12979:	c1 f9 1f             	sar    $0x1f,%ecx
   1297c:	89 ca                	mov    %ecx,%edx
   1297e:	29 d0                	sub    %edx,%eax
   12980:	89 45 08             	mov    %eax,0x8(%ebp)
   12983:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
   12987:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   1298b:	7f a3                	jg     12930 <itoa+0x2d>
   1298d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   12994:	eb 41                	jmp    129d7 <itoa+0xd4>
   12996:	8b 55 f4             	mov    -0xc(%ebp),%edx
   12999:	8b 45 0c             	mov    0xc(%ebp),%eax
   1299c:	01 d0                	add    %edx,%eax
   1299e:	0f b6 00             	movzbl (%eax),%eax
   129a1:	88 45 f3             	mov    %al,-0xd(%ebp)
   129a4:	8b 45 f8             	mov    -0x8(%ebp),%eax
   129a7:	2b 45 f4             	sub    -0xc(%ebp),%eax
   129aa:	8d 50 ff             	lea    -0x1(%eax),%edx
   129ad:	8b 45 0c             	mov    0xc(%ebp),%eax
   129b0:	01 d0                	add    %edx,%eax
   129b2:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   129b5:	8b 55 0c             	mov    0xc(%ebp),%edx
   129b8:	01 ca                	add    %ecx,%edx
   129ba:	0f b6 00             	movzbl (%eax),%eax
   129bd:	88 02                	mov    %al,(%edx)
   129bf:	8b 45 f8             	mov    -0x8(%ebp),%eax
   129c2:	2b 45 f4             	sub    -0xc(%ebp),%eax
   129c5:	8d 50 ff             	lea    -0x1(%eax),%edx
   129c8:	8b 45 0c             	mov    0xc(%ebp),%eax
   129cb:	01 c2                	add    %eax,%edx
   129cd:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
   129d1:	88 02                	mov    %al,(%edx)
   129d3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   129d7:	8b 45 f8             	mov    -0x8(%ebp),%eax
   129da:	89 c2                	mov    %eax,%edx
   129dc:	c1 ea 1f             	shr    $0x1f,%edx
   129df:	01 d0                	add    %edx,%eax
   129e1:	d1 f8                	sar    %eax
   129e3:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   129e6:	7c ae                	jl     12996 <itoa+0x93>
   129e8:	8b 55 f8             	mov    -0x8(%ebp),%edx
   129eb:	8b 45 0c             	mov    0xc(%ebp),%eax
   129ee:	01 d0                	add    %edx,%eax
   129f0:	c6 00 00             	movb   $0x0,(%eax)
   129f3:	8b 45 0c             	mov    0xc(%ebp),%eax
   129f6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   129f9:	c9                   	leave  
   129fa:	c3                   	ret    

000129fb <printc_xy>:
   129fb:	55                   	push   %ebp
   129fc:	89 e5                	mov    %esp,%ebp
   129fe:	83 ec 1c             	sub    $0x1c,%esp
   12a01:	8b 4d 08             	mov    0x8(%ebp),%ecx
   12a04:	8b 55 0c             	mov    0xc(%ebp),%edx
   12a07:	8b 45 10             	mov    0x10(%ebp),%eax
   12a0a:	88 4d ec             	mov    %cl,-0x14(%ebp)
   12a0d:	88 55 e8             	mov    %dl,-0x18(%ebp)
   12a10:	88 45 e4             	mov    %al,-0x1c(%ebp)
   12a13:	66 0f be 45 e4       	movsbw -0x1c(%ebp),%ax
   12a18:	0f b6 c0             	movzbl %al,%eax
   12a1b:	80 cc 02             	or     $0x2,%ah
   12a1e:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
   12a22:	c7 45 f8 00 80 0b 00 	movl   $0xb8000,-0x8(%ebp)
   12a29:	0f b6 55 e8          	movzbl -0x18(%ebp),%edx
   12a2d:	89 d0                	mov    %edx,%eax
   12a2f:	c1 e0 02             	shl    $0x2,%eax
   12a32:	01 d0                	add    %edx,%eax
   12a34:	c1 e0 04             	shl    $0x4,%eax
   12a37:	89 c2                	mov    %eax,%edx
   12a39:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
   12a3d:	01 d0                	add    %edx,%eax
   12a3f:	8d 14 00             	lea    (%eax,%eax,1),%edx
   12a42:	8b 45 f8             	mov    -0x8(%ebp),%eax
   12a45:	01 c2                	add    %eax,%edx
   12a47:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
   12a4b:	66 89 02             	mov    %ax,(%edx)
   12a4e:	90                   	nop
   12a4f:	c9                   	leave  
   12a50:	c3                   	ret    

00012a51 <zeos_show_clock>:
   12a51:	55                   	push   %ebp
   12a52:	89 e5                	mov    %esp,%ebp
   12a54:	83 ec 10             	sub    $0x10,%esp
   12a57:	a1 58 53 01 00       	mov    0x15358,%eax
   12a5c:	83 c0 01             	add    $0x1,%eax
   12a5f:	a3 58 53 01 00       	mov    %eax,0x15358
   12a64:	a1 58 53 01 00       	mov    0x15358,%eax
   12a69:	83 f8 12             	cmp    $0x12,%eax
   12a6c:	0f 85 2e 01 00 00    	jne    12ba0 <zeos_show_clock+0x14f>
   12a72:	a1 5c 53 01 00       	mov    0x1535c,%eax
   12a77:	83 c0 01             	add    $0x1,%eax
   12a7a:	a3 5c 53 01 00       	mov    %eax,0x1535c
   12a7f:	c7 05 58 53 01 00 00 	movl   $0x0,0x15358
   12a86:	00 00 00 
   12a89:	a1 5c 53 01 00       	mov    0x1535c,%eax
   12a8e:	83 f8 3c             	cmp    $0x3c,%eax
   12a91:	75 17                	jne    12aaa <zeos_show_clock+0x59>
   12a93:	c7 05 5c 53 01 00 00 	movl   $0x0,0x1535c
   12a9a:	00 00 00 
   12a9d:	a1 60 53 01 00       	mov    0x15360,%eax
   12aa2:	83 c0 01             	add    $0x1,%eax
   12aa5:	a3 60 53 01 00       	mov    %eax,0x15360
   12aaa:	a1 60 53 01 00       	mov    0x15360,%eax
   12aaf:	8d 55 fc             	lea    -0x4(%ebp),%edx
   12ab2:	52                   	push   %edx
   12ab3:	50                   	push   %eax
   12ab4:	e8 4a fe ff ff       	call   12903 <itoa>
   12ab9:	83 c4 08             	add    $0x8,%esp
   12abc:	a1 5c 53 01 00       	mov    0x1535c,%eax
   12ac1:	8d 55 f8             	lea    -0x8(%ebp),%edx
   12ac4:	52                   	push   %edx
   12ac5:	50                   	push   %eax
   12ac6:	e8 38 fe ff ff       	call   12903 <itoa>
   12acb:	83 c4 08             	add    $0x8,%esp
   12ace:	a1 60 53 01 00       	mov    0x15360,%eax
   12ad3:	83 f8 09             	cmp    $0x9,%eax
   12ad6:	7e 16                	jle    12aee <zeos_show_clock+0x9d>
   12ad8:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
   12adc:	0f be c0             	movsbl %al,%eax
   12adf:	50                   	push   %eax
   12ae0:	6a 00                	push   $0x0
   12ae2:	6a 46                	push   $0x46
   12ae4:	e8 12 ff ff ff       	call   129fb <printc_xy>
   12ae9:	83 c4 0c             	add    $0xc,%esp
   12aec:	eb 0e                	jmp    12afc <zeos_show_clock+0xab>
   12aee:	6a 30                	push   $0x30
   12af0:	6a 00                	push   $0x0
   12af2:	6a 46                	push   $0x46
   12af4:	e8 02 ff ff ff       	call   129fb <printc_xy>
   12af9:	83 c4 0c             	add    $0xc,%esp
   12afc:	a1 60 53 01 00       	mov    0x15360,%eax
   12b01:	83 f8 09             	cmp    $0x9,%eax
   12b04:	7e 16                	jle    12b1c <zeos_show_clock+0xcb>
   12b06:	0f b6 45 fd          	movzbl -0x3(%ebp),%eax
   12b0a:	0f be c0             	movsbl %al,%eax
   12b0d:	50                   	push   %eax
   12b0e:	6a 00                	push   $0x0
   12b10:	6a 47                	push   $0x47
   12b12:	e8 e4 fe ff ff       	call   129fb <printc_xy>
   12b17:	83 c4 0c             	add    $0xc,%esp
   12b1a:	eb 14                	jmp    12b30 <zeos_show_clock+0xdf>
   12b1c:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
   12b20:	0f be c0             	movsbl %al,%eax
   12b23:	50                   	push   %eax
   12b24:	6a 00                	push   $0x0
   12b26:	6a 47                	push   $0x47
   12b28:	e8 ce fe ff ff       	call   129fb <printc_xy>
   12b2d:	83 c4 0c             	add    $0xc,%esp
   12b30:	6a 3a                	push   $0x3a
   12b32:	6a 00                	push   $0x0
   12b34:	6a 48                	push   $0x48
   12b36:	e8 c0 fe ff ff       	call   129fb <printc_xy>
   12b3b:	83 c4 0c             	add    $0xc,%esp
   12b3e:	a1 5c 53 01 00       	mov    0x1535c,%eax
   12b43:	83 f8 09             	cmp    $0x9,%eax
   12b46:	7e 16                	jle    12b5e <zeos_show_clock+0x10d>
   12b48:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
   12b4c:	0f be c0             	movsbl %al,%eax
   12b4f:	50                   	push   %eax
   12b50:	6a 00                	push   $0x0
   12b52:	6a 49                	push   $0x49
   12b54:	e8 a2 fe ff ff       	call   129fb <printc_xy>
   12b59:	83 c4 0c             	add    $0xc,%esp
   12b5c:	eb 0e                	jmp    12b6c <zeos_show_clock+0x11b>
   12b5e:	6a 30                	push   $0x30
   12b60:	6a 00                	push   $0x0
   12b62:	6a 49                	push   $0x49
   12b64:	e8 92 fe ff ff       	call   129fb <printc_xy>
   12b69:	83 c4 0c             	add    $0xc,%esp
   12b6c:	a1 5c 53 01 00       	mov    0x1535c,%eax
   12b71:	83 f8 09             	cmp    $0x9,%eax
   12b74:	7e 16                	jle    12b8c <zeos_show_clock+0x13b>
   12b76:	0f b6 45 f9          	movzbl -0x7(%ebp),%eax
   12b7a:	0f be c0             	movsbl %al,%eax
   12b7d:	50                   	push   %eax
   12b7e:	6a 00                	push   $0x0
   12b80:	6a 4a                	push   $0x4a
   12b82:	e8 74 fe ff ff       	call   129fb <printc_xy>
   12b87:	83 c4 0c             	add    $0xc,%esp
   12b8a:	eb 14                	jmp    12ba0 <zeos_show_clock+0x14f>
   12b8c:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
   12b90:	0f be c0             	movsbl %al,%eax
   12b93:	50                   	push   %eax
   12b94:	6a 00                	push   $0x0
   12b96:	6a 4a                	push   $0x4a
   12b98:	e8 5e fe ff ff       	call   129fb <printc_xy>
   12b9d:	83 c4 0c             	add    $0xc,%esp
   12ba0:	90                   	nop
   12ba1:	c9                   	leave  
   12ba2:	c3                   	ret    
