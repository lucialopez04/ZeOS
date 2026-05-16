
user:     file format elf32-i386


Disassembly of section .text:

00100000 <main>:
  100000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  100004:	83 e4 f0             	and    $0xfffffff0,%esp
  100007:	ff 71 fc             	push   -0x4(%ecx)
  10000a:	55                   	push   %ebp
  10000b:	89 e5                	mov    %esp,%ebp
  10000d:	51                   	push   %ecx
  10000e:	83 ec 74             	sub    $0x74,%esp
  100011:	83 ec 0c             	sub    $0xc,%esp
  100014:	68 00 80 10 00       	push   $0x108000
  100019:	e8 79 03 00 00       	call   100397 <strlen>
  10001e:	83 c4 10             	add    $0x10,%esp
  100021:	83 ec 04             	sub    $0x4,%esp
  100024:	50                   	push   %eax
  100025:	68 00 80 10 00       	push   $0x108000
  10002a:	6a 01                	push   $0x1
  10002c:	e8 98 04 00 00       	call   1004c9 <write>
  100031:	83 c4 10             	add    $0x10,%esp
  100034:	83 ec 0c             	sub    $0xc,%esp
  100037:	68 40 80 10 00       	push   $0x108040
  10003c:	e8 56 03 00 00       	call   100397 <strlen>
  100041:	83 c4 10             	add    $0x10,%esp
  100044:	83 ec 04             	sub    $0x4,%esp
  100047:	50                   	push   %eax
  100048:	68 40 80 10 00       	push   $0x108040
  10004d:	6a 01                	push   $0x1
  10004f:	e8 75 04 00 00       	call   1004c9 <write>
  100054:	83 c4 10             	add    $0x10,%esp
  100057:	e8 d8 04 00 00       	call   100534 <gettime>
  10005c:	83 ec 08             	sub    $0x8,%esp
  10005f:	8d 55 d4             	lea    -0x2c(%ebp),%edx
  100062:	52                   	push   %edx
  100063:	50                   	push   %eax
  100064:	e8 3c 02 00 00       	call   1002a5 <itoa>
  100069:	83 c4 10             	add    $0x10,%esp
  10006c:	83 ec 0c             	sub    $0xc,%esp
  10006f:	68 8e 80 10 00       	push   $0x10808e
  100074:	e8 1e 03 00 00       	call   100397 <strlen>
  100079:	83 c4 10             	add    $0x10,%esp
  10007c:	83 ec 04             	sub    $0x4,%esp
  10007f:	50                   	push   %eax
  100080:	68 8e 80 10 00       	push   $0x10808e
  100085:	6a 01                	push   $0x1
  100087:	e8 3d 04 00 00       	call   1004c9 <write>
  10008c:	83 c4 10             	add    $0x10,%esp
  10008f:	83 ec 0c             	sub    $0xc,%esp
  100092:	8d 45 d4             	lea    -0x2c(%ebp),%eax
  100095:	50                   	push   %eax
  100096:	e8 fc 02 00 00       	call   100397 <strlen>
  10009b:	83 c4 10             	add    $0x10,%esp
  10009e:	83 ec 04             	sub    $0x4,%esp
  1000a1:	50                   	push   %eax
  1000a2:	8d 45 d4             	lea    -0x2c(%ebp),%eax
  1000a5:	50                   	push   %eax
  1000a6:	6a 01                	push   $0x1
  1000a8:	e8 1c 04 00 00       	call   1004c9 <write>
  1000ad:	83 c4 10             	add    $0x10,%esp
  1000b0:	83 ec 0c             	sub    $0xc,%esp
  1000b3:	68 a0 80 10 00       	push   $0x1080a0
  1000b8:	e8 da 02 00 00       	call   100397 <strlen>
  1000bd:	83 c4 10             	add    $0x10,%esp
  1000c0:	83 ec 04             	sub    $0x4,%esp
  1000c3:	50                   	push   %eax
  1000c4:	68 a0 80 10 00       	push   $0x1080a0
  1000c9:	6a 01                	push   $0x1
  1000cb:	e8 f9 03 00 00       	call   1004c9 <write>
  1000d0:	83 c4 10             	add    $0x10,%esp
  1000d3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1000da:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1000e1:	e9 d6 00 00 00       	jmp    1001bc <main+0x1bc>
  1000e6:	e8 81 04 00 00       	call   10056c <fork>
  1000eb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1000ee:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  1000f2:	75 02                	jne    1000f6 <main+0xf6>
  1000f4:	eb fe                	jmp    1000f4 <main+0xf4>
  1000f6:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  1000fa:	0f 8e 86 00 00 00    	jle    100186 <main+0x186>
  100100:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100104:	83 ec 08             	sub    $0x8,%esp
  100107:	8d 45 94             	lea    -0x6c(%ebp),%eax
  10010a:	50                   	push   %eax
  10010b:	ff 75 e4             	push   -0x1c(%ebp)
  10010e:	e8 92 01 00 00       	call   1002a5 <itoa>
  100113:	83 c4 10             	add    $0x10,%esp
  100116:	83 ec 0c             	sub    $0xc,%esp
  100119:	68 a2 80 10 00       	push   $0x1080a2
  10011e:	e8 74 02 00 00       	call   100397 <strlen>
  100123:	83 c4 10             	add    $0x10,%esp
  100126:	83 ec 04             	sub    $0x4,%esp
  100129:	50                   	push   %eax
  10012a:	68 a2 80 10 00       	push   $0x1080a2
  10012f:	6a 01                	push   $0x1
  100131:	e8 93 03 00 00       	call   1004c9 <write>
  100136:	83 c4 10             	add    $0x10,%esp
  100139:	83 ec 0c             	sub    $0xc,%esp
  10013c:	8d 45 94             	lea    -0x6c(%ebp),%eax
  10013f:	50                   	push   %eax
  100140:	e8 52 02 00 00       	call   100397 <strlen>
  100145:	83 c4 10             	add    $0x10,%esp
  100148:	83 ec 04             	sub    $0x4,%esp
  10014b:	50                   	push   %eax
  10014c:	8d 45 94             	lea    -0x6c(%ebp),%eax
  10014f:	50                   	push   %eax
  100150:	6a 01                	push   $0x1
  100152:	e8 72 03 00 00       	call   1004c9 <write>
  100157:	83 c4 10             	add    $0x10,%esp
  10015a:	83 ec 0c             	sub    $0xc,%esp
  10015d:	68 a0 80 10 00       	push   $0x1080a0
  100162:	e8 30 02 00 00       	call   100397 <strlen>
  100167:	83 c4 10             	add    $0x10,%esp
  10016a:	83 ec 04             	sub    $0x4,%esp
  10016d:	50                   	push   %eax
  10016e:	68 a0 80 10 00       	push   $0x1080a0
  100173:	6a 01                	push   $0x1
  100175:	e8 4f 03 00 00       	call   1004c9 <write>
  10017a:	83 c4 10             	add    $0x10,%esp
  10017d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  100184:	eb 29                	jmp    1001af <main+0x1af>
  100186:	83 ec 0c             	sub    $0xc,%esp
  100189:	68 b8 80 10 00       	push   $0x1080b8
  10018e:	e8 04 02 00 00       	call   100397 <strlen>
  100193:	83 c4 10             	add    $0x10,%esp
  100196:	83 ec 04             	sub    $0x4,%esp
  100199:	50                   	push   %eax
  10019a:	68 b8 80 10 00       	push   $0x1080b8
  10019f:	6a 01                	push   $0x1
  1001a1:	e8 23 03 00 00       	call   1004c9 <write>
  1001a6:	83 c4 10             	add    $0x10,%esp
  1001a9:	eb 1b                	jmp    1001c6 <main+0x1c6>
  1001ab:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1001af:	81 7d ec f6 e0 f5 05 	cmpl   $0x5f5e0f6,-0x14(%ebp)
  1001b6:	7e f3                	jle    1001ab <main+0x1ab>
  1001b8:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1001bc:	83 7d f0 09          	cmpl   $0x9,-0x10(%ebp)
  1001c0:	0f 8e 20 ff ff ff    	jle    1000e6 <main+0xe6>
  1001c6:	83 ec 0c             	sub    $0xc,%esp
  1001c9:	68 d0 80 10 00       	push   $0x1080d0
  1001ce:	e8 c4 01 00 00       	call   100397 <strlen>
  1001d3:	83 c4 10             	add    $0x10,%esp
  1001d6:	83 ec 04             	sub    $0x4,%esp
  1001d9:	50                   	push   %eax
  1001da:	68 d0 80 10 00       	push   $0x1080d0
  1001df:	6a 01                	push   $0x1
  1001e1:	e8 e3 02 00 00       	call   1004c9 <write>
  1001e6:	83 c4 10             	add    $0x10,%esp
  1001e9:	83 ec 08             	sub    $0x8,%esp
  1001ec:	8d 45 94             	lea    -0x6c(%ebp),%eax
  1001ef:	50                   	push   %eax
  1001f0:	ff 75 f4             	push   -0xc(%ebp)
  1001f3:	e8 ad 00 00 00       	call   1002a5 <itoa>
  1001f8:	83 c4 10             	add    $0x10,%esp
  1001fb:	83 ec 0c             	sub    $0xc,%esp
  1001fe:	8d 45 94             	lea    -0x6c(%ebp),%eax
  100201:	50                   	push   %eax
  100202:	e8 90 01 00 00       	call   100397 <strlen>
  100207:	83 c4 10             	add    $0x10,%esp
  10020a:	83 ec 04             	sub    $0x4,%esp
  10020d:	50                   	push   %eax
  10020e:	8d 45 94             	lea    -0x6c(%ebp),%eax
  100211:	50                   	push   %eax
  100212:	6a 01                	push   $0x1
  100214:	e8 b0 02 00 00       	call   1004c9 <write>
  100219:	83 c4 10             	add    $0x10,%esp
  10021c:	83 ec 0c             	sub    $0xc,%esp
  10021f:	68 a0 80 10 00       	push   $0x1080a0
  100224:	e8 6e 01 00 00       	call   100397 <strlen>
  100229:	83 c4 10             	add    $0x10,%esp
  10022c:	83 ec 04             	sub    $0x4,%esp
  10022f:	50                   	push   %eax
  100230:	68 a0 80 10 00       	push   $0x1080a0
  100235:	6a 01                	push   $0x1
  100237:	e8 8d 02 00 00       	call   1004c9 <write>
  10023c:	83 c4 10             	add    $0x10,%esp
  10023f:	83 7d f4 0a          	cmpl   $0xa,-0xc(%ebp)
  100243:	75 25                	jne    10026a <main+0x26a>
  100245:	83 ec 0c             	sub    $0xc,%esp
  100248:	68 f9 80 10 00       	push   $0x1080f9
  10024d:	e8 45 01 00 00       	call   100397 <strlen>
  100252:	83 c4 10             	add    $0x10,%esp
  100255:	83 ec 04             	sub    $0x4,%esp
  100258:	50                   	push   %eax
  100259:	68 f9 80 10 00       	push   $0x1080f9
  10025e:	6a 01                	push   $0x1
  100260:	e8 64 02 00 00       	call   1004c9 <write>
  100265:	83 c4 10             	add    $0x10,%esp
  100268:	eb 23                	jmp    10028d <main+0x28d>
  10026a:	83 ec 0c             	sub    $0xc,%esp
  10026d:	68 09 81 10 00       	push   $0x108109
  100272:	e8 20 01 00 00       	call   100397 <strlen>
  100277:	83 c4 10             	add    $0x10,%esp
  10027a:	83 ec 04             	sub    $0x4,%esp
  10027d:	50                   	push   %eax
  10027e:	68 09 81 10 00       	push   $0x108109
  100283:	6a 01                	push   $0x1
  100285:	e8 3f 02 00 00       	call   1004c9 <write>
  10028a:	83 c4 10             	add    $0x10,%esp
  10028d:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  100294:	eb 04                	jmp    10029a <main+0x29a>
  100296:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
  10029a:	81 7d e8 3f 42 0f 00 	cmpl   $0xf423f,-0x18(%ebp)
  1002a1:	7e f3                	jle    100296 <main+0x296>
  1002a3:	eb fe                	jmp    1002a3 <main+0x2a3>

