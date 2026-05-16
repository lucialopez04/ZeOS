
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
   10021:	e8 ad 1f 00 00       	call   11fd3 <set_eflags>
   10026:	b8 c0 4b 01 00       	mov    $0x14bc0,%eax
   1002b:	83 ec 04             	sub    $0x4,%esp
   1002e:	50                   	push   %eax
   1002f:	6a 18                	push   $0x18
   10031:	6a 18                	push   $0x18
   10033:	e8 3a 20 00 00       	call   12072 <set_seg_regs>
   10038:	83 c4 10             	add    $0x10,%esp
   1003b:	83 ec 0c             	sub    $0xc,%esp
   1003e:	68 d4 2c 01 00       	push   $0x12cd4
   10043:	e8 5e 07 00 00       	call   107a6 <printk>
   10048:	83 c4 10             	add    $0x10,%esp
   1004b:	e8 0e 17 00 00       	call   1175e <setGdt>
   10050:	e8 d2 03 00 00       	call   10427 <setIdt>
   10055:	e8 6b 17 00 00       	call   117c5 <setTSS>
   1005a:	e8 c7 16 00 00       	call   11726 <init_mm>
   1005f:	e8 5c 0a 00 00       	call   10ac0 <init_sched>
   10064:	e8 aa 08 00 00       	call   10913 <init_task1>
   10069:	e8 90 07 00 00       	call   107fe <init_idle>
   1006e:	a1 e8 3e 01 00       	mov    0x13ee8,%eax
   10073:	8b 00                	mov    (%eax),%eax
   10075:	89 c2                	mov    %eax,%edx
   10077:	a1 e4 3e 01 00       	mov    0x13ee4,%eax
   1007c:	8b 00                	mov    (%eax),%eax
   1007e:	05 00 00 01 00       	add    $0x10000,%eax
   10083:	83 ec 04             	sub    $0x4,%esp
   10086:	52                   	push   %edx
   10087:	68 00 00 10 00       	push   $0x100000
   1008c:	50                   	push   %eax
   1008d:	e8 d7 1a 00 00       	call   11b69 <copy_data>
   10092:	83 c4 10             	add    $0x10,%esp
   10095:	83 ec 0c             	sub    $0xc,%esp
   10098:	68 e7 2c 01 00       	push   $0x12ce7
   1009d:	e8 04 07 00 00       	call   107a6 <printk>
   100a2:	83 c4 10             	add    $0x10,%esp
   100a5:	e8 c5 00 00 00       	call   1016f <init_teclado>
   100aa:	e8 24 1f 00 00       	call   11fd3 <set_eflags>
   100af:	e8 75 1f 00 00       	call   12029 <enable_int>
   100b4:	a1 e0 3e 01 00       	mov    0x13ee0,%eax
   100b9:	83 ec 0c             	sub    $0xc,%esp
   100bc:	50                   	push   %eax
   100bd:	6a 23                	push   $0x23
   100bf:	68 00 c0 11 00       	push   $0x11c000
   100c4:	6a 2b                	push   $0x2b
   100c6:	6a 2b                	push   $0x2b
   100c8:	e8 36 1f 00 00       	call   12003 <return_gate>
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
   100e8:	e8 4e 1f 00 00       	call   1203b <inb>
   100ed:	83 c4 10             	add    $0x10,%esp
   100f0:	88 45 f7             	mov    %al,-0x9(%ebp)
   100f3:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   100f7:	83 e0 80             	and    $0xffffff80,%eax
   100fa:	88 45 f6             	mov    %al,-0xa(%ebp)
   100fd:	80 7d f6 00          	cmpb   $0x0,-0xa(%ebp)
   10101:	75 49                	jne    1014c <keyboard_routine+0x6f>
   10103:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   10107:	83 e0 7f             	and    $0x7f,%eax
   1010a:	88 45 f5             	mov    %al,-0xb(%ebp)
   1010d:	80 7d f5 61          	cmpb   $0x61,-0xb(%ebp)
   10111:	77 26                	ja     10139 <keyboard_routine+0x5c>
   10113:	0f b6 45 f5          	movzbl -0xb(%ebp),%eax
   10117:	0f b6 80 00 3f 01 00 	movzbl 0x13f00(%eax),%eax
   1011e:	88 45 f4             	mov    %al,-0xc(%ebp)
   10121:	0f be 55 f4          	movsbl -0xc(%ebp),%edx
   10125:	a1 c8 4b 01 00       	mov    0x14bc8,%eax
   1012a:	83 ec 08             	sub    $0x8,%esp
   1012d:	52                   	push   %edx
   1012e:	50                   	push   %eax
   1012f:	e8 de 1c 00 00       	call   11e12 <CIRCULAR_BUFFER_ADD>
   10134:	83 c4 10             	add    $0x10,%esp
   10137:	eb 13                	jmp    1014c <keyboard_routine+0x6f>
   10139:	a1 c8 4b 01 00       	mov    0x14bc8,%eax
   1013e:	83 ec 08             	sub    $0x8,%esp
   10141:	6a 43                	push   $0x43
   10143:	50                   	push   %eax
   10144:	e8 c9 1c 00 00       	call   11e12 <CIRCULAR_BUFFER_ADD>
   10149:	83 c4 10             	add    $0x10,%esp
   1014c:	90                   	nop
   1014d:	c9                   	leave  
   1014e:	c3                   	ret    

0001014f <clock_routine>:
   1014f:	55                   	push   %ebp
   10150:	89 e5                	mov    %esp,%ebp
   10152:	83 ec 08             	sub    $0x8,%esp
   10155:	a1 94 47 01 00       	mov    0x14794,%eax
   1015a:	83 c0 01             	add    $0x1,%eax
   1015d:	a3 94 47 01 00       	mov    %eax,0x14794
   10162:	e8 1a 2a 00 00       	call   12b81 <zeos_show_clock>
   10167:	e8 dd 09 00 00       	call   10b49 <schedule>
   1016c:	90                   	nop
   1016d:	c9                   	leave  
   1016e:	c3                   	ret    

0001016f <init_teclado>:
   1016f:	55                   	push   %ebp
   10170:	89 e5                	mov    %esp,%ebp
   10172:	83 ec 08             	sub    $0x8,%esp
   10175:	83 ec 08             	sub    $0x8,%esp
   10178:	6a 00                	push   $0x0
   1017a:	68 88 47 01 00       	push   $0x14788
   1017f:	e8 0f 1f 00 00       	call   12093 <sem_init>
   10184:	83 c4 10             	add    $0x10,%esp
   10187:	90                   	nop
   10188:	c9                   	leave  
   10189:	c3                   	ret    

0001018a <setInterruptHandler>:
   1018a:	55                   	push   %ebp
   1018b:	89 e5                	mov    %esp,%ebp
   1018d:	83 ec 10             	sub    $0x10,%esp
   10190:	8b 45 10             	mov    0x10(%ebp),%eax
   10193:	c1 e0 0d             	shl    $0xd,%eax
   10196:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
   1019a:	66 81 4d fe 00 8e    	orw    $0x8e00,-0x2(%ebp)
   101a0:	8b 45 0c             	mov    0xc(%ebp),%eax
   101a3:	89 c2                	mov    %eax,%edx
   101a5:	8b 45 08             	mov    0x8(%ebp),%eax
   101a8:	66 89 14 c5 80 3f 01 	mov    %dx,0x13f80(,%eax,8)
   101af:	00 
   101b0:	8b 45 08             	mov    0x8(%ebp),%eax
   101b3:	66 c7 04 c5 82 3f 01 	movw   $0x10,0x13f82(,%eax,8)
   101ba:	00 10 00 
   101bd:	8b 45 08             	mov    0x8(%ebp),%eax
   101c0:	0f b7 55 fe          	movzwl -0x2(%ebp),%edx
   101c4:	66 89 14 c5 84 3f 01 	mov    %dx,0x13f84(,%eax,8)
   101cb:	00 
   101cc:	8b 45 0c             	mov    0xc(%ebp),%eax
   101cf:	c1 e8 10             	shr    $0x10,%eax
   101d2:	89 c2                	mov    %eax,%edx
   101d4:	8b 45 08             	mov    0x8(%ebp),%eax
   101d7:	66 89 14 c5 86 3f 01 	mov    %dx,0x13f86(,%eax,8)
   101de:	00 
   101df:	90                   	nop
   101e0:	c9                   	leave  
   101e1:	c3                   	ret    

000101e2 <setTrapHandler>:
   101e2:	55                   	push   %ebp
   101e3:	89 e5                	mov    %esp,%ebp
   101e5:	83 ec 10             	sub    $0x10,%esp
   101e8:	8b 45 10             	mov    0x10(%ebp),%eax
   101eb:	c1 e0 0d             	shl    $0xd,%eax
   101ee:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
   101f2:	66 81 4d fe 00 8e    	orw    $0x8e00,-0x2(%ebp)
   101f8:	8b 45 0c             	mov    0xc(%ebp),%eax
   101fb:	89 c2                	mov    %eax,%edx
   101fd:	8b 45 08             	mov    0x8(%ebp),%eax
   10200:	66 89 14 c5 80 3f 01 	mov    %dx,0x13f80(,%eax,8)
   10207:	00 
   10208:	8b 45 08             	mov    0x8(%ebp),%eax
   1020b:	66 c7 04 c5 82 3f 01 	movw   $0x10,0x13f82(,%eax,8)
   10212:	00 10 00 
   10215:	8b 45 08             	mov    0x8(%ebp),%eax
   10218:	0f b7 55 fe          	movzwl -0x2(%ebp),%edx
   1021c:	66 89 14 c5 84 3f 01 	mov    %dx,0x13f84(,%eax,8)
   10223:	00 
   10224:	8b 45 0c             	mov    0xc(%ebp),%eax
   10227:	c1 e8 10             	shr    $0x10,%eax
   1022a:	89 c2                	mov    %eax,%edx
   1022c:	8b 45 08             	mov    0x8(%ebp),%eax
   1022f:	66 89 14 c5 86 3f 01 	mov    %dx,0x13f86(,%eax,8)
   10236:	00 
   10237:	90                   	nop
   10238:	c9                   	leave  
   10239:	c3                   	ret    

0001023a <itoh>:
   1023a:	55                   	push   %ebp
   1023b:	89 e5                	mov    %esp,%ebp
   1023d:	83 ec 10             	sub    $0x10,%esp
   10240:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   10244:	75 14                	jne    1025a <itoh+0x20>
   10246:	8b 45 0c             	mov    0xc(%ebp),%eax
   10249:	c6 00 30             	movb   $0x30,(%eax)
   1024c:	8b 45 0c             	mov    0xc(%ebp),%eax
   1024f:	83 c0 01             	add    $0x1,%eax
   10252:	c6 00 00             	movb   $0x0,(%eax)
   10255:	e9 2c 01 00 00       	jmp    10386 <itoh+0x14c>
   1025a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   10261:	e9 b0 00 00 00       	jmp    10316 <itoh+0xdc>
   10266:	8b 45 08             	mov    0x8(%ebp),%eax
   10269:	99                   	cltd   
   1026a:	c1 ea 1c             	shr    $0x1c,%edx
   1026d:	01 d0                	add    %edx,%eax
   1026f:	83 e0 0f             	and    $0xf,%eax
   10272:	29 d0                	sub    %edx,%eax
   10274:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10277:	83 7d f0 09          	cmpl   $0x9,-0x10(%ebp)
   1027b:	7f 14                	jg     10291 <itoh+0x57>
   1027d:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10280:	8d 48 30             	lea    0x30(%eax),%ecx
   10283:	8b 55 fc             	mov    -0x4(%ebp),%edx
   10286:	8b 45 0c             	mov    0xc(%ebp),%eax
   10289:	01 d0                	add    %edx,%eax
   1028b:	89 ca                	mov    %ecx,%edx
   1028d:	88 10                	mov    %dl,(%eax)
   1028f:	eb 70                	jmp    10301 <itoh+0xc7>
   10291:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
   10295:	75 0d                	jne    102a4 <itoh+0x6a>
   10297:	8b 55 fc             	mov    -0x4(%ebp),%edx
   1029a:	8b 45 0c             	mov    0xc(%ebp),%eax
   1029d:	01 d0                	add    %edx,%eax
   1029f:	c6 00 61             	movb   $0x61,(%eax)
   102a2:	eb 5d                	jmp    10301 <itoh+0xc7>
   102a4:	83 7d f0 0b          	cmpl   $0xb,-0x10(%ebp)
   102a8:	75 0d                	jne    102b7 <itoh+0x7d>
   102aa:	8b 55 fc             	mov    -0x4(%ebp),%edx
   102ad:	8b 45 0c             	mov    0xc(%ebp),%eax
   102b0:	01 d0                	add    %edx,%eax
   102b2:	c6 00 62             	movb   $0x62,(%eax)
   102b5:	eb 4a                	jmp    10301 <itoh+0xc7>
   102b7:	83 7d f0 0c          	cmpl   $0xc,-0x10(%ebp)
   102bb:	75 0d                	jne    102ca <itoh+0x90>
   102bd:	8b 55 fc             	mov    -0x4(%ebp),%edx
   102c0:	8b 45 0c             	mov    0xc(%ebp),%eax
   102c3:	01 d0                	add    %edx,%eax
   102c5:	c6 00 63             	movb   $0x63,(%eax)
   102c8:	eb 37                	jmp    10301 <itoh+0xc7>
   102ca:	83 7d f0 0d          	cmpl   $0xd,-0x10(%ebp)
   102ce:	75 0d                	jne    102dd <itoh+0xa3>
   102d0:	8b 55 fc             	mov    -0x4(%ebp),%edx
   102d3:	8b 45 0c             	mov    0xc(%ebp),%eax
   102d6:	01 d0                	add    %edx,%eax
   102d8:	c6 00 64             	movb   $0x64,(%eax)
   102db:	eb 24                	jmp    10301 <itoh+0xc7>
   102dd:	83 7d f0 0e          	cmpl   $0xe,-0x10(%ebp)
   102e1:	75 0d                	jne    102f0 <itoh+0xb6>
   102e3:	8b 55 fc             	mov    -0x4(%ebp),%edx
   102e6:	8b 45 0c             	mov    0xc(%ebp),%eax
   102e9:	01 d0                	add    %edx,%eax
   102eb:	c6 00 65             	movb   $0x65,(%eax)
   102ee:	eb 11                	jmp    10301 <itoh+0xc7>
   102f0:	83 7d f0 0f          	cmpl   $0xf,-0x10(%ebp)
   102f4:	75 0b                	jne    10301 <itoh+0xc7>
   102f6:	8b 55 fc             	mov    -0x4(%ebp),%edx
   102f9:	8b 45 0c             	mov    0xc(%ebp),%eax
   102fc:	01 d0                	add    %edx,%eax
   102fe:	c6 00 66             	movb   $0x66,(%eax)
   10301:	8b 45 08             	mov    0x8(%ebp),%eax
   10304:	8d 50 0f             	lea    0xf(%eax),%edx
   10307:	85 c0                	test   %eax,%eax
   10309:	0f 48 c2             	cmovs  %edx,%eax
   1030c:	c1 f8 04             	sar    $0x4,%eax
   1030f:	89 45 08             	mov    %eax,0x8(%ebp)
   10312:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   10316:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   1031a:	0f 8f 46 ff ff ff    	jg     10266 <itoh+0x2c>
   10320:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   10327:	eb 41                	jmp    1036a <itoh+0x130>
   10329:	8b 55 f8             	mov    -0x8(%ebp),%edx
   1032c:	8b 45 0c             	mov    0xc(%ebp),%eax
   1032f:	01 d0                	add    %edx,%eax
   10331:	0f b6 00             	movzbl (%eax),%eax
   10334:	88 45 f7             	mov    %al,-0x9(%ebp)
   10337:	8b 45 fc             	mov    -0x4(%ebp),%eax
   1033a:	2b 45 f8             	sub    -0x8(%ebp),%eax
   1033d:	8d 50 ff             	lea    -0x1(%eax),%edx
   10340:	8b 45 0c             	mov    0xc(%ebp),%eax
   10343:	01 d0                	add    %edx,%eax
   10345:	8b 4d f8             	mov    -0x8(%ebp),%ecx
   10348:	8b 55 0c             	mov    0xc(%ebp),%edx
   1034b:	01 ca                	add    %ecx,%edx
   1034d:	0f b6 00             	movzbl (%eax),%eax
   10350:	88 02                	mov    %al,(%edx)
   10352:	8b 45 fc             	mov    -0x4(%ebp),%eax
   10355:	2b 45 f8             	sub    -0x8(%ebp),%eax
   10358:	8d 50 ff             	lea    -0x1(%eax),%edx
   1035b:	8b 45 0c             	mov    0xc(%ebp),%eax
   1035e:	01 c2                	add    %eax,%edx
   10360:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   10364:	88 02                	mov    %al,(%edx)
   10366:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
   1036a:	8b 45 fc             	mov    -0x4(%ebp),%eax
   1036d:	89 c2                	mov    %eax,%edx
   1036f:	c1 ea 1f             	shr    $0x1f,%edx
   10372:	01 d0                	add    %edx,%eax
   10374:	d1 f8                	sar    %eax
   10376:	39 45 f8             	cmp    %eax,-0x8(%ebp)
   10379:	7c ae                	jl     10329 <itoh+0xef>
   1037b:	8b 55 fc             	mov    -0x4(%ebp),%edx
   1037e:	8b 45 0c             	mov    0xc(%ebp),%eax
   10381:	01 d0                	add    %edx,%eax
   10383:	c6 00 00             	movb   $0x0,(%eax)
   10386:	c9                   	leave  
   10387:	c3                   	ret    

00010388 <hexa_to_int>:
   10388:	55                   	push   %ebp
   10389:	89 e5                	mov    %esp,%ebp
   1038b:	83 ec 10             	sub    $0x10,%esp
   1038e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   10395:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%ebp)
   1039c:	eb 27                	jmp    103c5 <hexa_to_int+0x3d>
   1039e:	8b 45 08             	mov    0x8(%ebp),%eax
   103a1:	83 e0 0f             	and    $0xf,%eax
   103a4:	89 45 f4             	mov    %eax,-0xc(%ebp)
   103a7:	8b 45 f8             	mov    -0x8(%ebp),%eax
   103aa:	0f af 45 f4          	imul   -0xc(%ebp),%eax
   103ae:	89 c2                	mov    %eax,%edx
   103b0:	8b 45 fc             	mov    -0x4(%ebp),%eax
   103b3:	01 d0                	add    %edx,%eax
   103b5:	89 45 fc             	mov    %eax,-0x4(%ebp)
   103b8:	8b 45 08             	mov    0x8(%ebp),%eax
   103bb:	c1 e8 04             	shr    $0x4,%eax
   103be:	89 45 08             	mov    %eax,0x8(%ebp)
   103c1:	c1 65 f8 04          	shll   $0x4,-0x8(%ebp)
   103c5:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   103c9:	75 d3                	jne    1039e <hexa_to_int+0x16>
   103cb:	8b 45 fc             	mov    -0x4(%ebp),%eax
   103ce:	c9                   	leave  
   103cf:	c3                   	ret    

000103d0 <pagefault_routine>:
   103d0:	55                   	push   %ebp
   103d1:	89 e5                	mov    %esp,%ebp
   103d3:	83 ec 28             	sub    $0x28,%esp
   103d6:	ff 75 08             	push   0x8(%ebp)
   103d9:	e8 aa ff ff ff       	call   10388 <hexa_to_int>
   103de:	83 c4 04             	add    $0x4,%esp
   103e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
   103e4:	83 ec 0c             	sub    $0xc,%esp
   103e7:	68 00 2d 01 00       	push   $0x12d00
   103ec:	e8 b5 03 00 00       	call   107a6 <printk>
   103f1:	83 c4 10             	add    $0x10,%esp
   103f4:	83 ec 08             	sub    $0x8,%esp
   103f7:	8d 45 dc             	lea    -0x24(%ebp),%eax
   103fa:	50                   	push   %eax
   103fb:	ff 75 f4             	push   -0xc(%ebp)
   103fe:	e8 37 fe ff ff       	call   1023a <itoh>
   10403:	83 c4 10             	add    $0x10,%esp
   10406:	83 ec 0c             	sub    $0xc,%esp
   10409:	8d 45 dc             	lea    -0x24(%ebp),%eax
   1040c:	50                   	push   %eax
   1040d:	e8 94 03 00 00       	call   107a6 <printk>
   10412:	83 c4 10             	add    $0x10,%esp
   10415:	83 ec 0c             	sub    $0xc,%esp
   10418:	68 35 2d 01 00       	push   $0x12d35
   1041d:	e8 84 03 00 00       	call   107a6 <printk>
   10422:	83 c4 10             	add    $0x10,%esp
   10425:	eb fe                	jmp    10425 <pagefault_routine+0x55>

00010427 <setIdt>:
   10427:	55                   	push   %ebp
   10428:	89 e5                	mov    %esp,%ebp
   1042a:	83 ec 08             	sub    $0x8,%esp
   1042d:	b8 80 3f 01 00       	mov    $0x13f80,%eax
   10432:	a3 82 47 01 00       	mov    %eax,0x14782
   10437:	66 c7 05 80 47 01 00 	movw   $0x7ff,0x14780
   1043e:	ff 07 
   10440:	e8 72 1f 00 00       	call   123b7 <set_handlers>
   10445:	83 ec 04             	sub    $0x4,%esp
   10448:	6a 00                	push   $0x0
   1044a:	68 d1 04 01 00       	push   $0x104d1
   1044f:	6a 21                	push   $0x21
   10451:	e8 34 fd ff ff       	call   1018a <setInterruptHandler>
   10456:	83 c4 10             	add    $0x10,%esp
   10459:	83 ec 04             	sub    $0x4,%esp
   1045c:	6a 00                	push   $0x0
   1045e:	68 fe 04 01 00       	push   $0x104fe
   10463:	6a 20                	push   $0x20
   10465:	e8 20 fd ff ff       	call   1018a <setInterruptHandler>
   1046a:	83 c4 10             	add    $0x10,%esp
   1046d:	83 ec 04             	sub    $0x4,%esp
   10470:	6a 00                	push   $0x0
   10472:	68 7f 05 01 00       	push   $0x1057f
   10477:	6a 0e                	push   $0xe
   10479:	e8 0c fd ff ff       	call   1018a <setInterruptHandler>
   1047e:	83 c4 10             	add    $0x10,%esp
   10481:	83 ec 08             	sub    $0x8,%esp
   10484:	6a 10                	push   $0x10
   10486:	68 74 01 00 00       	push   $0x174
   1048b:	e8 30 1b 00 00       	call   11fc0 <writeMSR>
   10490:	83 c4 10             	add    $0x10,%esp
   10493:	b8 c0 4b 01 00       	mov    $0x14bc0,%eax
   10498:	83 ec 08             	sub    $0x8,%esp
   1049b:	50                   	push   %eax
   1049c:	68 75 01 00 00       	push   $0x175
   104a1:	e8 1a 1b 00 00       	call   11fc0 <writeMSR>
   104a6:	83 c4 10             	add    $0x10,%esp
   104a9:	83 ec 08             	sub    $0x8,%esp
   104ac:	68 2b 05 01 00       	push   $0x1052b
   104b1:	68 76 01 00 00       	push   $0x176
   104b6:	e8 05 1b 00 00       	call   11fc0 <writeMSR>
   104bb:	83 c4 10             	add    $0x10,%esp
   104be:	83 ec 0c             	sub    $0xc,%esp
   104c1:	68 80 47 01 00       	push   $0x14780
   104c6:	e8 0c 1b 00 00       	call   11fd7 <set_idt_reg>
   104cb:	83 c4 10             	add    $0x10,%esp
   104ce:	90                   	nop
   104cf:	c9                   	leave  
   104d0:	c3                   	ret    

000104d1 <keyboard_handler>:
   104d1:	0f a8                	push   %gs
   104d3:	0f a0                	push   %fs
   104d5:	06                   	push   %es
   104d6:	1e                   	push   %ds
   104d7:	50                   	push   %eax
   104d8:	55                   	push   %ebp
   104d9:	57                   	push   %edi
   104da:	56                   	push   %esi
   104db:	53                   	push   %ebx
   104dc:	51                   	push   %ecx
   104dd:	52                   	push   %edx
   104de:	ba 18 00 00 00       	mov    $0x18,%edx
   104e3:	8e da                	mov    %edx,%ds
   104e5:	8e c2                	mov    %edx,%es
   104e7:	b0 20                	mov    $0x20,%al
   104e9:	e6 20                	out    %al,$0x20
   104eb:	e8 ed fb ff ff       	call   100dd <keyboard_routine>
   104f0:	5a                   	pop    %edx
   104f1:	59                   	pop    %ecx
   104f2:	5b                   	pop    %ebx
   104f3:	5e                   	pop    %esi
   104f4:	5f                   	pop    %edi
   104f5:	5d                   	pop    %ebp
   104f6:	58                   	pop    %eax
   104f7:	1f                   	pop    %ds
   104f8:	07                   	pop    %es
   104f9:	0f a1                	pop    %fs
   104fb:	0f a9                	pop    %gs
   104fd:	cf                   	iret   

000104fe <clock_handler>:
   104fe:	0f a8                	push   %gs
   10500:	0f a0                	push   %fs
   10502:	06                   	push   %es
   10503:	1e                   	push   %ds
   10504:	50                   	push   %eax
   10505:	55                   	push   %ebp
   10506:	57                   	push   %edi
   10507:	56                   	push   %esi
   10508:	53                   	push   %ebx
   10509:	51                   	push   %ecx
   1050a:	52                   	push   %edx
   1050b:	ba 18 00 00 00       	mov    $0x18,%edx
   10510:	8e da                	mov    %edx,%ds
   10512:	8e c2                	mov    %edx,%es
   10514:	b0 20                	mov    $0x20,%al
   10516:	e6 20                	out    %al,$0x20
   10518:	e8 32 fc ff ff       	call   1014f <clock_routine>
   1051d:	5a                   	pop    %edx
   1051e:	59                   	pop    %ecx
   1051f:	5b                   	pop    %ebx
   10520:	5e                   	pop    %esi
   10521:	5f                   	pop    %edi
   10522:	5d                   	pop    %ebp
   10523:	58                   	pop    %eax
   10524:	1f                   	pop    %ds
   10525:	07                   	pop    %es
   10526:	0f a1                	pop    %fs
   10528:	0f a9                	pop    %gs
   1052a:	cf                   	iret   

0001052b <syscall_handler_sysenter>:
   1052b:	6a 2b                	push   $0x2b
   1052d:	55                   	push   %ebp
   1052e:	9c                   	pushf  
   1052f:	6a 23                	push   $0x23
   10531:	ff 75 04             	push   0x4(%ebp)
   10534:	0f a8                	push   %gs
   10536:	0f a0                	push   %fs
   10538:	06                   	push   %es
   10539:	1e                   	push   %ds
   1053a:	50                   	push   %eax
   1053b:	55                   	push   %ebp
   1053c:	57                   	push   %edi
   1053d:	56                   	push   %esi
   1053e:	53                   	push   %ebx
   1053f:	51                   	push   %ecx
   10540:	52                   	push   %edx
   10541:	ba 18 00 00 00       	mov    $0x18,%edx
   10546:	8e da                	mov    %edx,%ds
   10548:	8e c2                	mov    %edx,%es
   1054a:	83 f8 00             	cmp    $0x0,%eax
   1054d:	7c 10                	jl     1055f <sysenter_err>
   1054f:	3d 15 00 00 00       	cmp    $0x15,%eax
   10554:	7f 09                	jg     1055f <sysenter_err>
   10556:	ff 14 85 d4 05 01 00 	call   *0x105d4(,%eax,4)
   1055d:	eb 05                	jmp    10564 <sysenter_fin>

0001055f <sysenter_err>:
   1055f:	b8 d8 ff ff ff       	mov    $0xffffffd8,%eax

00010564 <sysenter_fin>:
   10564:	89 44 24 18          	mov    %eax,0x18(%esp)
   10568:	5a                   	pop    %edx
   10569:	59                   	pop    %ecx
   1056a:	5b                   	pop    %ebx
   1056b:	5e                   	pop    %esi
   1056c:	5f                   	pop    %edi
   1056d:	5d                   	pop    %ebp
   1056e:	58                   	pop    %eax
   1056f:	1f                   	pop    %ds
   10570:	07                   	pop    %es
   10571:	0f a1                	pop    %fs
   10573:	0f a9                	pop    %gs
   10575:	8b 14 24             	mov    (%esp),%edx
   10578:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
   1057c:	fb                   	sti    
   1057d:	0f 35                	sysexit 