001002a5 <itoa>:
  1002a5:	55                   	push   %ebp
  1002a6:	89 e5                	mov    %esp,%ebp
  1002a8:	53                   	push   %ebx
  1002a9:	83 ec 10             	sub    $0x10,%esp
  1002ac:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1002b0:	75 14                	jne    1002c6 <itoa+0x21>
  1002b2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1002b5:	c6 00 30             	movb   $0x30,(%eax)
  1002b8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1002bb:	83 c0 01             	add    $0x1,%eax
  1002be:	c6 00 00             	movb   $0x0,(%eax)
  1002c1:	e9 cc 00 00 00       	jmp    100392 <itoa+0xed>
  1002c6:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1002cd:	eb 57                	jmp    100326 <itoa+0x81>
  1002cf:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1002d2:	ba 67 66 66 66       	mov    $0x66666667,%edx
  1002d7:	89 c8                	mov    %ecx,%eax
  1002d9:	f7 ea                	imul   %edx
  1002db:	89 d0                	mov    %edx,%eax
  1002dd:	c1 f8 02             	sar    $0x2,%eax
  1002e0:	89 cb                	mov    %ecx,%ebx
  1002e2:	c1 fb 1f             	sar    $0x1f,%ebx
  1002e5:	29 d8                	sub    %ebx,%eax
  1002e7:	89 c2                	mov    %eax,%edx
  1002e9:	89 d0                	mov    %edx,%eax
  1002eb:	c1 e0 02             	shl    $0x2,%eax
  1002ee:	01 d0                	add    %edx,%eax
  1002f0:	01 c0                	add    %eax,%eax
  1002f2:	29 c1                	sub    %eax,%ecx
  1002f4:	89 ca                	mov    %ecx,%edx
  1002f6:	89 d0                	mov    %edx,%eax
  1002f8:	8d 48 30             	lea    0x30(%eax),%ecx
  1002fb:	8b 55 f8             	mov    -0x8(%ebp),%edx
  1002fe:	8b 45 0c             	mov    0xc(%ebp),%eax
  100301:	01 d0                	add    %edx,%eax
  100303:	89 ca                	mov    %ecx,%edx
  100305:	88 10                	mov    %dl,(%eax)
  100307:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10030a:	ba 67 66 66 66       	mov    $0x66666667,%edx
  10030f:	89 c8                	mov    %ecx,%eax
  100311:	f7 ea                	imul   %edx
  100313:	89 d0                	mov    %edx,%eax
  100315:	c1 f8 02             	sar    $0x2,%eax
  100318:	c1 f9 1f             	sar    $0x1f,%ecx
  10031b:	89 ca                	mov    %ecx,%edx
  10031d:	29 d0                	sub    %edx,%eax
  10031f:	89 45 08             	mov    %eax,0x8(%ebp)
  100322:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100326:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10032a:	7f a3                	jg     1002cf <itoa+0x2a>
  10032c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100333:	eb 41                	jmp    100376 <itoa+0xd1>
  100335:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100338:	8b 45 0c             	mov    0xc(%ebp),%eax
  10033b:	01 d0                	add    %edx,%eax
  10033d:	0f b6 00             	movzbl (%eax),%eax
  100340:	88 45 f3             	mov    %al,-0xd(%ebp)
  100343:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100346:	2b 45 f4             	sub    -0xc(%ebp),%eax
  100349:	8d 50 ff             	lea    -0x1(%eax),%edx
  10034c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10034f:	01 d0                	add    %edx,%eax
  100351:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100354:	8b 55 0c             	mov    0xc(%ebp),%edx
  100357:	01 ca                	add    %ecx,%edx
  100359:	0f b6 00             	movzbl (%eax),%eax
  10035c:	88 02                	mov    %al,(%edx)
  10035e:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100361:	2b 45 f4             	sub    -0xc(%ebp),%eax
  100364:	8d 50 ff             	lea    -0x1(%eax),%edx
  100367:	8b 45 0c             	mov    0xc(%ebp),%eax
  10036a:	01 c2                	add    %eax,%edx
  10036c:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100370:	88 02                	mov    %al,(%edx)
  100372:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100376:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100379:	89 c2                	mov    %eax,%edx
  10037b:	c1 ea 1f             	shr    $0x1f,%edx
  10037e:	01 d0                	add    %edx,%eax
  100380:	d1 f8                	sar    %eax
  100382:	39 45 f4             	cmp    %eax,-0xc(%ebp)
  100385:	7c ae                	jl     100335 <itoa+0x90>
  100387:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10038a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10038d:	01 d0                	add    %edx,%eax
  10038f:	c6 00 00             	movb   $0x0,(%eax)
  100392:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100395:	c9                   	leave  
  100396:	c3                   	ret    