0001057f <pagefault_handler>:
   1057f:	0f a8                	push   %gs
   10581:	0f a0                	push   %fs
   10583:	06                   	push   %es
   10584:	1e                   	push   %ds
   10585:	50                   	push   %eax
   10586:	55                   	push   %ebp
   10587:	57                   	push   %edi
   10588:	56                   	push   %esi
   10589:	53                   	push   %ebx
   1058a:	51                   	push   %ecx
   1058b:	52                   	push   %edx
   1058c:	ba 18 00 00 00       	mov    $0x18,%edx
   10591:	8e da                	mov    %edx,%ds
   10593:	8e c2                	mov    %edx,%es
   10595:	ff 74 24 30          	push   0x30(%esp)
   10599:	e8 32 fe ff ff       	call   103d0 <pagefault_routine>
   1059e:	5a                   	pop    %edx
   1059f:	59                   	pop    %ecx
   105a0:	5b                   	pop    %ebx
   105a1:	5e                   	pop    %esi
   105a2:	5f                   	pop    %edi
   105a3:	5d                   	pop    %ebp
   105a4:	58                   	pop    %eax
   105a5:	1f                   	pop    %ds
   105a6:	07                   	pop    %es
   105a7:	0f a1                	pop    %fs
   105a9:	0f a9                	pop    %gs
   105ab:	cf                   	iret   

000105ac <task_switch>:
   105ac:	55                   	push   %ebp
   105ad:	89 e5                	mov    %esp,%ebp
   105af:	56                   	push   %esi
   105b0:	57                   	push   %edi
   105b1:	53                   	push   %ebx
   105b2:	ff 75 08             	push   0x8(%ebp)
   105b5:	e8 de 04 00 00       	call   10a98 <inner_task_switch>
   105ba:	83 c4 04             	add    $0x4,%esp
   105bd:	89 e0                	mov    %esp,%eax
   105bf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   105c4:	89 60 10             	mov    %esp,0x10(%eax)
   105c7:	8b 55 08             	mov    0x8(%ebp),%edx
   105ca:	8b 62 10             	mov    0x10(%edx),%esp
   105cd:	5b                   	pop    %ebx
   105ce:	5f                   	pop    %edi
   105cf:	5e                   	pop    %esi
   105d0:	5d                   	pop    %ebp
   105d1:	c3                   	ret    

000105d2 <ret_from_fork>:
   105d2:	eb 90                	jmp    10564 <sysenter_fin>

000105d4 <sys_call_table>:
   105d4:	5f                   	pop    %edi
   105d5:	0d 01 00 a2 12       	or     $0x12a20001,%eax
   105da:	01 00                	add    %eax,(%eax)
   105dc:	69 0e 01 00 5f 0d    	imul   $0xd5f0001,(%esi),%ecx
   105e2:	01 00                	add    %eax,(%eax)
   105e4:	73 0d                	jae    105f3 <sys_call_table+0x1f>
   105e6:	01 00                	add    %eax,(%eax)
   105e8:	5f                   	pop    %edi
   105e9:	0d 01 00 39 13       	or     $0x13390001,%eax
   105ee:	01 00                	add    %eax,(%eax)
   105f0:	7d 13                	jge    10605 <sys_call_table+0x31>
   105f2:	01 00                	add    %eax,(%eax)
   105f4:	5f                   	pop    %edi
   105f5:	0d 01 00 5f 0d       	or     $0xd5f0001,%eax
   105fa:	01 00                	add    %eax,(%eax)
   105fc:	69 0d 01 00 f2 0d 01 	imul   $0xd5f0001,0xdf20001,%ecx
   10603:	00 5f 0d 
   10606:	01 00                	add    %eax,(%eax)
   10608:	5f                   	pop    %edi
   10609:	0d 01 00 5f 0d       	or     $0xd5f0001,%eax
   1060e:	01 00                	add    %eax,(%eax)
   10610:	5f                   	pop    %edi
   10611:	0d 01 00 5f 0d       	or     $0xd5f0001,%eax
   10616:	01 00                	add    %eax,(%eax)
   10618:	5f                   	pop    %edi
   10619:	0d 01 00 5f 0d       	or     $0xd5f0001,%eax
   1061e:	01 00                	add    %eax,(%eax)
   10620:	5f                   	pop    %edi
   10621:	0d 01 00 54 0e       	or     $0xe540001,%eax
   10626:	01 00                	add    %eax,(%eax)

00010628 <printc>:
   10628:	55                   	push   %ebp
   10629:	89 e5                	mov    %esp,%ebp
   1062b:	53                   	push   %ebx
   1062c:	83 ec 24             	sub    $0x24,%esp
   1062f:	8b 45 08             	mov    0x8(%ebp),%eax
   10632:	88 45 e4             	mov    %al,-0x1c(%ebp)
   10635:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
   10639:	83 ec 0c             	sub    $0xc,%esp
   1063c:	50                   	push   %eax
   1063d:	e8 02 1a 00 00       	call   12044 <bochs_out>
   10642:	83 c4 10             	add    $0x10,%esp
   10645:	80 7d e4 0a          	cmpb   $0xa,-0x1c(%ebp)
   10649:	75 4b                	jne    10696 <printc+0x6e>
   1064b:	c6 05 98 47 01 00 00 	movb   $0x0,0x14798
   10652:	0f b6 05 62 3f 01 00 	movzbl 0x13f62,%eax
   10659:	0f b6 c0             	movzbl %al,%eax
   1065c:	8d 48 01             	lea    0x1(%eax),%ecx
   1065f:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
   10664:	89 c8                	mov    %ecx,%eax
   10666:	f7 ea                	imul   %edx
   10668:	89 d0                	mov    %edx,%eax
   1066a:	c1 f8 03             	sar    $0x3,%eax
   1066d:	89 cb                	mov    %ecx,%ebx
   1066f:	c1 fb 1f             	sar    $0x1f,%ebx
   10672:	29 d8                	sub    %ebx,%eax
   10674:	89 c2                	mov    %eax,%edx
   10676:	89 d0                	mov    %edx,%eax
   10678:	c1 e0 02             	shl    $0x2,%eax
   1067b:	01 d0                	add    %edx,%eax
   1067d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   10684:	01 d0                	add    %edx,%eax
   10686:	29 c1                	sub    %eax,%ecx
   10688:	89 ca                	mov    %ecx,%edx
   1068a:	89 d0                	mov    %edx,%eax
   1068c:	a2 62 3f 01 00       	mov    %al,0x13f62
   10691:	e9 a7 00 00 00       	jmp    1073d <printc+0x115>
   10696:	66 0f be 45 e4       	movsbw -0x1c(%ebp),%ax
   1069b:	0f b6 c0             	movzbl %al,%eax
   1069e:	80 cc 02             	or     $0x2,%ah
   106a1:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
   106a5:	c7 45 f0 00 80 0b 00 	movl   $0xb8000,-0x10(%ebp)
   106ac:	0f b6 05 62 3f 01 00 	movzbl 0x13f62,%eax
   106b3:	0f b6 d0             	movzbl %al,%edx
   106b6:	89 d0                	mov    %edx,%eax
   106b8:	c1 e0 02             	shl    $0x2,%eax
   106bb:	01 d0                	add    %edx,%eax
   106bd:	c1 e0 04             	shl    $0x4,%eax
   106c0:	89 c2                	mov    %eax,%edx
   106c2:	0f b6 05 98 47 01 00 	movzbl 0x14798,%eax
   106c9:	0f b6 c0             	movzbl %al,%eax
   106cc:	01 d0                	add    %edx,%eax
   106ce:	8d 14 00             	lea    (%eax,%eax,1),%edx
   106d1:	8b 45 f0             	mov    -0x10(%ebp),%eax
   106d4:	01 c2                	add    %eax,%edx
   106d6:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
   106da:	66 89 02             	mov    %ax,(%edx)
   106dd:	0f b6 05 98 47 01 00 	movzbl 0x14798,%eax
   106e4:	83 c0 01             	add    $0x1,%eax
   106e7:	a2 98 47 01 00       	mov    %al,0x14798
   106ec:	0f b6 05 98 47 01 00 	movzbl 0x14798,%eax
   106f3:	3c 4f                	cmp    $0x4f,%al
   106f5:	76 46                	jbe    1073d <printc+0x115>
   106f7:	c6 05 98 47 01 00 00 	movb   $0x0,0x14798
   106fe:	0f b6 05 62 3f 01 00 	movzbl 0x13f62,%eax
   10705:	0f b6 c0             	movzbl %al,%eax
   10708:	8d 48 01             	lea    0x1(%eax),%ecx
   1070b:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
   10710:	89 c8                	mov    %ecx,%eax
   10712:	f7 ea                	imul   %edx
   10714:	89 d0                	mov    %edx,%eax
   10716:	c1 f8 03             	sar    $0x3,%eax
   10719:	89 cb                	mov    %ecx,%ebx
   1071b:	c1 fb 1f             	sar    $0x1f,%ebx
   1071e:	29 d8                	sub    %ebx,%eax
   10720:	89 c2                	mov    %eax,%edx
   10722:	89 d0                	mov    %edx,%eax
   10724:	c1 e0 02             	shl    $0x2,%eax
   10727:	01 d0                	add    %edx,%eax
   10729:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   10730:	01 d0                	add    %edx,%eax
   10732:	29 c1                	sub    %eax,%ecx
   10734:	89 ca                	mov    %ecx,%edx
   10736:	89 d0                	mov    %edx,%eax
   10738:	a2 62 3f 01 00       	mov    %al,0x13f62
   1073d:	90                   	nop
   1073e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   10741:	c9                   	leave  
   10742:	c3                   	ret    

00010743 <printc_xy>:
   10743:	55                   	push   %ebp
   10744:	89 e5                	mov    %esp,%ebp
   10746:	83 ec 28             	sub    $0x28,%esp
   10749:	8b 4d 08             	mov    0x8(%ebp),%ecx
   1074c:	8b 55 0c             	mov    0xc(%ebp),%edx
   1074f:	8b 45 10             	mov    0x10(%ebp),%eax
   10752:	88 4d e4             	mov    %cl,-0x1c(%ebp)
   10755:	88 55 e0             	mov    %dl,-0x20(%ebp)
   10758:	88 45 dc             	mov    %al,-0x24(%ebp)
   1075b:	0f b6 05 98 47 01 00 	movzbl 0x14798,%eax
   10762:	88 45 f7             	mov    %al,-0x9(%ebp)
   10765:	0f b6 05 62 3f 01 00 	movzbl 0x13f62,%eax
   1076c:	88 45 f6             	mov    %al,-0xa(%ebp)
   1076f:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
   10773:	a2 98 47 01 00       	mov    %al,0x14798
   10778:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
   1077c:	a2 62 3f 01 00       	mov    %al,0x13f62
   10781:	0f be 45 dc          	movsbl -0x24(%ebp),%eax
   10785:	83 ec 0c             	sub    $0xc,%esp
   10788:	50                   	push   %eax
   10789:	e8 9a fe ff ff       	call   10628 <printc>
   1078e:	83 c4 10             	add    $0x10,%esp
   10791:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   10795:	a2 98 47 01 00       	mov    %al,0x14798
   1079a:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
   1079e:	a2 62 3f 01 00       	mov    %al,0x13f62
   107a3:	90                   	nop
   107a4:	c9                   	leave  
   107a5:	c3                   	ret    

000107a6 <printk>:
   107a6:	55                   	push   %ebp
   107a7:	89 e5                	mov    %esp,%ebp
   107a9:	83 ec 18             	sub    $0x18,%esp
   107ac:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   107b3:	eb 1e                	jmp    107d3 <printk+0x2d>
   107b5:	8b 55 f4             	mov    -0xc(%ebp),%edx
   107b8:	8b 45 08             	mov    0x8(%ebp),%eax
   107bb:	01 d0                	add    %edx,%eax
   107bd:	0f b6 00             	movzbl (%eax),%eax
   107c0:	0f be c0             	movsbl %al,%eax
   107c3:	83 ec 0c             	sub    $0xc,%esp
   107c6:	50                   	push   %eax
   107c7:	e8 5c fe ff ff       	call   10628 <printc>
   107cc:	83 c4 10             	add    $0x10,%esp
   107cf:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   107d3:	8b 55 f4             	mov    -0xc(%ebp),%edx
   107d6:	8b 45 08             	mov    0x8(%ebp),%eax
   107d9:	01 d0                	add    %edx,%eax
   107db:	0f b6 00             	movzbl (%eax),%eax
   107de:	84 c0                	test   %al,%al
   107e0:	75 d3                	jne    107b5 <printk+0xf>
   107e2:	90                   	nop
   107e3:	90                   	nop
   107e4:	c9                   	leave  
   107e5:	c3                   	ret    

000107e6 <list_head_to_task_struct>:
   107e6:	55                   	push   %ebp
   107e7:	89 e5                	mov    %esp,%ebp
   107e9:	8b 45 08             	mov    0x8(%ebp),%eax
   107ec:	83 e8 08             	sub    $0x8,%eax
   107ef:	5d                   	pop    %ebp
   107f0:	c3                   	ret    

000107f1 <cpu_idle>:
   107f1:	55                   	push   %ebp
   107f2:	89 e5                	mov    %esp,%ebp
   107f4:	83 ec 08             	sub    $0x8,%esp
   107f7:	e8 6c 18 00 00       	call   12068 <__sti>
   107fc:	eb fe                	jmp    107fc <cpu_idle+0xb>

000107fe <init_idle>:
   107fe:	55                   	push   %ebp
   107ff:	89 e5                	mov    %esp,%ebp
   10801:	83 ec 28             	sub    $0x28,%esp
   10804:	e8 4c 11 00 00       	call   11955 <alloc_frame>
   10809:	89 45 f4             	mov    %eax,-0xc(%ebp)
   1080c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1080f:	c1 e0 0c             	shl    $0xc,%eax
   10812:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10815:	83 ec 0c             	sub    $0xc,%esp
   10818:	ff 75 f0             	push   -0x10(%ebp)
   1081b:	e8 61 0c 00 00       	call   11481 <clear_page_table>
   10820:	83 c4 10             	add    $0x10,%esp
   10823:	a1 cc 4b 01 00       	mov    0x14bcc,%eax
   10828:	c1 e0 0c             	shl    $0xc,%eax
   1082b:	89 45 ec             	mov    %eax,-0x14(%ebp)
   1082e:	8b 55 f4             	mov    -0xc(%ebp),%edx
   10831:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10834:	6a 00                	push   $0x0
   10836:	52                   	push   %edx
   10837:	50                   	push   %eax
   10838:	ff 75 ec             	push   -0x14(%ebp)
   1083b:	e8 20 12 00 00       	call   11a60 <set_ss_pag>
   10840:	83 c4 10             	add    $0x10,%esp
   10843:	a1 cc 4b 01 00       	mov    0x14bcc,%eax
   10848:	89 c2                	mov    %eax,%edx
   1084a:	a1 cc 4b 01 00       	mov    0x14bcc,%eax
   1084f:	6a 00                	push   $0x0
   10851:	52                   	push   %edx
   10852:	50                   	push   %eax
   10853:	ff 75 ec             	push   -0x14(%ebp)
   10856:	e8 05 12 00 00       	call   11a60 <set_ss_pag>
   1085b:	83 c4 10             	add    $0x10,%esp
   1085e:	a1 cc 4b 01 00       	mov    0x14bcc,%eax
   10863:	6a 00                	push   $0x0
   10865:	50                   	push   %eax
   10866:	6a 00                	push   $0x0
   10868:	ff 75 f0             	push   -0x10(%ebp)
   1086b:	e8 f0 11 00 00       	call   11a60 <set_ss_pag>
   10870:	83 c4 10             	add    $0x10,%esp
   10873:	e8 dd 10 00 00       	call   11955 <alloc_frame>
   10878:	89 45 e8             	mov    %eax,-0x18(%ebp)
   1087b:	8b 45 e8             	mov    -0x18(%ebp),%eax
   1087e:	c1 e0 0c             	shl    $0xc,%eax
   10881:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   10884:	8b 55 e8             	mov    -0x18(%ebp),%edx
   10887:	8b 45 e8             	mov    -0x18(%ebp),%eax
   1088a:	6a 00                	push   $0x0
   1088c:	52                   	push   %edx
   1088d:	50                   	push   %eax
   1088e:	ff 75 ec             	push   -0x14(%ebp)
   10891:	e8 ca 11 00 00       	call   11a60 <set_ss_pag>
   10896:	83 c4 10             	add    $0x10,%esp
   10899:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   1089c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   108a2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108a5:	8b 55 f0             	mov    -0x10(%ebp),%edx
   108a8:	89 50 04             	mov    %edx,0x4(%eax)
   108ab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108ae:	05 00 10 00 00       	add    $0x1000,%eax
   108b3:	89 45 e0             	mov    %eax,-0x20(%ebp)
   108b6:	ba f1 07 01 00       	mov    $0x107f1,%edx
   108bb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108be:	89 90 fc 0f 00 00    	mov    %edx,0xffc(%eax)
   108c4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108c7:	c7 80 f8 0f 00 00 00 	movl   $0x0,0xff8(%eax)
   108ce:	00 00 00 
   108d1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108d4:	c7 80 f4 0f 00 00 00 	movl   $0x0,0xff4(%eax)
   108db:	00 00 00 
   108de:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108e1:	c7 80 f0 0f 00 00 00 	movl   $0x0,0xff0(%eax)
   108e8:	00 00 00 
   108eb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108ee:	c7 80 ec 0f 00 00 00 	movl   $0x0,0xfec(%eax)
   108f5:	00 00 00 
   108f8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   108fb:	05 ec 0f 00 00       	add    $0xfec,%eax
   10900:	89 c2                	mov    %eax,%edx
   10902:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   10905:	89 50 10             	mov    %edx,0x10(%eax)
   10908:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   1090b:	a3 c4 4b 01 00       	mov    %eax,0x14bc4
   10910:	90                   	nop
   10911:	c9                   	leave  
   10912:	c3                   	ret    

00010913 <init_task1>:
   10913:	55                   	push   %ebp
   10914:	89 e5                	mov    %esp,%ebp
   10916:	83 ec 38             	sub    $0x38,%esp
   10919:	e8 37 10 00 00       	call   11955 <alloc_frame>
   1091e:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10921:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10924:	c1 e0 0c             	shl    $0xc,%eax
   10927:	89 45 f0             	mov    %eax,-0x10(%ebp)
   1092a:	83 ec 0c             	sub    $0xc,%esp
   1092d:	ff 75 f0             	push   -0x10(%ebp)
   10930:	e8 4c 0b 00 00       	call   11481 <clear_page_table>
   10935:	83 c4 10             	add    $0x10,%esp
   10938:	e8 18 10 00 00       	call   11955 <alloc_frame>
   1093d:	a3 cc 4b 01 00       	mov    %eax,0x14bcc
   10942:	a1 cc 4b 01 00       	mov    0x14bcc,%eax
   10947:	c1 e0 0c             	shl    $0xc,%eax
   1094a:	89 45 ec             	mov    %eax,-0x14(%ebp)
   1094d:	83 ec 0c             	sub    $0xc,%esp
   10950:	ff 75 ec             	push   -0x14(%ebp)
   10953:	e8 de 0c 00 00       	call   11636 <set_kernel_pages>
   10958:	83 c4 10             	add    $0x10,%esp
   1095b:	e8 f5 0f 00 00       	call   11955 <alloc_frame>
   10960:	89 45 e8             	mov    %eax,-0x18(%ebp)
   10963:	8b 45 e8             	mov    -0x18(%ebp),%eax
   10966:	c1 e0 0c             	shl    $0xc,%eax
   10969:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   1096c:	83 ec 0c             	sub    $0xc,%esp
   1096f:	ff 75 e4             	push   -0x1c(%ebp)
   10972:	e8 3f 0b 00 00       	call   114b6 <set_user_pages>
   10977:	83 c4 10             	add    $0x10,%esp
   1097a:	8b 55 f4             	mov    -0xc(%ebp),%edx
   1097d:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10980:	6a 00                	push   $0x0
   10982:	52                   	push   %edx
   10983:	50                   	push   %eax
   10984:	ff 75 ec             	push   -0x14(%ebp)
   10987:	e8 d4 10 00 00       	call   11a60 <set_ss_pag>
   1098c:	83 c4 10             	add    $0x10,%esp
   1098f:	a1 cc 4b 01 00       	mov    0x14bcc,%eax
   10994:	89 c2                	mov    %eax,%edx
   10996:	a1 cc 4b 01 00       	mov    0x14bcc,%eax
   1099b:	6a 00                	push   $0x0
   1099d:	52                   	push   %edx
   1099e:	50                   	push   %eax
   1099f:	ff 75 ec             	push   -0x14(%ebp)
   109a2:	e8 b9 10 00 00       	call   11a60 <set_ss_pag>
   109a7:	83 c4 10             	add    $0x10,%esp
   109aa:	8b 55 e8             	mov    -0x18(%ebp),%edx
   109ad:	8b 45 e8             	mov    -0x18(%ebp),%eax
   109b0:	6a 01                	push   $0x1
   109b2:	52                   	push   %edx
   109b3:	50                   	push   %eax
   109b4:	ff 75 ec             	push   -0x14(%ebp)
   109b7:	e8 a4 10 00 00       	call   11a60 <set_ss_pag>
   109bc:	83 c4 10             	add    $0x10,%esp
   109bf:	a1 cc 4b 01 00       	mov    0x14bcc,%eax
   109c4:	6a 00                	push   $0x0
   109c6:	50                   	push   %eax
   109c7:	6a 00                	push   $0x0
   109c9:	ff 75 f0             	push   -0x10(%ebp)
   109cc:	e8 8f 10 00 00       	call   11a60 <set_ss_pag>
   109d1:	83 c4 10             	add    $0x10,%esp
   109d4:	8b 45 e8             	mov    -0x18(%ebp),%eax
   109d7:	6a 01                	push   $0x1
   109d9:	50                   	push   %eax
   109da:	6a 01                	push   $0x1
   109dc:	ff 75 f0             	push   -0x10(%ebp)
   109df:	e8 7c 10 00 00       	call   11a60 <set_ss_pag>
   109e4:	83 c4 10             	add    $0x10,%esp
   109e7:	e8 69 0f 00 00       	call   11955 <alloc_frame>
   109ec:	89 45 e0             	mov    %eax,-0x20(%ebp)
   109ef:	8b 45 e0             	mov    -0x20(%ebp),%eax
   109f2:	c1 e0 0c             	shl    $0xc,%eax
   109f5:	89 45 dc             	mov    %eax,-0x24(%ebp)
   109f8:	e8 58 0f 00 00       	call   11955 <alloc_frame>
   109fd:	89 45 d8             	mov    %eax,-0x28(%ebp)
   10a00:	8b 45 d8             	mov    -0x28(%ebp),%eax
   10a03:	c1 e0 0c             	shl    $0xc,%eax
   10a06:	a3 c8 4b 01 00       	mov    %eax,0x14bc8
   10a0b:	8b 55 d8             	mov    -0x28(%ebp),%edx
   10a0e:	8b 45 d8             	mov    -0x28(%ebp),%eax
   10a11:	6a 00                	push   $0x0
   10a13:	52                   	push   %edx
   10a14:	50                   	push   %eax
   10a15:	ff 75 ec             	push   -0x14(%ebp)
   10a18:	e8 43 10 00 00       	call   11a60 <set_ss_pag>
   10a1d:	83 c4 10             	add    $0x10,%esp
   10a20:	a1 c8 4b 01 00       	mov    0x14bc8,%eax
   10a25:	83 ec 0c             	sub    $0xc,%esp
   10a28:	50                   	push   %eax
   10a29:	e8 c0 13 00 00       	call   11dee <INIT_CIRCULAR_BUFFER>
   10a2e:	83 c4 10             	add    $0x10,%esp
   10a31:	8b 55 e0             	mov    -0x20(%ebp),%edx
   10a34:	8b 45 e0             	mov    -0x20(%ebp),%eax
   10a37:	6a 00                	push   $0x0
   10a39:	52                   	push   %edx
   10a3a:	50                   	push   %eax
   10a3b:	ff 75 ec             	push   -0x14(%ebp)
   10a3e:	e8 1d 10 00 00       	call   11a60 <set_ss_pag>
   10a43:	83 c4 10             	add    $0x10,%esp
   10a46:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10a49:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
   10a4f:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10a52:	8b 55 f0             	mov    -0x10(%ebp),%edx
   10a55:	89 50 04             	mov    %edx,0x4(%eax)
   10a58:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10a5b:	05 00 10 00 00       	add    $0x1000,%eax
   10a60:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   10a63:	83 ec 08             	sub    $0x8,%esp
   10a66:	ff 75 d4             	push   -0x2c(%ebp)
   10a69:	68 75 01 00 00       	push   $0x175
   10a6e:	e8 4d 15 00 00       	call   11fc0 <writeMSR>
   10a73:	83 c4 10             	add    $0x10,%esp
   10a76:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   10a79:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10a7c:	89 50 10             	mov    %edx,0x10(%eax)
   10a7f:	83 ec 0c             	sub    $0xc,%esp
   10a82:	ff 75 f0             	push   -0x10(%ebp)
   10a85:	e8 c4 15 00 00       	call   1204e <set_cr3>
   10a8a:	83 c4 10             	add    $0x10,%esp
   10a8d:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10a90:	a3 c0 4b 01 00       	mov    %eax,0x14bc0
   10a95:	90                   	nop
   10a96:	c9                   	leave  
   10a97:	c3                   	ret    

00010a98 <inner_task_switch>:
   10a98:	55                   	push   %ebp
   10a99:	89 e5                	mov    %esp,%ebp
   10a9b:	83 ec 08             	sub    $0x8,%esp
   10a9e:	8b 45 08             	mov    0x8(%ebp),%eax
   10aa1:	05 00 10 00 00       	add    $0x1000,%eax
   10aa6:	a3 24 58 01 00       	mov    %eax,0x15824
   10aab:	8b 45 08             	mov    0x8(%ebp),%eax
   10aae:	8b 40 04             	mov    0x4(%eax),%eax
   10ab1:	83 ec 0c             	sub    $0xc,%esp
   10ab4:	50                   	push   %eax
   10ab5:	e8 94 15 00 00       	call   1204e <set_cr3>
   10aba:	83 c4 10             	add    $0x10,%esp
   10abd:	90                   	nop
   10abe:	c9                   	leave  
   10abf:	c3                   	ret    

00010ac0 <init_sched>:
   10ac0:	55                   	push   %ebp
   10ac1:	89 e5                	mov    %esp,%ebp
   10ac3:	83 ec 08             	sub    $0x8,%esp
   10ac6:	83 ec 0c             	sub    $0xc,%esp
   10ac9:	68 a0 47 01 00       	push   $0x147a0
   10ace:	e8 3c 12 00 00       	call   11d0f <INIT_LIST_HEAD>
   10ad3:	83 c4 10             	add    $0x10,%esp
   10ad6:	83 ec 0c             	sub    $0xc,%esp
   10ad9:	68 88 58 01 00       	push   $0x15888
   10ade:	e8 2c 12 00 00       	call   11d0f <INIT_LIST_HEAD>
   10ae3:	83 c4 10             	add    $0x10,%esp
   10ae6:	90                   	nop
   10ae7:	c9                   	leave  
   10ae8:	c3                   	ret    

00010ae9 <get_DIR>:
   10ae9:	55                   	push   %ebp
   10aea:	89 e5                	mov    %esp,%ebp
   10aec:	8b 45 08             	mov    0x8(%ebp),%eax
   10aef:	8b 40 04             	mov    0x4(%eax),%eax
   10af2:	5d                   	pop    %ebp
   10af3:	c3                   	ret    

00010af4 <get_PT>:
   10af4:	55                   	push   %ebp
   10af5:	89 e5                	mov    %esp,%ebp
   10af7:	8b 45 08             	mov    0x8(%ebp),%eax
   10afa:	8b 40 04             	mov    0x4(%eax),%eax
   10afd:	8b 00                	mov    (%eax),%eax
   10aff:	c1 e8 0c             	shr    $0xc,%eax
   10b02:	c1 e0 0c             	shl    $0xc,%eax
   10b05:	5d                   	pop    %ebp
   10b06:	c3                   	ret    

00010b07 <update_memory_context>:
   10b07:	55                   	push   %ebp
   10b08:	89 e5                	mov    %esp,%ebp
   10b0a:	83 ec 08             	sub    $0x8,%esp
   10b0d:	8b 45 08             	mov    0x8(%ebp),%eax
   10b10:	05 00 10 00 00       	add    $0x1000,%eax
   10b15:	a3 24 58 01 00       	mov    %eax,0x15824
   10b1a:	8b 45 08             	mov    0x8(%ebp),%eax
   10b1d:	8b 40 04             	mov    0x4(%eax),%eax
   10b20:	83 ec 0c             	sub    $0xc,%esp
   10b23:	50                   	push   %eax
   10b24:	e8 25 15 00 00       	call   1204e <set_cr3>
   10b29:	83 c4 10             	add    $0x10,%esp
   10b2c:	90                   	nop
   10b2d:	c9                   	leave  
   10b2e:	c3                   	ret    

00010b2f <get_quantum>:
   10b2f:	55                   	push   %ebp
   10b30:	89 e5                	mov    %esp,%ebp
   10b32:	8b 45 08             	mov    0x8(%ebp),%eax
   10b35:	8b 40 14             	mov    0x14(%eax),%eax
   10b38:	5d                   	pop    %ebp
   10b39:	c3                   	ret    

00010b3a <set_quantum>:
   10b3a:	55                   	push   %ebp
   10b3b:	89 e5                	mov    %esp,%ebp
   10b3d:	8b 45 08             	mov    0x8(%ebp),%eax
   10b40:	8b 55 0c             	mov    0xc(%ebp),%edx
   10b43:	89 50 14             	mov    %edx,0x14(%eax)
   10b46:	90                   	nop
   10b47:	5d                   	pop    %ebp
   10b48:	c3                   	ret    

00010b49 <schedule>:
   10b49:	55                   	push   %ebp
   10b4a:	89 e5                	mov    %esp,%ebp
   10b4c:	83 ec 18             	sub    $0x18,%esp
   10b4f:	e8 4f 00 00 00       	call   10ba3 <update_sched_data_rr>
   10b54:	e8 70 00 00 00       	call   10bc9 <needs_sched_rr>
   10b59:	85 c0                	test   %eax,%eax
   10b5b:	74 43                	je     10ba0 <schedule+0x57>
   10b5d:	e8 08 15 00 00       	call   1206a <current>
   10b62:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10b65:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10b68:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10b6b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10b6e:	8b 00                	mov    (%eax),%eax
   10b70:	85 c0                	test   %eax,%eax
   10b72:	74 27                	je     10b9b <schedule+0x52>
   10b74:	83 ec 0c             	sub    $0xc,%esp
   10b77:	ff 75 f0             	push   -0x10(%ebp)
   10b7a:	e8 b0 ff ff ff       	call   10b2f <get_quantum>
   10b7f:	83 c4 10             	add    $0x10,%esp
   10b82:	8b 55 f0             	mov    -0x10(%ebp),%edx
   10b85:	89 42 30             	mov    %eax,0x30(%edx)
   10b88:	83 ec 08             	sub    $0x8,%esp
   10b8b:	68 a0 47 01 00       	push   $0x147a0
   10b90:	ff 75 f0             	push   -0x10(%ebp)
   10b93:	e8 bc 00 00 00       	call   10c54 <update_process_state_rr>
   10b98:	83 c4 10             	add    $0x10,%esp
   10b9b:	e8 29 01 00 00       	call   10cc9 <sched_next_rr>
   10ba0:	90                   	nop
   10ba1:	c9                   	leave  
   10ba2:	c3                   	ret    

00010ba3 <update_sched_data_rr>:
   10ba3:	55                   	push   %ebp
   10ba4:	89 e5                	mov    %esp,%ebp
   10ba6:	83 ec 18             	sub    $0x18,%esp
   10ba9:	e8 bc 14 00 00       	call   1206a <current>
   10bae:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10bb1:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10bb4:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10bb7:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10bba:	8b 40 30             	mov    0x30(%eax),%eax
   10bbd:	8d 50 ff             	lea    -0x1(%eax),%edx
   10bc0:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10bc3:	89 50 30             	mov    %edx,0x30(%eax)
   10bc6:	90                   	nop
   10bc7:	c9                   	leave  
   10bc8:	c3                   	ret    

00010bc9 <needs_sched_rr>:
   10bc9:	55                   	push   %ebp
   10bca:	89 e5                	mov    %esp,%ebp
   10bcc:	83 ec 18             	sub    $0x18,%esp
   10bcf:	e8 96 14 00 00       	call   1206a <current>
   10bd4:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10bd7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10bda:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10bdd:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10be0:	8b 40 30             	mov    0x30(%eax),%eax
   10be3:	85 c0                	test   %eax,%eax
   10be5:	7f 38                	jg     10c1f <needs_sched_rr+0x56>
   10be7:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10bea:	8b 00                	mov    (%eax),%eax
   10bec:	85 c0                	test   %eax,%eax
   10bee:	75 2f                	jne    10c1f <needs_sched_rr+0x56>
   10bf0:	83 ec 0c             	sub    $0xc,%esp
   10bf3:	68 a0 47 01 00       	push   $0x147a0
   10bf8:	e8 de 11 00 00       	call   11ddb <list_empty>
   10bfd:	83 c4 10             	add    $0x10,%esp
   10c00:	85 c0                	test   %eax,%eax
   10c02:	74 1b                	je     10c1f <needs_sched_rr+0x56>
   10c04:	83 ec 0c             	sub    $0xc,%esp
   10c07:	ff 75 f0             	push   -0x10(%ebp)
   10c0a:	e8 20 ff ff ff       	call   10b2f <get_quantum>
   10c0f:	83 c4 10             	add    $0x10,%esp
   10c12:	8b 55 f0             	mov    -0x10(%ebp),%edx
   10c15:	89 42 30             	mov    %eax,0x30(%edx)
   10c18:	b8 00 00 00 00       	mov    $0x0,%eax
   10c1d:	eb 33                	jmp    10c52 <needs_sched_rr+0x89>
   10c1f:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10c22:	8b 40 30             	mov    0x30(%eax),%eax
   10c25:	85 c0                	test   %eax,%eax
   10c27:	7e 09                	jle    10c32 <needs_sched_rr+0x69>
   10c29:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10c2c:	8b 00                	mov    (%eax),%eax
   10c2e:	85 c0                	test   %eax,%eax
   10c30:	75 1b                	jne    10c4d <needs_sched_rr+0x84>
   10c32:	83 ec 0c             	sub    $0xc,%esp
   10c35:	68 a0 47 01 00       	push   $0x147a0
   10c3a:	e8 9c 11 00 00       	call   11ddb <list_empty>
   10c3f:	83 c4 10             	add    $0x10,%esp
   10c42:	85 c0                	test   %eax,%eax
   10c44:	75 07                	jne    10c4d <needs_sched_rr+0x84>
   10c46:	b8 01 00 00 00       	mov    $0x1,%eax
   10c4b:	eb 05                	jmp    10c52 <needs_sched_rr+0x89>
   10c4d:	b8 00 00 00 00       	mov    $0x0,%eax
   10c52:	c9                   	leave  
   10c53:	c3                   	ret    

00010c54 <update_process_state_rr>:
   10c54:	55                   	push   %ebp
   10c55:	89 e5                	mov    %esp,%ebp
   10c57:	83 ec 18             	sub    $0x18,%esp
   10c5a:	e8 0b 14 00 00       	call   1206a <current>
   10c5f:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10c62:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10c65:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10c68:	81 7d 0c a0 47 01 00 	cmpl   $0x147a0,0xc(%ebp)
   10c6f:	75 33                	jne    10ca4 <update_process_state_rr+0x50>
   10c71:	8b 45 08             	mov    0x8(%ebp),%eax
   10c74:	83 c0 08             	add    $0x8,%eax
   10c77:	83 ec 0c             	sub    $0xc,%esp
   10c7a:	50                   	push   %eax
   10c7b:	e8 1a 11 00 00       	call   11d9a <list_del>
   10c80:	83 c4 10             	add    $0x10,%esp
   10c83:	8b 45 08             	mov    0x8(%ebp),%eax
   10c86:	83 c0 08             	add    $0x8,%eax
   10c89:	83 ec 08             	sub    $0x8,%esp
   10c8c:	ff 75 0c             	push   0xc(%ebp)
   10c8f:	50                   	push   %eax
   10c90:	e8 d3 10 00 00       	call   11d68 <list_add_tail>
   10c95:	83 c4 10             	add    $0x10,%esp
   10c98:	8b 45 08             	mov    0x8(%ebp),%eax
   10c9b:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
   10ca2:	eb 22                	jmp    10cc6 <update_process_state_rr+0x72>
   10ca4:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
   10ca8:	75 1c                	jne    10cc6 <update_process_state_rr+0x72>
   10caa:	8b 45 08             	mov    0x8(%ebp),%eax
   10cad:	83 c0 08             	add    $0x8,%eax
   10cb0:	83 ec 0c             	sub    $0xc,%esp
   10cb3:	50                   	push   %eax
   10cb4:	e8 e1 10 00 00       	call   11d9a <list_del>
   10cb9:	83 c4 10             	add    $0x10,%esp
   10cbc:	8b 45 08             	mov    0x8(%ebp),%eax
   10cbf:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%eax)
   10cc6:	90                   	nop
   10cc7:	c9                   	leave  
   10cc8:	c3                   	ret    

00010cc9 <sched_next_rr>:
   10cc9:	55                   	push   %ebp
   10cca:	89 e5                	mov    %esp,%ebp
   10ccc:	83 ec 18             	sub    $0x18,%esp
   10ccf:	83 ec 0c             	sub    $0xc,%esp
   10cd2:	68 a0 47 01 00       	push   $0x147a0
   10cd7:	e8 ff 10 00 00       	call   11ddb <list_empty>
   10cdc:	83 c4 10             	add    $0x10,%esp
   10cdf:	85 c0                	test   %eax,%eax
   10ce1:	74 0a                	je     10ced <sched_next_rr+0x24>
   10ce3:	a1 c4 4b 01 00       	mov    0x14bc4,%eax
   10ce8:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10ceb:	eb 3d                	jmp    10d2a <sched_next_rr+0x61>
   10ced:	a1 a0 47 01 00       	mov    0x147a0,%eax
   10cf2:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10cf5:	83 ec 0c             	sub    $0xc,%esp
   10cf8:	ff 75 f0             	push   -0x10(%ebp)
   10cfb:	e8 9a 10 00 00       	call   11d9a <list_del>
   10d00:	83 c4 10             	add    $0x10,%esp
   10d03:	83 ec 0c             	sub    $0xc,%esp
   10d06:	ff 75 f0             	push   -0x10(%ebp)
   10d09:	e8 d8 fa ff ff       	call   107e6 <list_head_to_task_struct>
   10d0e:	83 c4 10             	add    $0x10,%esp
   10d11:	89 45 ec             	mov    %eax,-0x14(%ebp)
   10d14:	8b 45 ec             	mov    -0x14(%ebp),%eax
   10d17:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10d1a:	83 ec 08             	sub    $0x8,%esp
   10d1d:	6a 00                	push   $0x0
   10d1f:	ff 75 ec             	push   -0x14(%ebp)
   10d22:	e8 2d ff ff ff       	call   10c54 <update_process_state_rr>
   10d27:	83 c4 10             	add    $0x10,%esp
   10d2a:	83 ec 0c             	sub    $0xc,%esp
   10d2d:	ff 75 f4             	push   -0xc(%ebp)
   10d30:	e8 77 f8 ff ff       	call   105ac <task_switch>
   10d35:	83 c4 10             	add    $0x10,%esp
   10d38:	90                   	nop
   10d39:	c9                   	leave  
   10d3a:	c3                   	ret    

00010d3b <check_fd>:
   10d3b:	55                   	push   %ebp
   10d3c:	89 e5                	mov    %esp,%ebp
   10d3e:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
   10d42:	74 07                	je     10d4b <check_fd+0x10>
   10d44:	b8 f7 ff ff ff       	mov    $0xfffffff7,%eax
   10d49:	eb 12                	jmp    10d5d <check_fd+0x22>
   10d4b:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
   10d4f:	74 07                	je     10d58 <check_fd+0x1d>
   10d51:	b8 f3 ff ff ff       	mov    $0xfffffff3,%eax
   10d56:	eb 05                	jmp    10d5d <check_fd+0x22>
   10d58:	b8 00 00 00 00       	mov    $0x0,%eax
   10d5d:	5d                   	pop    %ebp
   10d5e:	c3                   	ret    

00010d5f <sys_ni_syscall>:
   10d5f:	55                   	push   %ebp
   10d60:	89 e5                	mov    %esp,%ebp
   10d62:	b8 da ff ff ff       	mov    $0xffffffda,%eax
   10d67:	5d                   	pop    %ebp
   10d68:	c3                   	ret    

00010d69 <sys_gettime>:
   10d69:	55                   	push   %ebp
   10d6a:	89 e5                	mov    %esp,%ebp
   10d6c:	a1 94 47 01 00       	mov    0x14794,%eax
   10d71:	5d                   	pop    %ebp
   10d72:	c3                   	ret    

00010d73 <sys_write>:
   10d73:	55                   	push   %ebp
   10d74:	89 e5                	mov    %esp,%ebp
   10d76:	83 ec 18             	sub    $0x18,%esp
   10d79:	6a 01                	push   $0x1
   10d7b:	ff 75 08             	push   0x8(%ebp)
   10d7e:	e8 b8 ff ff ff       	call   10d3b <check_fd>
   10d83:	83 c4 08             	add    $0x8,%esp
   10d86:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10d89:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   10d8d:	74 05                	je     10d94 <sys_write+0x21>
   10d8f:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10d92:	eb 5c                	jmp    10df0 <sys_write+0x7d>
   10d94:	8b 45 10             	mov    0x10(%ebp),%eax
   10d97:	83 ec 04             	sub    $0x4,%esp
   10d9a:	50                   	push   %eax
   10d9b:	ff 75 0c             	push   0xc(%ebp)
   10d9e:	6a 01                	push   $0x1
   10da0:	e8 ff 0e 00 00       	call   11ca4 <access_ok>
   10da5:	83 c4 10             	add    $0x10,%esp
   10da8:	83 f8 01             	cmp    $0x1,%eax
   10dab:	74 07                	je     10db4 <sys_write+0x41>
   10dad:	b8 f2 ff ff ff       	mov    $0xfffffff2,%eax
   10db2:	eb 3c                	jmp    10df0 <sys_write+0x7d>
   10db4:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
   10db8:	75 07                	jne    10dc1 <sys_write+0x4e>
   10dba:	b8 ea ff ff ff       	mov    $0xffffffea,%eax
   10dbf:	eb 2f                	jmp    10df0 <sys_write+0x7d>
   10dc1:	83 ec 04             	sub    $0x4,%esp
   10dc4:	ff 75 10             	push   0x10(%ebp)
   10dc7:	68 e0 4b 01 00       	push   $0x14be0
   10dcc:	ff 75 0c             	push   0xc(%ebp)
   10dcf:	e8 fc 0d 00 00       	call   11bd0 <copy_from_user>
   10dd4:	83 c4 10             	add    $0x10,%esp
   10dd7:	83 ec 08             	sub    $0x8,%esp
   10dda:	ff 75 10             	push   0x10(%ebp)
   10ddd:	68 e0 4b 01 00       	push   $0x14be0
   10de2:	e8 48 0d 00 00       	call   11b2f <sys_write_console>
   10de7:	83 c4 10             	add    $0x10,%esp
   10dea:	89 45 f0             	mov    %eax,-0x10(%ebp)
   10ded:	8b 45 f0             	mov    -0x10(%ebp),%eax
   10df0:	c9                   	leave  
   10df1:	c3                   	ret    

00010df2 <sys_read>:
   10df2:	55                   	push   %ebp
   10df3:	89 e5                	mov    %esp,%ebp
   10df5:	83 ec 18             	sub    $0x18,%esp
   10df8:	8b 45 0c             	mov    0xc(%ebp),%eax
   10dfb:	83 ec 04             	sub    $0x4,%esp
   10dfe:	50                   	push   %eax
   10dff:	ff 75 08             	push   0x8(%ebp)
   10e02:	6a 01                	push   $0x1
   10e04:	e8 9b 0e 00 00       	call   11ca4 <access_ok>
   10e09:	83 c4 10             	add    $0x10,%esp
   10e0c:	83 f8 01             	cmp    $0x1,%eax
   10e0f:	74 07                	je     10e18 <sys_read+0x26>
   10e11:	b8 f2 ff ff ff       	mov    $0xfffffff2,%eax
   10e16:	eb 3a                	jmp    10e52 <sys_read+0x60>
   10e18:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   10e1f:	eb 26                	jmp    10e47 <sys_read+0x55>
   10e21:	a1 c8 4b 01 00       	mov    0x14bc8,%eax
   10e26:	83 ec 0c             	sub    $0xc,%esp
   10e29:	50                   	push   %eax
   10e2a:	e8 5c 10 00 00       	call   11e8b <CIRCULAR_BUFFER_READ>
   10e2f:	83 c4 10             	add    $0x10,%esp
   10e32:	88 45 f3             	mov    %al,-0xd(%ebp)
   10e35:	8b 55 f4             	mov    -0xc(%ebp),%edx
   10e38:	8b 45 08             	mov    0x8(%ebp),%eax
   10e3b:	01 c2                	add    %eax,%edx
   10e3d:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
   10e41:	88 02                	mov    %al,(%edx)
   10e43:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   10e47:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10e4a:	3b 45 0c             	cmp    0xc(%ebp),%eax
   10e4d:	7c d2                	jl     10e21 <sys_read+0x2f>
   10e4f:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10e52:	c9                   	leave  
   10e53:	c3                   	ret    

00010e54 <sys_getpid>:
   10e54:	55                   	push   %ebp
   10e55:	89 e5                	mov    %esp,%ebp
   10e57:	83 ec 18             	sub    $0x18,%esp
   10e5a:	e8 0b 12 00 00       	call   1206a <current>
   10e5f:	89 45 f4             	mov    %eax,-0xc(%ebp)
   10e62:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10e65:	8b 00                	mov    (%eax),%eax
   10e67:	c9                   	leave  
   10e68:	c3                   	ret    

00010e69 <sys_fork>:
   10e69:	55                   	push   %ebp
   10e6a:	89 e5                	mov    %esp,%ebp
   10e6c:	53                   	push   %ebx
   10e6d:	81 ec b4 00 00 00    	sub    $0xb4,%esp
   10e73:	e8 dd 0a 00 00       	call   11955 <alloc_frame>
   10e78:	89 45 dc             	mov    %eax,-0x24(%ebp)
   10e7b:	83 7d dc ff          	cmpl   $0xffffffff,-0x24(%ebp)
   10e7f:	75 0a                	jne    10e8b <sys_fork+0x22>
   10e81:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
   10e86:	e9 12 04 00 00       	jmp    1129d <sys_fork+0x434>
   10e8b:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10e8e:	c1 e0 0c             	shl    $0xc,%eax
   10e91:	89 45 d8             	mov    %eax,-0x28(%ebp)
   10e94:	e8 d1 11 00 00       	call   1206a <current>
   10e99:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   10e9c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   10e9f:	8b 40 04             	mov    0x4(%eax),%eax
   10ea2:	8b 00                	mov    (%eax),%eax
   10ea4:	c1 e8 0c             	shr    $0xc,%eax
   10ea7:	c1 e0 0c             	shl    $0xc,%eax
   10eaa:	89 45 d0             	mov    %eax,-0x30(%ebp)
   10ead:	8b 55 dc             	mov    -0x24(%ebp),%edx
   10eb0:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10eb3:	6a 00                	push   $0x0
   10eb5:	52                   	push   %edx
   10eb6:	50                   	push   %eax
   10eb7:	ff 75 d0             	push   -0x30(%ebp)
   10eba:	e8 a1 0b 00 00       	call   11a60 <set_ss_pag>
   10ebf:	83 c4 10             	add    $0x10,%esp
   10ec2:	83 ec 0c             	sub    $0xc,%esp
   10ec5:	ff 75 d4             	push   -0x2c(%ebp)
   10ec8:	e8 1c fc ff ff       	call   10ae9 <get_DIR>
   10ecd:	83 c4 10             	add    $0x10,%esp
   10ed0:	83 ec 0c             	sub    $0xc,%esp
   10ed3:	50                   	push   %eax
   10ed4:	e8 75 11 00 00       	call   1204e <set_cr3>
   10ed9:	83 c4 10             	add    $0x10,%esp
   10edc:	83 ec 04             	sub    $0x4,%esp
   10edf:	68 00 10 00 00       	push   $0x1000
   10ee4:	ff 75 d8             	push   -0x28(%ebp)
   10ee7:	ff 75 d4             	push   -0x2c(%ebp)
   10eea:	e8 7a 0c 00 00       	call   11b69 <copy_data>
   10eef:	83 c4 10             	add    $0x10,%esp
   10ef2:	8b 45 d8             	mov    -0x28(%ebp),%eax
   10ef5:	89 45 cc             	mov    %eax,-0x34(%ebp)
   10ef8:	e8 58 0a 00 00       	call   11955 <alloc_frame>
   10efd:	89 45 c8             	mov    %eax,-0x38(%ebp)
   10f00:	83 7d c8 ff          	cmpl   $0xffffffff,-0x38(%ebp)
   10f04:	75 19                	jne    10f1f <sys_fork+0xb6>
   10f06:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10f09:	83 ec 0c             	sub    $0xc,%esp
   10f0c:	50                   	push   %eax
   10f0d:	e8 34 0b 00 00       	call   11a46 <free_frame>
   10f12:	83 c4 10             	add    $0x10,%esp
   10f15:	b8 0c 00 00 00       	mov    $0xc,%eax
   10f1a:	e9 7e 03 00 00       	jmp    1129d <sys_fork+0x434>
   10f1f:	8b 45 c8             	mov    -0x38(%ebp),%eax
   10f22:	c1 e0 0c             	shl    $0xc,%eax
   10f25:	89 45 c4             	mov    %eax,-0x3c(%ebp)
   10f28:	83 ec 0c             	sub    $0xc,%esp
   10f2b:	ff 75 c4             	push   -0x3c(%ebp)
   10f2e:	e8 4e 05 00 00       	call   11481 <clear_page_table>
   10f33:	83 c4 10             	add    $0x10,%esp
   10f36:	8b 45 cc             	mov    -0x34(%ebp),%eax
   10f39:	8b 55 c4             	mov    -0x3c(%ebp),%edx
   10f3c:	89 50 04             	mov    %edx,0x4(%eax)
   10f3f:	e8 26 11 00 00       	call   1206a <current>
   10f44:	8b 50 04             	mov    0x4(%eax),%edx
   10f47:	8b 45 cc             	mov    -0x34(%ebp),%eax
   10f4a:	8b 40 04             	mov    0x4(%eax),%eax
   10f4d:	8b 12                	mov    (%edx),%edx
   10f4f:	89 10                	mov    %edx,(%eax)
   10f51:	e8 ff 09 00 00       	call   11955 <alloc_frame>
   10f56:	89 45 c0             	mov    %eax,-0x40(%ebp)
   10f59:	83 7d c0 ff          	cmpl   $0xffffffff,-0x40(%ebp)
   10f5d:	75 28                	jne    10f87 <sys_fork+0x11e>
   10f5f:	8b 45 dc             	mov    -0x24(%ebp),%eax
   10f62:	83 ec 0c             	sub    $0xc,%esp
   10f65:	50                   	push   %eax
   10f66:	e8 db 0a 00 00       	call   11a46 <free_frame>
   10f6b:	83 c4 10             	add    $0x10,%esp
   10f6e:	8b 45 c8             	mov    -0x38(%ebp),%eax
   10f71:	83 ec 0c             	sub    $0xc,%esp
   10f74:	50                   	push   %eax
   10f75:	e8 cc 0a 00 00       	call   11a46 <free_frame>
   10f7a:	83 c4 10             	add    $0x10,%esp
   10f7d:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
   10f82:	e9 16 03 00 00       	jmp    1129d <sys_fork+0x434>
   10f87:	8b 45 c0             	mov    -0x40(%ebp),%eax
   10f8a:	c1 e0 0c             	shl    $0xc,%eax
   10f8d:	89 45 bc             	mov    %eax,-0x44(%ebp)
   10f90:	83 ec 0c             	sub    $0xc,%esp
   10f93:	ff 75 bc             	push   -0x44(%ebp)
   10f96:	e8 e6 04 00 00       	call   11481 <clear_page_table>
   10f9b:	83 c4 10             	add    $0x10,%esp
   10f9e:	8b 5d c0             	mov    -0x40(%ebp),%ebx
   10fa1:	83 ec 0c             	sub    $0xc,%esp
   10fa4:	ff 75 cc             	push   -0x34(%ebp)
   10fa7:	e8 3d fb ff ff       	call   10ae9 <get_DIR>
   10fac:	83 c4 10             	add    $0x10,%esp
   10faf:	6a 01                	push   $0x1
   10fb1:	53                   	push   %ebx
   10fb2:	6a 01                	push   $0x1
   10fb4:	50                   	push   %eax
   10fb5:	e8 a6 0a 00 00       	call   11a60 <set_ss_pag>
   10fba:	83 c4 10             	add    $0x10,%esp
   10fbd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   10fc0:	83 ec 0c             	sub    $0xc,%esp
   10fc3:	50                   	push   %eax
   10fc4:	e8 20 fb ff ff       	call   10ae9 <get_DIR>
   10fc9:	83 c4 10             	add    $0x10,%esp
   10fcc:	89 45 b8             	mov    %eax,-0x48(%ebp)
   10fcf:	8b 45 b8             	mov    -0x48(%ebp),%eax
   10fd2:	83 c0 04             	add    $0x4,%eax
   10fd5:	8b 00                	mov    (%eax),%eax
   10fd7:	c1 e8 0c             	shr    $0xc,%eax
   10fda:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   10fdd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   10fe0:	c1 e0 0c             	shl    $0xc,%eax
   10fe3:	89 45 b0             	mov    %eax,-0x50(%ebp)
   10fe6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   10fed:	eb 39                	jmp    11028 <sys_fork+0x1bf>
   10fef:	8b 45 f4             	mov    -0xc(%ebp),%eax
   10ff2:	05 00 01 00 00       	add    $0x100,%eax
   10ff7:	83 ec 08             	sub    $0x8,%esp
   10ffa:	50                   	push   %eax
   10ffb:	ff 75 b0             	push   -0x50(%ebp)
   10ffe:	e8 13 0b 00 00       	call   11b16 <get_frame>
   11003:	83 c4 10             	add    $0x10,%esp
   11006:	89 45 a0             	mov    %eax,-0x60(%ebp)
   11009:	8b 45 a0             	mov    -0x60(%ebp),%eax
   1100c:	8b 55 f4             	mov    -0xc(%ebp),%edx
   1100f:	81 c2 00 01 00 00    	add    $0x100,%edx
   11015:	6a 01                	push   $0x1
   11017:	50                   	push   %eax
   11018:	52                   	push   %edx
   11019:	ff 75 bc             	push   -0x44(%ebp)
   1101c:	e8 3f 0a 00 00       	call   11a60 <set_ss_pag>
   11021:	83 c4 10             	add    $0x10,%esp
   11024:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   11028:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
   1102c:	7e c1                	jle    10fef <sys_fork+0x186>
   1102e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   11035:	e9 83 00 00 00       	jmp    110bd <sys_fork+0x254>
   1103a:	e8 16 09 00 00       	call   11955 <alloc_frame>
   1103f:	8b 55 f0             	mov    -0x10(%ebp),%edx
   11042:	89 84 95 50 ff ff ff 	mov    %eax,-0xb0(%ebp,%edx,4)
   11049:	8b 45 f0             	mov    -0x10(%ebp),%eax
   1104c:	8b 84 85 50 ff ff ff 	mov    -0xb0(%ebp,%eax,4),%eax
   11053:	85 c0                	test   %eax,%eax
   11055:	79 62                	jns    110b9 <sys_fork+0x250>
   11057:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   1105e:	eb 1a                	jmp    1107a <sys_fork+0x211>
   11060:	8b 45 ec             	mov    -0x14(%ebp),%eax
   11063:	8b 84 85 50 ff ff ff 	mov    -0xb0(%ebp,%eax,4),%eax
   1106a:	83 ec 0c             	sub    $0xc,%esp
   1106d:	50                   	push   %eax
   1106e:	e8 d3 09 00 00       	call   11a46 <free_frame>
   11073:	83 c4 10             	add    $0x10,%esp
   11076:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
   1107a:	8b 45 ec             	mov    -0x14(%ebp),%eax
   1107d:	3b 45 f0             	cmp    -0x10(%ebp),%eax
   11080:	7c de                	jl     11060 <sys_fork+0x1f7>
   11082:	8b 45 dc             	mov    -0x24(%ebp),%eax
   11085:	83 ec 0c             	sub    $0xc,%esp
   11088:	50                   	push   %eax
   11089:	e8 b8 09 00 00       	call   11a46 <free_frame>
   1108e:	83 c4 10             	add    $0x10,%esp
   11091:	8b 45 c8             	mov    -0x38(%ebp),%eax
   11094:	83 ec 0c             	sub    $0xc,%esp
   11097:	50                   	push   %eax
   11098:	e8 a9 09 00 00       	call   11a46 <free_frame>
   1109d:	83 c4 10             	add    $0x10,%esp
   110a0:	8b 45 c0             	mov    -0x40(%ebp),%eax
   110a3:	83 ec 0c             	sub    $0xc,%esp
   110a6:	50                   	push   %eax
   110a7:	e8 9a 09 00 00       	call   11a46 <free_frame>
   110ac:	83 c4 10             	add    $0x10,%esp
   110af:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
   110b4:	e9 e4 01 00 00       	jmp    1129d <sys_fork+0x434>
   110b9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
   110bd:	83 7d f0 13          	cmpl   $0x13,-0x10(%ebp)
   110c1:	0f 8e 73 ff ff ff    	jle    1103a <sys_fork+0x1d1>
   110c7:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   110ce:	eb 22                	jmp    110f2 <sys_fork+0x289>
   110d0:	8b 45 e8             	mov    -0x18(%ebp),%eax
   110d3:	8b 84 85 50 ff ff ff 	mov    -0xb0(%ebp,%eax,4),%eax
   110da:	89 c2                	mov    %eax,%edx
   110dc:	8b 45 e8             	mov    -0x18(%ebp),%eax
   110df:	6a 01                	push   $0x1
   110e1:	52                   	push   %edx
   110e2:	50                   	push   %eax
   110e3:	ff 75 bc             	push   -0x44(%ebp)
   110e6:	e8 75 09 00 00       	call   11a60 <set_ss_pag>
   110eb:	83 c4 10             	add    $0x10,%esp
   110ee:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
   110f2:	83 7d e8 13          	cmpl   $0x13,-0x18(%ebp)
   110f6:	7e d8                	jle    110d0 <sys_fork+0x267>
   110f8:	c7 45 ac 08 01 00 00 	movl   $0x108,-0x54(%ebp)
   110ff:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
   11106:	eb 27                	jmp    1112f <sys_fork+0x2c6>
   11108:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   1110b:	8b 84 85 50 ff ff ff 	mov    -0xb0(%ebp,%eax,4),%eax
   11112:	89 c2                	mov    %eax,%edx
   11114:	8b 4d ac             	mov    -0x54(%ebp),%ecx
   11117:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   1111a:	01 c8                	add    %ecx,%eax
   1111c:	6a 01                	push   $0x1
   1111e:	52                   	push   %edx
   1111f:	50                   	push   %eax
   11120:	ff 75 b0             	push   -0x50(%ebp)
   11123:	e8 38 09 00 00       	call   11a60 <set_ss_pag>
   11128:	83 c4 10             	add    $0x10,%esp
   1112b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
   1112f:	83 7d e4 13          	cmpl   $0x13,-0x1c(%ebp)
   11133:	7e d3                	jle    11108 <sys_fork+0x29f>
   11135:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
   1113c:	eb 4d                	jmp    1118b <sys_fork+0x322>
   1113e:	8b 45 e0             	mov    -0x20(%ebp),%eax
   11141:	05 08 01 00 00       	add    $0x108,%eax
   11146:	c1 e0 0c             	shl    $0xc,%eax
   11149:	89 45 a8             	mov    %eax,-0x58(%ebp)
   1114c:	8b 55 ac             	mov    -0x54(%ebp),%edx
   1114f:	8b 45 e0             	mov    -0x20(%ebp),%eax
   11152:	01 d0                	add    %edx,%eax
   11154:	c1 e0 0c             	shl    $0xc,%eax
   11157:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   1115a:	83 ec 04             	sub    $0x4,%esp
   1115d:	68 00 10 00 00       	push   $0x1000
   11162:	ff 75 a4             	push   -0x5c(%ebp)
   11165:	ff 75 a8             	push   -0x58(%ebp)
   11168:	e8 fc 09 00 00       	call   11b69 <copy_data>
   1116d:	83 c4 10             	add    $0x10,%esp
   11170:	8b 55 ac             	mov    -0x54(%ebp),%edx
   11173:	8b 45 e0             	mov    -0x20(%ebp),%eax
   11176:	01 d0                	add    %edx,%eax
   11178:	83 ec 08             	sub    $0x8,%esp
   1117b:	50                   	push   %eax
   1117c:	ff 75 b0             	push   -0x50(%ebp)
   1117f:	e8 77 09 00 00       	call   11afb <del_ss_pag>
   11184:	83 c4 10             	add    $0x10,%esp
   11187:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
   1118b:	83 7d e0 13          	cmpl   $0x13,-0x20(%ebp)
   1118f:	7e ad                	jle    1113e <sys_fork+0x2d5>
   11191:	83 ec 0c             	sub    $0xc,%esp
   11194:	ff 75 d4             	push   -0x2c(%ebp)
   11197:	e8 4d f9 ff ff       	call   10ae9 <get_DIR>
   1119c:	83 c4 10             	add    $0x10,%esp
   1119f:	83 ec 0c             	sub    $0xc,%esp
   111a2:	50                   	push   %eax
   111a3:	e8 a6 0e 00 00       	call   1204e <set_cr3>
   111a8:	83 c4 10             	add    $0x10,%esp
   111ab:	a1 64 3f 01 00       	mov    0x13f64,%eax
   111b0:	8d 50 01             	lea    0x1(%eax),%edx
   111b3:	89 15 64 3f 01 00    	mov    %edx,0x13f64
   111b9:	8b 55 cc             	mov    -0x34(%ebp),%edx
   111bc:	89 02                	mov    %eax,(%edx)
   111be:	8b 45 d8             	mov    -0x28(%ebp),%eax
   111c1:	c7 80 d8 0f 00 00 00 	movl   $0x0,0xfd8(%eax)
   111c8:	00 00 00 
   111cb:	ba d2 05 01 00       	mov    $0x105d2,%edx
   111d0:	8b 45 d8             	mov    -0x28(%ebp),%eax
   111d3:	89 90 bc 0f 00 00    	mov    %edx,0xfbc(%eax)
   111d9:	8b 45 d8             	mov    -0x28(%ebp),%eax
   111dc:	c7 80 b8 0f 00 00 00 	movl   $0x0,0xfb8(%eax)
   111e3:	00 00 00 
   111e6:	8b 45 d8             	mov    -0x28(%ebp),%eax
   111e9:	c7 80 b4 0f 00 00 00 	movl   $0x0,0xfb4(%eax)
   111f0:	00 00 00 
   111f3:	8b 45 d8             	mov    -0x28(%ebp),%eax
   111f6:	c7 80 b0 0f 00 00 00 	movl   $0x0,0xfb0(%eax)
   111fd:	00 00 00 
   11200:	8b 45 d8             	mov    -0x28(%ebp),%eax
   11203:	c7 80 ac 0f 00 00 00 	movl   $0x0,0xfac(%eax)
   1120a:	00 00 00 
   1120d:	8b 45 d8             	mov    -0x28(%ebp),%eax
   11210:	05 ac 0f 00 00       	add    $0xfac,%eax
   11215:	89 c2                	mov    %eax,%edx
   11217:	8b 45 cc             	mov    -0x34(%ebp),%eax
   1121a:	89 50 10             	mov    %edx,0x10(%eax)
   1121d:	8b 45 cc             	mov    -0x34(%ebp),%eax
   11220:	c7 40 14 64 00 00 00 	movl   $0x64,0x14(%eax)
   11227:	8b 45 cc             	mov    -0x34(%ebp),%eax
   1122a:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
   11231:	8b 45 cc             	mov    -0x34(%ebp),%eax
   11234:	83 c0 1c             	add    $0x1c,%eax
   11237:	83 ec 0c             	sub    $0xc,%esp
   1123a:	50                   	push   %eax
   1123b:	e8 cf 0a 00 00       	call   11d0f <INIT_LIST_HEAD>
   11240:	83 c4 10             	add    $0x10,%esp
   11243:	8b 45 cc             	mov    -0x34(%ebp),%eax
   11246:	83 c0 24             	add    $0x24,%eax
   11249:	83 ec 0c             	sub    $0xc,%esp
   1124c:	50                   	push   %eax
   1124d:	e8 bd 0a 00 00       	call   11d0f <INIT_LIST_HEAD>
   11252:	83 c4 10             	add    $0x10,%esp
   11255:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   11258:	8b 45 cc             	mov    -0x34(%ebp),%eax
   1125b:	89 50 2c             	mov    %edx,0x2c(%eax)
   1125e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   11261:	8d 50 1c             	lea    0x1c(%eax),%edx
   11264:	8b 45 cc             	mov    -0x34(%ebp),%eax
   11267:	83 c0 24             	add    $0x24,%eax
   1126a:	83 ec 08             	sub    $0x8,%esp
   1126d:	52                   	push   %edx
   1126e:	50                   	push   %eax
   1126f:	e8 f4 0a 00 00       	call   11d68 <list_add_tail>
   11274:	83 c4 10             	add    $0x10,%esp
   11277:	8b 45 cc             	mov    -0x34(%ebp),%eax
   1127a:	83 c0 08             	add    $0x8,%eax
   1127d:	83 ec 08             	sub    $0x8,%esp
   11280:	68 a0 47 01 00       	push   $0x147a0
   11285:	50                   	push   %eax
   11286:	e8 dd 0a 00 00       	call   11d68 <list_add_tail>
   1128b:	83 c4 10             	add    $0x10,%esp
   1128e:	8b 45 cc             	mov    -0x34(%ebp),%eax
   11291:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%eax)
   11298:	8b 45 cc             	mov    -0x34(%ebp),%eax
   1129b:	8b 00                	mov    (%eax),%eax
   1129d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   112a0:	c9                   	leave  
   112a1:	c3                   	ret    