00100397 <strlen>:
  100397:	55                   	push   %ebp
  100398:	89 e5                	mov    %esp,%ebp
  10039a:	83 ec 10             	sub    $0x10,%esp
  10039d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1003a4:	eb 04                	jmp    1003aa <strlen+0x13>
  1003a6:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1003aa:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1003ad:	8b 45 08             	mov    0x8(%ebp),%eax
  1003b0:	01 d0                	add    %edx,%eax
  1003b2:	0f b6 00             	movzbl (%eax),%eax
  1003b5:	84 c0                	test   %al,%al
  1003b7:	75 ed                	jne    1003a6 <strlen+0xf>
  1003b9:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1003bc:	c9                   	leave  
  1003bd:	c3                   	ret    

001003be <perror>:
  1003be:	55                   	push   %ebp
  1003bf:	89 e5                	mov    %esp,%ebp
  1003c1:	83 ec 08             	sub    $0x8,%esp
  1003c4:	a1 38 82 10 00       	mov    0x108238,%eax
  1003c9:	83 f8 16             	cmp    $0x16,%eax
  1003cc:	75 25                	jne    1003f3 <perror+0x35>
  1003ce:	68 1e 81 10 00       	push   $0x10811e
  1003d3:	e8 bf ff ff ff       	call   100397 <strlen>
  1003d8:	83 c4 04             	add    $0x4,%esp
  1003db:	83 ec 04             	sub    $0x4,%esp
  1003de:	50                   	push   %eax
  1003df:	68 1e 81 10 00       	push   $0x10811e
  1003e4:	6a 01                	push   $0x1
  1003e6:	e8 de 00 00 00       	call   1004c9 <write>
  1003eb:	83 c4 10             	add    $0x10,%esp
  1003ee:	e9 d3 00 00 00       	jmp    1004c6 <perror+0x108>
  1003f3:	a1 38 82 10 00       	mov    0x108238,%eax
  1003f8:	83 f8 0e             	cmp    $0xe,%eax
  1003fb:	75 28                	jne    100425 <perror+0x67>
  1003fd:	83 ec 0c             	sub    $0xc,%esp
  100400:	68 30 81 10 00       	push   $0x108130
  100405:	e8 8d ff ff ff       	call   100397 <strlen>
  10040a:	83 c4 10             	add    $0x10,%esp
  10040d:	83 ec 04             	sub    $0x4,%esp
  100410:	50                   	push   %eax
  100411:	68 30 81 10 00       	push   $0x108130
  100416:	6a 01                	push   $0x1
  100418:	e8 ac 00 00 00       	call   1004c9 <write>
  10041d:	83 c4 10             	add    $0x10,%esp
  100420:	e9 a1 00 00 00       	jmp    1004c6 <perror+0x108>
  100425:	a1 38 82 10 00       	mov    0x108238,%eax
  10042a:	83 f8 09             	cmp    $0x9,%eax
  10042d:	75 25                	jne    100454 <perror+0x96>
  10042f:	83 ec 0c             	sub    $0xc,%esp
  100432:	68 3d 81 10 00       	push   $0x10813d
  100437:	e8 5b ff ff ff       	call   100397 <strlen>
  10043c:	83 c4 10             	add    $0x10,%esp
  10043f:	83 ec 04             	sub    $0x4,%esp
  100442:	50                   	push   %eax
  100443:	68 3d 81 10 00       	push   $0x10813d
  100448:	6a 01                	push   $0x1
  10044a:	e8 7a 00 00 00       	call   1004c9 <write>
  10044f:	83 c4 10             	add    $0x10,%esp
  100452:	eb 72                	jmp    1004c6 <perror+0x108>
  100454:	a1 38 82 10 00       	mov    0x108238,%eax
  100459:	83 f8 0d             	cmp    $0xd,%eax
  10045c:	75 25                	jne    100483 <perror+0xc5>
  10045e:	83 ec 0c             	sub    $0xc,%esp
  100461:	68 52 81 10 00       	push   $0x108152
  100466:	e8 2c ff ff ff       	call   100397 <strlen>
  10046b:	83 c4 10             	add    $0x10,%esp
  10046e:	83 ec 04             	sub    $0x4,%esp
  100471:	50                   	push   %eax
  100472:	68 52 81 10 00       	push   $0x108152
  100477:	6a 01                	push   $0x1
  100479:	e8 4b 00 00 00       	call   1004c9 <write>
  10047e:	83 c4 10             	add    $0x10,%esp
  100481:	eb 43                	jmp    1004c6 <perror+0x108>
  100483:	a1 38 82 10 00       	mov    0x108238,%eax
  100488:	83 f8 28             	cmp    $0x28,%eax
  10048b:	75 25                	jne    1004b2 <perror+0xf4>
  10048d:	83 ec 0c             	sub    $0xc,%esp
  100490:	68 65 81 10 00       	push   $0x108165
  100495:	e8 fd fe ff ff       	call   100397 <strlen>
  10049a:	83 c4 10             	add    $0x10,%esp
  10049d:	83 ec 04             	sub    $0x4,%esp
  1004a0:	50                   	push   %eax
  1004a1:	68 65 81 10 00       	push   $0x108165
  1004a6:	6a 01                	push   $0x1
  1004a8:	e8 1c 00 00 00       	call   1004c9 <write>
  1004ad:	83 c4 10             	add    $0x10,%esp
  1004b0:	eb 14                	jmp    1004c6 <perror+0x108>
  1004b2:	83 ec 04             	sub    $0x4,%esp
  1004b5:	6a 0e                	push   $0xe
  1004b7:	68 7f 81 10 00       	push   $0x10817f
  1004bc:	6a 01                	push   $0x1
  1004be:	e8 06 00 00 00       	call   1004c9 <write>
  1004c3:	83 c4 10             	add    $0x10,%esp
  1004c6:	90                   	nop
  1004c7:	c9                   	leave  
  1004c8:	c3                   	ret    