000112a2 <sys_exit>:
   112a2:	55                   	push   %ebp
   112a3:	89 e5                	mov    %esp,%ebp
   112a5:	83 ec 28             	sub    $0x28,%esp
   112a8:	e8 bd 0d 00 00       	call   1206a <current>
   112ad:	89 45 f4             	mov    %eax,-0xc(%ebp)
   112b0:	83 ec 0c             	sub    $0xc,%esp
   112b3:	ff 75 f4             	push   -0xc(%ebp)
   112b6:	e8 2e f8 ff ff       	call   10ae9 <get_DIR>
   112bb:	83 c4 10             	add    $0x10,%esp
   112be:	89 45 f0             	mov    %eax,-0x10(%ebp)
   112c1:	8b 45 f0             	mov    -0x10(%ebp),%eax
   112c4:	83 c0 04             	add    $0x4,%eax
   112c7:	8b 00                	mov    (%eax),%eax
   112c9:	c1 e8 0c             	shr    $0xc,%eax
   112cc:	89 45 ec             	mov    %eax,-0x14(%ebp)
   112cf:	8b 45 ec             	mov    -0x14(%ebp),%eax
   112d2:	c1 f8 0c             	sar    $0xc,%eax
   112d5:	89 45 e8             	mov    %eax,-0x18(%ebp)
   112d8:	83 ec 0c             	sub    $0xc,%esp
   112db:	ff 75 e8             	push   -0x18(%ebp)
   112de:	e8 b5 06 00 00       	call   11998 <free_user_pages>
   112e3:	83 c4 10             	add    $0x10,%esp
   112e6:	8b 45 e8             	mov    -0x18(%ebp),%eax
   112e9:	83 c0 04             	add    $0x4,%eax
   112ec:	8b 00                	mov    (%eax),%eax
   112ee:	c1 e8 0c             	shr    $0xc,%eax
   112f1:	83 ec 0c             	sub    $0xc,%esp
   112f4:	50                   	push   %eax
   112f5:	e8 4c 07 00 00       	call   11a46 <free_frame>
   112fa:	83 c4 10             	add    $0x10,%esp
   112fd:	83 ec 08             	sub    $0x8,%esp
   11300:	6a 00                	push   $0x0
   11302:	ff 75 f0             	push   -0x10(%ebp)
   11305:	e8 0c 08 00 00       	call   11b16 <get_frame>
   1130a:	83 c4 10             	add    $0x10,%esp
   1130d:	83 ec 0c             	sub    $0xc,%esp
   11310:	50                   	push   %eax
   11311:	e8 30 07 00 00       	call   11a46 <free_frame>
   11316:	83 c4 10             	add    $0x10,%esp
   11319:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1131c:	c1 e8 0c             	shr    $0xc,%eax
   1131f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   11322:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   11325:	83 ec 0c             	sub    $0xc,%esp
   11328:	50                   	push   %eax
   11329:	e8 18 07 00 00       	call   11a46 <free_frame>
   1132e:	83 c4 10             	add    $0x10,%esp
   11331:	e8 93 f9 ff ff       	call   10cc9 <sched_next_rr>
   11336:	90                   	nop
   11337:	c9                   	leave  
   11338:	c3                   	ret    

00011339 <sys_block>:
   11339:	55                   	push   %ebp
   1133a:	89 e5                	mov    %esp,%ebp
   1133c:	83 ec 18             	sub    $0x18,%esp
   1133f:	e8 26 0d 00 00       	call   1206a <current>
   11344:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11347:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1134a:	8b 40 18             	mov    0x18(%eax),%eax
   1134d:	85 c0                	test   %eax,%eax
   1134f:	75 1a                	jne    1136b <sys_block+0x32>
   11351:	83 ec 08             	sub    $0x8,%esp
   11354:	68 88 58 01 00       	push   $0x15888
   11359:	ff 75 f4             	push   -0xc(%ebp)
   1135c:	e8 f3 f8 ff ff       	call   10c54 <update_process_state_rr>
   11361:	83 c4 10             	add    $0x10,%esp
   11364:	e8 60 f9 ff ff       	call   10cc9 <sched_next_rr>
   11369:	eb 0f                	jmp    1137a <sys_block+0x41>
   1136b:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1136e:	8b 40 18             	mov    0x18(%eax),%eax
   11371:	8d 50 ff             	lea    -0x1(%eax),%edx
   11374:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11377:	89 50 18             	mov    %edx,0x18(%eax)
   1137a:	90                   	nop
   1137b:	c9                   	leave  
   1137c:	c3                   	ret    

0001137d <sys_unblock>:
   1137d:	55                   	push   %ebp
   1137e:	89 e5                	mov    %esp,%ebp
   11380:	83 ec 28             	sub    $0x28,%esp
   11383:	e8 e2 0c 00 00       	call   1206a <current>
   11388:	89 45 ec             	mov    %eax,-0x14(%ebp)
   1138b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   11392:	8b 45 ec             	mov    -0x14(%ebp),%eax
   11395:	8b 40 1c             	mov    0x1c(%eax),%eax
   11398:	89 45 f4             	mov    %eax,-0xc(%ebp)
   1139b:	eb 2b                	jmp    113c8 <sys_unblock+0x4b>
   1139d:	83 ec 0c             	sub    $0xc,%esp
   113a0:	ff 75 f4             	push   -0xc(%ebp)
   113a3:	e8 3e f4 ff ff       	call   107e6 <list_head_to_task_struct>
   113a8:	83 c4 10             	add    $0x10,%esp
   113ab:	89 45 e8             	mov    %eax,-0x18(%ebp)
   113ae:	8b 45 e8             	mov    -0x18(%ebp),%eax
   113b1:	8b 00                	mov    (%eax),%eax
   113b3:	39 45 08             	cmp    %eax,0x8(%ebp)
   113b6:	75 08                	jne    113c0 <sys_unblock+0x43>
   113b8:	8b 45 e8             	mov    -0x18(%ebp),%eax
   113bb:	89 45 f0             	mov    %eax,-0x10(%ebp)
   113be:	eb 13                	jmp    113d3 <sys_unblock+0x56>
   113c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
   113c3:	8b 00                	mov    (%eax),%eax
   113c5:	89 45 f4             	mov    %eax,-0xc(%ebp)
   113c8:	8b 45 ec             	mov    -0x14(%ebp),%eax
   113cb:	83 c0 1c             	add    $0x1c,%eax
   113ce:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   113d1:	75 ca                	jne    1139d <sys_unblock+0x20>
   113d3:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   113d7:	75 07                	jne    113e0 <sys_unblock+0x63>
   113d9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   113de:	eb 45                	jmp    11425 <sys_unblock+0xa8>
   113e0:	83 ec 0c             	sub    $0xc,%esp
   113e3:	ff 75 f0             	push   -0x10(%ebp)
   113e6:	e8 fb f3 ff ff       	call   107e6 <list_head_to_task_struct>
   113eb:	83 c4 10             	add    $0x10,%esp
   113ee:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   113f1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   113f4:	8b 40 34             	mov    0x34(%eax),%eax
   113f7:	83 f8 02             	cmp    $0x2,%eax
   113fa:	75 15                	jne    11411 <sys_unblock+0x94>
   113fc:	83 ec 08             	sub    $0x8,%esp
   113ff:	68 a0 47 01 00       	push   $0x147a0
   11404:	ff 75 f0             	push   -0x10(%ebp)
   11407:	e8 48 f8 ff ff       	call   10c54 <update_process_state_rr>
   1140c:	83 c4 10             	add    $0x10,%esp
   1140f:	eb 0f                	jmp    11420 <sys_unblock+0xa3>
   11411:	8b 45 ec             	mov    -0x14(%ebp),%eax
   11414:	8b 40 18             	mov    0x18(%eax),%eax
   11417:	8d 50 01             	lea    0x1(%eax),%edx
   1141a:	8b 45 ec             	mov    -0x14(%ebp),%eax
   1141d:	89 50 18             	mov    %edx,0x18(%eax)
   11420:	b8 00 00 00 00       	mov    $0x0,%eax
   11425:	c9                   	leave  
   11426:	c3                   	ret    

00011427 <physical_to_logical>:
   11427:	55                   	push   %ebp
   11428:	89 e5                	mov    %esp,%ebp
   1142a:	83 ec 10             	sub    $0x10,%esp
   1142d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   11434:	eb 3b                	jmp    11471 <physical_to_logical+0x4a>
   11436:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11439:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11440:	8b 45 08             	mov    0x8(%ebp),%eax
   11443:	01 d0                	add    %edx,%eax
   11445:	8b 00                	mov    (%eax),%eax
   11447:	c1 e8 0c             	shr    $0xc,%eax
   1144a:	39 45 0c             	cmp    %eax,0xc(%ebp)
   1144d:	75 1e                	jne    1146d <physical_to_logical+0x46>
   1144f:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11452:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11459:	8b 45 08             	mov    0x8(%ebp),%eax
   1145c:	01 d0                	add    %edx,%eax
   1145e:	0f b6 00             	movzbl (%eax),%eax
   11461:	83 e0 01             	and    $0x1,%eax
   11464:	84 c0                	test   %al,%al
   11466:	74 05                	je     1146d <physical_to_logical+0x46>
   11468:	8b 45 fc             	mov    -0x4(%ebp),%eax
   1146b:	eb 12                	jmp    1147f <physical_to_logical+0x58>
   1146d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   11471:	81 7d fc ff 03 00 00 	cmpl   $0x3ff,-0x4(%ebp)
   11478:	7e bc                	jle    11436 <physical_to_logical+0xf>
   1147a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1147f:	c9                   	leave  
   11480:	c3                   	ret    

00011481 <clear_page_table>:
   11481:	55                   	push   %ebp
   11482:	89 e5                	mov    %esp,%ebp
   11484:	83 ec 10             	sub    $0x10,%esp
   11487:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   1148e:	eb 19                	jmp    114a9 <clear_page_table+0x28>
   11490:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11493:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   1149a:	8b 45 08             	mov    0x8(%ebp),%eax
   1149d:	01 d0                	add    %edx,%eax
   1149f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   114a5:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   114a9:	81 7d fc ff 03 00 00 	cmpl   $0x3ff,-0x4(%ebp)
   114b0:	7e de                	jle    11490 <clear_page_table+0xf>
   114b2:	90                   	nop
   114b3:	90                   	nop
   114b4:	c9                   	leave  
   114b5:	c3                   	ret    

000114b6 <set_user_pages>:
   114b6:	55                   	push   %ebp
   114b7:	89 e5                	mov    %esp,%ebp
   114b9:	83 ec 18             	sub    $0x18,%esp
   114bc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   114c3:	e9 8c 00 00 00       	jmp    11554 <set_user_pages+0x9e>
   114c8:	e8 88 04 00 00       	call   11955 <alloc_frame>
   114cd:	89 45 f0             	mov    %eax,-0x10(%ebp)
   114d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
   114d3:	05 00 01 00 00       	add    $0x100,%eax
   114d8:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   114df:	8b 45 08             	mov    0x8(%ebp),%eax
   114e2:	01 d0                	add    %edx,%eax
   114e4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   114ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
   114ed:	05 08 01 00 00       	add    $0x108,%eax
   114f2:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   114f9:	8b 45 08             	mov    0x8(%ebp),%eax
   114fc:	01 d0                	add    %edx,%eax
   114fe:	8b 55 f0             	mov    -0x10(%ebp),%edx
   11501:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   11507:	89 d1                	mov    %edx,%ecx
   11509:	c1 e1 0c             	shl    $0xc,%ecx
   1150c:	8b 10                	mov    (%eax),%edx
   1150e:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
   11514:	09 ca                	or     %ecx,%edx
   11516:	89 10                	mov    %edx,(%eax)
   11518:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1151b:	05 08 01 00 00       	add    $0x108,%eax
   11520:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11527:	8b 45 08             	mov    0x8(%ebp),%eax
   1152a:	01 d0                	add    %edx,%eax
   1152c:	0f b6 10             	movzbl (%eax),%edx
   1152f:	83 ca 04             	or     $0x4,%edx
   11532:	88 10                	mov    %dl,(%eax)
   11534:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11537:	05 08 01 00 00       	add    $0x108,%eax
   1153c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11543:	8b 45 08             	mov    0x8(%ebp),%eax
   11546:	01 d0                	add    %edx,%eax
   11548:	0f b6 10             	movzbl (%eax),%edx
   1154b:	83 ca 01             	or     $0x1,%edx
   1154e:	88 10                	mov    %dl,(%eax)
   11550:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   11554:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
   11558:	0f 8e 6a ff ff ff    	jle    114c8 <set_user_pages+0x12>
   1155e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   11565:	e9 a8 00 00 00       	jmp    11612 <set_user_pages+0x15c>
   1156a:	e8 e6 03 00 00       	call   11955 <alloc_frame>
   1156f:	89 45 f0             	mov    %eax,-0x10(%ebp)
   11572:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11575:	05 08 01 00 00       	add    $0x108,%eax
   1157a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11581:	8b 45 08             	mov    0x8(%ebp),%eax
   11584:	01 d0                	add    %edx,%eax
   11586:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   1158c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1158f:	05 08 01 00 00       	add    $0x108,%eax
   11594:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   1159b:	8b 45 08             	mov    0x8(%ebp),%eax
   1159e:	01 d0                	add    %edx,%eax
   115a0:	8b 55 f0             	mov    -0x10(%ebp),%edx
   115a3:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   115a9:	89 d1                	mov    %edx,%ecx
   115ab:	c1 e1 0c             	shl    $0xc,%ecx
   115ae:	8b 10                	mov    (%eax),%edx
   115b0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
   115b6:	09 ca                	or     %ecx,%edx
   115b8:	89 10                	mov    %edx,(%eax)
   115ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
   115bd:	05 08 01 00 00       	add    $0x108,%eax
   115c2:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   115c9:	8b 45 08             	mov    0x8(%ebp),%eax
   115cc:	01 d0                	add    %edx,%eax
   115ce:	0f b6 10             	movzbl (%eax),%edx
   115d1:	83 ca 04             	or     $0x4,%edx
   115d4:	88 10                	mov    %dl,(%eax)
   115d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
   115d9:	05 08 01 00 00       	add    $0x108,%eax
   115de:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   115e5:	8b 45 08             	mov    0x8(%ebp),%eax
   115e8:	01 d0                	add    %edx,%eax
   115ea:	0f b6 10             	movzbl (%eax),%edx
   115ed:	83 ca 02             	or     $0x2,%edx
   115f0:	88 10                	mov    %dl,(%eax)
   115f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
   115f5:	05 08 01 00 00       	add    $0x108,%eax
   115fa:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11601:	8b 45 08             	mov    0x8(%ebp),%eax
   11604:	01 d0                	add    %edx,%eax
   11606:	0f b6 10             	movzbl (%eax),%edx
   11609:	83 ca 01             	or     $0x1,%edx
   1160c:	88 10                	mov    %dl,(%eax)
   1160e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   11612:	83 7d f4 13          	cmpl   $0x13,-0xc(%ebp)
   11616:	0f 8e 4e ff ff ff    	jle    1156a <set_user_pages+0xb4>
   1161c:	68 37 2d 01 00       	push   $0x12d37
   11621:	6a 1c                	push   $0x1c
   11623:	68 00 01 00 00       	push   $0x100
   11628:	ff 75 08             	push   0x8(%ebp)
   1162b:	e8 4c 11 00 00       	call   1277c <show_PT_range>
   11630:	83 c4 10             	add    $0x10,%esp
   11633:	90                   	nop
   11634:	c9                   	leave  
   11635:	c3                   	ret    

00011636 <set_kernel_pages>:
   11636:	55                   	push   %ebp
   11637:	89 e5                	mov    %esp,%ebp
   11639:	83 ec 18             	sub    $0x18,%esp
   1163c:	a1 e0 4f 01 00       	mov    0x14fe0,%eax
   11641:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11644:	eb 19                	jmp    1165f <set_kernel_pages+0x29>
   11646:	8b 55 f4             	mov    -0xc(%ebp),%edx
   11649:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1164c:	6a 00                	push   $0x0
   1164e:	52                   	push   %edx
   1164f:	50                   	push   %eax
   11650:	ff 75 08             	push   0x8(%ebp)
   11653:	e8 08 04 00 00       	call   11a60 <set_ss_pag>
   11658:	83 c4 10             	add    $0x10,%esp
   1165b:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   1165f:	a1 e4 4f 01 00       	mov    0x14fe4,%eax
   11664:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   11667:	7c dd                	jl     11646 <set_kernel_pages+0x10>
   11669:	6a 00                	push   $0x0
   1166b:	68 90 00 00 00       	push   $0x90
   11670:	68 90 00 00 00       	push   $0x90
   11675:	ff 75 08             	push   0x8(%ebp)
   11678:	e8 e3 03 00 00       	call   11a60 <set_ss_pag>
   1167d:	83 c4 10             	add    $0x10,%esp
   11680:	6a 00                	push   $0x0
   11682:	68 b8 00 00 00       	push   $0xb8
   11687:	68 b8 00 00 00       	push   $0xb8
   1168c:	ff 75 08             	push   0x8(%ebp)
   1168f:	e8 cc 03 00 00       	call   11a60 <set_ss_pag>
   11694:	83 c4 10             	add    $0x10,%esp
   11697:	83 ec 0c             	sub    $0xc,%esp
   1169a:	68 52 2d 01 00       	push   $0x12d52
   1169f:	e8 02 f1 ff ff       	call   107a6 <printk>
   116a4:	83 c4 10             	add    $0x10,%esp
   116a7:	a1 e4 4f 01 00       	mov    0x14fe4,%eax
   116ac:	8b 15 e0 4f 01 00    	mov    0x14fe0,%edx
   116b2:	29 d0                	sub    %edx,%eax
   116b4:	8d 50 01             	lea    0x1(%eax),%edx
   116b7:	a1 e0 4f 01 00       	mov    0x14fe0,%eax
   116bc:	68 54 2d 01 00       	push   $0x12d54
   116c1:	52                   	push   %edx
   116c2:	50                   	push   %eax
   116c3:	ff 75 08             	push   0x8(%ebp)
   116c6:	e8 b1 10 00 00       	call   1277c <show_PT_range>
   116cb:	83 c4 10             	add    $0x10,%esp
   116ce:	68 71 2d 01 00       	push   $0x12d71
   116d3:	6a 01                	push   $0x1
   116d5:	68 90 00 00 00       	push   $0x90
   116da:	ff 75 08             	push   0x8(%ebp)
   116dd:	e8 9a 10 00 00       	call   1277c <show_PT_range>
   116e2:	83 c4 10             	add    $0x10,%esp
   116e5:	68 84 2d 01 00       	push   $0x12d84
   116ea:	6a 01                	push   $0x1
   116ec:	68 b8 00 00 00       	push   $0xb8
   116f1:	ff 75 08             	push   0x8(%ebp)
   116f4:	e8 83 10 00 00       	call   1277c <show_PT_range>
   116f9:	83 c4 10             	add    $0x10,%esp
   116fc:	90                   	nop
   116fd:	c9                   	leave  
   116fe:	c3                   	ret    