001004c9 <write>:
  1004c9:	55                   	push   %ebp
  1004ca:	89 e5                	mov    %esp,%ebp
  1004cc:	53                   	push   %ebx
  1004cd:	51                   	push   %ecx
  1004ce:	52                   	push   %edx
  1004cf:	8b 55 08             	mov    0x8(%ebp),%edx
  1004d2:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  1004d5:	8b 5d 10             	mov    0x10(%ebp),%ebx
  1004d8:	b8 04 00 00 00       	mov    $0x4,%eax
  1004dd:	68 e7 04 10 00       	push   $0x1004e7
  1004e2:	55                   	push   %ebp
  1004e3:	89 e5                	mov    %esp,%ebp
  1004e5:	0f 34                	sysenter 

001004e7 <return_address>:
  1004e7:	5d                   	pop    %ebp
  1004e8:	83 c4 04             	add    $0x4,%esp
  1004eb:	5a                   	pop    %edx
  1004ec:	59                   	pop    %ecx
  1004ed:	5b                   	pop    %ebx
  1004ee:	83 f8 00             	cmp    $0x0,%eax
  1004f1:	7d 0c                	jge    1004ff <write_fin>
  1004f3:	f7 d8                	neg    %eax
  1004f5:	a3 38 82 10 00       	mov    %eax,0x108238
  1004fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax

001004ff <write_fin>:
  1004ff:	5d                   	pop    %ebp
  100500:	c3                   	ret    

00100501 <read>:
  100501:	55                   	push   %ebp
  100502:	89 e5                	mov    %esp,%ebp
  100504:	51                   	push   %ecx
  100505:	52                   	push   %edx
  100506:	8b 55 08             	mov    0x8(%ebp),%edx
  100509:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  10050c:	b8 0b 00 00 00       	mov    $0xb,%eax
  100511:	68 1b 05 10 00       	push   $0x10051b
  100516:	55                   	push   %ebp
  100517:	89 e5                	mov    %esp,%ebp
  100519:	0f 34                	sysenter 

0010051b <return_address_read>:
  10051b:	5d                   	pop    %ebp
  10051c:	83 c4 04             	add    $0x4,%esp
  10051f:	5a                   	pop    %edx
  100520:	59                   	pop    %ecx
  100521:	83 f8 00             	cmp    $0x0,%eax
  100524:	7d 0c                	jge    100532 <read_fin>
  100526:	f7 d8                	neg    %eax
  100528:	a3 38 82 10 00       	mov    %eax,0x108238
  10052d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax

00100532 <read_fin>:
  100532:	5d                   	pop    %ebp
  100533:	c3                   	ret    