000116ff <set_pe_flag>:
   116ff:	55                   	push   %ebp
   11700:	89 e5                	mov    %esp,%ebp
   11702:	83 ec 18             	sub    $0x18,%esp
   11705:	e8 4f 09 00 00       	call   12059 <read_cr0>
   1170a:	89 45 f4             	mov    %eax,-0xc(%ebp)
   1170d:	81 4d f4 00 00 00 80 	orl    $0x80000000,-0xc(%ebp)
   11714:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11717:	83 ec 0c             	sub    $0xc,%esp
   1171a:	50                   	push   %eax
   1171b:	e8 3d 09 00 00       	call   1205d <write_cr0>
   11720:	83 c4 10             	add    $0x10,%esp
   11723:	90                   	nop
   11724:	c9                   	leave  
   11725:	c3                   	ret    

00011726 <init_mm>:
   11726:	55                   	push   %ebp
   11727:	89 e5                	mov    %esp,%ebp
   11729:	83 ec 08             	sub    $0x8,%esp
   1172c:	c7 05 e0 4f 01 00 10 	movl   $0x10,0x14fe0
   11733:	00 00 00 
   11736:	a1 e4 3e 01 00       	mov    0x13ee4,%eax
   1173b:	8b 10                	mov    (%eax),%edx
   1173d:	a1 e8 3e 01 00       	mov    0x13ee8,%eax
   11742:	8b 00                	mov    (%eax),%eax
   11744:	01 d0                	add    %edx,%eax
   11746:	05 00 00 01 00       	add    $0x10000,%eax
   1174b:	c1 e8 0c             	shr    $0xc,%eax
   1174e:	83 c0 01             	add    $0x1,%eax
   11751:	a3 e4 4f 01 00       	mov    %eax,0x14fe4
   11756:	e8 81 01 00 00       	call   118dc <init_frames>
   1175b:	90                   	nop
   1175c:	c9                   	leave  
   1175d:	c3                   	ret    

0001175e <setGdt>:
   1175e:	55                   	push   %ebp
   1175f:	89 e5                	mov    %esp,%ebp
   11761:	83 ec 08             	sub    $0x8,%esp
   11764:	ba 20 58 01 00       	mov    $0x15820,%edx
   11769:	a1 68 3f 01 00       	mov    0x13f68,%eax
   1176e:	83 c0 30             	add    $0x30,%eax
   11771:	66 89 50 02          	mov    %dx,0x2(%eax)
   11775:	b8 20 58 01 00       	mov    $0x15820,%eax
   1177a:	c1 e8 10             	shr    $0x10,%eax
   1177d:	89 c2                	mov    %eax,%edx
   1177f:	a1 68 3f 01 00       	mov    0x13f68,%eax
   11784:	83 c0 30             	add    $0x30,%eax
   11787:	88 50 04             	mov    %dl,0x4(%eax)
   1178a:	b8 20 58 01 00       	mov    $0x15820,%eax
   1178f:	c1 e8 18             	shr    $0x18,%eax
   11792:	89 c2                	mov    %eax,%edx
   11794:	a1 68 3f 01 00       	mov    0x13f68,%eax
   11799:	83 c0 30             	add    $0x30,%eax
   1179c:	88 50 07             	mov    %dl,0x7(%eax)
   1179f:	a1 68 3f 01 00       	mov    0x13f68,%eax
   117a4:	a3 02 58 01 00       	mov    %eax,0x15802
   117a9:	66 c7 05 00 58 01 00 	movw   $0x800,0x15800
   117b0:	00 08 
   117b2:	83 ec 0c             	sub    $0xc,%esp
   117b5:	68 00 58 01 00       	push   $0x15800
   117ba:	e8 23 08 00 00       	call   11fe2 <set_gdt_reg>
   117bf:	83 c4 10             	add    $0x10,%esp
   117c2:	90                   	nop
   117c3:	c9                   	leave  
   117c4:	c3                   	ret    

000117c5 <setTSS>:
   117c5:	55                   	push   %ebp
   117c6:	89 e5                	mov    %esp,%ebp
   117c8:	83 ec 08             	sub    $0x8,%esp
   117cb:	66 c7 05 20 58 01 00 	movw   $0x0,0x15820
   117d2:	00 00 
   117d4:	b8 c0 4b 01 00       	mov    $0x14bc0,%eax
   117d9:	a3 24 58 01 00       	mov    %eax,0x15824
   117de:	66 c7 05 28 58 01 00 	movw   $0x18,0x15828
   117e5:	18 00 
   117e7:	c7 05 2c 58 01 00 00 	movl   $0x0,0x1582c
   117ee:	00 00 00 
   117f1:	66 c7 05 30 58 01 00 	movw   $0x0,0x15830
   117f8:	00 00 
   117fa:	c7 05 34 58 01 00 00 	movl   $0x0,0x15834
   11801:	00 00 00 
   11804:	66 c7 05 38 58 01 00 	movw   $0x0,0x15838
   1180b:	00 00 
   1180d:	c7 05 3c 58 01 00 00 	movl   $0x0,0x1583c
   11814:	00 00 00 
   11817:	c7 05 40 58 01 00 00 	movl   $0x0,0x15840
   1181e:	00 00 00 
   11821:	c7 05 44 58 01 00 00 	movl   $0x200,0x15844
   11828:	02 00 00 
   1182b:	c7 05 48 58 01 00 00 	movl   $0x0,0x15848
   11832:	00 00 00 
   11835:	c7 05 4c 58 01 00 00 	movl   $0x0,0x1584c
   1183c:	00 00 00 
   1183f:	c7 05 50 58 01 00 00 	movl   $0x0,0x15850
   11846:	00 00 00 
   11849:	c7 05 54 58 01 00 00 	movl   $0x0,0x15854
   11850:	00 00 00 
   11853:	c7 05 58 58 01 00 00 	movl   $0x11c000,0x15858
   1185a:	c0 11 00 
   1185d:	a1 58 58 01 00       	mov    0x15858,%eax
   11862:	a3 5c 58 01 00       	mov    %eax,0x1585c
   11867:	c7 05 60 58 01 00 00 	movl   $0x0,0x15860
   1186e:	00 00 00 
   11871:	c7 05 64 58 01 00 00 	movl   $0x0,0x15864
   11878:	00 00 00 
   1187b:	66 c7 05 68 58 01 00 	movw   $0x2b,0x15868
   11882:	2b 00 
   11884:	66 c7 05 6c 58 01 00 	movw   $0x23,0x1586c
   1188b:	23 00 
   1188d:	66 c7 05 70 58 01 00 	movw   $0x2b,0x15870
   11894:	2b 00 
   11896:	66 c7 05 74 58 01 00 	movw   $0x2b,0x15874
   1189d:	2b 00 
   1189f:	66 c7 05 78 58 01 00 	movw   $0x0,0x15878
   118a6:	00 00 
   118a8:	66 c7 05 7c 58 01 00 	movw   $0x0,0x1587c
   118af:	00 00 
   118b1:	66 c7 05 80 58 01 00 	movw   $0x30,0x15880
   118b8:	30 00 
   118ba:	66 c7 05 84 58 01 00 	movw   $0x0,0x15884
   118c1:	00 00 
   118c3:	66 c7 05 86 58 01 00 	movw   $0x0,0x15886
   118ca:	00 00 
   118cc:	83 ec 0c             	sub    $0xc,%esp
   118cf:	6a 30                	push   $0x30
   118d1:	e8 22 07 00 00       	call   11ff8 <set_task_reg>
   118d6:	83 c4 10             	add    $0x10,%esp
   118d9:	90                   	nop
   118da:	c9                   	leave  
   118db:	c3                   	ret    

000118dc <init_frames>:
   118dc:	55                   	push   %ebp
   118dd:	89 e5                	mov    %esp,%ebp
   118df:	83 ec 10             	sub    $0x10,%esp
   118e2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   118e9:	eb 0f                	jmp    118fa <init_frames+0x1e>
   118eb:	8b 45 fc             	mov    -0x4(%ebp),%eax
   118ee:	05 00 50 01 00       	add    $0x15000,%eax
   118f3:	c6 00 00             	movb   $0x0,(%eax)
   118f6:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   118fa:	81 7d fc ff 07 00 00 	cmpl   $0x7ff,-0x4(%ebp)
   11901:	7e e8                	jle    118eb <init_frames+0xf>
   11903:	a1 e0 4f 01 00       	mov    0x14fe0,%eax
   11908:	89 45 fc             	mov    %eax,-0x4(%ebp)
   1190b:	eb 0f                	jmp    1191c <init_frames+0x40>
   1190d:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11910:	05 00 50 01 00       	add    $0x15000,%eax
   11915:	c6 00 01             	movb   $0x1,(%eax)
   11918:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   1191c:	a1 e4 4f 01 00       	mov    0x14fe4,%eax
   11921:	39 45 fc             	cmp    %eax,-0x4(%ebp)
   11924:	7c e7                	jl     1190d <init_frames+0x31>
   11926:	c6 05 90 50 01 00 01 	movb   $0x1,0x15090
   1192d:	c7 45 fc a0 00 00 00 	movl   $0xa0,-0x4(%ebp)
   11934:	eb 0f                	jmp    11945 <init_frames+0x69>
   11936:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11939:	05 00 50 01 00       	add    $0x15000,%eax
   1193e:	c6 00 01             	movb   $0x1,(%eax)
   11941:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   11945:	81 7d fc ff 00 00 00 	cmpl   $0xff,-0x4(%ebp)
   1194c:	7e e8                	jle    11936 <init_frames+0x5a>
   1194e:	b8 00 00 00 00       	mov    $0x0,%eax
   11953:	c9                   	leave  
   11954:	c3                   	ret    

00011955 <alloc_frame>:
   11955:	55                   	push   %ebp
   11956:	89 e5                	mov    %esp,%ebp
   11958:	83 ec 10             	sub    $0x10,%esp
   1195b:	a1 e4 4f 01 00       	mov    0x14fe4,%eax
   11960:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11963:	eb 23                	jmp    11988 <alloc_frame+0x33>
   11965:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11968:	05 00 50 01 00       	add    $0x15000,%eax
   1196d:	0f b6 00             	movzbl (%eax),%eax
   11970:	84 c0                	test   %al,%al
   11972:	75 10                	jne    11984 <alloc_frame+0x2f>
   11974:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11977:	05 00 50 01 00       	add    $0x15000,%eax
   1197c:	c6 00 01             	movb   $0x1,(%eax)
   1197f:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11982:	eb 12                	jmp    11996 <alloc_frame+0x41>
   11984:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   11988:	81 7d fc ff 07 00 00 	cmpl   $0x7ff,-0x4(%ebp)
   1198f:	7e d4                	jle    11965 <alloc_frame+0x10>
   11991:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   11996:	c9                   	leave  
   11997:	c3                   	ret    

00011998 <free_user_pages>:
   11998:	55                   	push   %ebp
   11999:	89 e5                	mov    %esp,%ebp
   1199b:	83 ec 18             	sub    $0x18,%esp
   1199e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   119a5:	eb 43                	jmp    119ea <free_user_pages+0x52>
   119a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   119aa:	05 08 01 00 00       	add    $0x108,%eax
   119af:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   119b6:	8b 45 08             	mov    0x8(%ebp),%eax
   119b9:	01 d0                	add    %edx,%eax
   119bb:	8b 00                	mov    (%eax),%eax
   119bd:	c1 e8 0c             	shr    $0xc,%eax
   119c0:	83 ec 0c             	sub    $0xc,%esp
   119c3:	50                   	push   %eax
   119c4:	e8 7d 00 00 00       	call   11a46 <free_frame>
   119c9:	83 c4 10             	add    $0x10,%esp
   119cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
   119cf:	05 08 01 00 00       	add    $0x108,%eax
   119d4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   119db:	8b 45 08             	mov    0x8(%ebp),%eax
   119de:	01 d0                	add    %edx,%eax
   119e0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   119e6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   119ea:	83 7d f4 13          	cmpl   $0x13,-0xc(%ebp)
   119ee:	7e b7                	jle    119a7 <free_user_pages+0xf>
   119f0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   119f7:	eb 43                	jmp    11a3c <free_user_pages+0xa4>
   119f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   119fc:	05 00 01 00 00       	add    $0x100,%eax
   11a01:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11a08:	8b 45 08             	mov    0x8(%ebp),%eax
   11a0b:	01 d0                	add    %edx,%eax
   11a0d:	8b 00                	mov    (%eax),%eax
   11a0f:	c1 e8 0c             	shr    $0xc,%eax
   11a12:	83 ec 0c             	sub    $0xc,%esp
   11a15:	50                   	push   %eax
   11a16:	e8 2b 00 00 00       	call   11a46 <free_frame>
   11a1b:	83 c4 10             	add    $0x10,%esp
   11a1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11a21:	05 00 01 00 00       	add    $0x100,%eax
   11a26:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11a2d:	8b 45 08             	mov    0x8(%ebp),%eax
   11a30:	01 d0                	add    %edx,%eax
   11a32:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   11a38:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   11a3c:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
   11a40:	7e b7                	jle    119f9 <free_user_pages+0x61>
   11a42:	90                   	nop
   11a43:	90                   	nop
   11a44:	c9                   	leave  
   11a45:	c3                   	ret    

00011a46 <free_frame>:
   11a46:	55                   	push   %ebp
   11a47:	89 e5                	mov    %esp,%ebp
   11a49:	81 7d 08 ff 07 00 00 	cmpl   $0x7ff,0x8(%ebp)
   11a50:	77 0b                	ja     11a5d <free_frame+0x17>
   11a52:	8b 45 08             	mov    0x8(%ebp),%eax
   11a55:	05 00 50 01 00       	add    $0x15000,%eax
   11a5a:	c6 00 00             	movb   $0x0,(%eax)
   11a5d:	90                   	nop
   11a5e:	5d                   	pop    %ebp
   11a5f:	c3                   	ret    

00011a60 <set_ss_pag>:
   11a60:	55                   	push   %ebp
   11a61:	89 e5                	mov    %esp,%ebp
   11a63:	8b 45 0c             	mov    0xc(%ebp),%eax
   11a66:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11a6d:	8b 45 08             	mov    0x8(%ebp),%eax
   11a70:	01 d0                	add    %edx,%eax
   11a72:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   11a78:	8b 45 0c             	mov    0xc(%ebp),%eax
   11a7b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11a82:	8b 45 08             	mov    0x8(%ebp),%eax
   11a85:	01 d0                	add    %edx,%eax
   11a87:	8b 55 10             	mov    0x10(%ebp),%edx
   11a8a:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   11a90:	89 d1                	mov    %edx,%ecx
   11a92:	c1 e1 0c             	shl    $0xc,%ecx
   11a95:	8b 10                	mov    (%eax),%edx
   11a97:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
   11a9d:	09 ca                	or     %ecx,%edx
   11a9f:	89 10                	mov    %edx,(%eax)
   11aa1:	8b 45 0c             	mov    0xc(%ebp),%eax
   11aa4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11aab:	8b 45 08             	mov    0x8(%ebp),%eax
   11aae:	01 c2                	add    %eax,%edx
   11ab0:	8b 45 14             	mov    0x14(%ebp),%eax
   11ab3:	83 e0 01             	and    $0x1,%eax
   11ab6:	83 e0 01             	and    $0x1,%eax
   11ab9:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   11ac0:	0f b6 02             	movzbl (%edx),%eax
   11ac3:	83 e0 fb             	and    $0xfffffffb,%eax
   11ac6:	09 c8                	or     %ecx,%eax
   11ac8:	88 02                	mov    %al,(%edx)
   11aca:	8b 45 0c             	mov    0xc(%ebp),%eax
   11acd:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11ad4:	8b 45 08             	mov    0x8(%ebp),%eax
   11ad7:	01 d0                	add    %edx,%eax
   11ad9:	0f b6 10             	movzbl (%eax),%edx
   11adc:	83 ca 02             	or     $0x2,%edx
   11adf:	88 10                	mov    %dl,(%eax)
   11ae1:	8b 45 0c             	mov    0xc(%ebp),%eax
   11ae4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11aeb:	8b 45 08             	mov    0x8(%ebp),%eax
   11aee:	01 d0                	add    %edx,%eax
   11af0:	0f b6 10             	movzbl (%eax),%edx
   11af3:	83 ca 01             	or     $0x1,%edx
   11af6:	88 10                	mov    %dl,(%eax)
   11af8:	90                   	nop
   11af9:	5d                   	pop    %ebp
   11afa:	c3                   	ret    

00011afb <del_ss_pag>:
   11afb:	55                   	push   %ebp
   11afc:	89 e5                	mov    %esp,%ebp
   11afe:	8b 45 0c             	mov    0xc(%ebp),%eax
   11b01:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11b08:	8b 45 08             	mov    0x8(%ebp),%eax
   11b0b:	01 d0                	add    %edx,%eax
   11b0d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   11b13:	90                   	nop
   11b14:	5d                   	pop    %ebp
   11b15:	c3                   	ret    

00011b16 <get_frame>:
   11b16:	55                   	push   %ebp
   11b17:	89 e5                	mov    %esp,%ebp
   11b19:	8b 45 0c             	mov    0xc(%ebp),%eax
   11b1c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   11b23:	8b 45 08             	mov    0x8(%ebp),%eax
   11b26:	01 d0                	add    %edx,%eax
   11b28:	8b 00                	mov    (%eax),%eax
   11b2a:	c1 e8 0c             	shr    $0xc,%eax
   11b2d:	5d                   	pop    %ebp
   11b2e:	c3                   	ret    

00011b2f <sys_write_console>:
   11b2f:	55                   	push   %ebp
   11b30:	89 e5                	mov    %esp,%ebp
   11b32:	83 ec 18             	sub    $0x18,%esp
   11b35:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   11b3c:	eb 1e                	jmp    11b5c <sys_write_console+0x2d>
   11b3e:	8b 55 f4             	mov    -0xc(%ebp),%edx
   11b41:	8b 45 08             	mov    0x8(%ebp),%eax
   11b44:	01 d0                	add    %edx,%eax
   11b46:	0f b6 00             	movzbl (%eax),%eax
   11b49:	0f be c0             	movsbl %al,%eax
   11b4c:	83 ec 0c             	sub    $0xc,%esp
   11b4f:	50                   	push   %eax
   11b50:	e8 d3 ea ff ff       	call   10628 <printc>
   11b55:	83 c4 10             	add    $0x10,%esp
   11b58:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   11b5c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   11b5f:	3b 45 0c             	cmp    0xc(%ebp),%eax
   11b62:	7c da                	jl     11b3e <sys_write_console+0xf>
   11b64:	8b 45 0c             	mov    0xc(%ebp),%eax
   11b67:	c9                   	leave  
   11b68:	c3                   	ret    

00011b69 <copy_data>:
   11b69:	55                   	push   %ebp
   11b6a:	89 e5                	mov    %esp,%ebp
   11b6c:	83 ec 10             	sub    $0x10,%esp
   11b6f:	8b 45 08             	mov    0x8(%ebp),%eax
   11b72:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11b75:	8b 45 0c             	mov    0xc(%ebp),%eax
   11b78:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11b7b:	eb 1a                	jmp    11b97 <copy_data+0x2e>
   11b7d:	8b 55 fc             	mov    -0x4(%ebp),%edx
   11b80:	8d 42 04             	lea    0x4(%edx),%eax
   11b83:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11b86:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11b89:	8d 48 04             	lea    0x4(%eax),%ecx
   11b8c:	89 4d f8             	mov    %ecx,-0x8(%ebp)
   11b8f:	8b 12                	mov    (%edx),%edx
   11b91:	89 10                	mov    %edx,(%eax)
   11b93:	83 6d 10 04          	subl   $0x4,0x10(%ebp)
   11b97:	83 7d 10 04          	cmpl   $0x4,0x10(%ebp)
   11b9b:	7f e0                	jg     11b7d <copy_data+0x14>
   11b9d:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11ba0:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11ba3:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11ba6:	89 45 f0             	mov    %eax,-0x10(%ebp)
   11ba9:	eb 1b                	jmp    11bc6 <copy_data+0x5d>
   11bab:	8b 55 f4             	mov    -0xc(%ebp),%edx
   11bae:	8d 42 01             	lea    0x1(%edx),%eax
   11bb1:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11bb4:	8b 45 f0             	mov    -0x10(%ebp),%eax
   11bb7:	8d 48 01             	lea    0x1(%eax),%ecx
   11bba:	89 4d f0             	mov    %ecx,-0x10(%ebp)
   11bbd:	0f b6 12             	movzbl (%edx),%edx
   11bc0:	88 10                	mov    %dl,(%eax)
   11bc2:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
   11bc6:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   11bca:	7f df                	jg     11bab <copy_data+0x42>
   11bcc:	90                   	nop
   11bcd:	90                   	nop
   11bce:	c9                   	leave  
   11bcf:	c3                   	ret    

00011bd0 <copy_from_user>:
   11bd0:	55                   	push   %ebp
   11bd1:	89 e5                	mov    %esp,%ebp
   11bd3:	83 ec 10             	sub    $0x10,%esp
   11bd6:	8b 45 08             	mov    0x8(%ebp),%eax
   11bd9:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11bdc:	8b 45 0c             	mov    0xc(%ebp),%eax
   11bdf:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11be2:	eb 1a                	jmp    11bfe <copy_from_user+0x2e>
   11be4:	8b 55 fc             	mov    -0x4(%ebp),%edx
   11be7:	8d 42 04             	lea    0x4(%edx),%eax
   11bea:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11bed:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11bf0:	8d 48 04             	lea    0x4(%eax),%ecx
   11bf3:	89 4d f8             	mov    %ecx,-0x8(%ebp)
   11bf6:	8b 12                	mov    (%edx),%edx
   11bf8:	89 10                	mov    %edx,(%eax)
   11bfa:	83 6d 10 04          	subl   $0x4,0x10(%ebp)
   11bfe:	83 7d 10 04          	cmpl   $0x4,0x10(%ebp)
   11c02:	7f e0                	jg     11be4 <copy_from_user+0x14>
   11c04:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11c07:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11c0a:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11c0d:	89 45 f0             	mov    %eax,-0x10(%ebp)
   11c10:	eb 1b                	jmp    11c2d <copy_from_user+0x5d>
   11c12:	8b 55 f4             	mov    -0xc(%ebp),%edx
   11c15:	8d 42 01             	lea    0x1(%edx),%eax
   11c18:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11c1b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   11c1e:	8d 48 01             	lea    0x1(%eax),%ecx
   11c21:	89 4d f0             	mov    %ecx,-0x10(%ebp)
   11c24:	0f b6 12             	movzbl (%edx),%edx
   11c27:	88 10                	mov    %dl,(%eax)
   11c29:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
   11c2d:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   11c31:	7f df                	jg     11c12 <copy_from_user+0x42>
   11c33:	b8 00 00 00 00       	mov    $0x0,%eax
   11c38:	c9                   	leave  
   11c39:	c3                   	ret    

00011c3a <copy_to_user>:
   11c3a:	55                   	push   %ebp
   11c3b:	89 e5                	mov    %esp,%ebp
   11c3d:	83 ec 10             	sub    $0x10,%esp
   11c40:	8b 45 08             	mov    0x8(%ebp),%eax
   11c43:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11c46:	8b 45 0c             	mov    0xc(%ebp),%eax
   11c49:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11c4c:	eb 1a                	jmp    11c68 <copy_to_user+0x2e>
   11c4e:	8b 55 fc             	mov    -0x4(%ebp),%edx
   11c51:	8d 42 04             	lea    0x4(%edx),%eax
   11c54:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11c57:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11c5a:	8d 48 04             	lea    0x4(%eax),%ecx
   11c5d:	89 4d f8             	mov    %ecx,-0x8(%ebp)
   11c60:	8b 12                	mov    (%edx),%edx
   11c62:	89 10                	mov    %edx,(%eax)
   11c64:	83 6d 10 04          	subl   $0x4,0x10(%ebp)
   11c68:	83 7d 10 04          	cmpl   $0x4,0x10(%ebp)
   11c6c:	7f e0                	jg     11c4e <copy_to_user+0x14>
   11c6e:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11c71:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11c74:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11c77:	89 45 f0             	mov    %eax,-0x10(%ebp)
   11c7a:	eb 1b                	jmp    11c97 <copy_to_user+0x5d>
   11c7c:	8b 55 f4             	mov    -0xc(%ebp),%edx
   11c7f:	8d 42 01             	lea    0x1(%edx),%eax
   11c82:	89 45 f4             	mov    %eax,-0xc(%ebp)
   11c85:	8b 45 f0             	mov    -0x10(%ebp),%eax
   11c88:	8d 48 01             	lea    0x1(%eax),%ecx
   11c8b:	89 4d f0             	mov    %ecx,-0x10(%ebp)
   11c8e:	0f b6 12             	movzbl (%edx),%edx
   11c91:	88 10                	mov    %dl,(%eax)
   11c93:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
   11c97:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
   11c9b:	7f df                	jg     11c7c <copy_to_user+0x42>
   11c9d:	b8 00 00 00 00       	mov    $0x0,%eax
   11ca2:	c9                   	leave  
   11ca3:	c3                   	ret    

00011ca4 <access_ok>:
   11ca4:	55                   	push   %ebp
   11ca5:	89 e5                	mov    %esp,%ebp
   11ca7:	83 ec 10             	sub    $0x10,%esp
   11caa:	8b 45 0c             	mov    0xc(%ebp),%eax
   11cad:	c1 e8 0c             	shr    $0xc,%eax
   11cb0:	89 45 fc             	mov    %eax,-0x4(%ebp)
   11cb3:	8b 55 0c             	mov    0xc(%ebp),%edx
   11cb6:	8b 45 10             	mov    0x10(%ebp),%eax
   11cb9:	01 d0                	add    %edx,%eax
   11cbb:	c1 e8 0c             	shr    $0xc,%eax
   11cbe:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11cc1:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11cc4:	3b 45 fc             	cmp    -0x4(%ebp),%eax
   11cc7:	73 07                	jae    11cd0 <access_ok+0x2c>
   11cc9:	b8 00 00 00 00       	mov    $0x0,%eax
   11cce:	eb 3d                	jmp    11d0d <access_ok+0x69>
   11cd0:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
   11cd4:	75 19                	jne    11cef <access_ok+0x4b>
   11cd6:	81 7d fc 07 01 00 00 	cmpl   $0x107,-0x4(%ebp)
   11cdd:	76 10                	jbe    11cef <access_ok+0x4b>
   11cdf:	81 7d f8 1c 01 00 00 	cmpl   $0x11c,-0x8(%ebp)
   11ce6:	77 07                	ja     11cef <access_ok+0x4b>
   11ce8:	b8 01 00 00 00       	mov    $0x1,%eax
   11ced:	eb 1e                	jmp    11d0d <access_ok+0x69>
   11cef:	81 7d fc 07 01 00 00 	cmpl   $0x107,-0x4(%ebp)
   11cf6:	76 10                	jbe    11d08 <access_ok+0x64>
   11cf8:	81 7d f8 24 01 00 00 	cmpl   $0x124,-0x8(%ebp)
   11cff:	77 07                	ja     11d08 <access_ok+0x64>
   11d01:	b8 01 00 00 00       	mov    $0x1,%eax
   11d06:	eb 05                	jmp    11d0d <access_ok+0x69>
   11d08:	b8 00 00 00 00       	mov    $0x0,%eax
   11d0d:	c9                   	leave  
   11d0e:	c3                   	ret    

00011d0f <INIT_LIST_HEAD>:
   11d0f:	55                   	push   %ebp
   11d10:	89 e5                	mov    %esp,%ebp
   11d12:	8b 45 08             	mov    0x8(%ebp),%eax
   11d15:	8b 55 08             	mov    0x8(%ebp),%edx
   11d18:	89 10                	mov    %edx,(%eax)
   11d1a:	8b 45 08             	mov    0x8(%ebp),%eax
   11d1d:	8b 55 08             	mov    0x8(%ebp),%edx
   11d20:	89 50 04             	mov    %edx,0x4(%eax)
   11d23:	90                   	nop
   11d24:	5d                   	pop    %ebp
   11d25:	c3                   	ret    

00011d26 <__list_add>:
   11d26:	55                   	push   %ebp
   11d27:	89 e5                	mov    %esp,%ebp
   11d29:	8b 45 10             	mov    0x10(%ebp),%eax
   11d2c:	8b 55 08             	mov    0x8(%ebp),%edx
   11d2f:	89 50 04             	mov    %edx,0x4(%eax)
   11d32:	8b 45 08             	mov    0x8(%ebp),%eax
   11d35:	8b 55 10             	mov    0x10(%ebp),%edx
   11d38:	89 10                	mov    %edx,(%eax)
   11d3a:	8b 45 08             	mov    0x8(%ebp),%eax
   11d3d:	8b 55 0c             	mov    0xc(%ebp),%edx
   11d40:	89 50 04             	mov    %edx,0x4(%eax)
   11d43:	8b 45 0c             	mov    0xc(%ebp),%eax
   11d46:	8b 55 08             	mov    0x8(%ebp),%edx
   11d49:	89 10                	mov    %edx,(%eax)
   11d4b:	90                   	nop
   11d4c:	5d                   	pop    %ebp
   11d4d:	c3                   	ret    