00100534 <gettime>:
  100534:	55                   	push   %ebp
  100535:	89 e5                	mov    %esp,%ebp
  100537:	b8 0a 00 00 00       	mov    $0xa,%eax
  10053c:	51                   	push   %ecx
  10053d:	52                   	push   %edx
  10053e:	68 48 05 10 00       	push   $0x100548
  100543:	55                   	push   %ebp
  100544:	89 e5                	mov    %esp,%ebp
  100546:	0f 34                	sysenter 

00100548 <return_address1>:
  100548:	5d                   	pop    %ebp
  100549:	83 c4 04             	add    $0x4,%esp
  10054c:	5a                   	pop    %edx
  10054d:	59                   	pop    %ecx
  10054e:	5d                   	pop    %ebp
  10054f:	c3                   	ret    

00100550 <getpid>:
  100550:	55                   	push   %ebp
  100551:	89 e5                	mov    %esp,%ebp
  100553:	b8 14 00 00 00       	mov    $0x14,%eax
  100558:	51                   	push   %ecx
  100559:	52                   	push   %edx
  10055a:	68 64 05 10 00       	push   $0x100564
  10055f:	55                   	push   %ebp
  100560:	89 e5                	mov    %esp,%ebp
  100562:	0f 34                	sysenter 

00100564 <return_address2>:
  100564:	5d                   	pop    %ebp
  100565:	83 c4 04             	add    $0x4,%esp
  100568:	5a                   	pop    %edx
  100569:	59                   	pop    %ecx
  10056a:	5d                   	pop    %ebp
  10056b:	c3                   	ret    