00011d4e <list_add>:
   11d4e:	55                   	push   %ebp
   11d4f:	89 e5                	mov    %esp,%ebp
   11d51:	8b 45 0c             	mov    0xc(%ebp),%eax
   11d54:	8b 00                	mov    (%eax),%eax
   11d56:	50                   	push   %eax
   11d57:	ff 75 0c             	push   0xc(%ebp)
   11d5a:	ff 75 08             	push   0x8(%ebp)
   11d5d:	e8 c4 ff ff ff       	call   11d26 <__list_add>
   11d62:	83 c4 0c             	add    $0xc,%esp
   11d65:	90                   	nop
   11d66:	c9                   	leave  
   11d67:	c3                   	ret    

00011d68 <list_add_tail>:
   11d68:	55                   	push   %ebp
   11d69:	89 e5                	mov    %esp,%ebp
   11d6b:	8b 45 0c             	mov    0xc(%ebp),%eax
   11d6e:	8b 40 04             	mov    0x4(%eax),%eax
   11d71:	ff 75 0c             	push   0xc(%ebp)
   11d74:	50                   	push   %eax
   11d75:	ff 75 08             	push   0x8(%ebp)
   11d78:	e8 a9 ff ff ff       	call   11d26 <__list_add>
   11d7d:	83 c4 0c             	add    $0xc,%esp
   11d80:	90                   	nop
   11d81:	c9                   	leave  
   11d82:	c3                   	ret    

00011d83 <__list_del>:
   11d83:	55                   	push   %ebp
   11d84:	89 e5                	mov    %esp,%ebp
   11d86:	8b 45 0c             	mov    0xc(%ebp),%eax
   11d89:	8b 55 08             	mov    0x8(%ebp),%edx
   11d8c:	89 50 04             	mov    %edx,0x4(%eax)
   11d8f:	8b 45 08             	mov    0x8(%ebp),%eax
   11d92:	8b 55 0c             	mov    0xc(%ebp),%edx
   11d95:	89 10                	mov    %edx,(%eax)
   11d97:	90                   	nop
   11d98:	5d                   	pop    %ebp
   11d99:	c3                   	ret    

00011d9a <list_del>:
   11d9a:	55                   	push   %ebp
   11d9b:	89 e5                	mov    %esp,%ebp
   11d9d:	8b 45 08             	mov    0x8(%ebp),%eax
   11da0:	8b 10                	mov    (%eax),%edx
   11da2:	8b 45 08             	mov    0x8(%ebp),%eax
   11da5:	8b 40 04             	mov    0x4(%eax),%eax
   11da8:	52                   	push   %edx
   11da9:	50                   	push   %eax
   11daa:	e8 d4 ff ff ff       	call   11d83 <__list_del>
   11daf:	83 c4 08             	add    $0x8,%esp
   11db2:	8b 45 08             	mov    0x8(%ebp),%eax
   11db5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   11dbb:	8b 45 08             	mov    0x8(%ebp),%eax
   11dbe:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   11dc5:	90                   	nop
   11dc6:	c9                   	leave  
   11dc7:	c3                   	ret    

00011dc8 <list_is_last>:
   11dc8:	55                   	push   %ebp
   11dc9:	89 e5                	mov    %esp,%ebp
   11dcb:	8b 45 08             	mov    0x8(%ebp),%eax
   11dce:	8b 00                	mov    (%eax),%eax
   11dd0:	39 45 0c             	cmp    %eax,0xc(%ebp)
   11dd3:	0f 94 c0             	sete   %al
   11dd6:	0f b6 c0             	movzbl %al,%eax
   11dd9:	5d                   	pop    %ebp
   11dda:	c3                   	ret    

00011ddb <list_empty>:
   11ddb:	55                   	push   %ebp
   11ddc:	89 e5                	mov    %esp,%ebp
   11dde:	8b 45 08             	mov    0x8(%ebp),%eax
   11de1:	8b 00                	mov    (%eax),%eax
   11de3:	39 45 08             	cmp    %eax,0x8(%ebp)
   11de6:	0f 94 c0             	sete   %al
   11de9:	0f b6 c0             	movzbl %al,%eax
   11dec:	5d                   	pop    %ebp
   11ded:	c3                   	ret    

00011dee <INIT_CIRCULAR_BUFFER>:
   11dee:	55                   	push   %ebp
   11def:	89 e5                	mov    %esp,%ebp
   11df1:	8b 45 08             	mov    0x8(%ebp),%eax
   11df4:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   11dfb:	8b 45 08             	mov    0x8(%ebp),%eax
   11dfe:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   11e05:	8b 45 08             	mov    0x8(%ebp),%eax
   11e08:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   11e0f:	90                   	nop
   11e10:	5d                   	pop    %ebp
   11e11:	c3                   	ret    

00011e12 <CIRCULAR_BUFFER_ADD>:
   11e12:	55                   	push   %ebp
   11e13:	89 e5                	mov    %esp,%ebp
   11e15:	83 ec 18             	sub    $0x18,%esp
   11e18:	8b 45 0c             	mov    0xc(%ebp),%eax
   11e1b:	88 45 f4             	mov    %al,-0xc(%ebp)
   11e1e:	83 ec 0c             	sub    $0xc,%esp
   11e21:	ff 75 08             	push   0x8(%ebp)
   11e24:	e8 aa 00 00 00       	call   11ed3 <CIRCULAR_BUFFER_IS_FULL>
   11e29:	83 c4 10             	add    $0x10,%esp
   11e2c:	85 c0                	test   %eax,%eax
   11e2e:	75 58                	jne    11e88 <CIRCULAR_BUFFER_ADD+0x76>
   11e30:	8b 45 08             	mov    0x8(%ebp),%eax
   11e33:	8b 40 04             	mov    0x4(%eax),%eax
   11e36:	8b 55 08             	mov    0x8(%ebp),%edx
   11e39:	0f b6 4d f4          	movzbl -0xc(%ebp),%ecx
   11e3d:	88 0c 02             	mov    %cl,(%edx,%eax,1)
   11e40:	8b 45 08             	mov    0x8(%ebp),%eax
   11e43:	8b 40 04             	mov    0x4(%eax),%eax
   11e46:	83 c0 01             	add    $0x1,%eax
   11e49:	99                   	cltd   
   11e4a:	c1 ea 1e             	shr    $0x1e,%edx
   11e4d:	01 d0                	add    %edx,%eax
   11e4f:	83 e0 03             	and    $0x3,%eax
   11e52:	29 d0                	sub    %edx,%eax
   11e54:	89 c2                	mov    %eax,%edx
   11e56:	8b 45 08             	mov    0x8(%ebp),%eax
   11e59:	89 50 04             	mov    %edx,0x4(%eax)
   11e5c:	8b 45 08             	mov    0x8(%ebp),%eax
   11e5f:	8b 50 04             	mov    0x4(%eax),%edx
   11e62:	8b 45 08             	mov    0x8(%ebp),%eax
   11e65:	8b 40 08             	mov    0x8(%eax),%eax
   11e68:	39 c2                	cmp    %eax,%edx
   11e6a:	0f 94 c0             	sete   %al
   11e6d:	0f b6 d0             	movzbl %al,%edx
   11e70:	8b 45 08             	mov    0x8(%ebp),%eax
   11e73:	89 50 0c             	mov    %edx,0xc(%eax)
   11e76:	83 ec 0c             	sub    $0xc,%esp
   11e79:	68 88 47 01 00       	push   $0x14788
   11e7e:	e8 e9 02 00 00       	call   1216c <sem_post>
   11e83:	83 c4 10             	add    $0x10,%esp
   11e86:	eb 01                	jmp    11e89 <CIRCULAR_BUFFER_ADD+0x77>
   11e88:	90                   	nop
   11e89:	c9                   	leave  
   11e8a:	c3                   	ret    

00011e8b <CIRCULAR_BUFFER_READ>:
   11e8b:	55                   	push   %ebp
   11e8c:	89 e5                	mov    %esp,%ebp
   11e8e:	83 ec 18             	sub    $0x18,%esp
   11e91:	83 ec 0c             	sub    $0xc,%esp
   11e94:	68 88 47 01 00       	push   $0x14788
   11e99:	e8 1c 02 00 00       	call   120ba <sem_wait>
   11e9e:	83 c4 10             	add    $0x10,%esp
   11ea1:	8b 45 08             	mov    0x8(%ebp),%eax
   11ea4:	8b 40 08             	mov    0x8(%eax),%eax
   11ea7:	8b 55 08             	mov    0x8(%ebp),%edx
   11eaa:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
   11eae:	88 45 f7             	mov    %al,-0x9(%ebp)
   11eb1:	8b 45 08             	mov    0x8(%ebp),%eax
   11eb4:	8b 40 08             	mov    0x8(%eax),%eax
   11eb7:	83 c0 01             	add    $0x1,%eax
   11eba:	99                   	cltd   
   11ebb:	c1 ea 1e             	shr    $0x1e,%edx
   11ebe:	01 d0                	add    %edx,%eax
   11ec0:	83 e0 03             	and    $0x3,%eax
   11ec3:	29 d0                	sub    %edx,%eax
   11ec5:	89 c2                	mov    %eax,%edx
   11ec7:	8b 45 08             	mov    0x8(%ebp),%eax
   11eca:	89 50 08             	mov    %edx,0x8(%eax)
   11ecd:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
   11ed1:	c9                   	leave  
   11ed2:	c3                   	ret    

00011ed3 <CIRCULAR_BUFFER_IS_FULL>:
   11ed3:	55                   	push   %ebp
   11ed4:	89 e5                	mov    %esp,%ebp
   11ed6:	8b 45 08             	mov    0x8(%ebp),%eax
   11ed9:	8b 50 04             	mov    0x4(%eax),%edx
   11edc:	8b 45 08             	mov    0x8(%ebp),%eax
   11edf:	8b 40 08             	mov    0x8(%eax),%eax
   11ee2:	39 c2                	cmp    %eax,%edx
   11ee4:	75 11                	jne    11ef7 <CIRCULAR_BUFFER_IS_FULL+0x24>
   11ee6:	8b 45 08             	mov    0x8(%ebp),%eax
   11ee9:	8b 40 0c             	mov    0xc(%eax),%eax
   11eec:	85 c0                	test   %eax,%eax
   11eee:	74 07                	je     11ef7 <CIRCULAR_BUFFER_IS_FULL+0x24>
   11ef0:	b8 01 00 00 00       	mov    $0x1,%eax
   11ef5:	eb 05                	jmp    11efc <CIRCULAR_BUFFER_IS_FULL+0x29>
   11ef7:	b8 00 00 00 00       	mov    $0x0,%eax
   11efc:	5d                   	pop    %ebp
   11efd:	c3                   	ret    

00011efe <CIRCULAR_BUFFER_IS_EMPTY>:
   11efe:	55                   	push   %ebp
   11eff:	89 e5                	mov    %esp,%ebp
   11f01:	8b 45 08             	mov    0x8(%ebp),%eax
   11f04:	8b 50 04             	mov    0x4(%eax),%edx
   11f07:	8b 45 08             	mov    0x8(%ebp),%eax
   11f0a:	8b 40 08             	mov    0x8(%eax),%eax
   11f0d:	39 c2                	cmp    %eax,%edx
   11f0f:	75 11                	jne    11f22 <CIRCULAR_BUFFER_IS_EMPTY+0x24>
   11f11:	8b 45 08             	mov    0x8(%ebp),%eax
   11f14:	8b 40 0c             	mov    0xc(%eax),%eax
   11f17:	85 c0                	test   %eax,%eax
   11f19:	75 07                	jne    11f22 <CIRCULAR_BUFFER_IS_EMPTY+0x24>
   11f1b:	b8 01 00 00 00       	mov    $0x1,%eax
   11f20:	eb 05                	jmp    11f27 <CIRCULAR_BUFFER_IS_EMPTY+0x29>
   11f22:	b8 00 00 00 00       	mov    $0x0,%eax
   11f27:	5d                   	pop    %ebp
   11f28:	c3                   	ret    

00011f29 <CIRCULAR_BUFFER_CLEAR>:
   11f29:	55                   	push   %ebp
   11f2a:	89 e5                	mov    %esp,%ebp
   11f2c:	8b 45 08             	mov    0x8(%ebp),%eax
   11f2f:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   11f36:	8b 45 08             	mov    0x8(%ebp),%eax
   11f39:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   11f40:	8b 45 08             	mov    0x8(%ebp),%eax
   11f43:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   11f4a:	90                   	nop
   11f4b:	5d                   	pop    %ebp
   11f4c:	c3                   	ret    

00011f4d <CIRCULAR_BUFFER_DUMP>:
   11f4d:	55                   	push   %ebp
   11f4e:	89 e5                	mov    %esp,%ebp
   11f50:	83 ec 10             	sub    $0x10,%esp
   11f53:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   11f5a:	8b 45 08             	mov    0x8(%ebp),%eax
   11f5d:	8b 40 08             	mov    0x8(%eax),%eax
   11f60:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11f63:	eb 2e                	jmp    11f93 <CIRCULAR_BUFFER_DUMP+0x46>
   11f65:	8b 55 08             	mov    0x8(%ebp),%edx
   11f68:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11f6b:	01 d0                	add    %edx,%eax
   11f6d:	0f b6 00             	movzbl (%eax),%eax
   11f70:	8b 55 fc             	mov    -0x4(%ebp),%edx
   11f73:	81 c2 90 58 01 00    	add    $0x15890,%edx
   11f79:	88 02                	mov    %al,(%edx)
   11f7b:	8b 45 f8             	mov    -0x8(%ebp),%eax
   11f7e:	83 c0 01             	add    $0x1,%eax
   11f81:	99                   	cltd   
   11f82:	c1 ea 1e             	shr    $0x1e,%edx
   11f85:	01 d0                	add    %edx,%eax
   11f87:	83 e0 03             	and    $0x3,%eax
   11f8a:	29 d0                	sub    %edx,%eax
   11f8c:	89 45 f8             	mov    %eax,-0x8(%ebp)
   11f8f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   11f93:	8b 45 08             	mov    0x8(%ebp),%eax
   11f96:	8b 40 04             	mov    0x4(%eax),%eax
   11f99:	39 45 f8             	cmp    %eax,-0x8(%ebp)
   11f9c:	75 c7                	jne    11f65 <CIRCULAR_BUFFER_DUMP+0x18>
   11f9e:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
   11fa2:	75 0a                	jne    11fae <CIRCULAR_BUFFER_DUMP+0x61>
   11fa4:	8b 45 08             	mov    0x8(%ebp),%eax
   11fa7:	8b 40 0c             	mov    0xc(%eax),%eax
   11faa:	85 c0                	test   %eax,%eax
   11fac:	75 b7                	jne    11f65 <CIRCULAR_BUFFER_DUMP+0x18>
   11fae:	8b 45 fc             	mov    -0x4(%ebp),%eax
   11fb1:	05 90 58 01 00       	add    $0x15890,%eax
   11fb6:	c6 00 00             	movb   $0x0,(%eax)
   11fb9:	b8 90 58 01 00       	mov    $0x15890,%eax
   11fbe:	c9                   	leave  
   11fbf:	c3                   	ret    

00011fc0 <writeMSR>:
   11fc0:	55                   	push   %ebp
   11fc1:	89 e5                	mov    %esp,%ebp
   11fc3:	8b 4d 08             	mov    0x8(%ebp),%ecx
   11fc6:	8b 45 0c             	mov    0xc(%ebp),%eax
   11fc9:	8b 55 10             	mov    0x10(%ebp),%edx
   11fcc:	0f 30                	wrmsr  
   11fce:	5d                   	pop    %ebp
   11fcf:	c3                   	ret    

00011fd0 <get_eflags>:
   11fd0:	9c                   	pushf  
   11fd1:	58                   	pop    %eax
   11fd2:	c3                   	ret    

00011fd3 <set_eflags>:
   11fd3:	6a 00                	push   $0x0
   11fd5:	9d                   	popf   
   11fd6:	c3                   	ret    

00011fd7 <set_idt_reg>:
   11fd7:	55                   	push   %ebp
   11fd8:	89 e5                	mov    %esp,%ebp
   11fda:	8b 45 08             	mov    0x8(%ebp),%eax
   11fdd:	0f 01 18             	lidtl  (%eax)
   11fe0:	5d                   	pop    %ebp
   11fe1:	c3                   	ret    

00011fe2 <set_gdt_reg>:
   11fe2:	55                   	push   %ebp
   11fe3:	89 e5                	mov    %esp,%ebp
   11fe5:	8b 45 08             	mov    0x8(%ebp),%eax
   11fe8:	0f 01 10             	lgdtl  (%eax)
   11feb:	5d                   	pop    %ebp
   11fec:	c3                   	ret    

00011fed <set_ldt_reg>:
   11fed:	55                   	push   %ebp
   11fee:	89 e5                	mov    %esp,%ebp
   11ff0:	8b 45 08             	mov    0x8(%ebp),%eax
   11ff3:	0f 00 d0             	lldt   %ax
   11ff6:	5d                   	pop    %ebp
   11ff7:	c3                   	ret    

00011ff8 <set_task_reg>:
   11ff8:	55                   	push   %ebp
   11ff9:	89 e5                	mov    %esp,%ebp
   11ffb:	8b 45 08             	mov    0x8(%ebp),%eax
   11ffe:	0f 00 d8             	ltr    %ax
   12001:	5d                   	pop    %ebp
   12002:	c3                   	ret    

00012003 <return_gate>:
   12003:	55                   	push   %ebp
   12004:	89 e5                	mov    %esp,%ebp
   12006:	8b 45 08             	mov    0x8(%ebp),%eax
   12009:	8e c0                	mov    %eax,%es
   1200b:	8e d8                	mov    %eax,%ds
   1200d:	8b 45 10             	mov    0x10(%ebp),%eax
   12010:	83 e8 10             	sub    $0x10,%eax
   12013:	8b 0d ec 3e 01 00    	mov    0x13eec,%ecx
   12019:	8b 09                	mov    (%ecx),%ecx
   1201b:	89 48 0c             	mov    %ecx,0xc(%eax)
   1201e:	ff 75 0c             	push   0xc(%ebp)
   12021:	50                   	push   %eax
   12022:	ff 75 14             	push   0x14(%ebp)
   12025:	ff 75 18             	push   0x18(%ebp)
   12028:	cb                   	lret   

00012029 <enable_int>:
   12029:	55                   	push   %ebp
   1202a:	89 e5                	mov    %esp,%ebp
   1202c:	b0 fc                	mov    $0xfc,%al
   1202e:	e6 21                	out    %al,$0x21
   12030:	e8 03 00 00 00       	call   12038 <delay>
   12035:	fb                   	sti    
   12036:	5d                   	pop    %ebp
   12037:	c3                   	ret    

00012038 <delay>:
   12038:	eb 00                	jmp    1203a <a>

0001203a <a>:
   1203a:	c3                   	ret    

0001203b <inb>:
   1203b:	55                   	push   %ebp
   1203c:	89 e5                	mov    %esp,%ebp
   1203e:	8b 55 08             	mov    0x8(%ebp),%edx
   12041:	ec                   	in     (%dx),%al
   12042:	5d                   	pop    %ebp
   12043:	c3                   	ret    

00012044 <bochs_out>:
   12044:	55                   	push   %ebp
   12045:	89 e5                	mov    %esp,%ebp
   12047:	8b 45 08             	mov    0x8(%ebp),%eax
   1204a:	e6 e9                	out    %al,$0xe9
   1204c:	5d                   	pop    %ebp
   1204d:	c3                   	ret    

0001204e <set_cr3>:
   1204e:	55                   	push   %ebp
   1204f:	89 e5                	mov    %esp,%ebp
   12051:	8b 45 08             	mov    0x8(%ebp),%eax
   12054:	0f 22 d8             	mov    %eax,%cr3
   12057:	5d                   	pop    %ebp
   12058:	c3                   	ret    

00012059 <read_cr0>:
   12059:	0f 20 c0             	mov    %cr0,%eax
   1205c:	c3                   	ret    

0001205d <write_cr0>:
   1205d:	55                   	push   %ebp
   1205e:	89 e5                	mov    %esp,%ebp
   12060:	8b 45 08             	mov    0x8(%ebp),%eax
   12063:	0f 22 c0             	mov    %eax,%cr0
   12066:	5d                   	pop    %ebp
   12067:	c3                   	ret    

00012068 <__sti>:
   12068:	fb                   	sti    
   12069:	c3                   	ret    

0001206a <current>:
   1206a:	89 e0                	mov    %esp,%eax
   1206c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   12071:	c3                   	ret    

00012072 <set_seg_regs>:
   12072:	55                   	push   %ebp
   12073:	89 e5                	mov    %esp,%ebp
   12075:	8b 45 08             	mov    0x8(%ebp),%eax
   12078:	fc                   	cld    
   12079:	8e d8                	mov    %eax,%ds
   1207b:	8e c0                	mov    %eax,%es
   1207d:	8e e0                	mov    %eax,%fs
   1207f:	8e e8                	mov    %eax,%gs
   12081:	8b 45 0c             	mov    0xc(%ebp),%eax
   12084:	8b 4d 10             	mov    0x10(%ebp),%ecx
   12087:	83 e9 10             	sub    $0x10,%ecx
   1208a:	8b 55 04             	mov    0x4(%ebp),%edx
   1208d:	8e d0                	mov    %eax,%ss
   1208f:	89 cc                	mov    %ecx,%esp
   12091:	52                   	push   %edx
   12092:	c3                   	ret    

00012093 <sem_init>:
   12093:	55                   	push   %ebp
   12094:	89 e5                	mov    %esp,%ebp
   12096:	83 ec 08             	sub    $0x8,%esp
   12099:	8b 45 08             	mov    0x8(%ebp),%eax
   1209c:	8b 55 0c             	mov    0xc(%ebp),%edx
   1209f:	89 10                	mov    %edx,(%eax)
   120a1:	8b 45 08             	mov    0x8(%ebp),%eax
   120a4:	83 c0 04             	add    $0x4,%eax
   120a7:	83 ec 0c             	sub    $0xc,%esp
   120aa:	50                   	push   %eax
   120ab:	e8 5f fc ff ff       	call   11d0f <INIT_LIST_HEAD>
   120b0:	83 c4 10             	add    $0x10,%esp
   120b3:	b8 00 00 00 00       	mov    $0x0,%eax
   120b8:	c9                   	leave  
   120b9:	c3                   	ret    

000120ba <sem_wait>:
   120ba:	55                   	push   %ebp
   120bb:	89 e5                	mov    %esp,%ebp
   120bd:	83 ec 48             	sub    $0x48,%esp
   120c0:	8b 45 08             	mov    0x8(%ebp),%eax
   120c3:	8b 00                	mov    (%eax),%eax
   120c5:	8d 50 ff             	lea    -0x1(%eax),%edx
   120c8:	8b 45 08             	mov    0x8(%ebp),%eax
   120cb:	89 10                	mov    %edx,(%eax)
   120cd:	8b 45 08             	mov    0x8(%ebp),%eax
   120d0:	8b 00                	mov    (%eax),%eax
   120d2:	85 c0                	test   %eax,%eax
   120d4:	0f 89 8b 00 00 00    	jns    12165 <sem_wait+0xab>
   120da:	e8 8b ff ff ff       	call   1206a <current>
   120df:	8b 10                	mov    (%eax),%edx
   120e1:	89 55 bc             	mov    %edx,-0x44(%ebp)
   120e4:	8b 50 04             	mov    0x4(%eax),%edx
   120e7:	89 55 c0             	mov    %edx,-0x40(%ebp)
   120ea:	8b 50 08             	mov    0x8(%eax),%edx
   120ed:	89 55 c4             	mov    %edx,-0x3c(%ebp)
   120f0:	8b 50 0c             	mov    0xc(%eax),%edx
   120f3:	89 55 c8             	mov    %edx,-0x38(%ebp)
   120f6:	8b 50 10             	mov    0x10(%eax),%edx
   120f9:	89 55 cc             	mov    %edx,-0x34(%ebp)
   120fc:	8b 50 14             	mov    0x14(%eax),%edx
   120ff:	89 55 d0             	mov    %edx,-0x30(%ebp)
   12102:	8b 50 18             	mov    0x18(%eax),%edx
   12105:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   12108:	8b 50 1c             	mov    0x1c(%eax),%edx
   1210b:	89 55 d8             	mov    %edx,-0x28(%ebp)
   1210e:	8b 50 20             	mov    0x20(%eax),%edx
   12111:	89 55 dc             	mov    %edx,-0x24(%ebp)
   12114:	8b 50 24             	mov    0x24(%eax),%edx
   12117:	89 55 e0             	mov    %edx,-0x20(%ebp)
   1211a:	8b 50 28             	mov    0x28(%eax),%edx
   1211d:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   12120:	8b 50 2c             	mov    0x2c(%eax),%edx
   12123:	89 55 e8             	mov    %edx,-0x18(%ebp)
   12126:	8b 50 30             	mov    0x30(%eax),%edx
   12129:	89 55 ec             	mov    %edx,-0x14(%ebp)
   1212c:	8b 40 34             	mov    0x34(%eax),%eax
   1212f:	89 45 f0             	mov    %eax,-0x10(%ebp)
   12132:	e8 33 ff ff ff       	call   1206a <current>
   12137:	83 c0 08             	add    $0x8,%eax
   1213a:	89 45 f4             	mov    %eax,-0xc(%ebp)
   1213d:	83 ec 0c             	sub    $0xc,%esp
   12140:	ff 75 f4             	push   -0xc(%ebp)
   12143:	e8 52 fc ff ff       	call   11d9a <list_del>
   12148:	83 c4 10             	add    $0x10,%esp
   1214b:	8b 45 08             	mov    0x8(%ebp),%eax
   1214e:	83 c0 04             	add    $0x4,%eax
   12151:	83 ec 08             	sub    $0x8,%esp
   12154:	50                   	push   %eax
   12155:	ff 75 f4             	push   -0xc(%ebp)
   12158:	e8 0b fc ff ff       	call   11d68 <list_add_tail>
   1215d:	83 c4 10             	add    $0x10,%esp
   12160:	e8 64 eb ff ff       	call   10cc9 <sched_next_rr>
   12165:	b8 00 00 00 00       	mov    $0x0,%eax
   1216a:	c9                   	leave  
   1216b:	c3                   	ret    

0001216c <sem_post>:
   1216c:	55                   	push   %ebp
   1216d:	89 e5                	mov    %esp,%ebp
   1216f:	83 ec 18             	sub    $0x18,%esp
   12172:	8b 45 08             	mov    0x8(%ebp),%eax
   12175:	8b 00                	mov    (%eax),%eax
   12177:	8d 50 01             	lea    0x1(%eax),%edx
   1217a:	8b 45 08             	mov    0x8(%ebp),%eax
   1217d:	89 10                	mov    %edx,(%eax)
   1217f:	8b 45 08             	mov    0x8(%ebp),%eax
   12182:	8b 00                	mov    (%eax),%eax
   12184:	85 c0                	test   %eax,%eax
   12186:	7f 40                	jg     121c8 <sem_post+0x5c>
   12188:	8b 45 08             	mov    0x8(%ebp),%eax
   1218b:	83 c0 04             	add    $0x4,%eax
   1218e:	83 ec 0c             	sub    $0xc,%esp
   12191:	50                   	push   %eax
   12192:	e8 44 fc ff ff       	call   11ddb <list_empty>
   12197:	83 c4 10             	add    $0x10,%esp
   1219a:	85 c0                	test   %eax,%eax
   1219c:	75 2a                	jne    121c8 <sem_post+0x5c>
   1219e:	8b 45 08             	mov    0x8(%ebp),%eax
   121a1:	8b 40 04             	mov    0x4(%eax),%eax
   121a4:	89 45 f4             	mov    %eax,-0xc(%ebp)
   121a7:	83 ec 0c             	sub    $0xc,%esp
   121aa:	ff 75 f4             	push   -0xc(%ebp)
   121ad:	e8 e8 fb ff ff       	call   11d9a <list_del>
   121b2:	83 c4 10             	add    $0x10,%esp
   121b5:	83 ec 08             	sub    $0x8,%esp
   121b8:	68 a0 47 01 00       	push   $0x147a0
   121bd:	ff 75 f4             	push   -0xc(%ebp)
   121c0:	e8 a3 fb ff ff       	call   11d68 <list_add_tail>
   121c5:	83 c4 10             	add    $0x10,%esp
   121c8:	b8 00 00 00 00       	mov    $0x0,%eax
   121cd:	c9                   	leave  
   121ce:	c3                   	ret    