0010056c <fork>:
  10056c:	55                   	push   %ebp
  10056d:	89 e5                	mov    %esp,%ebp
  10056f:	b8 02 00 00 00       	mov    $0x2,%eax
  100574:	51                   	push   %ecx
  100575:	52                   	push   %edx
  100576:	68 80 05 10 00       	push   $0x100580
  10057b:	55                   	push   %ebp
  10057c:	89 e5                	mov    %esp,%ebp
  10057e:	0f 34                	sysenter 

00100580 <return_address_fork>:
  100580:	5d                   	pop    %ebp
  100581:	83 c4 04             	add    $0x4,%esp
  100584:	5a                   	pop    %edx
  100585:	59                   	pop    %ecx
  100586:	83 f8 00             	cmp    $0x0,%eax
  100589:	7d 0c                	jge    100597 <fork_ok>
  10058b:	f7 d8                	neg    %eax
  10058d:	a3 38 82 10 00       	mov    %eax,0x108238
  100592:	b8 ff ff ff ff       	mov    $0xffffffff,%eax

00100597 <fork_ok>:
  100597:	5d                   	pop    %ebp
  100598:	c3                   	ret    

00100599 <exit>:
  100599:	55                   	push   %ebp
  10059a:	89 e5                	mov    %esp,%ebp
  10059c:	b8 01 00 00 00       	mov    $0x1,%eax
  1005a1:	51                   	push   %ecx
  1005a2:	52                   	push   %edx
  1005a3:	68 ad 05 10 00       	push   $0x1005ad
  1005a8:	55                   	push   %ebp
  1005a9:	89 e5                	mov    %esp,%ebp
  1005ab:	0f 34                	sysenter 