000121cf <exception_msg>:
   121cf:	55                   	push   %ebp
   121d0:	89 e5                	mov    %esp,%ebp
   121d2:	83 ec 08             	sub    $0x8,%esp
   121d5:	83 ec 0c             	sub    $0xc,%esp
   121d8:	ff 75 08             	push   0x8(%ebp)
   121db:	e8 c6 e5 ff ff       	call   107a6 <printk>
   121e0:	83 c4 10             	add    $0x10,%esp
   121e3:	83 ec 0c             	sub    $0xc,%esp
   121e6:	68 a4 2d 01 00       	push   $0x12da4
   121eb:	e8 b6 e5 ff ff       	call   107a6 <printk>
   121f0:	83 c4 10             	add    $0x10,%esp
   121f3:	eb fe                	jmp    121f3 <exception_msg+0x24>

000121f5 <divide_error_routine>:
   121f5:	55                   	push   %ebp
   121f6:	89 e5                	mov    %esp,%ebp
   121f8:	83 ec 08             	sub    $0x8,%esp
   121fb:	83 ec 0c             	sub    $0xc,%esp
   121fe:	68 d3 2f 01 00       	push   $0x12fd3
   12203:	e8 c7 ff ff ff       	call   121cf <exception_msg>
   12208:	83 c4 10             	add    $0x10,%esp
   1220b:	90                   	nop
   1220c:	c9                   	leave  
   1220d:	c3                   	ret    

0001220e <debug_routine>:
   1220e:	55                   	push   %ebp
   1220f:	89 e5                	mov    %esp,%ebp
   12211:	83 ec 08             	sub    $0x8,%esp
   12214:	83 ec 0c             	sub    $0xc,%esp
   12217:	68 e8 2f 01 00       	push   $0x12fe8
   1221c:	e8 ae ff ff ff       	call   121cf <exception_msg>
   12221:	83 c4 10             	add    $0x10,%esp
   12224:	90                   	nop
   12225:	c9                   	leave  
   12226:	c3                   	ret    

00012227 <nm1_routine>:
   12227:	55                   	push   %ebp
   12228:	89 e5                	mov    %esp,%ebp
   1222a:	83 ec 08             	sub    $0x8,%esp
   1222d:	83 ec 0c             	sub    $0xc,%esp
   12230:	68 f6 2f 01 00       	push   $0x12ff6
   12235:	e8 95 ff ff ff       	call   121cf <exception_msg>
   1223a:	83 c4 10             	add    $0x10,%esp
   1223d:	90                   	nop
   1223e:	c9                   	leave  
   1223f:	c3                   	ret    

00012240 <breakpoint_routine>:
   12240:	55                   	push   %ebp
   12241:	89 e5                	mov    %esp,%ebp
   12243:	83 ec 08             	sub    $0x8,%esp
   12246:	83 ec 0c             	sub    $0xc,%esp
   12249:	68 02 30 01 00       	push   $0x13002
   1224e:	e8 7c ff ff ff       	call   121cf <exception_msg>
   12253:	83 c4 10             	add    $0x10,%esp
   12256:	90                   	nop
   12257:	c9                   	leave  
   12258:	c3                   	ret    

00012259 <overflow_routine>:
   12259:	55                   	push   %ebp
   1225a:	89 e5                	mov    %esp,%ebp
   1225c:	83 ec 08             	sub    $0x8,%esp
   1225f:	83 ec 0c             	sub    $0xc,%esp
   12262:	68 15 30 01 00       	push   $0x13015
   12267:	e8 63 ff ff ff       	call   121cf <exception_msg>
   1226c:	83 c4 10             	add    $0x10,%esp
   1226f:	90                   	nop
   12270:	c9                   	leave  
   12271:	c3                   	ret    

00012272 <bounds_check_routine>:
   12272:	55                   	push   %ebp
   12273:	89 e5                	mov    %esp,%ebp
   12275:	83 ec 08             	sub    $0x8,%esp
   12278:	83 ec 0c             	sub    $0xc,%esp
   1227b:	68 26 30 01 00       	push   $0x13026
   12280:	e8 4a ff ff ff       	call   121cf <exception_msg>
   12285:	83 c4 10             	add    $0x10,%esp
   12288:	90                   	nop
   12289:	c9                   	leave  
   1228a:	c3                   	ret    

0001228b <invalid_opcode_routine>:
   1228b:	55                   	push   %ebp
   1228c:	89 e5                	mov    %esp,%ebp
   1228e:	83 ec 08             	sub    $0x8,%esp
   12291:	83 ec 0c             	sub    $0xc,%esp
   12294:	68 3b 30 01 00       	push   $0x1303b
   12299:	e8 31 ff ff ff       	call   121cf <exception_msg>
   1229e:	83 c4 10             	add    $0x10,%esp
   122a1:	90                   	nop
   122a2:	c9                   	leave  
   122a3:	c3                   	ret    

000122a4 <device_not_available_routine>:
   122a4:	55                   	push   %ebp
   122a5:	89 e5                	mov    %esp,%ebp
   122a7:	83 ec 08             	sub    $0x8,%esp
   122aa:	83 ec 0c             	sub    $0xc,%esp
   122ad:	68 52 30 01 00       	push   $0x13052
   122b2:	e8 18 ff ff ff       	call   121cf <exception_msg>
   122b7:	83 c4 10             	add    $0x10,%esp
   122ba:	90                   	nop
   122bb:	c9                   	leave  
   122bc:	c3                   	ret    

000122bd <double_fault_routine>:
   122bd:	55                   	push   %ebp
   122be:	89 e5                	mov    %esp,%ebp
   122c0:	83 ec 08             	sub    $0x8,%esp
   122c3:	83 ec 0c             	sub    $0xc,%esp
   122c6:	68 6f 30 01 00       	push   $0x1306f
   122cb:	e8 ff fe ff ff       	call   121cf <exception_msg>
   122d0:	83 c4 10             	add    $0x10,%esp
   122d3:	90                   	nop
   122d4:	c9                   	leave  
   122d5:	c3                   	ret    

000122d6 <coprocessor_segment_overrun_routine>:
   122d6:	55                   	push   %ebp
   122d7:	89 e5                	mov    %esp,%ebp
   122d9:	83 ec 08             	sub    $0x8,%esp
   122dc:	83 ec 0c             	sub    $0xc,%esp
   122df:	68 80 30 01 00       	push   $0x13080
   122e4:	e8 e6 fe ff ff       	call   121cf <exception_msg>
   122e9:	83 c4 10             	add    $0x10,%esp
   122ec:	90                   	nop
   122ed:	c9                   	leave  
   122ee:	c3                   	ret    

000122ef <invalid_tss_routine>:
   122ef:	55                   	push   %ebp
   122f0:	89 e5                	mov    %esp,%ebp
   122f2:	83 ec 08             	sub    $0x8,%esp
   122f5:	83 ec 0c             	sub    $0xc,%esp
   122f8:	68 a4 30 01 00       	push   $0x130a4
   122fd:	e8 cd fe ff ff       	call   121cf <exception_msg>
   12302:	83 c4 10             	add    $0x10,%esp
   12305:	90                   	nop
   12306:	c9                   	leave  
   12307:	c3                   	ret    

00012308 <segment_not_present_routine>:
   12308:	55                   	push   %ebp
   12309:	89 e5                	mov    %esp,%ebp
   1230b:	83 ec 08             	sub    $0x8,%esp
   1230e:	83 ec 0c             	sub    $0xc,%esp
   12311:	68 b8 30 01 00       	push   $0x130b8
   12316:	e8 b4 fe ff ff       	call   121cf <exception_msg>
   1231b:	83 c4 10             	add    $0x10,%esp
   1231e:	90                   	nop
   1231f:	c9                   	leave  
   12320:	c3                   	ret    

00012321 <stack_exception_routine>:
   12321:	55                   	push   %ebp
   12322:	89 e5                	mov    %esp,%ebp
   12324:	83 ec 08             	sub    $0x8,%esp
   12327:	83 ec 0c             	sub    $0xc,%esp
   1232a:	68 d4 30 01 00       	push   $0x130d4
   1232f:	e8 9b fe ff ff       	call   121cf <exception_msg>
   12334:	83 c4 10             	add    $0x10,%esp
   12337:	90                   	nop
   12338:	c9                   	leave  
   12339:	c3                   	ret    

0001233a <general_protection_routine>:
   1233a:	55                   	push   %ebp
   1233b:	89 e5                	mov    %esp,%ebp
   1233d:	83 ec 08             	sub    $0x8,%esp
   12340:	83 ec 0c             	sub    $0xc,%esp
   12343:	68 ec 30 01 00       	push   $0x130ec
   12348:	e8 82 fe ff ff       	call   121cf <exception_msg>
   1234d:	83 c4 10             	add    $0x10,%esp
   12350:	90                   	nop
   12351:	c9                   	leave  
   12352:	c3                   	ret    

00012353 <page_fault_routine>:
   12353:	55                   	push   %ebp
   12354:	89 e5                	mov    %esp,%ebp
   12356:	83 ec 08             	sub    $0x8,%esp
   12359:	83 ec 0c             	sub    $0xc,%esp
   1235c:	68 07 31 01 00       	push   $0x13107
   12361:	e8 69 fe ff ff       	call   121cf <exception_msg>
   12366:	83 c4 10             	add    $0x10,%esp
   12369:	90                   	nop
   1236a:	c9                   	leave  
   1236b:	c3                   	ret    

0001236c <intel_reserved_routine>:
   1236c:	55                   	push   %ebp
   1236d:	89 e5                	mov    %esp,%ebp
   1236f:	83 ec 08             	sub    $0x8,%esp
   12372:	83 ec 0c             	sub    $0xc,%esp
   12375:	68 14 31 01 00       	push   $0x13114
   1237a:	e8 50 fe ff ff       	call   121cf <exception_msg>
   1237f:	83 c4 10             	add    $0x10,%esp
   12382:	90                   	nop
   12383:	c9                   	leave  
   12384:	c3                   	ret    

00012385 <floating_point_error_routine>:
   12385:	55                   	push   %ebp
   12386:	89 e5                	mov    %esp,%ebp
   12388:	83 ec 08             	sub    $0x8,%esp
   1238b:	83 ec 0c             	sub    $0xc,%esp
   1238e:	68 2b 31 01 00       	push   $0x1312b
   12393:	e8 37 fe ff ff       	call   121cf <exception_msg>
   12398:	83 c4 10             	add    $0x10,%esp
   1239b:	90                   	nop
   1239c:	c9                   	leave  
   1239d:	c3                   	ret    

0001239e <alignment_check_routine>:
   1239e:	55                   	push   %ebp
   1239f:	89 e5                	mov    %esp,%ebp
   123a1:	83 ec 08             	sub    $0x8,%esp
   123a4:	83 ec 0c             	sub    $0xc,%esp
   123a7:	68 42 31 01 00       	push   $0x13142
   123ac:	e8 1e fe ff ff       	call   121cf <exception_msg>
   123b1:	83 c4 10             	add    $0x10,%esp
   123b4:	90                   	nop
   123b5:	c9                   	leave  
   123b6:	c3                   	ret    

000123b7 <set_handlers>:
   123b7:	55                   	push   %ebp
   123b8:	89 e5                	mov    %esp,%ebp
   123ba:	83 ec 08             	sub    $0x8,%esp
   123bd:	83 ec 04             	sub    $0x4,%esp
   123c0:	6a 00                	push   $0x0
   123c2:	68 28 25 01 00       	push   $0x12528
   123c7:	6a 00                	push   $0x0
   123c9:	e8 bc dd ff ff       	call   1018a <setInterruptHandler>
   123ce:	83 c4 10             	add    $0x10,%esp
   123d1:	83 ec 04             	sub    $0x4,%esp
   123d4:	6a 00                	push   $0x0
   123d6:	68 2d 25 01 00       	push   $0x1252d
   123db:	6a 01                	push   $0x1
   123dd:	e8 a8 dd ff ff       	call   1018a <setInterruptHandler>
   123e2:	83 c4 10             	add    $0x10,%esp
   123e5:	83 ec 04             	sub    $0x4,%esp
   123e8:	6a 00                	push   $0x0
   123ea:	68 32 25 01 00       	push   $0x12532
   123ef:	6a 02                	push   $0x2
   123f1:	e8 94 dd ff ff       	call   1018a <setInterruptHandler>
   123f6:	83 c4 10             	add    $0x10,%esp
   123f9:	83 ec 04             	sub    $0x4,%esp
   123fc:	6a 00                	push   $0x0
   123fe:	68 37 25 01 00       	push   $0x12537
   12403:	6a 03                	push   $0x3
   12405:	e8 80 dd ff ff       	call   1018a <setInterruptHandler>
   1240a:	83 c4 10             	add    $0x10,%esp
   1240d:	83 ec 04             	sub    $0x4,%esp
   12410:	6a 00                	push   $0x0
   12412:	68 3c 25 01 00       	push   $0x1253c
   12417:	6a 04                	push   $0x4
   12419:	e8 6c dd ff ff       	call   1018a <setInterruptHandler>
   1241e:	83 c4 10             	add    $0x10,%esp
   12421:	83 ec 04             	sub    $0x4,%esp
   12424:	6a 00                	push   $0x0
   12426:	68 41 25 01 00       	push   $0x12541
   1242b:	6a 05                	push   $0x5
   1242d:	e8 58 dd ff ff       	call   1018a <setInterruptHandler>
   12432:	83 c4 10             	add    $0x10,%esp
   12435:	83 ec 04             	sub    $0x4,%esp
   12438:	6a 00                	push   $0x0
   1243a:	68 46 25 01 00       	push   $0x12546
   1243f:	6a 06                	push   $0x6
   12441:	e8 44 dd ff ff       	call   1018a <setInterruptHandler>
   12446:	83 c4 10             	add    $0x10,%esp
   12449:	83 ec 04             	sub    $0x4,%esp
   1244c:	6a 00                	push   $0x0
   1244e:	68 4b 25 01 00       	push   $0x1254b
   12453:	6a 07                	push   $0x7
   12455:	e8 30 dd ff ff       	call   1018a <setInterruptHandler>
   1245a:	83 c4 10             	add    $0x10,%esp
   1245d:	83 ec 04             	sub    $0x4,%esp
   12460:	6a 00                	push   $0x0
   12462:	68 50 25 01 00       	push   $0x12550
   12467:	6a 08                	push   $0x8
   12469:	e8 1c dd ff ff       	call   1018a <setInterruptHandler>
   1246e:	83 c4 10             	add    $0x10,%esp
   12471:	83 ec 04             	sub    $0x4,%esp
   12474:	6a 00                	push   $0x0
   12476:	68 55 25 01 00       	push   $0x12555
   1247b:	6a 09                	push   $0x9
   1247d:	e8 08 dd ff ff       	call   1018a <setInterruptHandler>
   12482:	83 c4 10             	add    $0x10,%esp
   12485:	83 ec 04             	sub    $0x4,%esp
   12488:	6a 00                	push   $0x0
   1248a:	68 5a 25 01 00       	push   $0x1255a
   1248f:	6a 0a                	push   $0xa
   12491:	e8 f4 dc ff ff       	call   1018a <setInterruptHandler>
   12496:	83 c4 10             	add    $0x10,%esp
   12499:	83 ec 04             	sub    $0x4,%esp
   1249c:	6a 00                	push   $0x0
   1249e:	68 5f 25 01 00       	push   $0x1255f
   124a3:	6a 0b                	push   $0xb
   124a5:	e8 e0 dc ff ff       	call   1018a <setInterruptHandler>
   124aa:	83 c4 10             	add    $0x10,%esp
   124ad:	83 ec 04             	sub    $0x4,%esp
   124b0:	6a 00                	push   $0x0
   124b2:	68 64 25 01 00       	push   $0x12564
   124b7:	6a 0c                	push   $0xc
   124b9:	e8 cc dc ff ff       	call   1018a <setInterruptHandler>
   124be:	83 c4 10             	add    $0x10,%esp
   124c1:	83 ec 04             	sub    $0x4,%esp
   124c4:	6a 00                	push   $0x0
   124c6:	68 69 25 01 00       	push   $0x12569
   124cb:	6a 0d                	push   $0xd
   124cd:	e8 b8 dc ff ff       	call   1018a <setInterruptHandler>
   124d2:	83 c4 10             	add    $0x10,%esp
   124d5:	83 ec 04             	sub    $0x4,%esp
   124d8:	6a 00                	push   $0x0
   124da:	68 6e 25 01 00       	push   $0x1256e
   124df:	6a 0e                	push   $0xe
   124e1:	e8 a4 dc ff ff       	call   1018a <setInterruptHandler>
   124e6:	83 c4 10             	add    $0x10,%esp
   124e9:	83 ec 04             	sub    $0x4,%esp
   124ec:	6a 00                	push   $0x0
   124ee:	68 73 25 01 00       	push   $0x12573
   124f3:	6a 0f                	push   $0xf
   124f5:	e8 90 dc ff ff       	call   1018a <setInterruptHandler>
   124fa:	83 c4 10             	add    $0x10,%esp
   124fd:	83 ec 04             	sub    $0x4,%esp
   12500:	6a 00                	push   $0x0
   12502:	68 78 25 01 00       	push   $0x12578
   12507:	6a 10                	push   $0x10
   12509:	e8 7c dc ff ff       	call   1018a <setInterruptHandler>
   1250e:	83 c4 10             	add    $0x10,%esp
   12511:	83 ec 04             	sub    $0x4,%esp
   12514:	6a 00                	push   $0x0
   12516:	68 7d 25 01 00       	push   $0x1257d
   1251b:	6a 11                	push   $0x11
   1251d:	e8 68 dc ff ff       	call   1018a <setInterruptHandler>
   12522:	83 c4 10             	add    $0x10,%esp
   12525:	90                   	nop
   12526:	c9                   	leave  
   12527:	c3                   	ret    

00012528 <divide_error_handler>:
   12528:	e8 c8 fc ff ff       	call   121f5 <divide_error_routine>

0001252d <debug_handler>:
   1252d:	e8 dc fc ff ff       	call   1220e <debug_routine>

00012532 <nm1_handler>:
   12532:	e8 f0 fc ff ff       	call   12227 <nm1_routine>

00012537 <breakpoint_handler>:
   12537:	e8 04 fd ff ff       	call   12240 <breakpoint_routine>

0001253c <overflow_handler>:
   1253c:	e8 18 fd ff ff       	call   12259 <overflow_routine>

00012541 <bounds_check_handler>:
   12541:	e8 2c fd ff ff       	call   12272 <bounds_check_routine>

00012546 <invalid_opcode_handler>:
   12546:	e8 40 fd ff ff       	call   1228b <invalid_opcode_routine>

0001254b <device_not_available_handler>:
   1254b:	e8 54 fd ff ff       	call   122a4 <device_not_available_routine>

00012550 <double_fault_handler>:
   12550:	e8 68 fd ff ff       	call   122bd <double_fault_routine>

00012555 <coprocessor_segment_overrun_handler>:
   12555:	e8 7c fd ff ff       	call   122d6 <coprocessor_segment_overrun_routine>

0001255a <invalid_tss_handler>:
   1255a:	e8 90 fd ff ff       	call   122ef <invalid_tss_routine>

0001255f <segment_not_present_handler>:
   1255f:	e8 a4 fd ff ff       	call   12308 <segment_not_present_routine>

00012564 <stack_exception_handler>:
   12564:	e8 b8 fd ff ff       	call   12321 <stack_exception_routine>

00012569 <general_protection_handler>:
   12569:	e8 cc fd ff ff       	call   1233a <general_protection_routine>

0001256e <page_fault_handler>:
   1256e:	e8 e0 fd ff ff       	call   12353 <page_fault_routine>

00012573 <intel_reserved_handler>:
   12573:	e8 f4 fd ff ff       	call   1236c <intel_reserved_routine>

00012578 <floating_point_error_handler>:
   12578:	e8 08 fe ff ff       	call   12385 <floating_point_error_routine>

0001257d <alignment_check_handler>:
   1257d:	e8 1c fe ff ff       	call   1239e <alignment_check_routine>

00012582 <itoa_hex>:
   12582:	55                   	push   %ebp
   12583:	89 e5                	mov    %esp,%ebp
   12585:	83 ec 10             	sub    $0x10,%esp
   12588:	c7 45 f4 5a 31 01 00 	movl   $0x1315a,-0xc(%ebp)
   1258f:	8b 45 0c             	mov    0xc(%ebp),%eax
   12592:	c6 00 30             	movb   $0x30,(%eax)
   12595:	8b 45 0c             	mov    0xc(%ebp),%eax
   12598:	83 c0 01             	add    $0x1,%eax
   1259b:	c6 00 78             	movb   $0x78,(%eax)
   1259e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   125a2:	75 1a                	jne    125be <itoa_hex+0x3c>
   125a4:	8b 45 0c             	mov    0xc(%ebp),%eax
   125a7:	83 c0 02             	add    $0x2,%eax
   125aa:	c6 00 30             	movb   $0x30,(%eax)
   125ad:	8b 45 0c             	mov    0xc(%ebp),%eax
   125b0:	83 c0 03             	add    $0x3,%eax
   125b3:	c6 00 00             	movb   $0x0,(%eax)
   125b6:	8b 45 0c             	mov    0xc(%ebp),%eax
   125b9:	e9 bb 00 00 00       	jmp    12679 <itoa_hex+0xf7>
   125be:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   125c5:	eb 3a                	jmp    12601 <itoa_hex+0x7f>
   125c7:	8b 45 08             	mov    0x8(%ebp),%eax
   125ca:	99                   	cltd   
   125cb:	c1 ea 1c             	shr    $0x1c,%edx
   125ce:	01 d0                	add    %edx,%eax
   125d0:	83 e0 0f             	and    $0xf,%eax
   125d3:	29 d0                	sub    %edx,%eax
   125d5:	89 c2                	mov    %eax,%edx
   125d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   125da:	01 d0                	add    %edx,%eax
   125dc:	8b 55 fc             	mov    -0x4(%ebp),%edx
   125df:	8d 4a 02             	lea    0x2(%edx),%ecx
   125e2:	8b 55 0c             	mov    0xc(%ebp),%edx
   125e5:	01 ca                	add    %ecx,%edx
   125e7:	0f b6 00             	movzbl (%eax),%eax
   125ea:	88 02                	mov    %al,(%edx)
   125ec:	8b 45 08             	mov    0x8(%ebp),%eax
   125ef:	8d 50 0f             	lea    0xf(%eax),%edx
   125f2:	85 c0                	test   %eax,%eax
   125f4:	0f 48 c2             	cmovs  %edx,%eax
   125f7:	c1 f8 04             	sar    $0x4,%eax
   125fa:	89 45 08             	mov    %eax,0x8(%ebp)
   125fd:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
   12601:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   12605:	7f c0                	jg     125c7 <itoa_hex+0x45>
   12607:	8b 45 fc             	mov    -0x4(%ebp),%eax
   1260a:	8d 50 02             	lea    0x2(%eax),%edx
   1260d:	8b 45 0c             	mov    0xc(%ebp),%eax
   12610:	01 d0                	add    %edx,%eax
   12612:	c6 00 00             	movb   $0x0,(%eax)
   12615:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   1261c:	eb 47                	jmp    12665 <itoa_hex+0xe3>
   1261e:	8b 45 f8             	mov    -0x8(%ebp),%eax
   12621:	8d 50 02             	lea    0x2(%eax),%edx
   12624:	8b 45 0c             	mov    0xc(%ebp),%eax
   12627:	01 d0                	add    %edx,%eax
   12629:	0f b6 00             	movzbl (%eax),%eax
   1262c:	88 45 f3             	mov    %al,-0xd(%ebp)
   1262f:	8b 45 fc             	mov    -0x4(%ebp),%eax
   12632:	2b 45 f8             	sub    -0x8(%ebp),%eax
   12635:	8d 50 01             	lea    0x1(%eax),%edx
   12638:	8b 45 0c             	mov    0xc(%ebp),%eax
   1263b:	01 d0                	add    %edx,%eax
   1263d:	8b 55 f8             	mov    -0x8(%ebp),%edx
   12640:	8d 4a 02             	lea    0x2(%edx),%ecx
   12643:	8b 55 0c             	mov    0xc(%ebp),%edx
   12646:	01 ca                	add    %ecx,%edx
   12648:	0f b6 00             	movzbl (%eax),%eax
   1264b:	88 02                	mov    %al,(%edx)
   1264d:	8b 45 fc             	mov    -0x4(%ebp),%eax
   12650:	2b 45 f8             	sub    -0x8(%ebp),%eax
   12653:	8d 50 01             	lea    0x1(%eax),%edx
   12656:	8b 45 0c             	mov    0xc(%ebp),%eax
   12659:	01 c2                	add    %eax,%edx
   1265b:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
   1265f:	88 02                	mov    %al,(%edx)
   12661:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
   12665:	8b 45 fc             	mov    -0x4(%ebp),%eax
   12668:	89 c2                	mov    %eax,%edx
   1266a:	c1 ea 1f             	shr    $0x1f,%edx
   1266d:	01 d0                	add    %edx,%eax
   1266f:	d1 f8                	sar    %eax
   12671:	39 45 f8             	cmp    %eax,-0x8(%ebp)
   12674:	7c a8                	jl     1261e <itoa_hex+0x9c>
   12676:	8b 45 0c             	mov    0xc(%ebp),%eax
   12679:	c9                   	leave  
   1267a:	c3                   	ret    

0001267b <printRange>:
   1267b:	55                   	push   %ebp
   1267c:	89 e5                	mov    %esp,%ebp
   1267e:	83 ec 18             	sub    $0x18,%esp
   12681:	8d 45 ee             	lea    -0x12(%ebp),%eax
   12684:	50                   	push   %eax
   12685:	ff 75 08             	push   0x8(%ebp)
   12688:	e8 f5 fe ff ff       	call   12582 <itoa_hex>
   1268d:	83 c4 08             	add    $0x8,%esp
   12690:	83 ec 0c             	sub    $0xc,%esp
   12693:	50                   	push   %eax
   12694:	e8 0d e1 ff ff       	call   107a6 <printk>
   12699:	83 c4 10             	add    $0x10,%esp
   1269c:	83 ec 0c             	sub    $0xc,%esp
   1269f:	68 6b 31 01 00       	push   $0x1316b
   126a4:	e8 fd e0 ff ff       	call   107a6 <printk>
   126a9:	83 c4 10             	add    $0x10,%esp
   126ac:	83 ec 08             	sub    $0x8,%esp
   126af:	8d 45 ee             	lea    -0x12(%ebp),%eax
   126b2:	50                   	push   %eax
   126b3:	ff 75 0c             	push   0xc(%ebp)
   126b6:	e8 c7 fe ff ff       	call   12582 <itoa_hex>
   126bb:	83 c4 10             	add    $0x10,%esp
   126be:	83 ec 0c             	sub    $0xc,%esp
   126c1:	50                   	push   %eax
   126c2:	e8 df e0 ff ff       	call   107a6 <printk>
   126c7:	83 c4 10             	add    $0x10,%esp
   126ca:	83 ec 0c             	sub    $0xc,%esp
   126cd:	68 6d 31 01 00       	push   $0x1316d
   126d2:	e8 cf e0 ff ff       	call   107a6 <printk>
   126d7:	83 c4 10             	add    $0x10,%esp
   126da:	83 ec 08             	sub    $0x8,%esp
   126dd:	8d 45 ee             	lea    -0x12(%ebp),%eax
   126e0:	50                   	push   %eax
   126e1:	ff 75 10             	push   0x10(%ebp)
   126e4:	e8 99 fe ff ff       	call   12582 <itoa_hex>
   126e9:	83 c4 10             	add    $0x10,%esp
   126ec:	83 ec 0c             	sub    $0xc,%esp
   126ef:	50                   	push   %eax
   126f0:	e8 b1 e0 ff ff       	call   107a6 <printk>
   126f5:	83 c4 10             	add    $0x10,%esp
   126f8:	83 ec 0c             	sub    $0xc,%esp
   126fb:	68 6b 31 01 00       	push   $0x1316b
   12700:	e8 a1 e0 ff ff       	call   107a6 <printk>
   12705:	83 c4 10             	add    $0x10,%esp
   12708:	83 ec 08             	sub    $0x8,%esp
   1270b:	8d 45 ee             	lea    -0x12(%ebp),%eax
   1270e:	50                   	push   %eax
   1270f:	ff 75 14             	push   0x14(%ebp)
   12712:	e8 6b fe ff ff       	call   12582 <itoa_hex>
   12717:	83 c4 10             	add    $0x10,%esp
   1271a:	83 ec 0c             	sub    $0xc,%esp
   1271d:	50                   	push   %eax
   1271e:	e8 83 e0 ff ff       	call   107a6 <printk>
   12723:	83 c4 10             	add    $0x10,%esp
   12726:	83 ec 0c             	sub    $0xc,%esp
   12729:	68 72 31 01 00       	push   $0x13172
   1272e:	e8 73 e0 ff ff       	call   107a6 <printk>
   12733:	83 c4 10             	add    $0x10,%esp
   12736:	8b 45 0c             	mov    0xc(%ebp),%eax
   12739:	2b 45 08             	sub    0x8(%ebp),%eax
   1273c:	8d 50 01             	lea    0x1(%eax),%edx
   1273f:	83 ec 08             	sub    $0x8,%esp
   12742:	8d 45 ee             	lea    -0x12(%ebp),%eax
   12745:	50                   	push   %eax
   12746:	52                   	push   %edx
   12747:	e8 e7 02 00 00       	call   12a33 <itoa>
   1274c:	83 c4 10             	add    $0x10,%esp
   1274f:	83 ec 0c             	sub    $0xc,%esp
   12752:	50                   	push   %eax
   12753:	e8 4e e0 ff ff       	call   107a6 <printk>
   12758:	83 c4 10             	add    $0x10,%esp
   1275b:	83 ec 0c             	sub    $0xc,%esp
   1275e:	68 75 31 01 00       	push   $0x13175
   12763:	e8 3e e0 ff ff       	call   107a6 <printk>
   12768:	83 c4 10             	add    $0x10,%esp
   1276b:	83 ec 0c             	sub    $0xc,%esp
   1276e:	ff 75 18             	push   0x18(%ebp)
   12771:	e8 30 e0 ff ff       	call   107a6 <printk>
   12776:	83 c4 10             	add    $0x10,%esp
   12779:	90                   	nop
   1277a:	c9                   	leave  
   1277b:	c3                   	ret    

0001277c <show_PT_range>:
   1277c:	55                   	push   %ebp
   1277d:	89 e5                	mov    %esp,%ebp
   1277f:	83 ec 18             	sub    $0x18,%esp
   12782:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
   12789:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
   12790:	8b 45 0c             	mov    0xc(%ebp),%eax
   12793:	89 45 ec             	mov    %eax,-0x14(%ebp)
   12796:	e9 1d 01 00 00       	jmp    128b8 <show_PT_range+0x13c>
   1279b:	8b 45 ec             	mov    -0x14(%ebp),%eax
   1279e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   127a5:	8b 45 08             	mov    0x8(%ebp),%eax
   127a8:	01 d0                	add    %edx,%eax
   127aa:	0f b6 00             	movzbl (%eax),%eax
   127ad:	83 e0 01             	and    $0x1,%eax
   127b0:	84 c0                	test   %al,%al
   127b2:	0f 84 b8 00 00 00    	je     12870 <show_PT_range+0xf4>
   127b8:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   127bc:	79 22                	jns    127e0 <show_PT_range+0x64>
   127be:	8b 45 ec             	mov    -0x14(%ebp),%eax
   127c1:	89 45 f4             	mov    %eax,-0xc(%ebp)
   127c4:	8b 45 ec             	mov    -0x14(%ebp),%eax
   127c7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   127ce:	8b 45 08             	mov    0x8(%ebp),%eax
   127d1:	01 d0                	add    %edx,%eax
   127d3:	8b 00                	mov    (%eax),%eax
   127d5:	c1 e8 0c             	shr    $0xc,%eax
   127d8:	89 45 f0             	mov    %eax,-0x10(%ebp)
   127db:	e9 d4 00 00 00       	jmp    128b4 <show_PT_range+0x138>
   127e0:	8b 45 ec             	mov    -0x14(%ebp),%eax
   127e3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   127ea:	8b 45 08             	mov    0x8(%ebp),%eax
   127ed:	01 d0                	add    %edx,%eax
   127ef:	8b 00                	mov    (%eax),%eax
   127f1:	c1 e8 0c             	shr    $0xc,%eax
   127f4:	89 c2                	mov    %eax,%edx
   127f6:	8b 45 ec             	mov    -0x14(%ebp),%eax
   127f9:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
   127fe:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   12805:	8b 45 08             	mov    0x8(%ebp),%eax
   12808:	01 c8                	add    %ecx,%eax
   1280a:	8b 00                	mov    (%eax),%eax
   1280c:	c1 e8 0c             	shr    $0xc,%eax
   1280f:	83 c0 01             	add    $0x1,%eax
   12812:	39 c2                	cmp    %eax,%edx
   12814:	0f 84 9a 00 00 00    	je     128b4 <show_PT_range+0x138>
   1281a:	8b 45 ec             	mov    -0x14(%ebp),%eax
   1281d:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
   12822:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   12829:	8b 45 08             	mov    0x8(%ebp),%eax
   1282c:	01 d0                	add    %edx,%eax
   1282e:	8b 00                	mov    (%eax),%eax
   12830:	c1 e8 0c             	shr    $0xc,%eax
   12833:	89 c2                	mov    %eax,%edx
   12835:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12838:	83 e8 01             	sub    $0x1,%eax
   1283b:	83 ec 0c             	sub    $0xc,%esp
   1283e:	ff 75 14             	push   0x14(%ebp)
   12841:	52                   	push   %edx
   12842:	ff 75 f0             	push   -0x10(%ebp)
   12845:	50                   	push   %eax
   12846:	ff 75 f4             	push   -0xc(%ebp)
   12849:	e8 2d fe ff ff       	call   1267b <printRange>
   1284e:	83 c4 20             	add    $0x20,%esp
   12851:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12854:	89 45 f4             	mov    %eax,-0xc(%ebp)
   12857:	8b 45 ec             	mov    -0x14(%ebp),%eax
   1285a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   12861:	8b 45 08             	mov    0x8(%ebp),%eax
   12864:	01 d0                	add    %edx,%eax
   12866:	8b 00                	mov    (%eax),%eax
   12868:	c1 e8 0c             	shr    $0xc,%eax
   1286b:	89 45 f0             	mov    %eax,-0x10(%ebp)
   1286e:	eb 44                	jmp    128b4 <show_PT_range+0x138>
   12870:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   12874:	78 3e                	js     128b4 <show_PT_range+0x138>
   12876:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12879:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
   1287e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   12885:	8b 45 08             	mov    0x8(%ebp),%eax
   12888:	01 d0                	add    %edx,%eax
   1288a:	8b 00                	mov    (%eax),%eax
   1288c:	c1 e8 0c             	shr    $0xc,%eax
   1288f:	89 c2                	mov    %eax,%edx
   12891:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12894:	83 e8 01             	sub    $0x1,%eax
   12897:	83 ec 0c             	sub    $0xc,%esp
   1289a:	ff 75 14             	push   0x14(%ebp)
   1289d:	52                   	push   %edx
   1289e:	ff 75 f0             	push   -0x10(%ebp)
   128a1:	50                   	push   %eax
   128a2:	ff 75 f4             	push   -0xc(%ebp)
   128a5:	e8 d1 fd ff ff       	call   1267b <printRange>
   128aa:	83 c4 20             	add    $0x20,%esp
   128ad:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
   128b4:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
   128b8:	8b 55 0c             	mov    0xc(%ebp),%edx
   128bb:	8b 45 10             	mov    0x10(%ebp),%eax
   128be:	01 d0                	add    %edx,%eax
   128c0:	39 45 ec             	cmp    %eax,-0x14(%ebp)
   128c3:	0f 8c d2 fe ff ff    	jl     1279b <show_PT_range+0x1f>
   128c9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   128cd:	78 37                	js     12906 <show_PT_range+0x18a>
   128cf:	8b 45 ec             	mov    -0x14(%ebp),%eax
   128d2:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
   128d7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   128de:	8b 45 08             	mov    0x8(%ebp),%eax
   128e1:	01 d0                	add    %edx,%eax
   128e3:	8b 00                	mov    (%eax),%eax
   128e5:	c1 e8 0c             	shr    $0xc,%eax
   128e8:	89 c2                	mov    %eax,%edx
   128ea:	8b 45 ec             	mov    -0x14(%ebp),%eax
   128ed:	83 e8 01             	sub    $0x1,%eax
   128f0:	83 ec 0c             	sub    $0xc,%esp
   128f3:	ff 75 14             	push   0x14(%ebp)
   128f6:	52                   	push   %edx
   128f7:	ff 75 f0             	push   -0x10(%ebp)
   128fa:	50                   	push   %eax
   128fb:	ff 75 f4             	push   -0xc(%ebp)
   128fe:	e8 78 fd ff ff       	call   1267b <printRange>
   12903:	83 c4 20             	add    $0x20,%esp
   12906:	90                   	nop
   12907:	c9                   	leave  
   12908:	c3                   	ret    

00012909 <show_PT>:
   12909:	55                   	push   %ebp
   1290a:	89 e5                	mov    %esp,%ebp
   1290c:	83 ec 08             	sub    $0x8,%esp
   1290f:	83 ec 0c             	sub    $0xc,%esp
   12912:	68 7d 31 01 00       	push   $0x1317d
   12917:	e8 8a de ff ff       	call   107a6 <printk>
   1291c:	83 c4 10             	add    $0x10,%esp
   1291f:	68 93 31 01 00       	push   $0x13193
   12924:	68 00 04 00 00       	push   $0x400
   12929:	6a 00                	push   $0x0
   1292b:	ff 75 08             	push   0x8(%ebp)
   1292e:	e8 49 fe ff ff       	call   1277c <show_PT_range>
   12933:	83 c4 10             	add    $0x10,%esp
   12936:	90                   	nop
   12937:	c9                   	leave  
   12938:	c3                   	ret    

00012939 <prepare_mono_address_space>:
   12939:	55                   	push   %ebp
   1293a:	89 e5                	mov    %esp,%ebp
   1293c:	83 ec 28             	sub    $0x28,%esp
   1293f:	e8 11 f0 ff ff       	call   11955 <alloc_frame>
   12944:	89 45 f4             	mov    %eax,-0xc(%ebp)
   12947:	8b 45 f4             	mov    -0xc(%ebp),%eax
   1294a:	c1 e0 0c             	shl    $0xc,%eax
   1294d:	89 45 f0             	mov    %eax,-0x10(%ebp)
   12950:	83 ec 0c             	sub    $0xc,%esp
   12953:	ff 75 f0             	push   -0x10(%ebp)
   12956:	e8 26 eb ff ff       	call   11481 <clear_page_table>
   1295b:	83 c4 10             	add    $0x10,%esp
   1295e:	e8 f2 ef ff ff       	call   11955 <alloc_frame>
   12963:	89 45 ec             	mov    %eax,-0x14(%ebp)
   12966:	8b 45 ec             	mov    -0x14(%ebp),%eax
   12969:	c1 e0 0c             	shl    $0xc,%eax
   1296c:	89 45 e8             	mov    %eax,-0x18(%ebp)
   1296f:	83 ec 0c             	sub    $0xc,%esp
   12972:	ff 75 e8             	push   -0x18(%ebp)
   12975:	e8 07 eb ff ff       	call   11481 <clear_page_table>
   1297a:	83 c4 10             	add    $0x10,%esp
   1297d:	83 ec 0c             	sub    $0xc,%esp
   12980:	ff 75 f0             	push   -0x10(%ebp)
   12983:	e8 ae ec ff ff       	call   11636 <set_kernel_pages>
   12988:	83 c4 10             	add    $0x10,%esp
   1298b:	e8 c5 ef ff ff       	call   11955 <alloc_frame>
   12990:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   12993:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   12996:	c1 e0 0c             	shl    $0xc,%eax
   12999:	89 45 e0             	mov    %eax,-0x20(%ebp)
   1299c:	83 ec 0c             	sub    $0xc,%esp
   1299f:	ff 75 e0             	push   -0x20(%ebp)
   129a2:	e8 da ea ff ff       	call   11481 <clear_page_table>
   129a7:	83 c4 10             	add    $0x10,%esp
   129aa:	83 ec 0c             	sub    $0xc,%esp
   129ad:	ff 75 e0             	push   -0x20(%ebp)
   129b0:	e8 01 eb ff ff       	call   114b6 <set_user_pages>
   129b5:	83 c4 10             	add    $0x10,%esp
   129b8:	8b 55 ec             	mov    -0x14(%ebp),%edx
   129bb:	8b 45 ec             	mov    -0x14(%ebp),%eax
   129be:	6a 00                	push   $0x0
   129c0:	52                   	push   %edx
   129c1:	50                   	push   %eax
   129c2:	ff 75 f0             	push   -0x10(%ebp)
   129c5:	e8 96 f0 ff ff       	call   11a60 <set_ss_pag>
   129ca:	83 c4 10             	add    $0x10,%esp
   129cd:	8b 55 f4             	mov    -0xc(%ebp),%edx
   129d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
   129d3:	6a 00                	push   $0x0
   129d5:	52                   	push   %edx
   129d6:	50                   	push   %eax
   129d7:	ff 75 f0             	push   -0x10(%ebp)
   129da:	e8 81 f0 ff ff       	call   11a60 <set_ss_pag>
   129df:	83 c4 10             	add    $0x10,%esp
   129e2:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   129e5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   129e8:	6a 00                	push   $0x0
   129ea:	52                   	push   %edx
   129eb:	50                   	push   %eax
   129ec:	ff 75 f0             	push   -0x10(%ebp)
   129ef:	e8 6c f0 ff ff       	call   11a60 <set_ss_pag>
   129f4:	83 c4 10             	add    $0x10,%esp
   129f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   129fa:	6a 00                	push   $0x0
   129fc:	50                   	push   %eax
   129fd:	6a 00                	push   $0x0
   129ff:	ff 75 e8             	push   -0x18(%ebp)
   12a02:	e8 59 f0 ff ff       	call   11a60 <set_ss_pag>
   12a07:	83 c4 10             	add    $0x10,%esp
   12a0a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   12a0d:	6a 01                	push   $0x1
   12a0f:	50                   	push   %eax
   12a10:	6a 01                	push   $0x1
   12a12:	ff 75 e8             	push   -0x18(%ebp)
   12a15:	e8 46 f0 ff ff       	call   11a60 <set_ss_pag>
   12a1a:	83 c4 10             	add    $0x10,%esp
   12a1d:	83 ec 0c             	sub    $0xc,%esp
   12a20:	ff 75 e8             	push   -0x18(%ebp)
   12a23:	e8 26 f6 ff ff       	call   1204e <set_cr3>
   12a28:	83 c4 10             	add    $0x10,%esp
   12a2b:	e8 cf ec ff ff       	call   116ff <set_pe_flag>
   12a30:	90                   	nop
   12a31:	c9                   	leave  
   12a32:	c3                   	ret    

00012a33 <itoa>:
   12a33:	55                   	push   %ebp
   12a34:	89 e5                	mov    %esp,%ebp
   12a36:	53                   	push   %ebx
   12a37:	83 ec 10             	sub    $0x10,%esp
   12a3a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   12a3e:	75 17                	jne    12a57 <itoa+0x24>
   12a40:	8b 45 0c             	mov    0xc(%ebp),%eax
   12a43:	c6 00 30             	movb   $0x30,(%eax)
   12a46:	8b 45 0c             	mov    0xc(%ebp),%eax
   12a49:	83 c0 01             	add    $0x1,%eax
   12a4c:	c6 00 00             	movb   $0x0,(%eax)
   12a4f:	8b 45 0c             	mov    0xc(%ebp),%eax
   12a52:	e9 cf 00 00 00       	jmp    12b26 <itoa+0xf3>
   12a57:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   12a5e:	eb 57                	jmp    12ab7 <itoa+0x84>
   12a60:	8b 4d 08             	mov    0x8(%ebp),%ecx
   12a63:	ba 67 66 66 66       	mov    $0x66666667,%edx
   12a68:	89 c8                	mov    %ecx,%eax
   12a6a:	f7 ea                	imul   %edx
   12a6c:	89 d0                	mov    %edx,%eax
   12a6e:	c1 f8 02             	sar    $0x2,%eax
   12a71:	89 cb                	mov    %ecx,%ebx
   12a73:	c1 fb 1f             	sar    $0x1f,%ebx
   12a76:	29 d8                	sub    %ebx,%eax
   12a78:	89 c2                	mov    %eax,%edx
   12a7a:	89 d0                	mov    %edx,%eax
   12a7c:	c1 e0 02             	shl    $0x2,%eax
   12a7f:	01 d0                	add    %edx,%eax
   12a81:	01 c0                	add    %eax,%eax
   12a83:	29 c1                	sub    %eax,%ecx
   12a85:	89 ca                	mov    %ecx,%edx
   12a87:	89 d0                	mov    %edx,%eax
   12a89:	8d 48 30             	lea    0x30(%eax),%ecx
   12a8c:	8b 55 f8             	mov    -0x8(%ebp),%edx
   12a8f:	8b 45 0c             	mov    0xc(%ebp),%eax
   12a92:	01 d0                	add    %edx,%eax
   12a94:	89 ca                	mov    %ecx,%edx
   12a96:	88 10                	mov    %dl,(%eax)
   12a98:	8b 4d 08             	mov    0x8(%ebp),%ecx
   12a9b:	ba 67 66 66 66       	mov    $0x66666667,%edx
   12aa0:	89 c8                	mov    %ecx,%eax
   12aa2:	f7 ea                	imul   %edx
   12aa4:	89 d0                	mov    %edx,%eax
   12aa6:	c1 f8 02             	sar    $0x2,%eax
   12aa9:	c1 f9 1f             	sar    $0x1f,%ecx
   12aac:	89 ca                	mov    %ecx,%edx
   12aae:	29 d0                	sub    %edx,%eax
   12ab0:	89 45 08             	mov    %eax,0x8(%ebp)
   12ab3:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
   12ab7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
   12abb:	7f a3                	jg     12a60 <itoa+0x2d>
   12abd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   12ac4:	eb 41                	jmp    12b07 <itoa+0xd4>
   12ac6:	8b 55 f4             	mov    -0xc(%ebp),%edx
   12ac9:	8b 45 0c             	mov    0xc(%ebp),%eax
   12acc:	01 d0                	add    %edx,%eax
   12ace:	0f b6 00             	movzbl (%eax),%eax
   12ad1:	88 45 f3             	mov    %al,-0xd(%ebp)
   12ad4:	8b 45 f8             	mov    -0x8(%ebp),%eax
   12ad7:	2b 45 f4             	sub    -0xc(%ebp),%eax
   12ada:	8d 50 ff             	lea    -0x1(%eax),%edx
   12add:	8b 45 0c             	mov    0xc(%ebp),%eax
   12ae0:	01 d0                	add    %edx,%eax
   12ae2:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   12ae5:	8b 55 0c             	mov    0xc(%ebp),%edx
   12ae8:	01 ca                	add    %ecx,%edx
   12aea:	0f b6 00             	movzbl (%eax),%eax
   12aed:	88 02                	mov    %al,(%edx)
   12aef:	8b 45 f8             	mov    -0x8(%ebp),%eax
   12af2:	2b 45 f4             	sub    -0xc(%ebp),%eax
   12af5:	8d 50 ff             	lea    -0x1(%eax),%edx
   12af8:	8b 45 0c             	mov    0xc(%ebp),%eax
   12afb:	01 c2                	add    %eax,%edx
   12afd:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
   12b01:	88 02                	mov    %al,(%edx)
   12b03:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
   12b07:	8b 45 f8             	mov    -0x8(%ebp),%eax
   12b0a:	89 c2                	mov    %eax,%edx
   12b0c:	c1 ea 1f             	shr    $0x1f,%edx
   12b0f:	01 d0                	add    %edx,%eax
   12b11:	d1 f8                	sar    %eax
   12b13:	39 45 f4             	cmp    %eax,-0xc(%ebp)
   12b16:	7c ae                	jl     12ac6 <itoa+0x93>
   12b18:	8b 55 f8             	mov    -0x8(%ebp),%edx
   12b1b:	8b 45 0c             	mov    0xc(%ebp),%eax
   12b1e:	01 d0                	add    %edx,%eax
   12b20:	c6 00 00             	movb   $0x0,(%eax)
   12b23:	8b 45 0c             	mov    0xc(%ebp),%eax
   12b26:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   12b29:	c9                   	leave  
   12b2a:	c3                   	ret    

00012b2b <printc_xy>:
   12b2b:	55                   	push   %ebp
   12b2c:	89 e5                	mov    %esp,%ebp
   12b2e:	83 ec 1c             	sub    $0x1c,%esp
   12b31:	8b 4d 08             	mov    0x8(%ebp),%ecx
   12b34:	8b 55 0c             	mov    0xc(%ebp),%edx
   12b37:	8b 45 10             	mov    0x10(%ebp),%eax
   12b3a:	88 4d ec             	mov    %cl,-0x14(%ebp)
   12b3d:	88 55 e8             	mov    %dl,-0x18(%ebp)
   12b40:	88 45 e4             	mov    %al,-0x1c(%ebp)
   12b43:	66 0f be 45 e4       	movsbw -0x1c(%ebp),%ax
   12b48:	0f b6 c0             	movzbl %al,%eax
   12b4b:	80 cc 02             	or     $0x2,%ah
   12b4e:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
   12b52:	c7 45 f8 00 80 0b 00 	movl   $0xb8000,-0x8(%ebp)
   12b59:	0f b6 55 e8          	movzbl -0x18(%ebp),%edx
   12b5d:	89 d0                	mov    %edx,%eax
   12b5f:	c1 e0 02             	shl    $0x2,%eax
   12b62:	01 d0                	add    %edx,%eax
   12b64:	c1 e0 04             	shl    $0x4,%eax
   12b67:	89 c2                	mov    %eax,%edx
   12b69:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
   12b6d:	01 d0                	add    %edx,%eax
   12b6f:	8d 14 00             	lea    (%eax,%eax,1),%edx
   12b72:	8b 45 f8             	mov    -0x8(%ebp),%eax
   12b75:	01 c2                	add    %eax,%edx
   12b77:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
   12b7b:	66 89 02             	mov    %ax,(%edx)
   12b7e:	90                   	nop
   12b7f:	c9                   	leave  
   12b80:	c3                   	ret    

00012b81 <zeos_show_clock>:
   12b81:	55                   	push   %ebp
   12b82:	89 e5                	mov    %esp,%ebp
   12b84:	83 ec 10             	sub    $0x10,%esp
   12b87:	a1 98 58 01 00       	mov    0x15898,%eax
   12b8c:	83 c0 01             	add    $0x1,%eax
   12b8f:	a3 98 58 01 00       	mov    %eax,0x15898
   12b94:	a1 98 58 01 00       	mov    0x15898,%eax
   12b99:	83 f8 12             	cmp    $0x12,%eax
   12b9c:	0f 85 2e 01 00 00    	jne    12cd0 <zeos_show_clock+0x14f>
   12ba2:	a1 9c 58 01 00       	mov    0x1589c,%eax
   12ba7:	83 c0 01             	add    $0x1,%eax
   12baa:	a3 9c 58 01 00       	mov    %eax,0x1589c
   12baf:	c7 05 98 58 01 00 00 	movl   $0x0,0x15898
   12bb6:	00 00 00 
   12bb9:	a1 9c 58 01 00       	mov    0x1589c,%eax
   12bbe:	83 f8 3c             	cmp    $0x3c,%eax
   12bc1:	75 17                	jne    12bda <zeos_show_clock+0x59>
   12bc3:	c7 05 9c 58 01 00 00 	movl   $0x0,0x1589c
   12bca:	00 00 00 
   12bcd:	a1 a0 58 01 00       	mov    0x158a0,%eax
   12bd2:	83 c0 01             	add    $0x1,%eax
   12bd5:	a3 a0 58 01 00       	mov    %eax,0x158a0
   12bda:	a1 a0 58 01 00       	mov    0x158a0,%eax
   12bdf:	8d 55 fc             	lea    -0x4(%ebp),%edx
   12be2:	52                   	push   %edx
   12be3:	50                   	push   %eax
   12be4:	e8 4a fe ff ff       	call   12a33 <itoa>
   12be9:	83 c4 08             	add    $0x8,%esp
   12bec:	a1 9c 58 01 00       	mov    0x1589c,%eax
   12bf1:	8d 55 f8             	lea    -0x8(%ebp),%edx
   12bf4:	52                   	push   %edx
   12bf5:	50                   	push   %eax
   12bf6:	e8 38 fe ff ff       	call   12a33 <itoa>
   12bfb:	83 c4 08             	add    $0x8,%esp
   12bfe:	a1 a0 58 01 00       	mov    0x158a0,%eax
   12c03:	83 f8 09             	cmp    $0x9,%eax
   12c06:	7e 16                	jle    12c1e <zeos_show_clock+0x9d>
   12c08:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
   12c0c:	0f be c0             	movsbl %al,%eax
   12c0f:	50                   	push   %eax
   12c10:	6a 00                	push   $0x0
   12c12:	6a 46                	push   $0x46
   12c14:	e8 12 ff ff ff       	call   12b2b <printc_xy>
   12c19:	83 c4 0c             	add    $0xc,%esp
   12c1c:	eb 0e                	jmp    12c2c <zeos_show_clock+0xab>
   12c1e:	6a 30                	push   $0x30
   12c20:	6a 00                	push   $0x0
   12c22:	6a 46                	push   $0x46
   12c24:	e8 02 ff ff ff       	call   12b2b <printc_xy>
   12c29:	83 c4 0c             	add    $0xc,%esp
   12c2c:	a1 a0 58 01 00       	mov    0x158a0,%eax
   12c31:	83 f8 09             	cmp    $0x9,%eax
   12c34:	7e 16                	jle    12c4c <zeos_show_clock+0xcb>
   12c36:	0f b6 45 fd          	movzbl -0x3(%ebp),%eax
   12c3a:	0f be c0             	movsbl %al,%eax
   12c3d:	50                   	push   %eax
   12c3e:	6a 00                	push   $0x0
   12c40:	6a 47                	push   $0x47
   12c42:	e8 e4 fe ff ff       	call   12b2b <printc_xy>
   12c47:	83 c4 0c             	add    $0xc,%esp
   12c4a:	eb 14                	jmp    12c60 <zeos_show_clock+0xdf>
   12c4c:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
   12c50:	0f be c0             	movsbl %al,%eax
   12c53:	50                   	push   %eax
   12c54:	6a 00                	push   $0x0
   12c56:	6a 47                	push   $0x47
   12c58:	e8 ce fe ff ff       	call   12b2b <printc_xy>
   12c5d:	83 c4 0c             	add    $0xc,%esp
   12c60:	6a 3a                	push   $0x3a
   12c62:	6a 00                	push   $0x0
   12c64:	6a 48                	push   $0x48
   12c66:	e8 c0 fe ff ff       	call   12b2b <printc_xy>
   12c6b:	83 c4 0c             	add    $0xc,%esp
   12c6e:	a1 9c 58 01 00       	mov    0x1589c,%eax
   12c73:	83 f8 09             	cmp    $0x9,%eax
   12c76:	7e 16                	jle    12c8e <zeos_show_clock+0x10d>
   12c78:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
   12c7c:	0f be c0             	movsbl %al,%eax
   12c7f:	50                   	push   %eax
   12c80:	6a 00                	push   $0x0
   12c82:	6a 49                	push   $0x49
   12c84:	e8 a2 fe ff ff       	call   12b2b <printc_xy>
   12c89:	83 c4 0c             	add    $0xc,%esp
   12c8c:	eb 0e                	jmp    12c9c <zeos_show_clock+0x11b>
   12c8e:	6a 30                	push   $0x30
   12c90:	6a 00                	push   $0x0
   12c92:	6a 49                	push   $0x49
   12c94:	e8 92 fe ff ff       	call   12b2b <printc_xy>
   12c99:	83 c4 0c             	add    $0xc,%esp
   12c9c:	a1 9c 58 01 00       	mov    0x1589c,%eax
   12ca1:	83 f8 09             	cmp    $0x9,%eax
   12ca4:	7e 16                	jle    12cbc <zeos_show_clock+0x13b>
   12ca6:	0f b6 45 f9          	movzbl -0x7(%ebp),%eax
   12caa:	0f be c0             	movsbl %al,%eax
   12cad:	50                   	push   %eax
   12cae:	6a 00                	push   $0x0
   12cb0:	6a 4a                	push   $0x4a
   12cb2:	e8 74 fe ff ff       	call   12b2b <printc_xy>
   12cb7:	83 c4 0c             	add    $0xc,%esp
   12cba:	eb 14                	jmp    12cd0 <zeos_show_clock+0x14f>
   12cbc:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
   12cc0:	0f be c0             	movsbl %al,%eax
   12cc3:	50                   	push   %eax
   12cc4:	6a 00                	push   $0x0
   12cc6:	6a 4a                	push   $0x4a
   12cc8:	e8 5e fe ff ff       	call   12b2b <printc_xy>
   12ccd:	83 c4 0c             	add    $0xc,%esp
   12cd0:	90                   	nop
   12cd1:	c9                   	leave  
   12cd2:	c3                   	ret    