001005ad <return_address_exit>:
  1005ad:	5d                   	pop    %ebp
  1005ae:	83 c4 04             	add    $0x4,%esp
  1005b1:	5a                   	pop    %edx
  1005b2:	59                   	pop    %ecx
  1005b3:	5d                   	pop    %ebp
  1005b4:	c3                   	ret    

001005b5 <block>:
  1005b5:	55                   	push   %ebp
  1005b6:	89 e5                	mov    %esp,%ebp
  1005b8:	b8 06 00 00 00       	mov    $0x6,%eax
  1005bd:	51                   	push   %ecx
  1005be:	52                   	push   %edx
  1005bf:	68 c9 05 10 00       	push   $0x1005c9
  1005c4:	55                   	push   %ebp
  1005c5:	89 e5                	mov    %esp,%ebp
  1005c7:	0f 34                	sysenter 

001005c9 <return_address_block>:
  1005c9:	5d                   	pop    %ebp
  1005ca:	83 c4 04             	add    $0x4,%esp
  1005cd:	5a                   	pop    %edx
  1005ce:	59                   	pop    %ecx
  1005cf:	5d                   	pop    %ebp
  1005d0:	c3                   	ret    

001005d1 <unblock>:
  1005d1:	55                   	push   %ebp
  1005d2:	89 e5                	mov    %esp,%ebp
  1005d4:	b8 07 00 00 00       	mov    $0x7,%eax
  1005d9:	53                   	push   %ebx
  1005da:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1005dd:	51                   	push   %ecx
  1005de:	52                   	push   %edx
  1005df:	68 e9 05 10 00       	push   $0x1005e9
  1005e4:	55                   	push   %ebp
  1005e5:	89 e5                	mov    %esp,%ebp
  1005e7:	0f 34                	sysenter 

001005e9 <return_address_unblock>:
  1005e9:	5d                   	pop    %ebp
  1005ea:	83 c4 04             	add    $0x4,%esp
  1005ed:	5a                   	pop    %edx
  1005ee:	59                   	pop    %ecx
  1005ef:	5b                   	pop    %ebx
  1005f0:	83 f8 00             	cmp    $0x0,%eax
  1005f3:	7d 0c                	jge    100601 <unbl_ok>
  1005f5:	f7 d8                	neg    %eax
  1005f7:	a3 38 82 10 00       	mov    %eax,0x108238
  1005fc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax

00100601 <unbl_ok>:
  100601:	5d                   	pop    %ebp
  100602:	c3                   	ret    
