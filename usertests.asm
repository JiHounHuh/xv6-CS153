
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 10             	sub    $0x10,%esp
  printf(1, "usertests starting\n");
       9:	c7 44 24 04 b6 53 00 	movl   $0x53b6,0x4(%esp)
      10:	00 
      11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      18:	e8 43 40 00 00       	call   4060 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      24:	00 
      25:	c7 04 24 ca 53 00 00 	movl   $0x53ca,(%esp)
      2c:	e8 21 3f 00 00       	call   3f52 <open>
      31:	85 c0                	test   %eax,%eax
      33:	78 20                	js     55 <main+0x55>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      35:	c7 44 24 04 34 5b 00 	movl   $0x5b34,0x4(%esp)
      3c:	00 
      3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      44:	e8 17 40 00 00       	call   4060 <printf>
    exit(0);
      49:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      50:	e8 bd 3e 00 00       	call   3f12 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      55:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
      5c:	00 
      5d:	c7 04 24 ca 53 00 00 	movl   $0x53ca,(%esp)
      64:	e8 e9 3e 00 00       	call   3f52 <open>
      69:	89 04 24             	mov    %eax,(%esp)
      6c:	e8 c9 3e 00 00       	call   3f3a <close>

  argptest();
      71:	e8 ca 3b 00 00       	call   3c40 <argptest>
  createdelete();
      76:	e8 75 12 00 00       	call   12f0 <createdelete>
      7b:	90                   	nop
      7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  linkunlink();
      80:	e8 ab 1c 00 00       	call   1d30 <linkunlink>
  concreate();
      85:	e8 66 19 00 00       	call   19f0 <concreate>
  fourfiles();
      8a:	e8 21 10 00 00       	call   10b0 <fourfiles>
      8f:	90                   	nop
  sharedfd();
      90:	e8 1b 0e 00 00       	call   eb0 <sharedfd>

  bigargtest();
      95:	e8 06 38 00 00       	call   38a0 <bigargtest>
  bigwrite();
      9a:	e8 91 27 00 00       	call   2830 <bigwrite>
      9f:	90                   	nop
  bigargtest();
      a0:	e8 fb 37 00 00       	call   38a0 <bigargtest>
  bsstest();
      a5:	e8 76 37 00 00       	call   3820 <bsstest>
  sbrktest();
      aa:	e8 a1 32 00 00       	call   3350 <sbrktest>
      af:	90                   	nop
  validatetest();
      b0:	e8 bb 36 00 00       	call   3770 <validatetest>

  opentest();
      b5:	e8 16 03 00 00       	call   3d0 <opentest>
  writetest();
      ba:	e8 c1 03 00 00       	call   480 <writetest>
      bf:	90                   	nop
  writetest1();
      c0:	e8 8b 05 00 00       	call   650 <writetest1>
  createtest();
      c5:	e8 66 07 00 00       	call   830 <createtest>

  openiputtest();
      ca:	e8 01 02 00 00       	call   2d0 <openiputtest>
      cf:	90                   	nop
  exitiputtest();
      d0:	e8 2b 01 00 00       	call   200 <exitiputtest>
  iputtest();
      d5:	e8 66 00 00 00       	call   140 <iputtest>

  mem();
      da:	e8 f1 0c 00 00       	call   dd0 <mem>
      df:	90                   	nop
  pipe1();
      e0:	e8 1b 09 00 00       	call   a00 <pipe1>
  preempt();
      e5:	e8 f6 0a 00 00       	call   be0 <preempt>
  exitwait();
      ea:	e8 51 0c 00 00       	call   d40 <exitwait>
      ef:	90                   	nop

  rmdot();
      f0:	e8 fb 2b 00 00       	call   2cf0 <rmdot>
  fourteen();
      f5:	e8 76 2a 00 00       	call   2b70 <fourteen>
  bigfile();
      fa:	e8 41 28 00 00       	call   2940 <bigfile>
      ff:	90                   	nop
  subdir();
     100:	e8 ab 1e 00 00       	call   1fb0 <subdir>
  linktest();
     105:	e8 46 16 00 00       	call   1750 <linktest>
  unlinkread();
     10a:	e8 41 14 00 00       	call   1550 <unlinkread>
     10f:	90                   	nop
  dirfile();
     110:	e8 ab 2d 00 00       	call   2ec0 <dirfile>
  iref();
     115:	e8 26 30 00 00       	call   3140 <iref>
  forktest();
     11a:	e8 51 31 00 00       	call   3270 <forktest>
     11f:	90                   	nop
  bigdir(); // slow
     120:	e8 2b 1d 00 00       	call   1e50 <bigdir>

  uio();
     125:	e8 86 3a 00 00       	call   3bb0 <uio>

  exectest();
     12a:	e8 71 08 00 00       	call   9a0 <exectest>

  exit(0);
     12f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     136:	e8 d7 3d 00 00       	call   3f12 <exit>
     13b:	66 90                	xchg   %ax,%ax
     13d:	66 90                	xchg   %ax,%ax
     13f:	90                   	nop

00000140 <iputtest>:
{
     140:	55                   	push   %ebp
     141:	89 e5                	mov    %esp,%ebp
     143:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "iput test\n");
     146:	a1 44 64 00 00       	mov    0x6444,%eax
     14b:	c7 44 24 04 5c 44 00 	movl   $0x445c,0x4(%esp)
     152:	00 
     153:	89 04 24             	mov    %eax,(%esp)
     156:	e8 05 3f 00 00       	call   4060 <printf>
  if(mkdir("iputdir") < 0){
     15b:	c7 04 24 ef 43 00 00 	movl   $0x43ef,(%esp)
     162:	e8 13 3e 00 00       	call   3f7a <mkdir>
     167:	85 c0                	test   %eax,%eax
     169:	78 47                	js     1b2 <iputtest+0x72>
  if(chdir("iputdir") < 0){
     16b:	c7 04 24 ef 43 00 00 	movl   $0x43ef,(%esp)
     172:	e8 0b 3e 00 00       	call   3f82 <chdir>
     177:	85 c0                	test   %eax,%eax
     179:	78 6c                	js     1e7 <iputtest+0xa7>
  if(unlink("../iputdir") < 0){
     17b:	c7 04 24 ec 43 00 00 	movl   $0x43ec,(%esp)
     182:	e8 db 3d 00 00       	call   3f62 <unlink>
     187:	85 c0                	test   %eax,%eax
     189:	78 52                	js     1dd <iputtest+0x9d>
  if(chdir("/") < 0){
     18b:	c7 04 24 11 44 00 00 	movl   $0x4411,(%esp)
     192:	e8 eb 3d 00 00       	call   3f82 <chdir>
     197:	85 c0                	test   %eax,%eax
     199:	78 38                	js     1d3 <iputtest+0x93>
  printf(stdout, "iput test ok\n");
     19b:	a1 44 64 00 00       	mov    0x6444,%eax
     1a0:	c7 44 24 04 94 44 00 	movl   $0x4494,0x4(%esp)
     1a7:	00 
     1a8:	89 04 24             	mov    %eax,(%esp)
     1ab:	e8 b0 3e 00 00       	call   4060 <printf>
}
     1b0:	c9                   	leave  
     1b1:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1b2:	c7 44 24 04 c8 43 00 	movl   $0x43c8,0x4(%esp)
     1b9:	00 
    printf(stdout, "chdir iputdir failed\n");
     1ba:	a1 44 64 00 00       	mov    0x6444,%eax
     1bf:	89 04 24             	mov    %eax,(%esp)
     1c2:	e8 99 3e 00 00       	call   4060 <printf>
    exit(-1);
     1c7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     1ce:	e8 3f 3d 00 00       	call   3f12 <exit>
    printf(stdout, "chdir / failed\n");
     1d3:	c7 44 24 04 13 44 00 	movl   $0x4413,0x4(%esp)
     1da:	00 
     1db:	eb dd                	jmp    1ba <iputtest+0x7a>
    printf(stdout, "unlink ../iputdir failed\n");
     1dd:	c7 44 24 04 f7 43 00 	movl   $0x43f7,0x4(%esp)
     1e4:	00 
     1e5:	eb d3                	jmp    1ba <iputtest+0x7a>
    printf(stdout, "chdir iputdir failed\n");
     1e7:	c7 44 24 04 d6 43 00 	movl   $0x43d6,0x4(%esp)
     1ee:	00 
     1ef:	eb c9                	jmp    1ba <iputtest+0x7a>
     1f1:	eb 0d                	jmp    200 <exitiputtest>
     1f3:	90                   	nop
     1f4:	90                   	nop
     1f5:	90                   	nop
     1f6:	90                   	nop
     1f7:	90                   	nop
     1f8:	90                   	nop
     1f9:	90                   	nop
     1fa:	90                   	nop
     1fb:	90                   	nop
     1fc:	90                   	nop
     1fd:	90                   	nop
     1fe:	90                   	nop
     1ff:	90                   	nop

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exitiput test\n");
     206:	a1 44 64 00 00       	mov    0x6444,%eax
     20b:	c7 44 24 04 23 44 00 	movl   $0x4423,0x4(%esp)
     212:	00 
     213:	89 04 24             	mov    %eax,(%esp)
     216:	e8 45 3e 00 00       	call   4060 <printf>
  pid = fork();
     21b:	e8 ea 3c 00 00       	call   3f0a <fork>
  if(pid < 0){
     220:	85 c0                	test   %eax,%eax
     222:	0f 88 89 00 00 00    	js     2b1 <exitiputtest+0xb1>
  if(pid == 0){
     228:	75 46                	jne    270 <exitiputtest+0x70>
    if(mkdir("iputdir") < 0){
     22a:	c7 04 24 ef 43 00 00 	movl   $0x43ef,(%esp)
     231:	e8 44 3d 00 00       	call   3f7a <mkdir>
     236:	85 c0                	test   %eax,%eax
     238:	0f 88 87 00 00 00    	js     2c5 <exitiputtest+0xc5>
    if(chdir("iputdir") < 0){
     23e:	c7 04 24 ef 43 00 00 	movl   $0x43ef,(%esp)
     245:	e8 38 3d 00 00       	call   3f82 <chdir>
     24a:	85 c0                	test   %eax,%eax
     24c:	78 6d                	js     2bb <exitiputtest+0xbb>
    if(unlink("../iputdir") < 0){
     24e:	c7 04 24 ec 43 00 00 	movl   $0x43ec,(%esp)
     255:	e8 08 3d 00 00       	call   3f62 <unlink>
     25a:	85 c0                	test   %eax,%eax
     25c:	78 32                	js     290 <exitiputtest+0x90>
    exit(0);
     25e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     265:	e8 a8 3c 00 00       	call   3f12 <exit>
     26a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  wait();
     270:	e8 a5 3c 00 00       	call   3f1a <wait>
  printf(stdout, "exitiput test ok\n");
     275:	a1 44 64 00 00       	mov    0x6444,%eax
     27a:	c7 44 24 04 46 44 00 	movl   $0x4446,0x4(%esp)
     281:	00 
     282:	89 04 24             	mov    %eax,(%esp)
     285:	e8 d6 3d 00 00       	call   4060 <printf>
}
     28a:	c9                   	leave  
     28b:	c3                   	ret    
     28c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     290:	c7 44 24 04 f7 43 00 	movl   $0x43f7,0x4(%esp)
     297:	00 
      printf(stdout, "mkdir failed\n");
     298:	a1 44 64 00 00       	mov    0x6444,%eax
     29d:	89 04 24             	mov    %eax,(%esp)
     2a0:	e8 bb 3d 00 00       	call   4060 <printf>
      exit(-1);
     2a5:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     2ac:	e8 61 3c 00 00       	call   3f12 <exit>
    printf(stdout, "fork failed\n");
     2b1:	c7 44 24 04 09 53 00 	movl   $0x5309,0x4(%esp)
     2b8:	00 
     2b9:	eb dd                	jmp    298 <exitiputtest+0x98>
      printf(stdout, "child chdir failed\n");
     2bb:	c7 44 24 04 32 44 00 	movl   $0x4432,0x4(%esp)
     2c2:	00 
     2c3:	eb d3                	jmp    298 <exitiputtest+0x98>
      printf(stdout, "mkdir failed\n");
     2c5:	c7 44 24 04 c8 43 00 	movl   $0x43c8,0x4(%esp)
     2cc:	00 
     2cd:	eb c9                	jmp    298 <exitiputtest+0x98>
     2cf:	90                   	nop

000002d0 <openiputtest>:
{
     2d0:	55                   	push   %ebp
     2d1:	89 e5                	mov    %esp,%ebp
     2d3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "openiput test\n");
     2d6:	a1 44 64 00 00       	mov    0x6444,%eax
     2db:	c7 44 24 04 58 44 00 	movl   $0x4458,0x4(%esp)
     2e2:	00 
     2e3:	89 04 24             	mov    %eax,(%esp)
     2e6:	e8 75 3d 00 00       	call   4060 <printf>
  if(mkdir("oidir") < 0){
     2eb:	c7 04 24 67 44 00 00 	movl   $0x4467,(%esp)
     2f2:	e8 83 3c 00 00       	call   3f7a <mkdir>
     2f7:	85 c0                	test   %eax,%eax
     2f9:	0f 88 95 00 00 00    	js     394 <openiputtest+0xc4>
  pid = fork();
     2ff:	e8 06 3c 00 00       	call   3f0a <fork>
  if(pid < 0){
     304:	85 c0                	test   %eax,%eax
     306:	0f 88 a9 00 00 00    	js     3b5 <openiputtest+0xe5>
     30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(pid == 0){
     310:	75 3e                	jne    350 <openiputtest+0x80>
    int fd = open("oidir", O_RDWR);
     312:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     319:	00 
     31a:	c7 04 24 67 44 00 00 	movl   $0x4467,(%esp)
     321:	e8 2c 3c 00 00       	call   3f52 <open>
    if(fd >= 0){
     326:	85 c0                	test   %eax,%eax
     328:	78 5e                	js     388 <openiputtest+0xb8>
      printf(stdout, "open directory for write succeeded\n");
     32a:	a1 44 64 00 00       	mov    0x6444,%eax
     32f:	c7 44 24 04 ec 53 00 	movl   $0x53ec,0x4(%esp)
     336:	00 
     337:	89 04 24             	mov    %eax,(%esp)
     33a:	e8 21 3d 00 00       	call   4060 <printf>
      exit(0);
     33f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     346:	e8 c7 3b 00 00       	call   3f12 <exit>
     34b:	90                   	nop
     34c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  sleep(1);
     350:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     357:	e8 46 3c 00 00       	call   3fa2 <sleep>
  if(unlink("oidir") != 0){
     35c:	c7 04 24 67 44 00 00 	movl   $0x4467,(%esp)
     363:	e8 fa 3b 00 00       	call   3f62 <unlink>
     368:	85 c0                	test   %eax,%eax
     36a:	75 53                	jne    3bf <openiputtest+0xef>
  wait();
     36c:	e8 a9 3b 00 00       	call   3f1a <wait>
  printf(stdout, "openiput test ok\n");
     371:	a1 44 64 00 00       	mov    0x6444,%eax
     376:	c7 44 24 04 90 44 00 	movl   $0x4490,0x4(%esp)
     37d:	00 
     37e:	89 04 24             	mov    %eax,(%esp)
     381:	e8 da 3c 00 00       	call   4060 <printf>
}
     386:	c9                   	leave  
     387:	c3                   	ret    
    exit(0);
     388:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     38f:	e8 7e 3b 00 00       	call   3f12 <exit>
    printf(stdout, "mkdir oidir failed\n");
     394:	c7 44 24 04 6d 44 00 	movl   $0x446d,0x4(%esp)
     39b:	00 
    printf(stdout, "fork failed\n");
     39c:	a1 44 64 00 00       	mov    0x6444,%eax
     3a1:	89 04 24             	mov    %eax,(%esp)
     3a4:	e8 b7 3c 00 00       	call   4060 <printf>
    exit(-1);
     3a9:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     3b0:	e8 5d 3b 00 00       	call   3f12 <exit>
    printf(stdout, "fork failed\n");
     3b5:	c7 44 24 04 09 53 00 	movl   $0x5309,0x4(%esp)
     3bc:	00 
     3bd:	eb dd                	jmp    39c <openiputtest+0xcc>
    printf(stdout, "unlink failed\n");
     3bf:	c7 44 24 04 81 44 00 	movl   $0x4481,0x4(%esp)
     3c6:	00 
     3c7:	eb d3                	jmp    39c <openiputtest+0xcc>
     3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003d0 <opentest>:
{
     3d0:	55                   	push   %ebp
     3d1:	89 e5                	mov    %esp,%ebp
     3d3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "open test\n");
     3d6:	a1 44 64 00 00       	mov    0x6444,%eax
     3db:	c7 44 24 04 a2 44 00 	movl   $0x44a2,0x4(%esp)
     3e2:	00 
     3e3:	89 04 24             	mov    %eax,(%esp)
     3e6:	e8 75 3c 00 00       	call   4060 <printf>
  fd = open("echo", 0);
     3eb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     3f2:	00 
     3f3:	c7 04 24 ad 44 00 00 	movl   $0x44ad,(%esp)
     3fa:	e8 53 3b 00 00       	call   3f52 <open>
  if(fd < 0){
     3ff:	85 c0                	test   %eax,%eax
     401:	78 37                	js     43a <opentest+0x6a>
  close(fd);
     403:	89 04 24             	mov    %eax,(%esp)
     406:	e8 2f 3b 00 00       	call   3f3a <close>
  fd = open("doesnotexist", 0);
     40b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     412:	00 
     413:	c7 04 24 c5 44 00 00 	movl   $0x44c5,(%esp)
     41a:	e8 33 3b 00 00       	call   3f52 <open>
  if(fd >= 0){
     41f:	85 c0                	test   %eax,%eax
     421:	79 38                	jns    45b <opentest+0x8b>
  printf(stdout, "open test ok\n");
     423:	a1 44 64 00 00       	mov    0x6444,%eax
     428:	c7 44 24 04 f0 44 00 	movl   $0x44f0,0x4(%esp)
     42f:	00 
     430:	89 04 24             	mov    %eax,(%esp)
     433:	e8 28 3c 00 00       	call   4060 <printf>
}
     438:	c9                   	leave  
     439:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     43a:	a1 44 64 00 00       	mov    0x6444,%eax
     43f:	c7 44 24 04 b2 44 00 	movl   $0x44b2,0x4(%esp)
     446:	00 
     447:	89 04 24             	mov    %eax,(%esp)
     44a:	e8 11 3c 00 00       	call   4060 <printf>
    exit(-1);
     44f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     456:	e8 b7 3a 00 00       	call   3f12 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     45b:	a1 44 64 00 00       	mov    0x6444,%eax
     460:	c7 44 24 04 d2 44 00 	movl   $0x44d2,0x4(%esp)
     467:	00 
     468:	89 04 24             	mov    %eax,(%esp)
     46b:	e8 f0 3b 00 00       	call   4060 <printf>
    exit(0);
     470:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     477:	e8 96 3a 00 00       	call   3f12 <exit>
     47c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000480 <writetest>:
{
     480:	55                   	push   %ebp
     481:	89 e5                	mov    %esp,%ebp
     483:	56                   	push   %esi
     484:	53                   	push   %ebx
     485:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "small file test\n");
     488:	a1 44 64 00 00       	mov    0x6444,%eax
     48d:	c7 44 24 04 fe 44 00 	movl   $0x44fe,0x4(%esp)
     494:	00 
     495:	89 04 24             	mov    %eax,(%esp)
     498:	e8 c3 3b 00 00       	call   4060 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     49d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     4a4:	00 
     4a5:	c7 04 24 0f 45 00 00 	movl   $0x450f,(%esp)
     4ac:	e8 a1 3a 00 00       	call   3f52 <open>
  if(fd >= 0){
     4b1:	85 c0                	test   %eax,%eax
  fd = open("small", O_CREATE|O_RDWR);
     4b3:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     4b5:	0f 88 8b 01 00 00    	js     646 <writetest+0x1c6>
    printf(stdout, "creat small succeeded; ok\n");
     4bb:	a1 44 64 00 00       	mov    0x6444,%eax
  for(i = 0; i < 100; i++){
     4c0:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4c2:	c7 44 24 04 15 45 00 	movl   $0x4515,0x4(%esp)
     4c9:	00 
     4ca:	89 04 24             	mov    %eax,(%esp)
     4cd:	e8 8e 3b 00 00       	call   4060 <printf>
     4d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4d8:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     4df:	00 
     4e0:	c7 44 24 04 4c 45 00 	movl   $0x454c,0x4(%esp)
     4e7:	00 
     4e8:	89 34 24             	mov    %esi,(%esp)
     4eb:	e8 42 3a 00 00       	call   3f32 <write>
     4f0:	83 f8 0a             	cmp    $0xa,%eax
     4f3:	0f 85 e5 00 00 00    	jne    5de <writetest+0x15e>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     4f9:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     500:	00 
     501:	c7 44 24 04 57 45 00 	movl   $0x4557,0x4(%esp)
     508:	00 
     509:	89 34 24             	mov    %esi,(%esp)
     50c:	e8 21 3a 00 00       	call   3f32 <write>
     511:	83 f8 0a             	cmp    $0xa,%eax
     514:	0f 85 e9 00 00 00    	jne    603 <writetest+0x183>
  for(i = 0; i < 100; i++){
     51a:	83 c3 01             	add    $0x1,%ebx
     51d:	83 fb 64             	cmp    $0x64,%ebx
     520:	75 b6                	jne    4d8 <writetest+0x58>
  printf(stdout, "writes ok\n");
     522:	a1 44 64 00 00       	mov    0x6444,%eax
     527:	c7 44 24 04 62 45 00 	movl   $0x4562,0x4(%esp)
     52e:	00 
     52f:	89 04 24             	mov    %eax,(%esp)
     532:	e8 29 3b 00 00       	call   4060 <printf>
  close(fd);
     537:	89 34 24             	mov    %esi,(%esp)
     53a:	e8 fb 39 00 00       	call   3f3a <close>
  fd = open("small", O_RDONLY);
     53f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     546:	00 
     547:	c7 04 24 0f 45 00 00 	movl   $0x450f,(%esp)
     54e:	e8 ff 39 00 00       	call   3f52 <open>
  if(fd >= 0){
     553:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     555:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     557:	0f 88 b4 00 00 00    	js     611 <writetest+0x191>
    printf(stdout, "open small succeeded ok\n");
     55d:	a1 44 64 00 00       	mov    0x6444,%eax
     562:	c7 44 24 04 6d 45 00 	movl   $0x456d,0x4(%esp)
     569:	00 
     56a:	89 04 24             	mov    %eax,(%esp)
     56d:	e8 ee 3a 00 00       	call   4060 <printf>
  i = read(fd, buf, 2000);
     572:	c7 44 24 08 d0 07 00 	movl   $0x7d0,0x8(%esp)
     579:	00 
     57a:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
     581:	00 
     582:	89 1c 24             	mov    %ebx,(%esp)
     585:	e8 a0 39 00 00       	call   3f2a <read>
  if(i == 2000){
     58a:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     58f:	0f 85 9d 00 00 00    	jne    632 <writetest+0x1b2>
    printf(stdout, "read succeeded ok\n");
     595:	a1 44 64 00 00       	mov    0x6444,%eax
     59a:	c7 44 24 04 a1 45 00 	movl   $0x45a1,0x4(%esp)
     5a1:	00 
     5a2:	89 04 24             	mov    %eax,(%esp)
     5a5:	e8 b6 3a 00 00       	call   4060 <printf>
  close(fd);
     5aa:	89 1c 24             	mov    %ebx,(%esp)
     5ad:	e8 88 39 00 00       	call   3f3a <close>
  if(unlink("small") < 0){
     5b2:	c7 04 24 0f 45 00 00 	movl   $0x450f,(%esp)
     5b9:	e8 a4 39 00 00       	call   3f62 <unlink>
     5be:	85 c0                	test   %eax,%eax
     5c0:	78 7a                	js     63c <writetest+0x1bc>
  printf(stdout, "small file test ok\n");
     5c2:	a1 44 64 00 00       	mov    0x6444,%eax
     5c7:	c7 44 24 04 c9 45 00 	movl   $0x45c9,0x4(%esp)
     5ce:	00 
     5cf:	89 04 24             	mov    %eax,(%esp)
     5d2:	e8 89 3a 00 00       	call   4060 <printf>
}
     5d7:	83 c4 10             	add    $0x10,%esp
     5da:	5b                   	pop    %ebx
     5db:	5e                   	pop    %esi
     5dc:	5d                   	pop    %ebp
     5dd:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     5de:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     5e2:	c7 44 24 04 10 54 00 	movl   $0x5410,0x4(%esp)
     5e9:	00 
      printf(stdout, "error: write bb %d new file failed\n", i);
     5ea:	a1 44 64 00 00       	mov    0x6444,%eax
     5ef:	89 04 24             	mov    %eax,(%esp)
     5f2:	e8 69 3a 00 00       	call   4060 <printf>
      exit(-1);
     5f7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     5fe:	e8 0f 39 00 00       	call   3f12 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     603:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     607:	c7 44 24 04 34 54 00 	movl   $0x5434,0x4(%esp)
     60e:	00 
     60f:	eb d9                	jmp    5ea <writetest+0x16a>
    printf(stdout, "error: open small failed!\n");
     611:	c7 44 24 04 86 45 00 	movl   $0x4586,0x4(%esp)
     618:	00 
     619:	a1 44 64 00 00       	mov    0x6444,%eax
     61e:	89 04 24             	mov    %eax,(%esp)
     621:	e8 3a 3a 00 00       	call   4060 <printf>
    exit(-1);
     626:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     62d:	e8 e0 38 00 00       	call   3f12 <exit>
    printf(stdout, "read failed\n");
     632:	c7 44 24 04 cd 48 00 	movl   $0x48cd,0x4(%esp)
     639:	00 
     63a:	eb dd                	jmp    619 <writetest+0x199>
    printf(stdout, "unlink small failed\n");
     63c:	c7 44 24 04 b4 45 00 	movl   $0x45b4,0x4(%esp)
     643:	00 
     644:	eb d3                	jmp    619 <writetest+0x199>
    printf(stdout, "error: creat small failed!\n");
     646:	c7 44 24 04 30 45 00 	movl   $0x4530,0x4(%esp)
     64d:	00 
     64e:	eb c9                	jmp    619 <writetest+0x199>

00000650 <writetest1>:
{
     650:	55                   	push   %ebp
     651:	89 e5                	mov    %esp,%ebp
     653:	56                   	push   %esi
     654:	53                   	push   %ebx
     655:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "big files test\n");
     658:	a1 44 64 00 00       	mov    0x6444,%eax
     65d:	c7 44 24 04 dd 45 00 	movl   $0x45dd,0x4(%esp)
     664:	00 
     665:	89 04 24             	mov    %eax,(%esp)
     668:	e8 f3 39 00 00       	call   4060 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     66d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     674:	00 
     675:	c7 04 24 57 46 00 00 	movl   $0x4657,(%esp)
     67c:	e8 d1 38 00 00       	call   3f52 <open>
  if(fd < 0){
     681:	85 c0                	test   %eax,%eax
  fd = open("big", O_CREATE|O_RDWR);
     683:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     685:	0f 88 86 01 00 00    	js     811 <writetest1+0x1c1>
     68b:	31 db                	xor    %ebx,%ebx
     68d:	8d 76 00             	lea    0x0(%esi),%esi
    if(write(fd, buf, 512) != 512){
     690:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     697:	00 
     698:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
     69f:	00 
     6a0:	89 34 24             	mov    %esi,(%esp)
    ((int*)buf)[0] = i;
     6a3:	89 1d 20 8c 00 00    	mov    %ebx,0x8c20
    if(write(fd, buf, 512) != 512){
     6a9:	e8 84 38 00 00       	call   3f32 <write>
     6ae:	3d 00 02 00 00       	cmp    $0x200,%eax
     6b3:	0f 85 b2 00 00 00    	jne    76b <writetest1+0x11b>
  for(i = 0; i < MAXFILE; i++){
     6b9:	83 c3 01             	add    $0x1,%ebx
     6bc:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6c2:	75 cc                	jne    690 <writetest1+0x40>
  close(fd);
     6c4:	89 34 24             	mov    %esi,(%esp)
     6c7:	e8 6e 38 00 00       	call   3f3a <close>
  fd = open("big", O_RDONLY);
     6cc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     6d3:	00 
     6d4:	c7 04 24 57 46 00 00 	movl   $0x4657,(%esp)
     6db:	e8 72 38 00 00       	call   3f52 <open>
  if(fd < 0){
     6e0:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     6e2:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     6e4:	0f 88 06 01 00 00    	js     7f0 <writetest1+0x1a0>
     6ea:	31 db                	xor    %ebx,%ebx
     6ec:	eb 1d                	jmp    70b <writetest1+0xbb>
     6ee:	66 90                	xchg   %ax,%ax
    } else if(i != 512){
     6f0:	3d 00 02 00 00       	cmp    $0x200,%eax
     6f5:	0f 85 be 00 00 00    	jne    7b9 <writetest1+0x169>
    if(((int*)buf)[0] != n){
     6fb:	a1 20 8c 00 00       	mov    0x8c20,%eax
     700:	39 d8                	cmp    %ebx,%eax
     702:	0f 85 88 00 00 00    	jne    790 <writetest1+0x140>
    n++;
     708:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     70b:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     712:	00 
     713:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
     71a:	00 
     71b:	89 34 24             	mov    %esi,(%esp)
     71e:	e8 07 38 00 00       	call   3f2a <read>
    if(i == 0){
     723:	85 c0                	test   %eax,%eax
     725:	75 c9                	jne    6f0 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     727:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     72d:	0f 84 94 00 00 00    	je     7c7 <writetest1+0x177>
  close(fd);
     733:	89 34 24             	mov    %esi,(%esp)
     736:	e8 ff 37 00 00       	call   3f3a <close>
  if(unlink("big") < 0){
     73b:	c7 04 24 57 46 00 00 	movl   $0x4657,(%esp)
     742:	e8 1b 38 00 00       	call   3f62 <unlink>
     747:	85 c0                	test   %eax,%eax
     749:	0f 88 cc 00 00 00    	js     81b <writetest1+0x1cb>
  printf(stdout, "big files ok\n");
     74f:	a1 44 64 00 00       	mov    0x6444,%eax
     754:	c7 44 24 04 7e 46 00 	movl   $0x467e,0x4(%esp)
     75b:	00 
     75c:	89 04 24             	mov    %eax,(%esp)
     75f:	e8 fc 38 00 00       	call   4060 <printf>
}
     764:	83 c4 10             	add    $0x10,%esp
     767:	5b                   	pop    %ebx
     768:	5e                   	pop    %esi
     769:	5d                   	pop    %ebp
     76a:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     76b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     76f:	c7 44 24 04 07 46 00 	movl   $0x4607,0x4(%esp)
     776:	00 
      printf(stdout, "read failed %d\n", i);
     777:	a1 44 64 00 00       	mov    0x6444,%eax
     77c:	89 04 24             	mov    %eax,(%esp)
     77f:	e8 dc 38 00 00       	call   4060 <printf>
      exit(-1);
     784:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     78b:	e8 82 37 00 00       	call   3f12 <exit>
      printf(stdout, "read content of block %d is %d\n",
     790:	89 44 24 0c          	mov    %eax,0xc(%esp)
     794:	a1 44 64 00 00       	mov    0x6444,%eax
     799:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     79d:	c7 44 24 04 58 54 00 	movl   $0x5458,0x4(%esp)
     7a4:	00 
     7a5:	89 04 24             	mov    %eax,(%esp)
     7a8:	e8 b3 38 00 00       	call   4060 <printf>
      exit(0);
     7ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7b4:	e8 59 37 00 00       	call   3f12 <exit>
      printf(stdout, "read failed %d\n", i);
     7b9:	89 44 24 08          	mov    %eax,0x8(%esp)
     7bd:	c7 44 24 04 5b 46 00 	movl   $0x465b,0x4(%esp)
     7c4:	00 
     7c5:	eb b0                	jmp    777 <writetest1+0x127>
        printf(stdout, "read only %d blocks from big", n);
     7c7:	a1 44 64 00 00       	mov    0x6444,%eax
     7cc:	c7 44 24 08 8b 00 00 	movl   $0x8b,0x8(%esp)
     7d3:	00 
     7d4:	c7 44 24 04 3e 46 00 	movl   $0x463e,0x4(%esp)
     7db:	00 
     7dc:	89 04 24             	mov    %eax,(%esp)
     7df:	e8 7c 38 00 00       	call   4060 <printf>
        exit(0);
     7e4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7eb:	e8 22 37 00 00       	call   3f12 <exit>
    printf(stdout, "error: open big failed!\n");
     7f0:	c7 44 24 04 25 46 00 	movl   $0x4625,0x4(%esp)
     7f7:	00 
     7f8:	a1 44 64 00 00       	mov    0x6444,%eax
     7fd:	89 04 24             	mov    %eax,(%esp)
     800:	e8 5b 38 00 00       	call   4060 <printf>
    exit(-1);
     805:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     80c:	e8 01 37 00 00       	call   3f12 <exit>
    printf(stdout, "error: creat big failed!\n");
     811:	c7 44 24 04 ed 45 00 	movl   $0x45ed,0x4(%esp)
     818:	00 
     819:	eb dd                	jmp    7f8 <writetest1+0x1a8>
    printf(stdout, "unlink big failed\n");
     81b:	c7 44 24 04 6b 46 00 	movl   $0x466b,0x4(%esp)
     822:	00 
     823:	eb d3                	jmp    7f8 <writetest1+0x1a8>
     825:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000830 <createtest>:
{
     830:	55                   	push   %ebp
     831:	89 e5                	mov    %esp,%ebp
     833:	53                   	push   %ebx
  name[2] = '\0';
     834:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     839:	83 ec 14             	sub    $0x14,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     83c:	a1 44 64 00 00       	mov    0x6444,%eax
     841:	c7 44 24 04 78 54 00 	movl   $0x5478,0x4(%esp)
     848:	00 
     849:	89 04 24             	mov    %eax,(%esp)
     84c:	e8 0f 38 00 00       	call   4060 <printf>
  name[0] = 'a';
     851:	c6 05 20 ac 00 00 61 	movb   $0x61,0xac20
  name[2] = '\0';
     858:	c6 05 22 ac 00 00 00 	movb   $0x0,0xac22
     85f:	90                   	nop
    fd = open(name, O_CREATE|O_RDWR);
     860:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     867:	00 
     868:	c7 04 24 20 ac 00 00 	movl   $0xac20,(%esp)
    name[1] = '0' + i;
     86f:	88 1d 21 ac 00 00    	mov    %bl,0xac21
     875:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     878:	e8 d5 36 00 00       	call   3f52 <open>
    close(fd);
     87d:	89 04 24             	mov    %eax,(%esp)
     880:	e8 b5 36 00 00       	call   3f3a <close>
  for(i = 0; i < 52; i++){
     885:	80 fb 64             	cmp    $0x64,%bl
     888:	75 d6                	jne    860 <createtest+0x30>
  name[0] = 'a';
     88a:	c6 05 20 ac 00 00 61 	movb   $0x61,0xac20
  name[2] = '\0';
     891:	bb 30 00 00 00       	mov    $0x30,%ebx
     896:	c6 05 22 ac 00 00 00 	movb   $0x0,0xac22
     89d:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + i;
     8a0:	88 1d 21 ac 00 00    	mov    %bl,0xac21
     8a6:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8a9:	c7 04 24 20 ac 00 00 	movl   $0xac20,(%esp)
     8b0:	e8 ad 36 00 00       	call   3f62 <unlink>
  for(i = 0; i < 52; i++){
     8b5:	80 fb 64             	cmp    $0x64,%bl
     8b8:	75 e6                	jne    8a0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8ba:	a1 44 64 00 00       	mov    0x6444,%eax
     8bf:	c7 44 24 04 a0 54 00 	movl   $0x54a0,0x4(%esp)
     8c6:	00 
     8c7:	89 04 24             	mov    %eax,(%esp)
     8ca:	e8 91 37 00 00       	call   4060 <printf>
}
     8cf:	83 c4 14             	add    $0x14,%esp
     8d2:	5b                   	pop    %ebx
     8d3:	5d                   	pop    %ebp
     8d4:	c3                   	ret    
     8d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     8d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000008e0 <dirtest>:
{
     8e0:	55                   	push   %ebp
     8e1:	89 e5                	mov    %esp,%ebp
     8e3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "mkdir test\n");
     8e6:	a1 44 64 00 00       	mov    0x6444,%eax
     8eb:	c7 44 24 04 8c 46 00 	movl   $0x468c,0x4(%esp)
     8f2:	00 
     8f3:	89 04 24             	mov    %eax,(%esp)
     8f6:	e8 65 37 00 00       	call   4060 <printf>
  if(mkdir("dir0") < 0){
     8fb:	c7 04 24 98 46 00 00 	movl   $0x4698,(%esp)
     902:	e8 73 36 00 00       	call   3f7a <mkdir>
     907:	85 c0                	test   %eax,%eax
     909:	78 47                	js     952 <dirtest+0x72>
  if(chdir("dir0") < 0){
     90b:	c7 04 24 98 46 00 00 	movl   $0x4698,(%esp)
     912:	e8 6b 36 00 00       	call   3f82 <chdir>
     917:	85 c0                	test   %eax,%eax
     919:	78 6c                	js     987 <dirtest+0xa7>
  if(chdir("..") < 0){
     91b:	c7 04 24 3d 4c 00 00 	movl   $0x4c3d,(%esp)
     922:	e8 5b 36 00 00       	call   3f82 <chdir>
     927:	85 c0                	test   %eax,%eax
     929:	78 52                	js     97d <dirtest+0x9d>
  if(unlink("dir0") < 0){
     92b:	c7 04 24 98 46 00 00 	movl   $0x4698,(%esp)
     932:	e8 2b 36 00 00       	call   3f62 <unlink>
     937:	85 c0                	test   %eax,%eax
     939:	78 38                	js     973 <dirtest+0x93>
  printf(stdout, "mkdir test ok\n");
     93b:	a1 44 64 00 00       	mov    0x6444,%eax
     940:	c7 44 24 04 d5 46 00 	movl   $0x46d5,0x4(%esp)
     947:	00 
     948:	89 04 24             	mov    %eax,(%esp)
     94b:	e8 10 37 00 00       	call   4060 <printf>
}
     950:	c9                   	leave  
     951:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     952:	c7 44 24 04 c8 43 00 	movl   $0x43c8,0x4(%esp)
     959:	00 
    printf(stdout, "chdir dir0 failed\n");
     95a:	a1 44 64 00 00       	mov    0x6444,%eax
     95f:	89 04 24             	mov    %eax,(%esp)
     962:	e8 f9 36 00 00       	call   4060 <printf>
    exit(-1);
     967:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     96e:	e8 9f 35 00 00       	call   3f12 <exit>
    printf(stdout, "unlink dir0 failed\n");
     973:	c7 44 24 04 c1 46 00 	movl   $0x46c1,0x4(%esp)
     97a:	00 
     97b:	eb dd                	jmp    95a <dirtest+0x7a>
    printf(stdout, "chdir .. failed\n");
     97d:	c7 44 24 04 b0 46 00 	movl   $0x46b0,0x4(%esp)
     984:	00 
     985:	eb d3                	jmp    95a <dirtest+0x7a>
    printf(stdout, "chdir dir0 failed\n");
     987:	c7 44 24 04 9d 46 00 	movl   $0x469d,0x4(%esp)
     98e:	00 
     98f:	eb c9                	jmp    95a <dirtest+0x7a>
     991:	eb 0d                	jmp    9a0 <exectest>
     993:	90                   	nop
     994:	90                   	nop
     995:	90                   	nop
     996:	90                   	nop
     997:	90                   	nop
     998:	90                   	nop
     999:	90                   	nop
     99a:	90                   	nop
     99b:	90                   	nop
     99c:	90                   	nop
     99d:	90                   	nop
     99e:	90                   	nop
     99f:	90                   	nop

000009a0 <exectest>:
{
     9a0:	55                   	push   %ebp
     9a1:	89 e5                	mov    %esp,%ebp
     9a3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exec test\n");
     9a6:	a1 44 64 00 00       	mov    0x6444,%eax
     9ab:	c7 44 24 04 e4 46 00 	movl   $0x46e4,0x4(%esp)
     9b2:	00 
     9b3:	89 04 24             	mov    %eax,(%esp)
     9b6:	e8 a5 36 00 00       	call   4060 <printf>
  if(exec("echo", echoargv) < 0){
     9bb:	c7 44 24 04 48 64 00 	movl   $0x6448,0x4(%esp)
     9c2:	00 
     9c3:	c7 04 24 ad 44 00 00 	movl   $0x44ad,(%esp)
     9ca:	e8 7b 35 00 00       	call   3f4a <exec>
     9cf:	85 c0                	test   %eax,%eax
     9d1:	78 02                	js     9d5 <exectest+0x35>
}
     9d3:	c9                   	leave  
     9d4:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     9d5:	a1 44 64 00 00       	mov    0x6444,%eax
     9da:	c7 44 24 04 ef 46 00 	movl   $0x46ef,0x4(%esp)
     9e1:	00 
     9e2:	89 04 24             	mov    %eax,(%esp)
     9e5:	e8 76 36 00 00       	call   4060 <printf>
    exit(-1);
     9ea:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     9f1:	e8 1c 35 00 00       	call   3f12 <exit>
     9f6:	8d 76 00             	lea    0x0(%esi),%esi
     9f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a00 <pipe1>:
{
     a00:	55                   	push   %ebp
     a01:	89 e5                	mov    %esp,%ebp
     a03:	57                   	push   %edi
     a04:	56                   	push   %esi
     a05:	53                   	push   %ebx
     a06:	83 ec 2c             	sub    $0x2c,%esp
  if(pipe(fds) != 0){
     a09:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a0c:	89 04 24             	mov    %eax,(%esp)
     a0f:	e8 0e 35 00 00       	call   3f22 <pipe>
     a14:	85 c0                	test   %eax,%eax
     a16:	0f 85 5f 01 00 00    	jne    b7b <pipe1+0x17b>
  pid = fork();
     a1c:	e8 e9 34 00 00       	call   3f0a <fork>
  if(pid == 0){
     a21:	83 f8 00             	cmp    $0x0,%eax
     a24:	0f 84 93 00 00 00    	je     abd <pipe1+0xbd>
  } else if(pid > 0){
     a2a:	0f 8e 6b 01 00 00    	jle    b9b <pipe1+0x19b>
    close(fds[1]);
     a30:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    cc = 1;
     a33:	bf 01 00 00 00       	mov    $0x1,%edi
  seq = 0;
     a38:	31 db                	xor    %ebx,%ebx
    close(fds[1]);
     a3a:	89 04 24             	mov    %eax,(%esp)
     a3d:	e8 f8 34 00 00       	call   3f3a <close>
    total = 0;
     a42:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a49:	8b 45 e0             	mov    -0x20(%ebp),%eax
     a4c:	89 7c 24 08          	mov    %edi,0x8(%esp)
     a50:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
     a57:	00 
     a58:	89 04 24             	mov    %eax,(%esp)
     a5b:	e8 ca 34 00 00       	call   3f2a <read>
     a60:	85 c0                	test   %eax,%eax
     a62:	0f 8e ba 00 00 00    	jle    b22 <pipe1+0x122>
     a68:	89 d9                	mov    %ebx,%ecx
     a6a:	8d 34 03             	lea    (%ebx,%eax,1),%esi
     a6d:	f7 d9                	neg    %ecx
     a6f:	eb 09                	jmp    a7a <pipe1+0x7a>
     a71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a78:	89 d3                	mov    %edx,%ebx
     a7a:	38 9c 0b 20 8c 00 00 	cmp    %bl,0x8c20(%ebx,%ecx,1)
     a81:	8d 53 01             	lea    0x1(%ebx),%edx
     a84:	75 1b                	jne    aa1 <pipe1+0xa1>
      for(i = 0; i < n; i++){
     a86:	39 f2                	cmp    %esi,%edx
     a88:	75 ee                	jne    a78 <pipe1+0x78>
      cc = cc * 2;
     a8a:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a8c:	89 f3                	mov    %esi,%ebx
      total += n;
     a8e:	01 45 d4             	add    %eax,-0x2c(%ebp)
        cc = sizeof(buf);
     a91:	81 ff 01 20 00 00    	cmp    $0x2001,%edi
     a97:	b8 00 20 00 00       	mov    $0x2000,%eax
     a9c:	0f 43 f8             	cmovae %eax,%edi
     a9f:	eb a8                	jmp    a49 <pipe1+0x49>
          printf(1, "pipe1 oops 2\n");
     aa1:	c7 44 24 04 1e 47 00 	movl   $0x471e,0x4(%esp)
     aa8:	00 
     aa9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ab0:	e8 ab 35 00 00       	call   4060 <printf>
}
     ab5:	83 c4 2c             	add    $0x2c,%esp
     ab8:	5b                   	pop    %ebx
     ab9:	5e                   	pop    %esi
     aba:	5f                   	pop    %edi
     abb:	5d                   	pop    %ebp
     abc:	c3                   	ret    
    close(fds[0]);
     abd:	8b 45 e0             	mov    -0x20(%ebp),%eax
  seq = 0;
     ac0:	31 f6                	xor    %esi,%esi
    close(fds[0]);
     ac2:	89 04 24             	mov    %eax,(%esp)
     ac5:	e8 70 34 00 00       	call   3f3a <close>
     aca:	89 f0                	mov    %esi,%eax
{
     acc:	89 f3                	mov    %esi,%ebx
     ace:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx
     ad4:	f7 d8                	neg    %eax
     ad6:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
     ad8:	88 9c 18 20 8c 00 00 	mov    %bl,0x8c20(%eax,%ebx,1)
     adf:	83 c3 01             	add    $0x1,%ebx
      for(i = 0; i < 1033; i++)
     ae2:	39 d3                	cmp    %edx,%ebx
     ae4:	75 f2                	jne    ad8 <pipe1+0xd8>
      if(write(fds[1], buf, 1033) != 1033){
     ae6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     ae9:	89 de                	mov    %ebx,%esi
     aeb:	c7 44 24 08 09 04 00 	movl   $0x409,0x8(%esp)
     af2:	00 
     af3:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
     afa:	00 
     afb:	89 04 24             	mov    %eax,(%esp)
     afe:	e8 2f 34 00 00       	call   3f32 <write>
     b03:	3d 09 04 00 00       	cmp    $0x409,%eax
     b08:	0f 85 ad 00 00 00    	jne    bbb <pipe1+0x1bb>
    for(n = 0; n < 5; n++){
     b0e:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b14:	75 b4                	jne    aca <pipe1+0xca>
    exit(0);
     b16:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b1d:	e8 f0 33 00 00       	call   3f12 <exit>
    if(total != 5 * 1033){
     b22:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b29:	75 29                	jne    b54 <pipe1+0x154>
    close(fds[0]);
     b2b:	8b 45 e0             	mov    -0x20(%ebp),%eax
     b2e:	89 04 24             	mov    %eax,(%esp)
     b31:	e8 04 34 00 00       	call   3f3a <close>
    wait();
     b36:	e8 df 33 00 00       	call   3f1a <wait>
  printf(1, "pipe1 ok\n");
     b3b:	c7 44 24 04 43 47 00 	movl   $0x4743,0x4(%esp)
     b42:	00 
     b43:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b4a:	e8 11 35 00 00       	call   4060 <printf>
     b4f:	e9 61 ff ff ff       	jmp    ab5 <pipe1+0xb5>
      printf(1, "pipe1 oops 3 total %d\n", total);
     b54:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     b57:	c7 44 24 04 2c 47 00 	movl   $0x472c,0x4(%esp)
     b5e:	00 
     b5f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b66:	89 44 24 08          	mov    %eax,0x8(%esp)
     b6a:	e8 f1 34 00 00       	call   4060 <printf>
      exit(-1);
     b6f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     b76:	e8 97 33 00 00       	call   3f12 <exit>
    printf(1, "pipe() failed\n");
     b7b:	c7 44 24 04 01 47 00 	movl   $0x4701,0x4(%esp)
     b82:	00 
     b83:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b8a:	e8 d1 34 00 00       	call   4060 <printf>
    exit(-1);
     b8f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     b96:	e8 77 33 00 00       	call   3f12 <exit>
    printf(1, "fork() failed\n");
     b9b:	c7 44 24 04 4d 47 00 	movl   $0x474d,0x4(%esp)
     ba2:	00 
     ba3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     baa:	e8 b1 34 00 00       	call   4060 <printf>
    exit(-1);
     baf:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     bb6:	e8 57 33 00 00       	call   3f12 <exit>
        printf(1, "pipe1 oops 1\n");
     bbb:	c7 44 24 04 10 47 00 	movl   $0x4710,0x4(%esp)
     bc2:	00 
     bc3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bca:	e8 91 34 00 00       	call   4060 <printf>
        exit(-1);
     bcf:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     bd6:	e8 37 33 00 00       	call   3f12 <exit>
     bdb:	90                   	nop
     bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000be0 <preempt>:
{
     be0:	55                   	push   %ebp
     be1:	89 e5                	mov    %esp,%ebp
     be3:	57                   	push   %edi
     be4:	56                   	push   %esi
     be5:	53                   	push   %ebx
     be6:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "preempt: ");
     be9:	c7 44 24 04 5c 47 00 	movl   $0x475c,0x4(%esp)
     bf0:	00 
     bf1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bf8:	e8 63 34 00 00       	call   4060 <printf>
  pid1 = fork();
     bfd:	e8 08 33 00 00       	call   3f0a <fork>
  if(pid1 == 0)
     c02:	85 c0                	test   %eax,%eax
  pid1 = fork();
     c04:	89 c7                	mov    %eax,%edi
  if(pid1 == 0)
     c06:	75 02                	jne    c0a <preempt+0x2a>
     c08:	eb fe                	jmp    c08 <preempt+0x28>
     c0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  pid2 = fork();
     c10:	e8 f5 32 00 00       	call   3f0a <fork>
  if(pid2 == 0)
     c15:	85 c0                	test   %eax,%eax
  pid2 = fork();
     c17:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     c19:	75 02                	jne    c1d <preempt+0x3d>
     c1b:	eb fe                	jmp    c1b <preempt+0x3b>
  pipe(pfds);
     c1d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     c20:	89 04 24             	mov    %eax,(%esp)
     c23:	e8 fa 32 00 00       	call   3f22 <pipe>
  pid3 = fork();
     c28:	e8 dd 32 00 00       	call   3f0a <fork>
  if(pid3 == 0){
     c2d:	85 c0                	test   %eax,%eax
  pid3 = fork();
     c2f:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     c31:	75 4c                	jne    c7f <preempt+0x9f>
    close(pfds[0]);
     c33:	8b 45 e0             	mov    -0x20(%ebp),%eax
     c36:	89 04 24             	mov    %eax,(%esp)
     c39:	e8 fc 32 00 00       	call   3f3a <close>
    if(write(pfds[1], "x", 1) != 1)
     c3e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c41:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     c48:	00 
     c49:	c7 44 24 04 21 4d 00 	movl   $0x4d21,0x4(%esp)
     c50:	00 
     c51:	89 04 24             	mov    %eax,(%esp)
     c54:	e8 d9 32 00 00       	call   3f32 <write>
     c59:	83 f8 01             	cmp    $0x1,%eax
     c5c:	74 14                	je     c72 <preempt+0x92>
      printf(1, "preempt write error");
     c5e:	c7 44 24 04 66 47 00 	movl   $0x4766,0x4(%esp)
     c65:	00 
     c66:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c6d:	e8 ee 33 00 00       	call   4060 <printf>
    close(pfds[1]);
     c72:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c75:	89 04 24             	mov    %eax,(%esp)
     c78:	e8 bd 32 00 00       	call   3f3a <close>
     c7d:	eb fe                	jmp    c7d <preempt+0x9d>
  close(pfds[1]);
     c7f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c82:	89 04 24             	mov    %eax,(%esp)
     c85:	e8 b0 32 00 00       	call   3f3a <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c8a:	8b 45 e0             	mov    -0x20(%ebp),%eax
     c8d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
     c94:	00 
     c95:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
     c9c:	00 
     c9d:	89 04 24             	mov    %eax,(%esp)
     ca0:	e8 85 32 00 00       	call   3f2a <read>
     ca5:	83 f8 01             	cmp    $0x1,%eax
     ca8:	74 1c                	je     cc6 <preempt+0xe6>
    printf(1, "preempt read error");
     caa:	c7 44 24 04 7a 47 00 	movl   $0x477a,0x4(%esp)
     cb1:	00 
     cb2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     cb9:	e8 a2 33 00 00       	call   4060 <printf>
}
     cbe:	83 c4 2c             	add    $0x2c,%esp
     cc1:	5b                   	pop    %ebx
     cc2:	5e                   	pop    %esi
     cc3:	5f                   	pop    %edi
     cc4:	5d                   	pop    %ebp
     cc5:	c3                   	ret    
  close(pfds[0]);
     cc6:	8b 45 e0             	mov    -0x20(%ebp),%eax
     cc9:	89 04 24             	mov    %eax,(%esp)
     ccc:	e8 69 32 00 00       	call   3f3a <close>
  printf(1, "kill... ");
     cd1:	c7 44 24 04 8d 47 00 	movl   $0x478d,0x4(%esp)
     cd8:	00 
     cd9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ce0:	e8 7b 33 00 00       	call   4060 <printf>
  kill(pid1);
     ce5:	89 3c 24             	mov    %edi,(%esp)
     ce8:	e8 55 32 00 00       	call   3f42 <kill>
  kill(pid2);
     ced:	89 34 24             	mov    %esi,(%esp)
     cf0:	e8 4d 32 00 00       	call   3f42 <kill>
  kill(pid3);
     cf5:	89 1c 24             	mov    %ebx,(%esp)
     cf8:	e8 45 32 00 00       	call   3f42 <kill>
  printf(1, "wait... ");
     cfd:	c7 44 24 04 96 47 00 	movl   $0x4796,0x4(%esp)
     d04:	00 
     d05:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d0c:	e8 4f 33 00 00       	call   4060 <printf>
  wait();
     d11:	e8 04 32 00 00       	call   3f1a <wait>
  wait();
     d16:	e8 ff 31 00 00       	call   3f1a <wait>
     d1b:	90                   	nop
     d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  wait();
     d20:	e8 f5 31 00 00       	call   3f1a <wait>
  printf(1, "preempt ok\n");
     d25:	c7 44 24 04 9f 47 00 	movl   $0x479f,0x4(%esp)
     d2c:	00 
     d2d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d34:	e8 27 33 00 00       	call   4060 <printf>
     d39:	eb 83                	jmp    cbe <preempt+0xde>
     d3b:	90                   	nop
     d3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d40 <exitwait>:
{
     d40:	55                   	push   %ebp
     d41:	89 e5                	mov    %esp,%ebp
     d43:	56                   	push   %esi
     d44:	be 64 00 00 00       	mov    $0x64,%esi
     d49:	53                   	push   %ebx
     d4a:	83 ec 10             	sub    $0x10,%esp
     d4d:	eb 13                	jmp    d62 <exitwait+0x22>
     d4f:	90                   	nop
    if(pid){
     d50:	74 71                	je     dc3 <exitwait+0x83>
      if(wait() != pid){
     d52:	e8 c3 31 00 00       	call   3f1a <wait>
     d57:	39 d8                	cmp    %ebx,%eax
     d59:	75 2d                	jne    d88 <exitwait+0x48>
  for(i = 0; i < 100; i++){
     d5b:	83 ee 01             	sub    $0x1,%esi
     d5e:	66 90                	xchg   %ax,%ax
     d60:	74 46                	je     da8 <exitwait+0x68>
    pid = fork();
     d62:	e8 a3 31 00 00       	call   3f0a <fork>
    if(pid < 0){
     d67:	85 c0                	test   %eax,%eax
    pid = fork();
     d69:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d6b:	79 e3                	jns    d50 <exitwait+0x10>
      printf(1, "fork failed\n");
     d6d:	c7 44 24 04 09 53 00 	movl   $0x5309,0x4(%esp)
     d74:	00 
     d75:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d7c:	e8 df 32 00 00       	call   4060 <printf>
}
     d81:	83 c4 10             	add    $0x10,%esp
     d84:	5b                   	pop    %ebx
     d85:	5e                   	pop    %esi
     d86:	5d                   	pop    %ebp
     d87:	c3                   	ret    
        printf(1, "wait wrong pid\n");
     d88:	c7 44 24 04 ab 47 00 	movl   $0x47ab,0x4(%esp)
     d8f:	00 
     d90:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d97:	e8 c4 32 00 00       	call   4060 <printf>
}
     d9c:	83 c4 10             	add    $0x10,%esp
     d9f:	5b                   	pop    %ebx
     da0:	5e                   	pop    %esi
     da1:	5d                   	pop    %ebp
     da2:	c3                   	ret    
     da3:	90                   	nop
     da4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "exitwait ok\n");
     da8:	c7 44 24 04 bb 47 00 	movl   $0x47bb,0x4(%esp)
     daf:	00 
     db0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     db7:	e8 a4 32 00 00       	call   4060 <printf>
}
     dbc:	83 c4 10             	add    $0x10,%esp
     dbf:	5b                   	pop    %ebx
     dc0:	5e                   	pop    %esi
     dc1:	5d                   	pop    %ebp
     dc2:	c3                   	ret    
      exit(0);
     dc3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     dca:	e8 43 31 00 00       	call   3f12 <exit>
     dcf:	90                   	nop

00000dd0 <mem>:
{
     dd0:	55                   	push   %ebp
     dd1:	89 e5                	mov    %esp,%ebp
     dd3:	57                   	push   %edi
     dd4:	56                   	push   %esi
     dd5:	53                   	push   %ebx
     dd6:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "mem test\n");
     dd9:	c7 44 24 04 c8 47 00 	movl   $0x47c8,0x4(%esp)
     de0:	00 
     de1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     de8:	e8 73 32 00 00       	call   4060 <printf>
  ppid = getpid();
     ded:	e8 a0 31 00 00       	call   3f92 <getpid>
     df2:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     df4:	e8 11 31 00 00       	call   3f0a <fork>
     df9:	85 c0                	test   %eax,%eax
     dfb:	75 73                	jne    e70 <mem+0xa0>
     dfd:	31 db                	xor    %ebx,%ebx
     dff:	90                   	nop
     e00:	eb 0a                	jmp    e0c <mem+0x3c>
     e02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *(char**)m2 = m1;
     e08:	89 18                	mov    %ebx,(%eax)
     e0a:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     e0c:	c7 04 24 11 27 00 00 	movl   $0x2711,(%esp)
     e13:	e8 c8 34 00 00       	call   42e0 <malloc>
     e18:	85 c0                	test   %eax,%eax
     e1a:	75 ec                	jne    e08 <mem+0x38>
    while(m1){
     e1c:	85 db                	test   %ebx,%ebx
     e1e:	75 0a                	jne    e2a <mem+0x5a>
     e20:	eb 16                	jmp    e38 <mem+0x68>
     e22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      m1 = m2;
     e28:	89 fb                	mov    %edi,%ebx
      m2 = *(char**)m1;
     e2a:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     e2c:	89 1c 24             	mov    %ebx,(%esp)
     e2f:	e8 1c 34 00 00       	call   4250 <free>
    while(m1){
     e34:	85 ff                	test   %edi,%edi
     e36:	75 f0                	jne    e28 <mem+0x58>
    m1 = malloc(1024*20);
     e38:	c7 04 24 00 50 00 00 	movl   $0x5000,(%esp)
     e3f:	e8 9c 34 00 00       	call   42e0 <malloc>
    if(m1 == 0){
     e44:	85 c0                	test   %eax,%eax
     e46:	74 38                	je     e80 <mem+0xb0>
    free(m1);
     e48:	89 04 24             	mov    %eax,(%esp)
     e4b:	e8 00 34 00 00       	call   4250 <free>
    printf(1, "mem ok\n");
     e50:	c7 44 24 04 ec 47 00 	movl   $0x47ec,0x4(%esp)
     e57:	00 
     e58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e5f:	e8 fc 31 00 00       	call   4060 <printf>
    exit(0);
     e64:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e6b:	e8 a2 30 00 00       	call   3f12 <exit>
}
     e70:	83 c4 1c             	add    $0x1c,%esp
     e73:	5b                   	pop    %ebx
     e74:	5e                   	pop    %esi
     e75:	5f                   	pop    %edi
     e76:	5d                   	pop    %ebp
    wait();
     e77:	e9 9e 30 00 00       	jmp    3f1a <wait>
     e7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     e80:	c7 44 24 04 d2 47 00 	movl   $0x47d2,0x4(%esp)
     e87:	00 
     e88:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e8f:	e8 cc 31 00 00       	call   4060 <printf>
      kill(ppid);
     e94:	89 34 24             	mov    %esi,(%esp)
     e97:	e8 a6 30 00 00       	call   3f42 <kill>
      exit(-1);
     e9c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     ea3:	e8 6a 30 00 00       	call   3f12 <exit>
     ea8:	90                   	nop
     ea9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000eb0 <sharedfd>:
{
     eb0:	55                   	push   %ebp
     eb1:	89 e5                	mov    %esp,%ebp
     eb3:	57                   	push   %edi
     eb4:	56                   	push   %esi
     eb5:	53                   	push   %ebx
     eb6:	83 ec 3c             	sub    $0x3c,%esp
  printf(1, "sharedfd test\n");
     eb9:	c7 44 24 04 f4 47 00 	movl   $0x47f4,0x4(%esp)
     ec0:	00 
     ec1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ec8:	e8 93 31 00 00       	call   4060 <printf>
  unlink("sharedfd");
     ecd:	c7 04 24 03 48 00 00 	movl   $0x4803,(%esp)
     ed4:	e8 89 30 00 00       	call   3f62 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     ed9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     ee0:	00 
     ee1:	c7 04 24 03 48 00 00 	movl   $0x4803,(%esp)
     ee8:	e8 65 30 00 00       	call   3f52 <open>
  if(fd < 0){
     eed:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
     eef:	89 c7                	mov    %eax,%edi
  if(fd < 0){
     ef1:	0f 88 40 01 00 00    	js     1037 <sharedfd+0x187>
  pid = fork();
     ef7:	e8 0e 30 00 00       	call   3f0a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     efc:	8d 75 de             	lea    -0x22(%ebp),%esi
     eff:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     f04:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f0b:	00 
     f0c:	89 34 24             	mov    %esi,(%esp)
     f0f:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     f12:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f15:	19 c0                	sbb    %eax,%eax
     f17:	83 e0 f3             	and    $0xfffffff3,%eax
     f1a:	83 c0 70             	add    $0x70,%eax
     f1d:	89 44 24 04          	mov    %eax,0x4(%esp)
     f21:	e8 7a 2e 00 00       	call   3da0 <memset>
     f26:	eb 05                	jmp    f2d <sharedfd+0x7d>
  for(i = 0; i < 1000; i++){
     f28:	83 eb 01             	sub    $0x1,%ebx
     f2b:	74 2d                	je     f5a <sharedfd+0xaa>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     f2d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f34:	00 
     f35:	89 74 24 04          	mov    %esi,0x4(%esp)
     f39:	89 3c 24             	mov    %edi,(%esp)
     f3c:	e8 f1 2f 00 00       	call   3f32 <write>
     f41:	83 f8 0a             	cmp    $0xa,%eax
     f44:	74 e2                	je     f28 <sharedfd+0x78>
      printf(1, "fstests: write sharedfd failed\n");
     f46:	c7 44 24 04 f4 54 00 	movl   $0x54f4,0x4(%esp)
     f4d:	00 
     f4e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f55:	e8 06 31 00 00       	call   4060 <printf>
  if(pid == 0)
     f5a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     f5d:	85 c0                	test   %eax,%eax
     f5f:	0f 84 0a 01 00 00    	je     106f <sharedfd+0x1bf>
    wait();
     f65:	e8 b0 2f 00 00       	call   3f1a <wait>
  close(fd);
     f6a:	89 3c 24             	mov    %edi,(%esp)
     f6d:	e8 c8 2f 00 00       	call   3f3a <close>
  fd = open("sharedfd", 0);
     f72:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     f79:	00 
     f7a:	c7 04 24 03 48 00 00 	movl   $0x4803,(%esp)
     f81:	e8 cc 2f 00 00       	call   3f52 <open>
  if(fd < 0){
     f86:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
     f88:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     f8b:	0f 88 c2 00 00 00    	js     1053 <sharedfd+0x1a3>
     f91:	31 d2                	xor    %edx,%edx
     f93:	31 db                	xor    %ebx,%ebx
     f95:	8d 7d e8             	lea    -0x18(%ebp),%edi
     f98:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f9b:	90                   	nop
     f9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
     fa0:	8b 45 d0             	mov    -0x30(%ebp),%eax
     fa3:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     faa:	00 
     fab:	89 74 24 04          	mov    %esi,0x4(%esp)
     faf:	89 04 24             	mov    %eax,(%esp)
     fb2:	e8 73 2f 00 00       	call   3f2a <read>
     fb7:	85 c0                	test   %eax,%eax
     fb9:	7e 36                	jle    ff1 <sharedfd+0x141>
     fbb:	89 f0                	mov    %esi,%eax
     fbd:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     fc0:	eb 18                	jmp    fda <sharedfd+0x12a>
     fc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        np++;
     fc8:	80 f9 70             	cmp    $0x70,%cl
     fcb:	0f 94 c1             	sete   %cl
     fce:	83 c0 01             	add    $0x1,%eax
     fd1:	0f b6 c9             	movzbl %cl,%ecx
     fd4:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
     fd6:	39 f8                	cmp    %edi,%eax
     fd8:	74 12                	je     fec <sharedfd+0x13c>
      if(buf[i] == 'c')
     fda:	0f b6 08             	movzbl (%eax),%ecx
     fdd:	80 f9 63             	cmp    $0x63,%cl
     fe0:	75 e6                	jne    fc8 <sharedfd+0x118>
     fe2:	83 c0 01             	add    $0x1,%eax
        nc++;
     fe5:	83 c2 01             	add    $0x1,%edx
    for(i = 0; i < sizeof(buf); i++){
     fe8:	39 f8                	cmp    %edi,%eax
     fea:	75 ee                	jne    fda <sharedfd+0x12a>
     fec:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     fef:	eb af                	jmp    fa0 <sharedfd+0xf0>
  close(fd);
     ff1:	8b 45 d0             	mov    -0x30(%ebp),%eax
     ff4:	89 04 24             	mov    %eax,(%esp)
     ff7:	e8 3e 2f 00 00       	call   3f3a <close>
  unlink("sharedfd");
     ffc:	c7 04 24 03 48 00 00 	movl   $0x4803,(%esp)
    1003:	e8 5a 2f 00 00       	call   3f62 <unlink>
  if(nc == 10000 && np == 10000){
    1008:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    100e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1011:	75 68                	jne    107b <sharedfd+0x1cb>
    1013:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1019:	75 60                	jne    107b <sharedfd+0x1cb>
    printf(1, "sharedfd ok\n");
    101b:	c7 44 24 04 0c 48 00 	movl   $0x480c,0x4(%esp)
    1022:	00 
    1023:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    102a:	e8 31 30 00 00       	call   4060 <printf>
}
    102f:	83 c4 3c             	add    $0x3c,%esp
    1032:	5b                   	pop    %ebx
    1033:	5e                   	pop    %esi
    1034:	5f                   	pop    %edi
    1035:	5d                   	pop    %ebp
    1036:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    1037:	c7 44 24 04 c8 54 00 	movl   $0x54c8,0x4(%esp)
    103e:	00 
    103f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1046:	e8 15 30 00 00       	call   4060 <printf>
}
    104b:	83 c4 3c             	add    $0x3c,%esp
    104e:	5b                   	pop    %ebx
    104f:	5e                   	pop    %esi
    1050:	5f                   	pop    %edi
    1051:	5d                   	pop    %ebp
    1052:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    1053:	c7 44 24 04 14 55 00 	movl   $0x5514,0x4(%esp)
    105a:	00 
    105b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1062:	e8 f9 2f 00 00       	call   4060 <printf>
}
    1067:	83 c4 3c             	add    $0x3c,%esp
    106a:	5b                   	pop    %ebx
    106b:	5e                   	pop    %esi
    106c:	5f                   	pop    %edi
    106d:	5d                   	pop    %ebp
    106e:	c3                   	ret    
    exit(0);
    106f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1076:	e8 97 2e 00 00       	call   3f12 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    107b:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    107f:	89 54 24 08          	mov    %edx,0x8(%esp)
    1083:	c7 44 24 04 19 48 00 	movl   $0x4819,0x4(%esp)
    108a:	00 
    108b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1092:	e8 c9 2f 00 00       	call   4060 <printf>
    exit(-1);
    1097:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    109e:	e8 6f 2e 00 00       	call   3f12 <exit>
    10a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000010b0 <fourfiles>:
{
    10b0:	55                   	push   %ebp
    10b1:	89 e5                	mov    %esp,%ebp
    10b3:	57                   	push   %edi
    10b4:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    10b5:	be 2e 48 00 00       	mov    $0x482e,%esi
{
    10ba:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    10bb:	31 db                	xor    %ebx,%ebx
{
    10bd:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "fourfiles test\n");
    10c0:	c7 44 24 04 34 48 00 	movl   $0x4834,0x4(%esp)
    10c7:	00 
    10c8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  char *names[] = { "f0", "f1", "f2", "f3" };
    10cf:	c7 45 d8 2e 48 00 00 	movl   $0x482e,-0x28(%ebp)
    10d6:	c7 45 dc 77 49 00 00 	movl   $0x4977,-0x24(%ebp)
    10dd:	c7 45 e0 7b 49 00 00 	movl   $0x497b,-0x20(%ebp)
    10e4:	c7 45 e4 31 48 00 00 	movl   $0x4831,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    10eb:	e8 70 2f 00 00       	call   4060 <printf>
    unlink(fname);
    10f0:	89 34 24             	mov    %esi,(%esp)
    10f3:	e8 6a 2e 00 00       	call   3f62 <unlink>
    pid = fork();
    10f8:	e8 0d 2e 00 00       	call   3f0a <fork>
    if(pid < 0){
    10fd:	85 c0                	test   %eax,%eax
    10ff:	0f 88 bf 01 00 00    	js     12c4 <fourfiles+0x214>
    if(pid == 0){
    1105:	0f 84 eb 00 00 00    	je     11f6 <fourfiles+0x146>
  for(pi = 0; pi < 4; pi++){
    110b:	83 c3 01             	add    $0x1,%ebx
    110e:	83 fb 04             	cmp    $0x4,%ebx
    1111:	74 06                	je     1119 <fourfiles+0x69>
    1113:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1117:	eb d7                	jmp    10f0 <fourfiles+0x40>
    wait();
    1119:	e8 fc 2d 00 00       	call   3f1a <wait>
    111e:	bf 30 00 00 00       	mov    $0x30,%edi
    1123:	e8 f2 2d 00 00       	call   3f1a <wait>
    1128:	e8 ed 2d 00 00       	call   3f1a <wait>
    112d:	e8 e8 2d 00 00       	call   3f1a <wait>
    1132:	c7 45 d4 2e 48 00 00 	movl   $0x482e,-0x2c(%ebp)
    fd = open(fname, 0);
    1139:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    total = 0;
    113c:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    113e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1145:	00 
    1146:	89 04 24             	mov    %eax,(%esp)
    1149:	e8 04 2e 00 00       	call   3f52 <open>
    114e:	89 c6                	mov    %eax,%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1150:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1157:	00 
    1158:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    115f:	00 
    1160:	89 34 24             	mov    %esi,(%esp)
    1163:	e8 c2 2d 00 00       	call   3f2a <read>
    1168:	85 c0                	test   %eax,%eax
    116a:	7e 1a                	jle    1186 <fourfiles+0xd6>
    116c:	31 d2                	xor    %edx,%edx
    116e:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    1170:	0f be 8a 20 8c 00 00 	movsbl 0x8c20(%edx),%ecx
    1177:	39 cf                	cmp    %ecx,%edi
    1179:	75 5b                	jne    11d6 <fourfiles+0x126>
      for(j = 0; j < n; j++){
    117b:	83 c2 01             	add    $0x1,%edx
    117e:	39 c2                	cmp    %eax,%edx
    1180:	75 ee                	jne    1170 <fourfiles+0xc0>
      total += n;
    1182:	01 d3                	add    %edx,%ebx
    1184:	eb ca                	jmp    1150 <fourfiles+0xa0>
    close(fd);
    1186:	89 34 24             	mov    %esi,(%esp)
    1189:	e8 ac 2d 00 00       	call   3f3a <close>
    if(total != 12*500){
    118e:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1194:	0f 85 06 01 00 00    	jne    12a0 <fourfiles+0x1f0>
    unlink(fname);
    119a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    119d:	89 04 24             	mov    %eax,(%esp)
    11a0:	e8 bd 2d 00 00       	call   3f62 <unlink>
  for(i = 0; i < 2; i++){
    11a5:	83 ff 31             	cmp    $0x31,%edi
    11a8:	75 1c                	jne    11c6 <fourfiles+0x116>
  printf(1, "fourfiles ok\n");
    11aa:	c7 44 24 04 72 48 00 	movl   $0x4872,0x4(%esp)
    11b1:	00 
    11b2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11b9:	e8 a2 2e 00 00       	call   4060 <printf>
}
    11be:	83 c4 2c             	add    $0x2c,%esp
    11c1:	5b                   	pop    %ebx
    11c2:	5e                   	pop    %esi
    11c3:	5f                   	pop    %edi
    11c4:	5d                   	pop    %ebp
    11c5:	c3                   	ret    
    11c6:	8b 45 dc             	mov    -0x24(%ebp),%eax
    11c9:	bf 31 00 00 00       	mov    $0x31,%edi
    11ce:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    11d1:	e9 63 ff ff ff       	jmp    1139 <fourfiles+0x89>
          printf(1, "wrong char\n");
    11d6:	c7 44 24 04 55 48 00 	movl   $0x4855,0x4(%esp)
    11dd:	00 
    11de:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11e5:	e8 76 2e 00 00       	call   4060 <printf>
          exit(-1);
    11ea:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    11f1:	e8 1c 2d 00 00       	call   3f12 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    11f6:	89 34 24             	mov    %esi,(%esp)
    11f9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1200:	00 
    1201:	e8 4c 2d 00 00       	call   3f52 <open>
      if(fd < 0){
    1206:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    1208:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    120a:	78 74                	js     1280 <fourfiles+0x1d0>
      memset(buf, '0'+pi, 512);
    120c:	83 c3 30             	add    $0x30,%ebx
    120f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1213:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1218:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    121f:	00 
    1220:	c7 04 24 20 8c 00 00 	movl   $0x8c20,(%esp)
    1227:	e8 74 2b 00 00       	call   3da0 <memset>
        if((n = write(fd, buf, 500)) != 500){
    122c:	c7 44 24 08 f4 01 00 	movl   $0x1f4,0x8(%esp)
    1233:	00 
    1234:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    123b:	00 
    123c:	89 34 24             	mov    %esi,(%esp)
    123f:	e8 ee 2c 00 00       	call   3f32 <write>
    1244:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    1249:	75 11                	jne    125c <fourfiles+0x1ac>
      for(i = 0; i < 12; i++){
    124b:	83 eb 01             	sub    $0x1,%ebx
    124e:	75 dc                	jne    122c <fourfiles+0x17c>
      exit(0);
    1250:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1257:	e8 b6 2c 00 00       	call   3f12 <exit>
          printf(1, "write failed %d\n", n);
    125c:	89 44 24 08          	mov    %eax,0x8(%esp)
    1260:	c7 44 24 04 44 48 00 	movl   $0x4844,0x4(%esp)
    1267:	00 
    1268:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    126f:	e8 ec 2d 00 00       	call   4060 <printf>
          exit(-1);
    1274:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    127b:	e8 92 2c 00 00       	call   3f12 <exit>
        printf(1, "create failed\n");
    1280:	c7 44 24 04 cf 4a 00 	movl   $0x4acf,0x4(%esp)
    1287:	00 
    1288:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    128f:	e8 cc 2d 00 00       	call   4060 <printf>
        exit(-1);
    1294:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    129b:	e8 72 2c 00 00       	call   3f12 <exit>
      printf(1, "wrong length %d\n", total);
    12a0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    12a4:	c7 44 24 04 61 48 00 	movl   $0x4861,0x4(%esp)
    12ab:	00 
    12ac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12b3:	e8 a8 2d 00 00       	call   4060 <printf>
      exit(-1);
    12b8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    12bf:	e8 4e 2c 00 00       	call   3f12 <exit>
      printf(1, "fork failed\n");
    12c4:	c7 44 24 04 09 53 00 	movl   $0x5309,0x4(%esp)
    12cb:	00 
    12cc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12d3:	e8 88 2d 00 00       	call   4060 <printf>
      exit(-1);
    12d8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    12df:	e8 2e 2c 00 00       	call   3f12 <exit>
    12e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    12ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000012f0 <createdelete>:
{
    12f0:	55                   	push   %ebp
    12f1:	89 e5                	mov    %esp,%ebp
    12f3:	57                   	push   %edi
    12f4:	56                   	push   %esi
    12f5:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    12f6:	31 db                	xor    %ebx,%ebx
{
    12f8:	83 ec 4c             	sub    $0x4c,%esp
  printf(1, "createdelete test\n");
    12fb:	c7 44 24 04 80 48 00 	movl   $0x4880,0x4(%esp)
    1302:	00 
    1303:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    130a:	e8 51 2d 00 00       	call   4060 <printf>
    pid = fork();
    130f:	e8 f6 2b 00 00       	call   3f0a <fork>
    if(pid < 0){
    1314:	85 c0                	test   %eax,%eax
    1316:	0f 88 10 02 00 00    	js     152c <createdelete+0x23c>
    131c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    1320:	0f 84 14 01 00 00    	je     143a <createdelete+0x14a>
  for(pi = 0; pi < 4; pi++){
    1326:	83 c3 01             	add    $0x1,%ebx
    1329:	83 fb 04             	cmp    $0x4,%ebx
    132c:	75 e1                	jne    130f <createdelete+0x1f>
    132e:	66 90                	xchg   %ax,%ax
    wait();
    1330:	e8 e5 2b 00 00       	call   3f1a <wait>
  for(i = 0; i < N; i++){
    1335:	31 f6                	xor    %esi,%esi
    wait();
    1337:	e8 de 2b 00 00       	call   3f1a <wait>
    133c:	8d 7d c8             	lea    -0x38(%ebp),%edi
    133f:	e8 d6 2b 00 00       	call   3f1a <wait>
    1344:	e8 d1 2b 00 00       	call   3f1a <wait>
  name[0] = name[1] = name[2] = 0;
    1349:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    134d:	8d 76 00             	lea    0x0(%esi),%esi
    1350:	85 f6                	test   %esi,%esi
      name[2] = '\0';
    1352:	bb 70 00 00 00       	mov    $0x70,%ebx
    1357:	8d 46 30             	lea    0x30(%esi),%eax
    135a:	0f 94 45 c7          	sete   -0x39(%ebp)
    135e:	83 fe 09             	cmp    $0x9,%esi
    1361:	88 45 c6             	mov    %al,-0x3a(%ebp)
    1364:	0f 9f c0             	setg   %al
    1367:	08 45 c7             	or     %al,-0x39(%ebp)
    136a:	8d 46 ff             	lea    -0x1(%esi),%eax
    136d:	89 45 c0             	mov    %eax,-0x40(%ebp)
      name[1] = '0' + i;
    1370:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    1374:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    137b:	00 
    137c:	89 3c 24             	mov    %edi,(%esp)
      name[0] = 'p' + pi;
    137f:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    1382:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1385:	e8 c8 2b 00 00       	call   3f52 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    138a:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    138e:	0f 84 84 00 00 00    	je     1418 <createdelete+0x128>
    1394:	85 c0                	test   %eax,%eax
    1396:	0f 88 4c 01 00 00    	js     14e8 <createdelete+0x1f8>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    139c:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    13a0:	0f 86 1e 01 00 00    	jbe    14c4 <createdelete+0x1d4>
        close(fd);
    13a6:	89 04 24             	mov    %eax,(%esp)
    13a9:	83 c3 01             	add    $0x1,%ebx
    13ac:	e8 89 2b 00 00       	call   3f3a <close>
    for(pi = 0; pi < 4; pi++){
    13b1:	80 fb 74             	cmp    $0x74,%bl
    13b4:	75 ba                	jne    1370 <createdelete+0x80>
  for(i = 0; i < N; i++){
    13b6:	83 c6 01             	add    $0x1,%esi
    13b9:	83 fe 14             	cmp    $0x14,%esi
    13bc:	75 92                	jne    1350 <createdelete+0x60>
    13be:	be 70 00 00 00       	mov    $0x70,%esi
    13c3:	90                   	nop
    13c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13c8:	8d 46 c0             	lea    -0x40(%esi),%eax
    13cb:	bb 04 00 00 00       	mov    $0x4,%ebx
    13d0:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    13d3:	89 f0                	mov    %esi,%eax
    13d5:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    13d8:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    13dc:	89 3c 24             	mov    %edi,(%esp)
      name[1] = '0' + i;
    13df:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    13e2:	e8 7b 2b 00 00       	call   3f62 <unlink>
    for(pi = 0; pi < 4; pi++){
    13e7:	83 eb 01             	sub    $0x1,%ebx
    13ea:	75 e7                	jne    13d3 <createdelete+0xe3>
    13ec:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    13ef:	89 f0                	mov    %esi,%eax
    13f1:	3c 84                	cmp    $0x84,%al
    13f3:	75 d3                	jne    13c8 <createdelete+0xd8>
  printf(1, "createdelete ok\n");
    13f5:	c7 44 24 04 93 48 00 	movl   $0x4893,0x4(%esp)
    13fc:	00 
    13fd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1404:	e8 57 2c 00 00       	call   4060 <printf>
}
    1409:	83 c4 4c             	add    $0x4c,%esp
    140c:	5b                   	pop    %ebx
    140d:	5e                   	pop    %esi
    140e:	5f                   	pop    %edi
    140f:	5d                   	pop    %ebp
    1410:	c3                   	ret    
    1411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1418:	85 c0                	test   %eax,%eax
    141a:	0f 89 a4 00 00 00    	jns    14c4 <createdelete+0x1d4>
    1420:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    1423:	80 fb 74             	cmp    $0x74,%bl
    1426:	0f 85 44 ff ff ff    	jne    1370 <createdelete+0x80>
  for(i = 0; i < N; i++){
    142c:	83 c6 01             	add    $0x1,%esi
    142f:	83 fe 14             	cmp    $0x14,%esi
    1432:	0f 85 18 ff ff ff    	jne    1350 <createdelete+0x60>
    1438:	eb 84                	jmp    13be <createdelete+0xce>
      name[0] = 'p' + pi;
    143a:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    143d:	be 01 00 00 00       	mov    $0x1,%esi
      name[0] = 'p' + pi;
    1442:	88 5d c8             	mov    %bl,-0x38(%ebp)
    1445:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[2] = '\0';
    1448:	31 db                	xor    %ebx,%ebx
    144a:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    144e:	eb 0f                	jmp    145f <createdelete+0x16f>
      for(i = 0; i < N; i++){
    1450:	83 fe 14             	cmp    $0x14,%esi
    1453:	0f 84 83 00 00 00    	je     14dc <createdelete+0x1ec>
    1459:	83 c3 01             	add    $0x1,%ebx
    145c:	83 c6 01             	add    $0x1,%esi
    145f:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    1462:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1469:	00 
    146a:	89 3c 24             	mov    %edi,(%esp)
    146d:	88 45 c9             	mov    %al,-0x37(%ebp)
    1470:	e8 dd 2a 00 00       	call   3f52 <open>
        if(fd < 0){
    1475:	85 c0                	test   %eax,%eax
    1477:	0f 88 8f 00 00 00    	js     150c <createdelete+0x21c>
        close(fd);
    147d:	89 04 24             	mov    %eax,(%esp)
    1480:	e8 b5 2a 00 00       	call   3f3a <close>
        if(i > 0 && (i % 2 ) == 0){
    1485:	85 db                	test   %ebx,%ebx
    1487:	74 d0                	je     1459 <createdelete+0x169>
    1489:	f6 c3 01             	test   $0x1,%bl
    148c:	75 c2                	jne    1450 <createdelete+0x160>
          name[1] = '0' + (i / 2);
    148e:	89 d8                	mov    %ebx,%eax
    1490:	d1 f8                	sar    %eax
    1492:	83 c0 30             	add    $0x30,%eax
          if(unlink(name) < 0){
    1495:	89 3c 24             	mov    %edi,(%esp)
          name[1] = '0' + (i / 2);
    1498:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    149b:	e8 c2 2a 00 00       	call   3f62 <unlink>
    14a0:	85 c0                	test   %eax,%eax
    14a2:	79 ac                	jns    1450 <createdelete+0x160>
            printf(1, "unlink failed\n");
    14a4:	c7 44 24 04 81 44 00 	movl   $0x4481,0x4(%esp)
    14ab:	00 
    14ac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    14b3:	e8 a8 2b 00 00       	call   4060 <printf>
            exit(-1);
    14b8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    14bf:	e8 4e 2a 00 00       	call   3f12 <exit>
        printf(1, "oops createdelete %s did exist\n", name);
    14c4:	89 7c 24 08          	mov    %edi,0x8(%esp)
    14c8:	c7 44 24 04 64 55 00 	movl   $0x5564,0x4(%esp)
    14cf:	00 
    14d0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    14d7:	e8 84 2b 00 00       	call   4060 <printf>
        exit(0);
    14dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14e3:	e8 2a 2a 00 00       	call   3f12 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    14e8:	89 7c 24 08          	mov    %edi,0x8(%esp)
    14ec:	c7 44 24 04 40 55 00 	movl   $0x5540,0x4(%esp)
    14f3:	00 
    14f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    14fb:	e8 60 2b 00 00       	call   4060 <printf>
        exit(-1);
    1500:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1507:	e8 06 2a 00 00       	call   3f12 <exit>
          printf(1, "create failed\n");
    150c:	c7 44 24 04 cf 4a 00 	movl   $0x4acf,0x4(%esp)
    1513:	00 
    1514:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    151b:	e8 40 2b 00 00       	call   4060 <printf>
          exit(-1);
    1520:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1527:	e8 e6 29 00 00       	call   3f12 <exit>
      printf(1, "fork failed\n");
    152c:	c7 44 24 04 09 53 00 	movl   $0x5309,0x4(%esp)
    1533:	00 
    1534:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    153b:	e8 20 2b 00 00       	call   4060 <printf>
      exit(-1);
    1540:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1547:	e8 c6 29 00 00       	call   3f12 <exit>
    154c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001550 <unlinkread>:
{
    1550:	55                   	push   %ebp
    1551:	89 e5                	mov    %esp,%ebp
    1553:	56                   	push   %esi
    1554:	53                   	push   %ebx
    1555:	83 ec 10             	sub    $0x10,%esp
  printf(1, "unlinkread test\n");
    1558:	c7 44 24 04 a4 48 00 	movl   $0x48a4,0x4(%esp)
    155f:	00 
    1560:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1567:	e8 f4 2a 00 00       	call   4060 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    156c:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1573:	00 
    1574:	c7 04 24 b5 48 00 00 	movl   $0x48b5,(%esp)
    157b:	e8 d2 29 00 00       	call   3f52 <open>
  if(fd < 0){
    1580:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1582:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1584:	0f 88 02 01 00 00    	js     168c <unlinkread+0x13c>
  write(fd, "hello", 5);
    158a:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1591:	00 
    1592:	c7 44 24 04 da 48 00 	movl   $0x48da,0x4(%esp)
    1599:	00 
    159a:	89 04 24             	mov    %eax,(%esp)
    159d:	e8 90 29 00 00       	call   3f32 <write>
  close(fd);
    15a2:	89 1c 24             	mov    %ebx,(%esp)
    15a5:	e8 90 29 00 00       	call   3f3a <close>
  fd = open("unlinkread", O_RDWR);
    15aa:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    15b1:	00 
    15b2:	c7 04 24 b5 48 00 00 	movl   $0x48b5,(%esp)
    15b9:	e8 94 29 00 00       	call   3f52 <open>
  if(fd < 0){
    15be:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    15c0:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    15c2:	0f 88 64 01 00 00    	js     172c <unlinkread+0x1dc>
  if(unlink("unlinkread") != 0){
    15c8:	c7 04 24 b5 48 00 00 	movl   $0x48b5,(%esp)
    15cf:	e8 8e 29 00 00       	call   3f62 <unlink>
    15d4:	85 c0                	test   %eax,%eax
    15d6:	0f 85 30 01 00 00    	jne    170c <unlinkread+0x1bc>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    15dc:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    15e3:	00 
    15e4:	c7 04 24 b5 48 00 00 	movl   $0x48b5,(%esp)
    15eb:	e8 62 29 00 00       	call   3f52 <open>
  write(fd1, "yyy", 3);
    15f0:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
    15f7:	00 
    15f8:	c7 44 24 04 12 49 00 	movl   $0x4912,0x4(%esp)
    15ff:	00 
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1600:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1602:	89 04 24             	mov    %eax,(%esp)
    1605:	e8 28 29 00 00       	call   3f32 <write>
  close(fd1);
    160a:	89 34 24             	mov    %esi,(%esp)
    160d:	e8 28 29 00 00       	call   3f3a <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    1612:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1619:	00 
    161a:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    1621:	00 
    1622:	89 1c 24             	mov    %ebx,(%esp)
    1625:	e8 00 29 00 00       	call   3f2a <read>
    162a:	83 f8 05             	cmp    $0x5,%eax
    162d:	0f 85 b9 00 00 00    	jne    16ec <unlinkread+0x19c>
  if(buf[0] != 'h'){
    1633:	80 3d 20 8c 00 00 68 	cmpb   $0x68,0x8c20
    163a:	0f 85 8c 00 00 00    	jne    16cc <unlinkread+0x17c>
  if(write(fd, buf, 10) != 10){
    1640:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    1647:	00 
    1648:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    164f:	00 
    1650:	89 1c 24             	mov    %ebx,(%esp)
    1653:	e8 da 28 00 00       	call   3f32 <write>
    1658:	83 f8 0a             	cmp    $0xa,%eax
    165b:	75 4f                	jne    16ac <unlinkread+0x15c>
  close(fd);
    165d:	89 1c 24             	mov    %ebx,(%esp)
    1660:	e8 d5 28 00 00       	call   3f3a <close>
  unlink("unlinkread");
    1665:	c7 04 24 b5 48 00 00 	movl   $0x48b5,(%esp)
    166c:	e8 f1 28 00 00       	call   3f62 <unlink>
  printf(1, "unlinkread ok\n");
    1671:	c7 44 24 04 5d 49 00 	movl   $0x495d,0x4(%esp)
    1678:	00 
    1679:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1680:	e8 db 29 00 00       	call   4060 <printf>
}
    1685:	83 c4 10             	add    $0x10,%esp
    1688:	5b                   	pop    %ebx
    1689:	5e                   	pop    %esi
    168a:	5d                   	pop    %ebp
    168b:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    168c:	c7 44 24 04 c0 48 00 	movl   $0x48c0,0x4(%esp)
    1693:	00 
    1694:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    169b:	e8 c0 29 00 00       	call   4060 <printf>
    exit(-1);
    16a0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    16a7:	e8 66 28 00 00       	call   3f12 <exit>
    printf(1, "unlinkread write failed\n");
    16ac:	c7 44 24 04 44 49 00 	movl   $0x4944,0x4(%esp)
    16b3:	00 
    16b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16bb:	e8 a0 29 00 00       	call   4060 <printf>
    exit(-1);
    16c0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    16c7:	e8 46 28 00 00       	call   3f12 <exit>
    printf(1, "unlinkread wrong data\n");
    16cc:	c7 44 24 04 2d 49 00 	movl   $0x492d,0x4(%esp)
    16d3:	00 
    16d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16db:	e8 80 29 00 00       	call   4060 <printf>
    exit(-1);
    16e0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    16e7:	e8 26 28 00 00       	call   3f12 <exit>
    printf(1, "unlinkread read failed");
    16ec:	c7 44 24 04 16 49 00 	movl   $0x4916,0x4(%esp)
    16f3:	00 
    16f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16fb:	e8 60 29 00 00       	call   4060 <printf>
    exit(-1);
    1700:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1707:	e8 06 28 00 00       	call   3f12 <exit>
    printf(1, "unlink unlinkread failed\n");
    170c:	c7 44 24 04 f8 48 00 	movl   $0x48f8,0x4(%esp)
    1713:	00 
    1714:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    171b:	e8 40 29 00 00       	call   4060 <printf>
    exit(-1);
    1720:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1727:	e8 e6 27 00 00       	call   3f12 <exit>
    printf(1, "open unlinkread failed\n");
    172c:	c7 44 24 04 e0 48 00 	movl   $0x48e0,0x4(%esp)
    1733:	00 
    1734:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    173b:	e8 20 29 00 00       	call   4060 <printf>
    exit(-1);
    1740:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1747:	e8 c6 27 00 00       	call   3f12 <exit>
    174c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001750 <linktest>:
{
    1750:	55                   	push   %ebp
    1751:	89 e5                	mov    %esp,%ebp
    1753:	53                   	push   %ebx
    1754:	83 ec 14             	sub    $0x14,%esp
  printf(1, "linktest\n");
    1757:	c7 44 24 04 6c 49 00 	movl   $0x496c,0x4(%esp)
    175e:	00 
    175f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1766:	e8 f5 28 00 00       	call   4060 <printf>
  unlink("lf1");
    176b:	c7 04 24 76 49 00 00 	movl   $0x4976,(%esp)
    1772:	e8 eb 27 00 00       	call   3f62 <unlink>
  unlink("lf2");
    1777:	c7 04 24 7a 49 00 00 	movl   $0x497a,(%esp)
    177e:	e8 df 27 00 00       	call   3f62 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    1783:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    178a:	00 
    178b:	c7 04 24 76 49 00 00 	movl   $0x4976,(%esp)
    1792:	e8 bb 27 00 00       	call   3f52 <open>
  if(fd < 0){
    1797:	85 c0                	test   %eax,%eax
  fd = open("lf1", O_CREATE|O_RDWR);
    1799:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    179b:	0f 88 26 01 00 00    	js     18c7 <linktest+0x177>
  if(write(fd, "hello", 5) != 5){
    17a1:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    17a8:	00 
    17a9:	c7 44 24 04 da 48 00 	movl   $0x48da,0x4(%esp)
    17b0:	00 
    17b1:	89 04 24             	mov    %eax,(%esp)
    17b4:	e8 79 27 00 00       	call   3f32 <write>
    17b9:	83 f8 05             	cmp    $0x5,%eax
    17bc:	0f 85 05 02 00 00    	jne    19c7 <linktest+0x277>
  close(fd);
    17c2:	89 1c 24             	mov    %ebx,(%esp)
    17c5:	e8 70 27 00 00       	call   3f3a <close>
  if(link("lf1", "lf2") < 0){
    17ca:	c7 44 24 04 7a 49 00 	movl   $0x497a,0x4(%esp)
    17d1:	00 
    17d2:	c7 04 24 76 49 00 00 	movl   $0x4976,(%esp)
    17d9:	e8 94 27 00 00       	call   3f72 <link>
    17de:	85 c0                	test   %eax,%eax
    17e0:	0f 88 c1 01 00 00    	js     19a7 <linktest+0x257>
  unlink("lf1");
    17e6:	c7 04 24 76 49 00 00 	movl   $0x4976,(%esp)
    17ed:	e8 70 27 00 00       	call   3f62 <unlink>
  if(open("lf1", 0) >= 0){
    17f2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    17f9:	00 
    17fa:	c7 04 24 76 49 00 00 	movl   $0x4976,(%esp)
    1801:	e8 4c 27 00 00       	call   3f52 <open>
    1806:	85 c0                	test   %eax,%eax
    1808:	0f 89 79 01 00 00    	jns    1987 <linktest+0x237>
  fd = open("lf2", 0);
    180e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1815:	00 
    1816:	c7 04 24 7a 49 00 00 	movl   $0x497a,(%esp)
    181d:	e8 30 27 00 00       	call   3f52 <open>
  if(fd < 0){
    1822:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    1824:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1826:	0f 88 3b 01 00 00    	js     1967 <linktest+0x217>
  if(read(fd, buf, sizeof(buf)) != 5){
    182c:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1833:	00 
    1834:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    183b:	00 
    183c:	89 04 24             	mov    %eax,(%esp)
    183f:	e8 e6 26 00 00       	call   3f2a <read>
    1844:	83 f8 05             	cmp    $0x5,%eax
    1847:	0f 85 fa 00 00 00    	jne    1947 <linktest+0x1f7>
  close(fd);
    184d:	89 1c 24             	mov    %ebx,(%esp)
    1850:	e8 e5 26 00 00       	call   3f3a <close>
  if(link("lf2", "lf2") >= 0){
    1855:	c7 44 24 04 7a 49 00 	movl   $0x497a,0x4(%esp)
    185c:	00 
    185d:	c7 04 24 7a 49 00 00 	movl   $0x497a,(%esp)
    1864:	e8 09 27 00 00       	call   3f72 <link>
    1869:	85 c0                	test   %eax,%eax
    186b:	0f 89 b6 00 00 00    	jns    1927 <linktest+0x1d7>
  unlink("lf2");
    1871:	c7 04 24 7a 49 00 00 	movl   $0x497a,(%esp)
    1878:	e8 e5 26 00 00       	call   3f62 <unlink>
  if(link("lf2", "lf1") >= 0){
    187d:	c7 44 24 04 76 49 00 	movl   $0x4976,0x4(%esp)
    1884:	00 
    1885:	c7 04 24 7a 49 00 00 	movl   $0x497a,(%esp)
    188c:	e8 e1 26 00 00       	call   3f72 <link>
    1891:	85 c0                	test   %eax,%eax
    1893:	79 72                	jns    1907 <linktest+0x1b7>
  if(link(".", "lf1") >= 0){
    1895:	c7 44 24 04 76 49 00 	movl   $0x4976,0x4(%esp)
    189c:	00 
    189d:	c7 04 24 3e 4c 00 00 	movl   $0x4c3e,(%esp)
    18a4:	e8 c9 26 00 00       	call   3f72 <link>
    18a9:	85 c0                	test   %eax,%eax
    18ab:	79 3a                	jns    18e7 <linktest+0x197>
  printf(1, "linktest ok\n");
    18ad:	c7 44 24 04 14 4a 00 	movl   $0x4a14,0x4(%esp)
    18b4:	00 
    18b5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18bc:	e8 9f 27 00 00       	call   4060 <printf>
}
    18c1:	83 c4 14             	add    $0x14,%esp
    18c4:	5b                   	pop    %ebx
    18c5:	5d                   	pop    %ebp
    18c6:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    18c7:	c7 44 24 04 7e 49 00 	movl   $0x497e,0x4(%esp)
    18ce:	00 
    18cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18d6:	e8 85 27 00 00       	call   4060 <printf>
    exit(-1);
    18db:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    18e2:	e8 2b 26 00 00       	call   3f12 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    18e7:	c7 44 24 04 f8 49 00 	movl   $0x49f8,0x4(%esp)
    18ee:	00 
    18ef:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18f6:	e8 65 27 00 00       	call   4060 <printf>
    exit(0);
    18fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1902:	e8 0b 26 00 00       	call   3f12 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    1907:	c7 44 24 04 ac 55 00 	movl   $0x55ac,0x4(%esp)
    190e:	00 
    190f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1916:	e8 45 27 00 00       	call   4060 <printf>
    exit(0);
    191b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1922:	e8 eb 25 00 00       	call   3f12 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1927:	c7 44 24 04 da 49 00 	movl   $0x49da,0x4(%esp)
    192e:	00 
    192f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1936:	e8 25 27 00 00       	call   4060 <printf>
    exit(0);
    193b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1942:	e8 cb 25 00 00       	call   3f12 <exit>
    printf(1, "read lf2 failed\n");
    1947:	c7 44 24 04 c9 49 00 	movl   $0x49c9,0x4(%esp)
    194e:	00 
    194f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1956:	e8 05 27 00 00       	call   4060 <printf>
    exit(-1);
    195b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1962:	e8 ab 25 00 00       	call   3f12 <exit>
    printf(1, "open lf2 failed\n");
    1967:	c7 44 24 04 b8 49 00 	movl   $0x49b8,0x4(%esp)
    196e:	00 
    196f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1976:	e8 e5 26 00 00       	call   4060 <printf>
    exit(-1);
    197b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1982:	e8 8b 25 00 00       	call   3f12 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    1987:	c7 44 24 04 84 55 00 	movl   $0x5584,0x4(%esp)
    198e:	00 
    198f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1996:	e8 c5 26 00 00       	call   4060 <printf>
    exit(-1);
    199b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    19a2:	e8 6b 25 00 00       	call   3f12 <exit>
    printf(1, "link lf1 lf2 failed\n");
    19a7:	c7 44 24 04 a3 49 00 	movl   $0x49a3,0x4(%esp)
    19ae:	00 
    19af:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19b6:	e8 a5 26 00 00       	call   4060 <printf>
    exit(-1);
    19bb:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    19c2:	e8 4b 25 00 00       	call   3f12 <exit>
    printf(1, "write lf1 failed\n");
    19c7:	c7 44 24 04 91 49 00 	movl   $0x4991,0x4(%esp)
    19ce:	00 
    19cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19d6:	e8 85 26 00 00       	call   4060 <printf>
    exit(-1);
    19db:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    19e2:	e8 2b 25 00 00       	call   3f12 <exit>
    19e7:	89 f6                	mov    %esi,%esi
    19e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000019f0 <concreate>:
{
    19f0:	55                   	push   %ebp
    19f1:	89 e5                	mov    %esp,%ebp
    19f3:	57                   	push   %edi
    19f4:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    19f5:	31 f6                	xor    %esi,%esi
{
    19f7:	53                   	push   %ebx
    19f8:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "concreate test\n");
    19fb:	c7 44 24 04 21 4a 00 	movl   $0x4a21,0x4(%esp)
    1a02:	00 
    1a03:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    1a06:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a0d:	e8 4e 26 00 00       	call   4060 <printf>
  file[0] = 'C';
    1a12:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1a16:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1a1a:	eb 53                	jmp    1a6f <concreate+0x7f>
    1a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1a20:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1a25:	89 f1                	mov    %esi,%ecx
    1a27:	f7 ee                	imul   %esi
    1a29:	89 f0                	mov    %esi,%eax
    1a2b:	c1 f8 1f             	sar    $0x1f,%eax
    1a2e:	29 c2                	sub    %eax,%edx
    1a30:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1a33:	29 c1                	sub    %eax,%ecx
    1a35:	83 f9 01             	cmp    $0x1,%ecx
    1a38:	0f 84 82 00 00 00    	je     1ac0 <concreate+0xd0>
      fd = open(file, O_CREATE | O_RDWR);
    1a3e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1a45:	00 
    1a46:	89 1c 24             	mov    %ebx,(%esp)
    1a49:	e8 04 25 00 00       	call   3f52 <open>
      if(fd < 0){
    1a4e:	85 c0                	test   %eax,%eax
    1a50:	0f 88 4e 02 00 00    	js     1ca4 <concreate+0x2b4>
      close(fd);
    1a56:	89 04 24             	mov    %eax,(%esp)
    1a59:	e8 dc 24 00 00       	call   3f3a <close>
    if(pid == 0)
    1a5e:	85 ff                	test   %edi,%edi
    1a60:	74 52                	je     1ab4 <concreate+0xc4>
  for(i = 0; i < 40; i++){
    1a62:	83 c6 01             	add    $0x1,%esi
      wait();
    1a65:	e8 b0 24 00 00       	call   3f1a <wait>
  for(i = 0; i < 40; i++){
    1a6a:	83 fe 28             	cmp    $0x28,%esi
    1a6d:	74 71                	je     1ae0 <concreate+0xf0>
    1a6f:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    1a72:	89 1c 24             	mov    %ebx,(%esp)
    1a75:	88 45 ae             	mov    %al,-0x52(%ebp)
    1a78:	e8 e5 24 00 00       	call   3f62 <unlink>
    pid = fork();
    1a7d:	e8 88 24 00 00       	call   3f0a <fork>
    if(pid && (i % 3) == 1){
    1a82:	85 c0                	test   %eax,%eax
    pid = fork();
    1a84:	89 c7                	mov    %eax,%edi
    if(pid && (i % 3) == 1){
    1a86:	75 98                	jne    1a20 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1a88:	b8 67 66 66 66       	mov    $0x66666667,%eax
    1a8d:	89 f1                	mov    %esi,%ecx
    1a8f:	f7 ee                	imul   %esi
    1a91:	89 f0                	mov    %esi,%eax
    1a93:	c1 f8 1f             	sar    $0x1f,%eax
    1a96:	d1 fa                	sar    %edx
    1a98:	29 c2                	sub    %eax,%edx
    1a9a:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1a9d:	29 c1                	sub    %eax,%ecx
    1a9f:	83 f9 01             	cmp    $0x1,%ecx
    1aa2:	75 9a                	jne    1a3e <concreate+0x4e>
      link("C0", file);
    1aa4:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1aa8:	c7 04 24 31 4a 00 00 	movl   $0x4a31,(%esp)
    1aaf:	e8 be 24 00 00       	call   3f72 <link>
        exit(0);
    1ab4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1abb:	e8 52 24 00 00       	call   3f12 <exit>
      link("C0", file);
    1ac0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  for(i = 0; i < 40; i++){
    1ac4:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    1ac7:	c7 04 24 31 4a 00 00 	movl   $0x4a31,(%esp)
    1ace:	e8 9f 24 00 00       	call   3f72 <link>
      wait();
    1ad3:	e8 42 24 00 00       	call   3f1a <wait>
  for(i = 0; i < 40; i++){
    1ad8:	83 fe 28             	cmp    $0x28,%esi
    1adb:	75 92                	jne    1a6f <concreate+0x7f>
    1add:	8d 76 00             	lea    0x0(%esi),%esi
  memset(fa, 0, sizeof(fa));
    1ae0:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1ae3:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
    1aea:	00 
    1aeb:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1aee:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1af5:	00 
    1af6:	89 04 24             	mov    %eax,(%esp)
    1af9:	e8 a2 22 00 00       	call   3da0 <memset>
  fd = open(".", 0);
    1afe:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b05:	00 
    1b06:	c7 04 24 3e 4c 00 00 	movl   $0x4c3e,(%esp)
    1b0d:	e8 40 24 00 00       	call   3f52 <open>
  n = 0;
    1b12:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    1b19:	89 c6                	mov    %eax,%esi
    1b1b:	90                   	nop
    1b1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1b20:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
    1b27:	00 
    1b28:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1b2c:	89 34 24             	mov    %esi,(%esp)
    1b2f:	e8 f6 23 00 00       	call   3f2a <read>
    1b34:	85 c0                	test   %eax,%eax
    1b36:	7e 40                	jle    1b78 <concreate+0x188>
    if(de.inum == 0)
    1b38:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1b3d:	74 e1                	je     1b20 <concreate+0x130>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1b3f:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1b43:	75 db                	jne    1b20 <concreate+0x130>
    1b45:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1b49:	75 d5                	jne    1b20 <concreate+0x130>
      i = de.name[1] - '0';
    1b4b:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1b4f:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1b52:	83 f8 27             	cmp    $0x27,%eax
    1b55:	0f 87 6d 01 00 00    	ja     1cc8 <concreate+0x2d8>
      if(fa[i]){
    1b5b:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1b60:	0f 85 a2 01 00 00    	jne    1d08 <concreate+0x318>
      fa[i] = 1;
    1b66:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1b6b:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1b6f:	eb af                	jmp    1b20 <concreate+0x130>
    1b71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1b78:	89 34 24             	mov    %esi,(%esp)
    1b7b:	e8 ba 23 00 00       	call   3f3a <close>
  if(n != 40){
    1b80:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1b84:	0f 85 5e 01 00 00    	jne    1ce8 <concreate+0x2f8>
    1b8a:	31 f6                	xor    %esi,%esi
    1b8c:	eb 7f                	jmp    1c0d <concreate+0x21d>
    1b8e:	66 90                	xchg   %ax,%ax
       ((i % 3) == 1 && pid != 0)){
    1b90:	85 ff                	test   %edi,%edi
    1b92:	0f 84 ae 00 00 00    	je     1c46 <concreate+0x256>
      close(open(file, 0));
    1b98:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b9f:	00 
    1ba0:	89 1c 24             	mov    %ebx,(%esp)
    1ba3:	e8 aa 23 00 00       	call   3f52 <open>
    1ba8:	89 04 24             	mov    %eax,(%esp)
    1bab:	e8 8a 23 00 00       	call   3f3a <close>
      close(open(file, 0));
    1bb0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1bb7:	00 
    1bb8:	89 1c 24             	mov    %ebx,(%esp)
    1bbb:	e8 92 23 00 00       	call   3f52 <open>
    1bc0:	89 04 24             	mov    %eax,(%esp)
    1bc3:	e8 72 23 00 00       	call   3f3a <close>
      close(open(file, 0));
    1bc8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1bcf:	00 
    1bd0:	89 1c 24             	mov    %ebx,(%esp)
    1bd3:	e8 7a 23 00 00       	call   3f52 <open>
    1bd8:	89 04 24             	mov    %eax,(%esp)
    1bdb:	e8 5a 23 00 00       	call   3f3a <close>
      close(open(file, 0));
    1be0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1be7:	00 
    1be8:	89 1c 24             	mov    %ebx,(%esp)
    1beb:	e8 62 23 00 00       	call   3f52 <open>
    1bf0:	89 04 24             	mov    %eax,(%esp)
    1bf3:	e8 42 23 00 00       	call   3f3a <close>
    if(pid == 0)
    1bf8:	85 ff                	test   %edi,%edi
    1bfa:	0f 84 b4 fe ff ff    	je     1ab4 <concreate+0xc4>
  for(i = 0; i < 40; i++){
    1c00:	83 c6 01             	add    $0x1,%esi
      wait();
    1c03:	e8 12 23 00 00       	call   3f1a <wait>
  for(i = 0; i < 40; i++){
    1c08:	83 fe 28             	cmp    $0x28,%esi
    1c0b:	74 5b                	je     1c68 <concreate+0x278>
    1c0d:	8d 46 30             	lea    0x30(%esi),%eax
    1c10:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1c13:	e8 f2 22 00 00       	call   3f0a <fork>
    if(pid < 0){
    1c18:	85 c0                	test   %eax,%eax
    pid = fork();
    1c1a:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1c1c:	78 66                	js     1c84 <concreate+0x294>
    if(((i % 3) == 0 && pid == 0) ||
    1c1e:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1c23:	f7 ee                	imul   %esi
    1c25:	89 f0                	mov    %esi,%eax
    1c27:	c1 f8 1f             	sar    $0x1f,%eax
    1c2a:	29 c2                	sub    %eax,%edx
    1c2c:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1c2f:	89 f2                	mov    %esi,%edx
    1c31:	29 c2                	sub    %eax,%edx
    1c33:	89 d0                	mov    %edx,%eax
    1c35:	09 f8                	or     %edi,%eax
    1c37:	0f 84 5b ff ff ff    	je     1b98 <concreate+0x1a8>
    1c3d:	83 fa 01             	cmp    $0x1,%edx
    1c40:	0f 84 4a ff ff ff    	je     1b90 <concreate+0x1a0>
      unlink(file);
    1c46:	89 1c 24             	mov    %ebx,(%esp)
    1c49:	e8 14 23 00 00       	call   3f62 <unlink>
      unlink(file);
    1c4e:	89 1c 24             	mov    %ebx,(%esp)
    1c51:	e8 0c 23 00 00       	call   3f62 <unlink>
      unlink(file);
    1c56:	89 1c 24             	mov    %ebx,(%esp)
    1c59:	e8 04 23 00 00       	call   3f62 <unlink>
      unlink(file);
    1c5e:	89 1c 24             	mov    %ebx,(%esp)
    1c61:	e8 fc 22 00 00       	call   3f62 <unlink>
    1c66:	eb 90                	jmp    1bf8 <concreate+0x208>
  printf(1, "concreate ok\n");
    1c68:	c7 44 24 04 86 4a 00 	movl   $0x4a86,0x4(%esp)
    1c6f:	00 
    1c70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c77:	e8 e4 23 00 00       	call   4060 <printf>
}
    1c7c:	83 c4 5c             	add    $0x5c,%esp
    1c7f:	5b                   	pop    %ebx
    1c80:	5e                   	pop    %esi
    1c81:	5f                   	pop    %edi
    1c82:	5d                   	pop    %ebp
    1c83:	c3                   	ret    
      printf(1, "fork failed\n");
    1c84:	c7 44 24 04 09 53 00 	movl   $0x5309,0x4(%esp)
    1c8b:	00 
    1c8c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c93:	e8 c8 23 00 00       	call   4060 <printf>
      exit(-1);
    1c98:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1c9f:	e8 6e 22 00 00       	call   3f12 <exit>
        printf(1, "concreate create %s failed\n", file);
    1ca4:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1ca8:	c7 44 24 04 34 4a 00 	movl   $0x4a34,0x4(%esp)
    1caf:	00 
    1cb0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cb7:	e8 a4 23 00 00       	call   4060 <printf>
        exit(-1);
    1cbc:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1cc3:	e8 4a 22 00 00       	call   3f12 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1cc8:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1ccb:	89 44 24 08          	mov    %eax,0x8(%esp)
    1ccf:	c7 44 24 04 50 4a 00 	movl   $0x4a50,0x4(%esp)
    1cd6:	00 
    1cd7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cde:	e8 7d 23 00 00       	call   4060 <printf>
    1ce3:	e9 cc fd ff ff       	jmp    1ab4 <concreate+0xc4>
    printf(1, "concreate not enough files in directory listing\n");
    1ce8:	c7 44 24 04 d0 55 00 	movl   $0x55d0,0x4(%esp)
    1cef:	00 
    1cf0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cf7:	e8 64 23 00 00       	call   4060 <printf>
    exit(-1);
    1cfc:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1d03:	e8 0a 22 00 00       	call   3f12 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1d08:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d0b:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d0f:	c7 44 24 04 69 4a 00 	movl   $0x4a69,0x4(%esp)
    1d16:	00 
    1d17:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d1e:	e8 3d 23 00 00       	call   4060 <printf>
        exit(0);
    1d23:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d2a:	e8 e3 21 00 00       	call   3f12 <exit>
    1d2f:	90                   	nop

00001d30 <linkunlink>:
{
    1d30:	55                   	push   %ebp
    1d31:	89 e5                	mov    %esp,%ebp
    1d33:	57                   	push   %edi
    1d34:	56                   	push   %esi
    1d35:	53                   	push   %ebx
    1d36:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "linkunlink test\n");
    1d39:	c7 44 24 04 94 4a 00 	movl   $0x4a94,0x4(%esp)
    1d40:	00 
    1d41:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d48:	e8 13 23 00 00       	call   4060 <printf>
  unlink("x");
    1d4d:	c7 04 24 21 4d 00 00 	movl   $0x4d21,(%esp)
    1d54:	e8 09 22 00 00       	call   3f62 <unlink>
  pid = fork();
    1d59:	e8 ac 21 00 00       	call   3f0a <fork>
  if(pid < 0){
    1d5e:	85 c0                	test   %eax,%eax
  pid = fork();
    1d60:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1d63:	0f 88 b8 00 00 00    	js     1e21 <linkunlink+0xf1>
  unsigned int x = (pid ? 1 : 97);
    1d69:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1d6d:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1d72:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1d77:	19 ff                	sbb    %edi,%edi
    1d79:	83 e7 60             	and    $0x60,%edi
    1d7c:	83 c7 01             	add    $0x1,%edi
    1d7f:	eb 1d                	jmp    1d9e <linkunlink+0x6e>
    1d81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1d88:	83 fa 01             	cmp    $0x1,%edx
    1d8b:	74 7b                	je     1e08 <linkunlink+0xd8>
      unlink("x");
    1d8d:	c7 04 24 21 4d 00 00 	movl   $0x4d21,(%esp)
    1d94:	e8 c9 21 00 00       	call   3f62 <unlink>
  for(i = 0; i < 100; i++){
    1d99:	83 eb 01             	sub    $0x1,%ebx
    1d9c:	74 3c                	je     1dda <linkunlink+0xaa>
    x = x * 1103515245 + 12345;
    1d9e:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1da4:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1daa:	89 f8                	mov    %edi,%eax
    1dac:	f7 e6                	mul    %esi
    1dae:	d1 ea                	shr    %edx
    1db0:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1db3:	89 fa                	mov    %edi,%edx
    1db5:	29 c2                	sub    %eax,%edx
    1db7:	75 cf                	jne    1d88 <linkunlink+0x58>
      close(open("x", O_RDWR | O_CREATE));
    1db9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1dc0:	00 
    1dc1:	c7 04 24 21 4d 00 00 	movl   $0x4d21,(%esp)
    1dc8:	e8 85 21 00 00       	call   3f52 <open>
    1dcd:	89 04 24             	mov    %eax,(%esp)
    1dd0:	e8 65 21 00 00       	call   3f3a <close>
  for(i = 0; i < 100; i++){
    1dd5:	83 eb 01             	sub    $0x1,%ebx
    1dd8:	75 c4                	jne    1d9e <linkunlink+0x6e>
  if(pid)
    1dda:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1ddd:	85 c0                	test   %eax,%eax
    1ddf:	74 60                	je     1e41 <linkunlink+0x111>
    wait();
    1de1:	e8 34 21 00 00       	call   3f1a <wait>
  printf(1, "linkunlink ok\n");
    1de6:	c7 44 24 04 a9 4a 00 	movl   $0x4aa9,0x4(%esp)
    1ded:	00 
    1dee:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1df5:	e8 66 22 00 00       	call   4060 <printf>
}
    1dfa:	83 c4 1c             	add    $0x1c,%esp
    1dfd:	5b                   	pop    %ebx
    1dfe:	5e                   	pop    %esi
    1dff:	5f                   	pop    %edi
    1e00:	5d                   	pop    %ebp
    1e01:	c3                   	ret    
    1e02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      link("cat", "x");
    1e08:	c7 44 24 04 21 4d 00 	movl   $0x4d21,0x4(%esp)
    1e0f:	00 
    1e10:	c7 04 24 a5 4a 00 00 	movl   $0x4aa5,(%esp)
    1e17:	e8 56 21 00 00       	call   3f72 <link>
    1e1c:	e9 78 ff ff ff       	jmp    1d99 <linkunlink+0x69>
    printf(1, "fork failed\n");
    1e21:	c7 44 24 04 09 53 00 	movl   $0x5309,0x4(%esp)
    1e28:	00 
    1e29:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e30:	e8 2b 22 00 00       	call   4060 <printf>
    exit(-1);
    1e35:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1e3c:	e8 d1 20 00 00       	call   3f12 <exit>
    exit(0);
    1e41:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1e48:	e8 c5 20 00 00       	call   3f12 <exit>
    1e4d:	8d 76 00             	lea    0x0(%esi),%esi

00001e50 <bigdir>:
{
    1e50:	55                   	push   %ebp
    1e51:	89 e5                	mov    %esp,%ebp
    1e53:	56                   	push   %esi
    1e54:	53                   	push   %ebx
    1e55:	83 ec 20             	sub    $0x20,%esp
  printf(1, "bigdir test\n");
    1e58:	c7 44 24 04 b8 4a 00 	movl   $0x4ab8,0x4(%esp)
    1e5f:	00 
    1e60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e67:	e8 f4 21 00 00       	call   4060 <printf>
  unlink("bd");
    1e6c:	c7 04 24 c5 4a 00 00 	movl   $0x4ac5,(%esp)
    1e73:	e8 ea 20 00 00       	call   3f62 <unlink>
  fd = open("bd", O_CREATE);
    1e78:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    1e7f:	00 
    1e80:	c7 04 24 c5 4a 00 00 	movl   $0x4ac5,(%esp)
    1e87:	e8 c6 20 00 00       	call   3f52 <open>
  if(fd < 0){
    1e8c:	85 c0                	test   %eax,%eax
    1e8e:	0f 88 f4 00 00 00    	js     1f88 <bigdir+0x138>
  close(fd);
    1e94:	89 04 24             	mov    %eax,(%esp)
  for(i = 0; i < 500; i++){
    1e97:	31 db                	xor    %ebx,%ebx
  close(fd);
    1e99:	e8 9c 20 00 00       	call   3f3a <close>
    1e9e:	8d 75 ee             	lea    -0x12(%ebp),%esi
    1ea1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1ea8:	89 d8                	mov    %ebx,%eax
    1eaa:	c1 f8 06             	sar    $0x6,%eax
    1ead:	83 c0 30             	add    $0x30,%eax
    1eb0:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1eb3:	89 d8                	mov    %ebx,%eax
    1eb5:	83 e0 3f             	and    $0x3f,%eax
    1eb8:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    1ebb:	89 74 24 04          	mov    %esi,0x4(%esp)
    1ebf:	c7 04 24 c5 4a 00 00 	movl   $0x4ac5,(%esp)
    name[0] = 'x';
    1ec6:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1eca:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1ecd:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(link("bd", name) != 0){
    1ed1:	e8 9c 20 00 00       	call   3f72 <link>
    1ed6:	85 c0                	test   %eax,%eax
    1ed8:	75 6e                	jne    1f48 <bigdir+0xf8>
  for(i = 0; i < 500; i++){
    1eda:	83 c3 01             	add    $0x1,%ebx
    1edd:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1ee3:	75 c3                	jne    1ea8 <bigdir+0x58>
  unlink("bd");
    1ee5:	c7 04 24 c5 4a 00 00 	movl   $0x4ac5,(%esp)
  for(i = 0; i < 500; i++){
    1eec:	66 31 db             	xor    %bx,%bx
  unlink("bd");
    1eef:	e8 6e 20 00 00       	call   3f62 <unlink>
    1ef4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1ef8:	89 d8                	mov    %ebx,%eax
    1efa:	c1 f8 06             	sar    $0x6,%eax
    1efd:	83 c0 30             	add    $0x30,%eax
    1f00:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f03:	89 d8                	mov    %ebx,%eax
    1f05:	83 e0 3f             	and    $0x3f,%eax
    1f08:	83 c0 30             	add    $0x30,%eax
    if(unlink(name) != 0){
    1f0b:	89 34 24             	mov    %esi,(%esp)
    name[0] = 'x';
    1f0e:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1f12:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1f15:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(unlink(name) != 0){
    1f19:	e8 44 20 00 00       	call   3f62 <unlink>
    1f1e:	85 c0                	test   %eax,%eax
    1f20:	75 46                	jne    1f68 <bigdir+0x118>
  for(i = 0; i < 500; i++){
    1f22:	83 c3 01             	add    $0x1,%ebx
    1f25:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1f2b:	75 cb                	jne    1ef8 <bigdir+0xa8>
  printf(1, "bigdir ok\n");
    1f2d:	c7 44 24 04 07 4b 00 	movl   $0x4b07,0x4(%esp)
    1f34:	00 
    1f35:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f3c:	e8 1f 21 00 00       	call   4060 <printf>
}
    1f41:	83 c4 20             	add    $0x20,%esp
    1f44:	5b                   	pop    %ebx
    1f45:	5e                   	pop    %esi
    1f46:	5d                   	pop    %ebp
    1f47:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1f48:	c7 44 24 04 de 4a 00 	movl   $0x4ade,0x4(%esp)
    1f4f:	00 
    1f50:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f57:	e8 04 21 00 00       	call   4060 <printf>
      exit(-1);
    1f5c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1f63:	e8 aa 1f 00 00       	call   3f12 <exit>
      printf(1, "bigdir unlink failed");
    1f68:	c7 44 24 04 f2 4a 00 	movl   $0x4af2,0x4(%esp)
    1f6f:	00 
    1f70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f77:	e8 e4 20 00 00       	call   4060 <printf>
      exit(-1);
    1f7c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1f83:	e8 8a 1f 00 00       	call   3f12 <exit>
    printf(1, "bigdir create failed\n");
    1f88:	c7 44 24 04 c8 4a 00 	movl   $0x4ac8,0x4(%esp)
    1f8f:	00 
    1f90:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f97:	e8 c4 20 00 00       	call   4060 <printf>
    exit(-1);
    1f9c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1fa3:	e8 6a 1f 00 00       	call   3f12 <exit>
    1fa8:	90                   	nop
    1fa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001fb0 <subdir>:
{
    1fb0:	55                   	push   %ebp
    1fb1:	89 e5                	mov    %esp,%ebp
    1fb3:	53                   	push   %ebx
    1fb4:	83 ec 14             	sub    $0x14,%esp
  printf(1, "subdir test\n");
    1fb7:	c7 44 24 04 12 4b 00 	movl   $0x4b12,0x4(%esp)
    1fbe:	00 
    1fbf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fc6:	e8 95 20 00 00       	call   4060 <printf>
  unlink("ff");
    1fcb:	c7 04 24 9b 4b 00 00 	movl   $0x4b9b,(%esp)
    1fd2:	e8 8b 1f 00 00       	call   3f62 <unlink>
  if(mkdir("dd") != 0){
    1fd7:	c7 04 24 38 4c 00 00 	movl   $0x4c38,(%esp)
    1fde:	e8 97 1f 00 00       	call   3f7a <mkdir>
    1fe3:	85 c0                	test   %eax,%eax
    1fe5:	0f 85 a1 06 00 00    	jne    268c <subdir+0x6dc>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1feb:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1ff2:	00 
    1ff3:	c7 04 24 71 4b 00 00 	movl   $0x4b71,(%esp)
    1ffa:	e8 53 1f 00 00       	call   3f52 <open>
  if(fd < 0){
    1fff:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2001:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2003:	0f 88 63 06 00 00    	js     266c <subdir+0x6bc>
  write(fd, "ff", 2);
    2009:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2010:	00 
    2011:	c7 44 24 04 9b 4b 00 	movl   $0x4b9b,0x4(%esp)
    2018:	00 
    2019:	89 04 24             	mov    %eax,(%esp)
    201c:	e8 11 1f 00 00       	call   3f32 <write>
  close(fd);
    2021:	89 1c 24             	mov    %ebx,(%esp)
    2024:	e8 11 1f 00 00       	call   3f3a <close>
  if(unlink("dd") >= 0){
    2029:	c7 04 24 38 4c 00 00 	movl   $0x4c38,(%esp)
    2030:	e8 2d 1f 00 00       	call   3f62 <unlink>
    2035:	85 c0                	test   %eax,%eax
    2037:	0f 89 0f 06 00 00    	jns    264c <subdir+0x69c>
  if(mkdir("/dd/dd") != 0){
    203d:	c7 04 24 4c 4b 00 00 	movl   $0x4b4c,(%esp)
    2044:	e8 31 1f 00 00       	call   3f7a <mkdir>
    2049:	85 c0                	test   %eax,%eax
    204b:	0f 85 db 05 00 00    	jne    262c <subdir+0x67c>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2051:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2058:	00 
    2059:	c7 04 24 6e 4b 00 00 	movl   $0x4b6e,(%esp)
    2060:	e8 ed 1e 00 00       	call   3f52 <open>
  if(fd < 0){
    2065:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2067:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2069:	0f 88 5d 04 00 00    	js     24cc <subdir+0x51c>
  write(fd, "FF", 2);
    206f:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2076:	00 
    2077:	c7 44 24 04 8f 4b 00 	movl   $0x4b8f,0x4(%esp)
    207e:	00 
    207f:	89 04 24             	mov    %eax,(%esp)
    2082:	e8 ab 1e 00 00       	call   3f32 <write>
  close(fd);
    2087:	89 1c 24             	mov    %ebx,(%esp)
    208a:	e8 ab 1e 00 00       	call   3f3a <close>
  fd = open("dd/dd/../ff", 0);
    208f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2096:	00 
    2097:	c7 04 24 92 4b 00 00 	movl   $0x4b92,(%esp)
    209e:	e8 af 1e 00 00       	call   3f52 <open>
  if(fd < 0){
    20a3:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    20a5:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20a7:	0f 88 ff 03 00 00    	js     24ac <subdir+0x4fc>
  cc = read(fd, buf, sizeof(buf));
    20ad:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    20b4:	00 
    20b5:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    20bc:	00 
    20bd:	89 04 24             	mov    %eax,(%esp)
    20c0:	e8 65 1e 00 00       	call   3f2a <read>
  if(cc != 2 || buf[0] != 'f'){
    20c5:	83 f8 02             	cmp    $0x2,%eax
    20c8:	0f 85 fe 02 00 00    	jne    23cc <subdir+0x41c>
    20ce:	80 3d 20 8c 00 00 66 	cmpb   $0x66,0x8c20
    20d5:	0f 85 f1 02 00 00    	jne    23cc <subdir+0x41c>
  close(fd);
    20db:	89 1c 24             	mov    %ebx,(%esp)
    20de:	e8 57 1e 00 00       	call   3f3a <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    20e3:	c7 44 24 04 d2 4b 00 	movl   $0x4bd2,0x4(%esp)
    20ea:	00 
    20eb:	c7 04 24 6e 4b 00 00 	movl   $0x4b6e,(%esp)
    20f2:	e8 7b 1e 00 00       	call   3f72 <link>
    20f7:	85 c0                	test   %eax,%eax
    20f9:	0f 85 0d 04 00 00    	jne    250c <subdir+0x55c>
  if(unlink("dd/dd/ff") != 0){
    20ff:	c7 04 24 6e 4b 00 00 	movl   $0x4b6e,(%esp)
    2106:	e8 57 1e 00 00       	call   3f62 <unlink>
    210b:	85 c0                	test   %eax,%eax
    210d:	0f 85 f9 02 00 00    	jne    240c <subdir+0x45c>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2113:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    211a:	00 
    211b:	c7 04 24 6e 4b 00 00 	movl   $0x4b6e,(%esp)
    2122:	e8 2b 1e 00 00       	call   3f52 <open>
    2127:	85 c0                	test   %eax,%eax
    2129:	0f 89 dd 04 00 00    	jns    260c <subdir+0x65c>
  if(chdir("dd") != 0){
    212f:	c7 04 24 38 4c 00 00 	movl   $0x4c38,(%esp)
    2136:	e8 47 1e 00 00       	call   3f82 <chdir>
    213b:	85 c0                	test   %eax,%eax
    213d:	0f 85 a9 04 00 00    	jne    25ec <subdir+0x63c>
  if(chdir("dd/../../dd") != 0){
    2143:	c7 04 24 06 4c 00 00 	movl   $0x4c06,(%esp)
    214a:	e8 33 1e 00 00       	call   3f82 <chdir>
    214f:	85 c0                	test   %eax,%eax
    2151:	0f 85 95 02 00 00    	jne    23ec <subdir+0x43c>
  if(chdir("dd/../../../dd") != 0){
    2157:	c7 04 24 2c 4c 00 00 	movl   $0x4c2c,(%esp)
    215e:	e8 1f 1e 00 00       	call   3f82 <chdir>
    2163:	85 c0                	test   %eax,%eax
    2165:	0f 85 81 02 00 00    	jne    23ec <subdir+0x43c>
  if(chdir("./..") != 0){
    216b:	c7 04 24 3b 4c 00 00 	movl   $0x4c3b,(%esp)
    2172:	e8 0b 1e 00 00       	call   3f82 <chdir>
    2177:	85 c0                	test   %eax,%eax
    2179:	0f 85 6d 03 00 00    	jne    24ec <subdir+0x53c>
  fd = open("dd/dd/ffff", 0);
    217f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2186:	00 
    2187:	c7 04 24 d2 4b 00 00 	movl   $0x4bd2,(%esp)
    218e:	e8 bf 1d 00 00       	call   3f52 <open>
  if(fd < 0){
    2193:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    2195:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2197:	0f 88 6f 06 00 00    	js     280c <subdir+0x85c>
  if(read(fd, buf, sizeof(buf)) != 2){
    219d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    21a4:	00 
    21a5:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    21ac:	00 
    21ad:	89 04 24             	mov    %eax,(%esp)
    21b0:	e8 75 1d 00 00       	call   3f2a <read>
    21b5:	83 f8 02             	cmp    $0x2,%eax
    21b8:	0f 85 2e 06 00 00    	jne    27ec <subdir+0x83c>
  close(fd);
    21be:	89 1c 24             	mov    %ebx,(%esp)
    21c1:	e8 74 1d 00 00       	call   3f3a <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    21c6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    21cd:	00 
    21ce:	c7 04 24 6e 4b 00 00 	movl   $0x4b6e,(%esp)
    21d5:	e8 78 1d 00 00       	call   3f52 <open>
    21da:	85 c0                	test   %eax,%eax
    21dc:	0f 89 6a 02 00 00    	jns    244c <subdir+0x49c>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    21e2:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    21e9:	00 
    21ea:	c7 04 24 86 4c 00 00 	movl   $0x4c86,(%esp)
    21f1:	e8 5c 1d 00 00       	call   3f52 <open>
    21f6:	85 c0                	test   %eax,%eax
    21f8:	0f 89 2e 02 00 00    	jns    242c <subdir+0x47c>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    21fe:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2205:	00 
    2206:	c7 04 24 ab 4c 00 00 	movl   $0x4cab,(%esp)
    220d:	e8 40 1d 00 00       	call   3f52 <open>
    2212:	85 c0                	test   %eax,%eax
    2214:	0f 89 b2 03 00 00    	jns    25cc <subdir+0x61c>
  if(open("dd", O_CREATE) >= 0){
    221a:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2221:	00 
    2222:	c7 04 24 38 4c 00 00 	movl   $0x4c38,(%esp)
    2229:	e8 24 1d 00 00       	call   3f52 <open>
    222e:	85 c0                	test   %eax,%eax
    2230:	0f 89 76 03 00 00    	jns    25ac <subdir+0x5fc>
  if(open("dd", O_RDWR) >= 0){
    2236:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    223d:	00 
    223e:	c7 04 24 38 4c 00 00 	movl   $0x4c38,(%esp)
    2245:	e8 08 1d 00 00       	call   3f52 <open>
    224a:	85 c0                	test   %eax,%eax
    224c:	0f 89 3a 03 00 00    	jns    258c <subdir+0x5dc>
  if(open("dd", O_WRONLY) >= 0){
    2252:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    2259:	00 
    225a:	c7 04 24 38 4c 00 00 	movl   $0x4c38,(%esp)
    2261:	e8 ec 1c 00 00       	call   3f52 <open>
    2266:	85 c0                	test   %eax,%eax
    2268:	0f 89 fe 02 00 00    	jns    256c <subdir+0x5bc>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    226e:	c7 44 24 04 1a 4d 00 	movl   $0x4d1a,0x4(%esp)
    2275:	00 
    2276:	c7 04 24 86 4c 00 00 	movl   $0x4c86,(%esp)
    227d:	e8 f0 1c 00 00       	call   3f72 <link>
    2282:	85 c0                	test   %eax,%eax
    2284:	0f 84 c2 02 00 00    	je     254c <subdir+0x59c>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    228a:	c7 44 24 04 1a 4d 00 	movl   $0x4d1a,0x4(%esp)
    2291:	00 
    2292:	c7 04 24 ab 4c 00 00 	movl   $0x4cab,(%esp)
    2299:	e8 d4 1c 00 00       	call   3f72 <link>
    229e:	85 c0                	test   %eax,%eax
    22a0:	0f 84 86 02 00 00    	je     252c <subdir+0x57c>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    22a6:	c7 44 24 04 d2 4b 00 	movl   $0x4bd2,0x4(%esp)
    22ad:	00 
    22ae:	c7 04 24 71 4b 00 00 	movl   $0x4b71,(%esp)
    22b5:	e8 b8 1c 00 00       	call   3f72 <link>
    22ba:	85 c0                	test   %eax,%eax
    22bc:	0f 84 ca 01 00 00    	je     248c <subdir+0x4dc>
  if(mkdir("dd/ff/ff") == 0){
    22c2:	c7 04 24 86 4c 00 00 	movl   $0x4c86,(%esp)
    22c9:	e8 ac 1c 00 00       	call   3f7a <mkdir>
    22ce:	85 c0                	test   %eax,%eax
    22d0:	0f 84 96 01 00 00    	je     246c <subdir+0x4bc>
  if(mkdir("dd/xx/ff") == 0){
    22d6:	c7 04 24 ab 4c 00 00 	movl   $0x4cab,(%esp)
    22dd:	e8 98 1c 00 00       	call   3f7a <mkdir>
    22e2:	85 c0                	test   %eax,%eax
    22e4:	0f 84 e2 04 00 00    	je     27cc <subdir+0x81c>
  if(mkdir("dd/dd/ffff") == 0){
    22ea:	c7 04 24 d2 4b 00 00 	movl   $0x4bd2,(%esp)
    22f1:	e8 84 1c 00 00       	call   3f7a <mkdir>
    22f6:	85 c0                	test   %eax,%eax
    22f8:	0f 84 ae 04 00 00    	je     27ac <subdir+0x7fc>
  if(unlink("dd/xx/ff") == 0){
    22fe:	c7 04 24 ab 4c 00 00 	movl   $0x4cab,(%esp)
    2305:	e8 58 1c 00 00       	call   3f62 <unlink>
    230a:	85 c0                	test   %eax,%eax
    230c:	0f 84 7a 04 00 00    	je     278c <subdir+0x7dc>
  if(unlink("dd/ff/ff") == 0){
    2312:	c7 04 24 86 4c 00 00 	movl   $0x4c86,(%esp)
    2319:	e8 44 1c 00 00       	call   3f62 <unlink>
    231e:	85 c0                	test   %eax,%eax
    2320:	0f 84 46 04 00 00    	je     276c <subdir+0x7bc>
  if(chdir("dd/ff") == 0){
    2326:	c7 04 24 71 4b 00 00 	movl   $0x4b71,(%esp)
    232d:	e8 50 1c 00 00       	call   3f82 <chdir>
    2332:	85 c0                	test   %eax,%eax
    2334:	0f 84 12 04 00 00    	je     274c <subdir+0x79c>
  if(chdir("dd/xx") == 0){
    233a:	c7 04 24 1d 4d 00 00 	movl   $0x4d1d,(%esp)
    2341:	e8 3c 1c 00 00       	call   3f82 <chdir>
    2346:	85 c0                	test   %eax,%eax
    2348:	0f 84 de 03 00 00    	je     272c <subdir+0x77c>
  if(unlink("dd/dd/ffff") != 0){
    234e:	c7 04 24 d2 4b 00 00 	movl   $0x4bd2,(%esp)
    2355:	e8 08 1c 00 00       	call   3f62 <unlink>
    235a:	85 c0                	test   %eax,%eax
    235c:	0f 85 aa 00 00 00    	jne    240c <subdir+0x45c>
  if(unlink("dd/ff") != 0){
    2362:	c7 04 24 71 4b 00 00 	movl   $0x4b71,(%esp)
    2369:	e8 f4 1b 00 00       	call   3f62 <unlink>
    236e:	85 c0                	test   %eax,%eax
    2370:	0f 85 96 03 00 00    	jne    270c <subdir+0x75c>
  if(unlink("dd") == 0){
    2376:	c7 04 24 38 4c 00 00 	movl   $0x4c38,(%esp)
    237d:	e8 e0 1b 00 00       	call   3f62 <unlink>
    2382:	85 c0                	test   %eax,%eax
    2384:	0f 84 62 03 00 00    	je     26ec <subdir+0x73c>
  if(unlink("dd/dd") < 0){
    238a:	c7 04 24 4d 4b 00 00 	movl   $0x4b4d,(%esp)
    2391:	e8 cc 1b 00 00       	call   3f62 <unlink>
    2396:	85 c0                	test   %eax,%eax
    2398:	0f 88 2e 03 00 00    	js     26cc <subdir+0x71c>
  if(unlink("dd") < 0){
    239e:	c7 04 24 38 4c 00 00 	movl   $0x4c38,(%esp)
    23a5:	e8 b8 1b 00 00       	call   3f62 <unlink>
    23aa:	85 c0                	test   %eax,%eax
    23ac:	0f 88 fa 02 00 00    	js     26ac <subdir+0x6fc>
  printf(1, "subdir ok\n");
    23b2:	c7 44 24 04 1a 4e 00 	movl   $0x4e1a,0x4(%esp)
    23b9:	00 
    23ba:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23c1:	e8 9a 1c 00 00       	call   4060 <printf>
}
    23c6:	83 c4 14             	add    $0x14,%esp
    23c9:	5b                   	pop    %ebx
    23ca:	5d                   	pop    %ebp
    23cb:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    23cc:	c7 44 24 04 b7 4b 00 	movl   $0x4bb7,0x4(%esp)
    23d3:	00 
    23d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23db:	e8 80 1c 00 00       	call   4060 <printf>
    exit(-1);
    23e0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    23e7:	e8 26 1b 00 00       	call   3f12 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    23ec:	c7 44 24 04 12 4c 00 	movl   $0x4c12,0x4(%esp)
    23f3:	00 
    23f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23fb:	e8 60 1c 00 00       	call   4060 <printf>
    exit(-1);
    2400:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2407:	e8 06 1b 00 00       	call   3f12 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    240c:	c7 44 24 04 dd 4b 00 	movl   $0x4bdd,0x4(%esp)
    2413:	00 
    2414:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    241b:	e8 40 1c 00 00       	call   4060 <printf>
    exit(-1);
    2420:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2427:	e8 e6 1a 00 00       	call   3f12 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    242c:	c7 44 24 04 8f 4c 00 	movl   $0x4c8f,0x4(%esp)
    2433:	00 
    2434:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    243b:	e8 20 1c 00 00       	call   4060 <printf>
    exit(0);
    2440:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2447:	e8 c6 1a 00 00       	call   3f12 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    244c:	c7 44 24 04 74 56 00 	movl   $0x5674,0x4(%esp)
    2453:	00 
    2454:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    245b:	e8 00 1c 00 00       	call   4060 <printf>
    exit(0);
    2460:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2467:	e8 a6 1a 00 00       	call   3f12 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    246c:	c7 44 24 04 23 4d 00 	movl   $0x4d23,0x4(%esp)
    2473:	00 
    2474:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    247b:	e8 e0 1b 00 00       	call   4060 <printf>
    exit(0);
    2480:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2487:	e8 86 1a 00 00       	call   3f12 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    248c:	c7 44 24 04 e4 56 00 	movl   $0x56e4,0x4(%esp)
    2493:	00 
    2494:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    249b:	e8 c0 1b 00 00       	call   4060 <printf>
    exit(0);
    24a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24a7:	e8 66 1a 00 00       	call   3f12 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    24ac:	c7 44 24 04 9e 4b 00 	movl   $0x4b9e,0x4(%esp)
    24b3:	00 
    24b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24bb:	e8 a0 1b 00 00       	call   4060 <printf>
    exit(-1);
    24c0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    24c7:	e8 46 1a 00 00       	call   3f12 <exit>
    printf(1, "create dd/dd/ff failed\n");
    24cc:	c7 44 24 04 77 4b 00 	movl   $0x4b77,0x4(%esp)
    24d3:	00 
    24d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24db:	e8 80 1b 00 00       	call   4060 <printf>
    exit(-1);
    24e0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    24e7:	e8 26 1a 00 00       	call   3f12 <exit>
    printf(1, "chdir ./.. failed\n");
    24ec:	c7 44 24 04 40 4c 00 	movl   $0x4c40,0x4(%esp)
    24f3:	00 
    24f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24fb:	e8 60 1b 00 00       	call   4060 <printf>
    exit(-1);
    2500:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2507:	e8 06 1a 00 00       	call   3f12 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    250c:	c7 44 24 04 2c 56 00 	movl   $0x562c,0x4(%esp)
    2513:	00 
    2514:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    251b:	e8 40 1b 00 00       	call   4060 <printf>
    exit(-1);
    2520:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2527:	e8 e6 19 00 00       	call   3f12 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    252c:	c7 44 24 04 c0 56 00 	movl   $0x56c0,0x4(%esp)
    2533:	00 
    2534:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    253b:	e8 20 1b 00 00       	call   4060 <printf>
    exit(0);
    2540:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2547:	e8 c6 19 00 00       	call   3f12 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    254c:	c7 44 24 04 9c 56 00 	movl   $0x569c,0x4(%esp)
    2553:	00 
    2554:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    255b:	e8 00 1b 00 00       	call   4060 <printf>
    exit(0);
    2560:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2567:	e8 a6 19 00 00       	call   3f12 <exit>
    printf(1, "open dd wronly succeeded!\n");
    256c:	c7 44 24 04 ff 4c 00 	movl   $0x4cff,0x4(%esp)
    2573:	00 
    2574:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    257b:	e8 e0 1a 00 00       	call   4060 <printf>
    exit(0);
    2580:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2587:	e8 86 19 00 00       	call   3f12 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    258c:	c7 44 24 04 e6 4c 00 	movl   $0x4ce6,0x4(%esp)
    2593:	00 
    2594:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    259b:	e8 c0 1a 00 00       	call   4060 <printf>
    exit(0);
    25a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25a7:	e8 66 19 00 00       	call   3f12 <exit>
    printf(1, "create dd succeeded!\n");
    25ac:	c7 44 24 04 d0 4c 00 	movl   $0x4cd0,0x4(%esp)
    25b3:	00 
    25b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25bb:	e8 a0 1a 00 00       	call   4060 <printf>
    exit(0);
    25c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25c7:	e8 46 19 00 00       	call   3f12 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    25cc:	c7 44 24 04 b4 4c 00 	movl   $0x4cb4,0x4(%esp)
    25d3:	00 
    25d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25db:	e8 80 1a 00 00       	call   4060 <printf>
    exit(0);
    25e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25e7:	e8 26 19 00 00       	call   3f12 <exit>
    printf(1, "chdir dd failed\n");
    25ec:	c7 44 24 04 f5 4b 00 	movl   $0x4bf5,0x4(%esp)
    25f3:	00 
    25f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25fb:	e8 60 1a 00 00       	call   4060 <printf>
    exit(-1);
    2600:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2607:	e8 06 19 00 00       	call   3f12 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    260c:	c7 44 24 04 50 56 00 	movl   $0x5650,0x4(%esp)
    2613:	00 
    2614:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    261b:	e8 40 1a 00 00       	call   4060 <printf>
    exit(0);
    2620:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2627:	e8 e6 18 00 00       	call   3f12 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    262c:	c7 44 24 04 53 4b 00 	movl   $0x4b53,0x4(%esp)
    2633:	00 
    2634:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    263b:	e8 20 1a 00 00       	call   4060 <printf>
    exit(-1);
    2640:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2647:	e8 c6 18 00 00       	call   3f12 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    264c:	c7 44 24 04 04 56 00 	movl   $0x5604,0x4(%esp)
    2653:	00 
    2654:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    265b:	e8 00 1a 00 00       	call   4060 <printf>
    exit(0);
    2660:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2667:	e8 a6 18 00 00       	call   3f12 <exit>
    printf(1, "create dd/ff failed\n");
    266c:	c7 44 24 04 37 4b 00 	movl   $0x4b37,0x4(%esp)
    2673:	00 
    2674:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    267b:	e8 e0 19 00 00       	call   4060 <printf>
    exit(-1);
    2680:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2687:	e8 86 18 00 00       	call   3f12 <exit>
    printf(1, "subdir mkdir dd failed\n");
    268c:	c7 44 24 04 1f 4b 00 	movl   $0x4b1f,0x4(%esp)
    2693:	00 
    2694:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    269b:	e8 c0 19 00 00       	call   4060 <printf>
    exit(-1);
    26a0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    26a7:	e8 66 18 00 00       	call   3f12 <exit>
    printf(1, "unlink dd failed\n");
    26ac:	c7 44 24 04 08 4e 00 	movl   $0x4e08,0x4(%esp)
    26b3:	00 
    26b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26bb:	e8 a0 19 00 00       	call   4060 <printf>
    exit(-1);
    26c0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    26c7:	e8 46 18 00 00       	call   3f12 <exit>
    printf(1, "unlink dd/dd failed\n");
    26cc:	c7 44 24 04 f3 4d 00 	movl   $0x4df3,0x4(%esp)
    26d3:	00 
    26d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26db:	e8 80 19 00 00       	call   4060 <printf>
    exit(-1);
    26e0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    26e7:	e8 26 18 00 00       	call   3f12 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    26ec:	c7 44 24 04 08 57 00 	movl   $0x5708,0x4(%esp)
    26f3:	00 
    26f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26fb:	e8 60 19 00 00       	call   4060 <printf>
    exit(0);
    2700:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2707:	e8 06 18 00 00       	call   3f12 <exit>
    printf(1, "unlink dd/ff failed\n");
    270c:	c7 44 24 04 de 4d 00 	movl   $0x4dde,0x4(%esp)
    2713:	00 
    2714:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    271b:	e8 40 19 00 00       	call   4060 <printf>
    exit(-1);
    2720:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2727:	e8 e6 17 00 00       	call   3f12 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    272c:	c7 44 24 04 c6 4d 00 	movl   $0x4dc6,0x4(%esp)
    2733:	00 
    2734:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    273b:	e8 20 19 00 00       	call   4060 <printf>
    exit(0);
    2740:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2747:	e8 c6 17 00 00       	call   3f12 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    274c:	c7 44 24 04 ae 4d 00 	movl   $0x4dae,0x4(%esp)
    2753:	00 
    2754:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    275b:	e8 00 19 00 00       	call   4060 <printf>
    exit(0);
    2760:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2767:	e8 a6 17 00 00       	call   3f12 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    276c:	c7 44 24 04 92 4d 00 	movl   $0x4d92,0x4(%esp)
    2773:	00 
    2774:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    277b:	e8 e0 18 00 00       	call   4060 <printf>
    exit(0);
    2780:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2787:	e8 86 17 00 00       	call   3f12 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    278c:	c7 44 24 04 76 4d 00 	movl   $0x4d76,0x4(%esp)
    2793:	00 
    2794:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    279b:	e8 c0 18 00 00       	call   4060 <printf>
    exit(0);
    27a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27a7:	e8 66 17 00 00       	call   3f12 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    27ac:	c7 44 24 04 59 4d 00 	movl   $0x4d59,0x4(%esp)
    27b3:	00 
    27b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27bb:	e8 a0 18 00 00       	call   4060 <printf>
    exit(0);
    27c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27c7:	e8 46 17 00 00       	call   3f12 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    27cc:	c7 44 24 04 3e 4d 00 	movl   $0x4d3e,0x4(%esp)
    27d3:	00 
    27d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27db:	e8 80 18 00 00       	call   4060 <printf>
    exit(0);
    27e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27e7:	e8 26 17 00 00       	call   3f12 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    27ec:	c7 44 24 04 6b 4c 00 	movl   $0x4c6b,0x4(%esp)
    27f3:	00 
    27f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27fb:	e8 60 18 00 00       	call   4060 <printf>
    exit(-1);
    2800:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2807:	e8 06 17 00 00       	call   3f12 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    280c:	c7 44 24 04 53 4c 00 	movl   $0x4c53,0x4(%esp)
    2813:	00 
    2814:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    281b:	e8 40 18 00 00       	call   4060 <printf>
    exit(-1);
    2820:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2827:	e8 e6 16 00 00       	call   3f12 <exit>
    282c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002830 <bigwrite>:
{
    2830:	55                   	push   %ebp
    2831:	89 e5                	mov    %esp,%ebp
    2833:	56                   	push   %esi
    2834:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2835:	bb f3 01 00 00       	mov    $0x1f3,%ebx
{
    283a:	83 ec 10             	sub    $0x10,%esp
  printf(1, "bigwrite test\n");
    283d:	c7 44 24 04 25 4e 00 	movl   $0x4e25,0x4(%esp)
    2844:	00 
    2845:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    284c:	e8 0f 18 00 00       	call   4060 <printf>
  unlink("bigwrite");
    2851:	c7 04 24 34 4e 00 00 	movl   $0x4e34,(%esp)
    2858:	e8 05 17 00 00       	call   3f62 <unlink>
    285d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2860:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2867:	00 
    2868:	c7 04 24 34 4e 00 00 	movl   $0x4e34,(%esp)
    286f:	e8 de 16 00 00       	call   3f52 <open>
    if(fd < 0){
    2874:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2876:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2878:	0f 88 95 00 00 00    	js     2913 <bigwrite+0xe3>
      int cc = write(fd, buf, sz);
    287e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2882:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    2889:	00 
    288a:	89 04 24             	mov    %eax,(%esp)
    288d:	e8 a0 16 00 00       	call   3f32 <write>
      if(cc != sz){
    2892:	39 d8                	cmp    %ebx,%eax
    2894:	75 55                	jne    28eb <bigwrite+0xbb>
      int cc = write(fd, buf, sz);
    2896:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    289a:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    28a1:	00 
    28a2:	89 34 24             	mov    %esi,(%esp)
    28a5:	e8 88 16 00 00       	call   3f32 <write>
      if(cc != sz){
    28aa:	39 c3                	cmp    %eax,%ebx
    28ac:	75 3d                	jne    28eb <bigwrite+0xbb>
    close(fd);
    28ae:	89 34 24             	mov    %esi,(%esp)
  for(sz = 499; sz < 12*512; sz += 471){
    28b1:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    28b7:	e8 7e 16 00 00       	call   3f3a <close>
    unlink("bigwrite");
    28bc:	c7 04 24 34 4e 00 00 	movl   $0x4e34,(%esp)
    28c3:	e8 9a 16 00 00       	call   3f62 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    28c8:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    28ce:	75 90                	jne    2860 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    28d0:	c7 44 24 04 67 4e 00 	movl   $0x4e67,0x4(%esp)
    28d7:	00 
    28d8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28df:	e8 7c 17 00 00       	call   4060 <printf>
}
    28e4:	83 c4 10             	add    $0x10,%esp
    28e7:	5b                   	pop    %ebx
    28e8:	5e                   	pop    %esi
    28e9:	5d                   	pop    %ebp
    28ea:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    28eb:	89 44 24 0c          	mov    %eax,0xc(%esp)
    28ef:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    28f3:	c7 44 24 04 55 4e 00 	movl   $0x4e55,0x4(%esp)
    28fa:	00 
    28fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2902:	e8 59 17 00 00       	call   4060 <printf>
        exit(0);
    2907:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    290e:	e8 ff 15 00 00       	call   3f12 <exit>
      printf(1, "cannot create bigwrite\n");
    2913:	c7 44 24 04 3d 4e 00 	movl   $0x4e3d,0x4(%esp)
    291a:	00 
    291b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2922:	e8 39 17 00 00       	call   4060 <printf>
      exit(-1);
    2927:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    292e:	e8 df 15 00 00       	call   3f12 <exit>
    2933:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2939:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002940 <bigfile>:
{
    2940:	55                   	push   %ebp
    2941:	89 e5                	mov    %esp,%ebp
    2943:	57                   	push   %edi
    2944:	56                   	push   %esi
    2945:	53                   	push   %ebx
    2946:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "bigfile test\n");
    2949:	c7 44 24 04 74 4e 00 	movl   $0x4e74,0x4(%esp)
    2950:	00 
    2951:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2958:	e8 03 17 00 00       	call   4060 <printf>
  unlink("bigfile");
    295d:	c7 04 24 90 4e 00 00 	movl   $0x4e90,(%esp)
    2964:	e8 f9 15 00 00       	call   3f62 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2969:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2970:	00 
    2971:	c7 04 24 90 4e 00 00 	movl   $0x4e90,(%esp)
    2978:	e8 d5 15 00 00       	call   3f52 <open>
  if(fd < 0){
    297d:	85 c0                	test   %eax,%eax
  fd = open("bigfile", O_CREATE | O_RDWR);
    297f:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2981:	0f 88 a2 01 00 00    	js     2b29 <bigfile+0x1e9>
    2987:	31 db                	xor    %ebx,%ebx
    2989:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2990:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2997:	00 
    2998:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    299c:	c7 04 24 20 8c 00 00 	movl   $0x8c20,(%esp)
    29a3:	e8 f8 13 00 00       	call   3da0 <memset>
    if(write(fd, buf, 600) != 600){
    29a8:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    29af:	00 
    29b0:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    29b7:	00 
    29b8:	89 34 24             	mov    %esi,(%esp)
    29bb:	e8 72 15 00 00       	call   3f32 <write>
    29c0:	3d 58 02 00 00       	cmp    $0x258,%eax
    29c5:	0f 85 1e 01 00 00    	jne    2ae9 <bigfile+0x1a9>
  for(i = 0; i < 20; i++){
    29cb:	83 c3 01             	add    $0x1,%ebx
    29ce:	83 fb 14             	cmp    $0x14,%ebx
    29d1:	75 bd                	jne    2990 <bigfile+0x50>
  close(fd);
    29d3:	89 34 24             	mov    %esi,(%esp)
    29d6:	e8 5f 15 00 00       	call   3f3a <close>
  fd = open("bigfile", 0);
    29db:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    29e2:	00 
    29e3:	c7 04 24 90 4e 00 00 	movl   $0x4e90,(%esp)
    29ea:	e8 63 15 00 00       	call   3f52 <open>
  if(fd < 0){
    29ef:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    29f1:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    29f3:	0f 88 10 01 00 00    	js     2b09 <bigfile+0x1c9>
    29f9:	31 db                	xor    %ebx,%ebx
    29fb:	31 ff                	xor    %edi,%edi
    29fd:	eb 2f                	jmp    2a2e <bigfile+0xee>
    29ff:	90                   	nop
    if(cc != 300){
    2a00:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2a05:	0f 85 9e 00 00 00    	jne    2aa9 <bigfile+0x169>
    if(buf[0] != i/2 || buf[299] != i/2){
    2a0b:	0f be 05 20 8c 00 00 	movsbl 0x8c20,%eax
    2a12:	89 fa                	mov    %edi,%edx
    2a14:	d1 fa                	sar    %edx
    2a16:	39 d0                	cmp    %edx,%eax
    2a18:	75 6f                	jne    2a89 <bigfile+0x149>
    2a1a:	0f be 15 4b 8d 00 00 	movsbl 0x8d4b,%edx
    2a21:	39 d0                	cmp    %edx,%eax
    2a23:	75 64                	jne    2a89 <bigfile+0x149>
    total += cc;
    2a25:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    2a2b:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    2a2e:	c7 44 24 08 2c 01 00 	movl   $0x12c,0x8(%esp)
    2a35:	00 
    2a36:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    2a3d:	00 
    2a3e:	89 34 24             	mov    %esi,(%esp)
    2a41:	e8 e4 14 00 00       	call   3f2a <read>
    if(cc < 0){
    2a46:	85 c0                	test   %eax,%eax
    2a48:	78 7f                	js     2ac9 <bigfile+0x189>
    if(cc == 0)
    2a4a:	75 b4                	jne    2a00 <bigfile+0xc0>
  close(fd);
    2a4c:	89 34 24             	mov    %esi,(%esp)
    2a4f:	90                   	nop
    2a50:	e8 e5 14 00 00       	call   3f3a <close>
  if(total != 20*600){
    2a55:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    2a5b:	0f 85 e8 00 00 00    	jne    2b49 <bigfile+0x209>
  unlink("bigfile");
    2a61:	c7 04 24 90 4e 00 00 	movl   $0x4e90,(%esp)
    2a68:	e8 f5 14 00 00       	call   3f62 <unlink>
  printf(1, "bigfile test ok\n");
    2a6d:	c7 44 24 04 1f 4f 00 	movl   $0x4f1f,0x4(%esp)
    2a74:	00 
    2a75:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a7c:	e8 df 15 00 00       	call   4060 <printf>
}
    2a81:	83 c4 1c             	add    $0x1c,%esp
    2a84:	5b                   	pop    %ebx
    2a85:	5e                   	pop    %esi
    2a86:	5f                   	pop    %edi
    2a87:	5d                   	pop    %ebp
    2a88:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2a89:	c7 44 24 04 ec 4e 00 	movl   $0x4eec,0x4(%esp)
    2a90:	00 
    2a91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a98:	e8 c3 15 00 00       	call   4060 <printf>
      exit(-1);
    2a9d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2aa4:	e8 69 14 00 00       	call   3f12 <exit>
      printf(1, "short read bigfile\n");
    2aa9:	c7 44 24 04 d8 4e 00 	movl   $0x4ed8,0x4(%esp)
    2ab0:	00 
    2ab1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ab8:	e8 a3 15 00 00       	call   4060 <printf>
      exit(0);
    2abd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ac4:	e8 49 14 00 00       	call   3f12 <exit>
      printf(1, "read bigfile failed\n");
    2ac9:	c7 44 24 04 c3 4e 00 	movl   $0x4ec3,0x4(%esp)
    2ad0:	00 
    2ad1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ad8:	e8 83 15 00 00       	call   4060 <printf>
      exit(-1);
    2add:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2ae4:	e8 29 14 00 00       	call   3f12 <exit>
      printf(1, "write bigfile failed\n");
    2ae9:	c7 44 24 04 98 4e 00 	movl   $0x4e98,0x4(%esp)
    2af0:	00 
    2af1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2af8:	e8 63 15 00 00       	call   4060 <printf>
      exit(-1);
    2afd:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b04:	e8 09 14 00 00       	call   3f12 <exit>
    printf(1, "cannot open bigfile\n");
    2b09:	c7 44 24 04 ae 4e 00 	movl   $0x4eae,0x4(%esp)
    2b10:	00 
    2b11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b18:	e8 43 15 00 00       	call   4060 <printf>
    exit(-1);
    2b1d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b24:	e8 e9 13 00 00       	call   3f12 <exit>
    printf(1, "cannot create bigfile");
    2b29:	c7 44 24 04 82 4e 00 	movl   $0x4e82,0x4(%esp)
    2b30:	00 
    2b31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b38:	e8 23 15 00 00       	call   4060 <printf>
    exit(-1);
    2b3d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b44:	e8 c9 13 00 00       	call   3f12 <exit>
    printf(1, "read bigfile wrong total\n");
    2b49:	c7 44 24 04 05 4f 00 	movl   $0x4f05,0x4(%esp)
    2b50:	00 
    2b51:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b58:	e8 03 15 00 00       	call   4060 <printf>
    exit(-1);
    2b5d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b64:	e8 a9 13 00 00       	call   3f12 <exit>
    2b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002b70 <fourteen>:
{
    2b70:	55                   	push   %ebp
    2b71:	89 e5                	mov    %esp,%ebp
    2b73:	83 ec 18             	sub    $0x18,%esp
  printf(1, "fourteen test\n");
    2b76:	c7 44 24 04 30 4f 00 	movl   $0x4f30,0x4(%esp)
    2b7d:	00 
    2b7e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b85:	e8 d6 14 00 00       	call   4060 <printf>
  if(mkdir("12345678901234") != 0){
    2b8a:	c7 04 24 6b 4f 00 00 	movl   $0x4f6b,(%esp)
    2b91:	e8 e4 13 00 00       	call   3f7a <mkdir>
    2b96:	85 c0                	test   %eax,%eax
    2b98:	0f 85 92 00 00 00    	jne    2c30 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    2b9e:	c7 04 24 28 57 00 00 	movl   $0x5728,(%esp)
    2ba5:	e8 d0 13 00 00       	call   3f7a <mkdir>
    2baa:	85 c0                	test   %eax,%eax
    2bac:	0f 85 1e 01 00 00    	jne    2cd0 <fourteen+0x160>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2bb2:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2bb9:	00 
    2bba:	c7 04 24 78 57 00 00 	movl   $0x5778,(%esp)
    2bc1:	e8 8c 13 00 00       	call   3f52 <open>
  if(fd < 0){
    2bc6:	85 c0                	test   %eax,%eax
    2bc8:	0f 88 e2 00 00 00    	js     2cb0 <fourteen+0x140>
  close(fd);
    2bce:	89 04 24             	mov    %eax,(%esp)
    2bd1:	e8 64 13 00 00       	call   3f3a <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2bd6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2bdd:	00 
    2bde:	c7 04 24 e8 57 00 00 	movl   $0x57e8,(%esp)
    2be5:	e8 68 13 00 00       	call   3f52 <open>
  if(fd < 0){
    2bea:	85 c0                	test   %eax,%eax
    2bec:	0f 88 9e 00 00 00    	js     2c90 <fourteen+0x120>
  close(fd);
    2bf2:	89 04 24             	mov    %eax,(%esp)
    2bf5:	e8 40 13 00 00       	call   3f3a <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2bfa:	c7 04 24 5c 4f 00 00 	movl   $0x4f5c,(%esp)
    2c01:	e8 74 13 00 00       	call   3f7a <mkdir>
    2c06:	85 c0                	test   %eax,%eax
    2c08:	74 66                	je     2c70 <fourteen+0x100>
  if(mkdir("123456789012345/12345678901234") == 0){
    2c0a:	c7 04 24 84 58 00 00 	movl   $0x5884,(%esp)
    2c11:	e8 64 13 00 00       	call   3f7a <mkdir>
    2c16:	85 c0                	test   %eax,%eax
    2c18:	74 36                	je     2c50 <fourteen+0xe0>
  printf(1, "fourteen ok\n");
    2c1a:	c7 44 24 04 7a 4f 00 	movl   $0x4f7a,0x4(%esp)
    2c21:	00 
    2c22:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c29:	e8 32 14 00 00       	call   4060 <printf>
}
    2c2e:	c9                   	leave  
    2c2f:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    2c30:	c7 44 24 04 3f 4f 00 	movl   $0x4f3f,0x4(%esp)
    2c37:	00 
    2c38:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c3f:	e8 1c 14 00 00       	call   4060 <printf>
    exit(-1);
    2c44:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2c4b:	e8 c2 12 00 00       	call   3f12 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2c50:	c7 44 24 04 a4 58 00 	movl   $0x58a4,0x4(%esp)
    2c57:	00 
    2c58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c5f:	e8 fc 13 00 00       	call   4060 <printf>
    exit(0);
    2c64:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c6b:	e8 a2 12 00 00       	call   3f12 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2c70:	c7 44 24 04 54 58 00 	movl   $0x5854,0x4(%esp)
    2c77:	00 
    2c78:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c7f:	e8 dc 13 00 00       	call   4060 <printf>
    exit(0);
    2c84:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c8b:	e8 82 12 00 00       	call   3f12 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2c90:	c7 44 24 04 18 58 00 	movl   $0x5818,0x4(%esp)
    2c97:	00 
    2c98:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c9f:	e8 bc 13 00 00       	call   4060 <printf>
    exit(-1);
    2ca4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2cab:	e8 62 12 00 00       	call   3f12 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2cb0:	c7 44 24 04 a8 57 00 	movl   $0x57a8,0x4(%esp)
    2cb7:	00 
    2cb8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cbf:	e8 9c 13 00 00       	call   4060 <printf>
    exit(-1);
    2cc4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2ccb:	e8 42 12 00 00       	call   3f12 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2cd0:	c7 44 24 04 48 57 00 	movl   $0x5748,0x4(%esp)
    2cd7:	00 
    2cd8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cdf:	e8 7c 13 00 00       	call   4060 <printf>
    exit(-1);
    2ce4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2ceb:	e8 22 12 00 00       	call   3f12 <exit>

00002cf0 <rmdot>:
{
    2cf0:	55                   	push   %ebp
    2cf1:	89 e5                	mov    %esp,%ebp
    2cf3:	83 ec 18             	sub    $0x18,%esp
  printf(1, "rmdot test\n");
    2cf6:	c7 44 24 04 87 4f 00 	movl   $0x4f87,0x4(%esp)
    2cfd:	00 
    2cfe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d05:	e8 56 13 00 00       	call   4060 <printf>
  if(mkdir("dots") != 0){
    2d0a:	c7 04 24 93 4f 00 00 	movl   $0x4f93,(%esp)
    2d11:	e8 64 12 00 00       	call   3f7a <mkdir>
    2d16:	85 c0                	test   %eax,%eax
    2d18:	0f 85 9a 00 00 00    	jne    2db8 <rmdot+0xc8>
  if(chdir("dots") != 0){
    2d1e:	c7 04 24 93 4f 00 00 	movl   $0x4f93,(%esp)
    2d25:	e8 58 12 00 00       	call   3f82 <chdir>
    2d2a:	85 c0                	test   %eax,%eax
    2d2c:	0f 85 66 01 00 00    	jne    2e98 <rmdot+0x1a8>
  if(unlink(".") == 0){
    2d32:	c7 04 24 3e 4c 00 00 	movl   $0x4c3e,(%esp)
    2d39:	e8 24 12 00 00       	call   3f62 <unlink>
    2d3e:	85 c0                	test   %eax,%eax
    2d40:	0f 84 32 01 00 00    	je     2e78 <rmdot+0x188>
  if(unlink("..") == 0){
    2d46:	c7 04 24 3d 4c 00 00 	movl   $0x4c3d,(%esp)
    2d4d:	e8 10 12 00 00       	call   3f62 <unlink>
    2d52:	85 c0                	test   %eax,%eax
    2d54:	0f 84 fe 00 00 00    	je     2e58 <rmdot+0x168>
  if(chdir("/") != 0){
    2d5a:	c7 04 24 11 44 00 00 	movl   $0x4411,(%esp)
    2d61:	e8 1c 12 00 00       	call   3f82 <chdir>
    2d66:	85 c0                	test   %eax,%eax
    2d68:	0f 85 ca 00 00 00    	jne    2e38 <rmdot+0x148>
  if(unlink("dots/.") == 0){
    2d6e:	c7 04 24 db 4f 00 00 	movl   $0x4fdb,(%esp)
    2d75:	e8 e8 11 00 00       	call   3f62 <unlink>
    2d7a:	85 c0                	test   %eax,%eax
    2d7c:	0f 84 96 00 00 00    	je     2e18 <rmdot+0x128>
  if(unlink("dots/..") == 0){
    2d82:	c7 04 24 f9 4f 00 00 	movl   $0x4ff9,(%esp)
    2d89:	e8 d4 11 00 00       	call   3f62 <unlink>
    2d8e:	85 c0                	test   %eax,%eax
    2d90:	74 66                	je     2df8 <rmdot+0x108>
  if(unlink("dots") != 0){
    2d92:	c7 04 24 93 4f 00 00 	movl   $0x4f93,(%esp)
    2d99:	e8 c4 11 00 00       	call   3f62 <unlink>
    2d9e:	85 c0                	test   %eax,%eax
    2da0:	75 36                	jne    2dd8 <rmdot+0xe8>
  printf(1, "rmdot ok\n");
    2da2:	c7 44 24 04 2e 50 00 	movl   $0x502e,0x4(%esp)
    2da9:	00 
    2daa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2db1:	e8 aa 12 00 00       	call   4060 <printf>
}
    2db6:	c9                   	leave  
    2db7:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    2db8:	c7 44 24 04 98 4f 00 	movl   $0x4f98,0x4(%esp)
    2dbf:	00 
    2dc0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dc7:	e8 94 12 00 00       	call   4060 <printf>
    exit(-1);
    2dcc:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2dd3:	e8 3a 11 00 00       	call   3f12 <exit>
    printf(1, "unlink dots failed!\n");
    2dd8:	c7 44 24 04 19 50 00 	movl   $0x5019,0x4(%esp)
    2ddf:	00 
    2de0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2de7:	e8 74 12 00 00       	call   4060 <printf>
    exit(-1);
    2dec:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2df3:	e8 1a 11 00 00       	call   3f12 <exit>
    printf(1, "unlink dots/.. worked!\n");
    2df8:	c7 44 24 04 01 50 00 	movl   $0x5001,0x4(%esp)
    2dff:	00 
    2e00:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e07:	e8 54 12 00 00       	call   4060 <printf>
    exit(0);
    2e0c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e13:	e8 fa 10 00 00       	call   3f12 <exit>
    printf(1, "unlink dots/. worked!\n");
    2e18:	c7 44 24 04 e2 4f 00 	movl   $0x4fe2,0x4(%esp)
    2e1f:	00 
    2e20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e27:	e8 34 12 00 00       	call   4060 <printf>
    exit(0);
    2e2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e33:	e8 da 10 00 00       	call   3f12 <exit>
    printf(1, "chdir / failed\n");
    2e38:	c7 44 24 04 13 44 00 	movl   $0x4413,0x4(%esp)
    2e3f:	00 
    2e40:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e47:	e8 14 12 00 00       	call   4060 <printf>
    exit(-1);
    2e4c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2e53:	e8 ba 10 00 00       	call   3f12 <exit>
    printf(1, "rm .. worked!\n");
    2e58:	c7 44 24 04 cc 4f 00 	movl   $0x4fcc,0x4(%esp)
    2e5f:	00 
    2e60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e67:	e8 f4 11 00 00       	call   4060 <printf>
    exit(0);
    2e6c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e73:	e8 9a 10 00 00       	call   3f12 <exit>
    printf(1, "rm . worked!\n");
    2e78:	c7 44 24 04 be 4f 00 	movl   $0x4fbe,0x4(%esp)
    2e7f:	00 
    2e80:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e87:	e8 d4 11 00 00       	call   4060 <printf>
    exit(0);
    2e8c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e93:	e8 7a 10 00 00       	call   3f12 <exit>
    printf(1, "chdir dots failed\n");
    2e98:	c7 44 24 04 ab 4f 00 	movl   $0x4fab,0x4(%esp)
    2e9f:	00 
    2ea0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ea7:	e8 b4 11 00 00       	call   4060 <printf>
    exit(-1);
    2eac:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2eb3:	e8 5a 10 00 00       	call   3f12 <exit>
    2eb8:	90                   	nop
    2eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002ec0 <dirfile>:
{
    2ec0:	55                   	push   %ebp
    2ec1:	89 e5                	mov    %esp,%ebp
    2ec3:	53                   	push   %ebx
    2ec4:	83 ec 14             	sub    $0x14,%esp
  printf(1, "dir vs file\n");
    2ec7:	c7 44 24 04 38 50 00 	movl   $0x5038,0x4(%esp)
    2ece:	00 
    2ecf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ed6:	e8 85 11 00 00       	call   4060 <printf>
  fd = open("dirfile", O_CREATE);
    2edb:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2ee2:	00 
    2ee3:	c7 04 24 45 50 00 00 	movl   $0x5045,(%esp)
    2eea:	e8 63 10 00 00       	call   3f52 <open>
  if(fd < 0){
    2eef:	85 c0                	test   %eax,%eax
    2ef1:	0f 88 60 01 00 00    	js     3057 <dirfile+0x197>
  close(fd);
    2ef7:	89 04 24             	mov    %eax,(%esp)
    2efa:	e8 3b 10 00 00       	call   3f3a <close>
  if(chdir("dirfile") == 0){
    2eff:	c7 04 24 45 50 00 00 	movl   $0x5045,(%esp)
    2f06:	e8 77 10 00 00       	call   3f82 <chdir>
    2f0b:	85 c0                	test   %eax,%eax
    2f0d:	0f 84 24 01 00 00    	je     3037 <dirfile+0x177>
  fd = open("dirfile/xx", 0);
    2f13:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2f1a:	00 
    2f1b:	c7 04 24 7e 50 00 00 	movl   $0x507e,(%esp)
    2f22:	e8 2b 10 00 00       	call   3f52 <open>
  if(fd >= 0){
    2f27:	85 c0                	test   %eax,%eax
    2f29:	0f 89 e8 00 00 00    	jns    3017 <dirfile+0x157>
  fd = open("dirfile/xx", O_CREATE);
    2f2f:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2f36:	00 
    2f37:	c7 04 24 7e 50 00 00 	movl   $0x507e,(%esp)
    2f3e:	e8 0f 10 00 00       	call   3f52 <open>
  if(fd >= 0){
    2f43:	85 c0                	test   %eax,%eax
    2f45:	0f 89 cc 00 00 00    	jns    3017 <dirfile+0x157>
  if(mkdir("dirfile/xx") == 0){
    2f4b:	c7 04 24 7e 50 00 00 	movl   $0x507e,(%esp)
    2f52:	e8 23 10 00 00       	call   3f7a <mkdir>
    2f57:	85 c0                	test   %eax,%eax
    2f59:	0f 84 b8 01 00 00    	je     3117 <dirfile+0x257>
  if(unlink("dirfile/xx") == 0){
    2f5f:	c7 04 24 7e 50 00 00 	movl   $0x507e,(%esp)
    2f66:	e8 f7 0f 00 00       	call   3f62 <unlink>
    2f6b:	85 c0                	test   %eax,%eax
    2f6d:	0f 84 84 01 00 00    	je     30f7 <dirfile+0x237>
  if(link("README", "dirfile/xx") == 0){
    2f73:	c7 44 24 04 7e 50 00 	movl   $0x507e,0x4(%esp)
    2f7a:	00 
    2f7b:	c7 04 24 e2 50 00 00 	movl   $0x50e2,(%esp)
    2f82:	e8 eb 0f 00 00       	call   3f72 <link>
    2f87:	85 c0                	test   %eax,%eax
    2f89:	0f 84 48 01 00 00    	je     30d7 <dirfile+0x217>
  if(unlink("dirfile") != 0){
    2f8f:	c7 04 24 45 50 00 00 	movl   $0x5045,(%esp)
    2f96:	e8 c7 0f 00 00       	call   3f62 <unlink>
    2f9b:	85 c0                	test   %eax,%eax
    2f9d:	0f 85 14 01 00 00    	jne    30b7 <dirfile+0x1f7>
  fd = open(".", O_RDWR);
    2fa3:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    2faa:	00 
    2fab:	c7 04 24 3e 4c 00 00 	movl   $0x4c3e,(%esp)
    2fb2:	e8 9b 0f 00 00       	call   3f52 <open>
  if(fd >= 0){
    2fb7:	85 c0                	test   %eax,%eax
    2fb9:	0f 89 d8 00 00 00    	jns    3097 <dirfile+0x1d7>
  fd = open(".", 0);
    2fbf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2fc6:	00 
    2fc7:	c7 04 24 3e 4c 00 00 	movl   $0x4c3e,(%esp)
    2fce:	e8 7f 0f 00 00       	call   3f52 <open>
  if(write(fd, "x", 1) > 0){
    2fd3:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    2fda:	00 
    2fdb:	c7 44 24 04 21 4d 00 	movl   $0x4d21,0x4(%esp)
    2fe2:	00 
    2fe3:	89 04 24             	mov    %eax,(%esp)
  fd = open(".", 0);
    2fe6:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2fe8:	e8 45 0f 00 00       	call   3f32 <write>
    2fed:	85 c0                	test   %eax,%eax
    2fef:	0f 8f 82 00 00 00    	jg     3077 <dirfile+0x1b7>
  close(fd);
    2ff5:	89 1c 24             	mov    %ebx,(%esp)
    2ff8:	e8 3d 0f 00 00       	call   3f3a <close>
  printf(1, "dir vs file OK\n");
    2ffd:	c7 44 24 04 15 51 00 	movl   $0x5115,0x4(%esp)
    3004:	00 
    3005:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    300c:	e8 4f 10 00 00       	call   4060 <printf>
}
    3011:	83 c4 14             	add    $0x14,%esp
    3014:	5b                   	pop    %ebx
    3015:	5d                   	pop    %ebp
    3016:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    3017:	c7 44 24 04 89 50 00 	movl   $0x5089,0x4(%esp)
    301e:	00 
    301f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3026:	e8 35 10 00 00       	call   4060 <printf>
    exit(0);
    302b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3032:	e8 db 0e 00 00       	call   3f12 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    3037:	c7 44 24 04 64 50 00 	movl   $0x5064,0x4(%esp)
    303e:	00 
    303f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3046:	e8 15 10 00 00       	call   4060 <printf>
    exit(0);
    304b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3052:	e8 bb 0e 00 00       	call   3f12 <exit>
    printf(1, "create dirfile failed\n");
    3057:	c7 44 24 04 4d 50 00 	movl   $0x504d,0x4(%esp)
    305e:	00 
    305f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3066:	e8 f5 0f 00 00       	call   4060 <printf>
    exit(-1);
    306b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3072:	e8 9b 0e 00 00       	call   3f12 <exit>
    printf(1, "write . succeeded!\n");
    3077:	c7 44 24 04 01 51 00 	movl   $0x5101,0x4(%esp)
    307e:	00 
    307f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3086:	e8 d5 0f 00 00       	call   4060 <printf>
    exit(0);
    308b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3092:	e8 7b 0e 00 00       	call   3f12 <exit>
    printf(1, "open . for writing succeeded!\n");
    3097:	c7 44 24 04 f8 58 00 	movl   $0x58f8,0x4(%esp)
    309e:	00 
    309f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30a6:	e8 b5 0f 00 00       	call   4060 <printf>
    exit(0);
    30ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30b2:	e8 5b 0e 00 00       	call   3f12 <exit>
    printf(1, "unlink dirfile failed!\n");
    30b7:	c7 44 24 04 e9 50 00 	movl   $0x50e9,0x4(%esp)
    30be:	00 
    30bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30c6:	e8 95 0f 00 00       	call   4060 <printf>
    exit(-1);
    30cb:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    30d2:	e8 3b 0e 00 00       	call   3f12 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    30d7:	c7 44 24 04 d8 58 00 	movl   $0x58d8,0x4(%esp)
    30de:	00 
    30df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30e6:	e8 75 0f 00 00       	call   4060 <printf>
    exit(0);
    30eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30f2:	e8 1b 0e 00 00       	call   3f12 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    30f7:	c7 44 24 04 c4 50 00 	movl   $0x50c4,0x4(%esp)
    30fe:	00 
    30ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3106:	e8 55 0f 00 00       	call   4060 <printf>
    exit(0);
    310b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3112:	e8 fb 0d 00 00       	call   3f12 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3117:	c7 44 24 04 a7 50 00 	movl   $0x50a7,0x4(%esp)
    311e:	00 
    311f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3126:	e8 35 0f 00 00       	call   4060 <printf>
    exit(0);
    312b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3132:	e8 db 0d 00 00       	call   3f12 <exit>
    3137:	89 f6                	mov    %esi,%esi
    3139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003140 <iref>:
{
    3140:	55                   	push   %ebp
    3141:	89 e5                	mov    %esp,%ebp
    3143:	53                   	push   %ebx
  printf(1, "empty file name\n");
    3144:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    3149:	83 ec 14             	sub    $0x14,%esp
  printf(1, "empty file name\n");
    314c:	c7 44 24 04 25 51 00 	movl   $0x5125,0x4(%esp)
    3153:	00 
    3154:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    315b:	e8 00 0f 00 00       	call   4060 <printf>
    if(mkdir("irefd") != 0){
    3160:	c7 04 24 36 51 00 00 	movl   $0x5136,(%esp)
    3167:	e8 0e 0e 00 00       	call   3f7a <mkdir>
    316c:	85 c0                	test   %eax,%eax
    316e:	0f 85 af 00 00 00    	jne    3223 <iref+0xe3>
    if(chdir("irefd") != 0){
    3174:	c7 04 24 36 51 00 00 	movl   $0x5136,(%esp)
    317b:	e8 02 0e 00 00       	call   3f82 <chdir>
    3180:	85 c0                	test   %eax,%eax
    3182:	0f 85 bb 00 00 00    	jne    3243 <iref+0x103>
    mkdir("");
    3188:	c7 04 24 eb 47 00 00 	movl   $0x47eb,(%esp)
    318f:	e8 e6 0d 00 00       	call   3f7a <mkdir>
    link("README", "");
    3194:	c7 44 24 04 eb 47 00 	movl   $0x47eb,0x4(%esp)
    319b:	00 
    319c:	c7 04 24 e2 50 00 00 	movl   $0x50e2,(%esp)
    31a3:	e8 ca 0d 00 00       	call   3f72 <link>
    fd = open("", O_CREATE);
    31a8:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    31af:	00 
    31b0:	c7 04 24 eb 47 00 00 	movl   $0x47eb,(%esp)
    31b7:	e8 96 0d 00 00       	call   3f52 <open>
    if(fd >= 0)
    31bc:	85 c0                	test   %eax,%eax
    31be:	78 08                	js     31c8 <iref+0x88>
      close(fd);
    31c0:	89 04 24             	mov    %eax,(%esp)
    31c3:	e8 72 0d 00 00       	call   3f3a <close>
    fd = open("xx", O_CREATE);
    31c8:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    31cf:	00 
    31d0:	c7 04 24 20 4d 00 00 	movl   $0x4d20,(%esp)
    31d7:	e8 76 0d 00 00       	call   3f52 <open>
    if(fd >= 0)
    31dc:	85 c0                	test   %eax,%eax
    31de:	78 08                	js     31e8 <iref+0xa8>
      close(fd);
    31e0:	89 04 24             	mov    %eax,(%esp)
    31e3:	e8 52 0d 00 00       	call   3f3a <close>
    unlink("xx");
    31e8:	c7 04 24 20 4d 00 00 	movl   $0x4d20,(%esp)
    31ef:	e8 6e 0d 00 00       	call   3f62 <unlink>
  for(i = 0; i < 50 + 1; i++){
    31f4:	83 eb 01             	sub    $0x1,%ebx
    31f7:	0f 85 63 ff ff ff    	jne    3160 <iref+0x20>
  chdir("/");
    31fd:	c7 04 24 11 44 00 00 	movl   $0x4411,(%esp)
    3204:	e8 79 0d 00 00       	call   3f82 <chdir>
  printf(1, "empty file name OK\n");
    3209:	c7 44 24 04 64 51 00 	movl   $0x5164,0x4(%esp)
    3210:	00 
    3211:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3218:	e8 43 0e 00 00       	call   4060 <printf>
}
    321d:	83 c4 14             	add    $0x14,%esp
    3220:	5b                   	pop    %ebx
    3221:	5d                   	pop    %ebp
    3222:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    3223:	c7 44 24 04 3c 51 00 	movl   $0x513c,0x4(%esp)
    322a:	00 
    322b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3232:	e8 29 0e 00 00       	call   4060 <printf>
      exit(-1);
    3237:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    323e:	e8 cf 0c 00 00       	call   3f12 <exit>
      printf(1, "chdir irefd failed\n");
    3243:	c7 44 24 04 50 51 00 	movl   $0x5150,0x4(%esp)
    324a:	00 
    324b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3252:	e8 09 0e 00 00       	call   4060 <printf>
      exit(-1);
    3257:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    325e:	e8 af 0c 00 00       	call   3f12 <exit>
    3263:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003270 <forktest>:
{
    3270:	55                   	push   %ebp
    3271:	89 e5                	mov    %esp,%ebp
    3273:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    3274:	31 db                	xor    %ebx,%ebx
{
    3276:	83 ec 14             	sub    $0x14,%esp
  printf(1, "fork test\n");
    3279:	c7 44 24 04 78 51 00 	movl   $0x5178,0x4(%esp)
    3280:	00 
    3281:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3288:	e8 d3 0d 00 00       	call   4060 <printf>
    328d:	eb 0e                	jmp    329d <forktest+0x2d>
    328f:	90                   	nop
    if(pid == 0)
    3290:	74 6a                	je     32fc <forktest+0x8c>
  for(n=0; n<1000; n++){
    3292:	83 c3 01             	add    $0x1,%ebx
    3295:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    329b:	74 4b                	je     32e8 <forktest+0x78>
    pid = fork();
    329d:	e8 68 0c 00 00       	call   3f0a <fork>
    if(pid < 0)
    32a2:	85 c0                	test   %eax,%eax
    32a4:	79 ea                	jns    3290 <forktest+0x20>
  for(; n > 0; n--){
    32a6:	85 db                	test   %ebx,%ebx
    32a8:	74 14                	je     32be <forktest+0x4e>
    32aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    32b0:	e8 65 0c 00 00       	call   3f1a <wait>
    32b5:	85 c0                	test   %eax,%eax
    32b7:	78 4f                	js     3308 <forktest+0x98>
  for(; n > 0; n--){
    32b9:	83 eb 01             	sub    $0x1,%ebx
    32bc:	75 f2                	jne    32b0 <forktest+0x40>
    32be:	66 90                	xchg   %ax,%ax
  if(wait() != -1){
    32c0:	e8 55 0c 00 00       	call   3f1a <wait>
    32c5:	83 f8 ff             	cmp    $0xffffffff,%eax
    32c8:	75 5e                	jne    3328 <forktest+0xb8>
  printf(1, "fork test OK\n");
    32ca:	c7 44 24 04 aa 51 00 	movl   $0x51aa,0x4(%esp)
    32d1:	00 
    32d2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32d9:	e8 82 0d 00 00       	call   4060 <printf>
}
    32de:	83 c4 14             	add    $0x14,%esp
    32e1:	5b                   	pop    %ebx
    32e2:	5d                   	pop    %ebp
    32e3:	c3                   	ret    
    32e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "fork claimed to work 1000 times!\n");
    32e8:	c7 44 24 04 18 59 00 	movl   $0x5918,0x4(%esp)
    32ef:	00 
    32f0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32f7:	e8 64 0d 00 00       	call   4060 <printf>
    exit(0);
    32fc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3303:	e8 0a 0c 00 00       	call   3f12 <exit>
      printf(1, "wait stopped early\n");
    3308:	c7 44 24 04 83 51 00 	movl   $0x5183,0x4(%esp)
    330f:	00 
    3310:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3317:	e8 44 0d 00 00       	call   4060 <printf>
      exit(-1);
    331c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3323:	e8 ea 0b 00 00       	call   3f12 <exit>
    printf(1, "wait got too many\n");
    3328:	c7 44 24 04 97 51 00 	movl   $0x5197,0x4(%esp)
    332f:	00 
    3330:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3337:	e8 24 0d 00 00       	call   4060 <printf>
    exit(-1);
    333c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3343:	e8 ca 0b 00 00       	call   3f12 <exit>
    3348:	90                   	nop
    3349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003350 <sbrktest>:
{
    3350:	55                   	push   %ebp
    3351:	89 e5                	mov    %esp,%ebp
    3353:	57                   	push   %edi
    3354:	56                   	push   %esi
  for(i = 0; i < 5000; i++){
    3355:	31 f6                	xor    %esi,%esi
{
    3357:	53                   	push   %ebx
    3358:	83 ec 6c             	sub    $0x6c,%esp
  printf(stdout, "sbrk test\n");
    335b:	a1 44 64 00 00       	mov    0x6444,%eax
    3360:	c7 44 24 04 b8 51 00 	movl   $0x51b8,0x4(%esp)
    3367:	00 
    3368:	89 04 24             	mov    %eax,(%esp)
    336b:	e8 f0 0c 00 00       	call   4060 <printf>
  oldbrk = sbrk(0);
    3370:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3377:	e8 1e 0c 00 00       	call   3f9a <sbrk>
  a = sbrk(0);
    337c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    3383:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    3386:	e8 0f 0c 00 00       	call   3f9a <sbrk>
    338b:	89 c3                	mov    %eax,%ebx
    338d:	8d 76 00             	lea    0x0(%esi),%esi
    b = sbrk(1);
    3390:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3397:	e8 fe 0b 00 00       	call   3f9a <sbrk>
    if(b != a){
    339c:	39 d8                	cmp    %ebx,%eax
    b = sbrk(1);
    339e:	89 c7                	mov    %eax,%edi
    if(b != a){
    33a0:	0f 85 78 02 00 00    	jne    361e <sbrktest+0x2ce>
  for(i = 0; i < 5000; i++){
    33a6:	83 c6 01             	add    $0x1,%esi
    a = b + 1;
    33a9:	83 c3 01             	add    $0x1,%ebx
    *b = 1;
    33ac:	c6 43 ff 01          	movb   $0x1,-0x1(%ebx)
  for(i = 0; i < 5000; i++){
    33b0:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    33b6:	75 d8                	jne    3390 <sbrktest+0x40>
  pid = fork();
    33b8:	e8 4d 0b 00 00       	call   3f0a <fork>
  if(pid < 0){
    33bd:	85 c0                	test   %eax,%eax
  pid = fork();
    33bf:	89 c3                	mov    %eax,%ebx
  if(pid < 0){
    33c1:	0f 88 84 03 00 00    	js     374b <sbrktest+0x3fb>
  c = sbrk(1);
    33c7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33ce:	e8 c7 0b 00 00       	call   3f9a <sbrk>
  c = sbrk(1);
    33d3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33da:	e8 bb 0b 00 00       	call   3f9a <sbrk>
  if(c != a + 1){
    33df:	8d 57 02             	lea    0x2(%edi),%edx
    33e2:	39 d0                	cmp    %edx,%eax
    33e4:	0f 85 54 03 00 00    	jne    373e <sbrktest+0x3ee>
  if(pid == 0)
    33ea:	85 db                	test   %ebx,%ebx
    33ec:	0f 84 c2 02 00 00    	je     36b4 <sbrktest+0x364>
  wait();
    33f2:	e8 23 0b 00 00       	call   3f1a <wait>
  a = sbrk(0);
    33f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33fe:	e8 97 0b 00 00       	call   3f9a <sbrk>
  amt = (BIG) - (uint)a;
    3403:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3408:	29 c2                	sub    %eax,%edx
  a = sbrk(0);
    340a:	89 c3                	mov    %eax,%ebx
  p = sbrk(amt);
    340c:	89 14 24             	mov    %edx,(%esp)
    340f:	e8 86 0b 00 00       	call   3f9a <sbrk>
  if (p != a) {
    3414:	39 d8                	cmp    %ebx,%eax
    3416:	0f 85 f6 02 00 00    	jne    3712 <sbrktest+0x3c2>
  *lastaddr = 99;
    341c:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    3423:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    342a:	e8 6b 0b 00 00       	call   3f9a <sbrk>
  c = sbrk(-4096);
    342f:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    3436:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    3438:	e8 5d 0b 00 00       	call   3f9a <sbrk>
  if(c == (char*)0xffffffff){
    343d:	83 f8 ff             	cmp    $0xffffffff,%eax
    3440:	0f 84 eb 02 00 00    	je     3731 <sbrktest+0x3e1>
  c = sbrk(0);
    3446:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    344d:	e8 48 0b 00 00       	call   3f9a <sbrk>
  if(c != a - 4096){
    3452:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    3458:	39 d0                	cmp    %edx,%eax
    345a:	0f 85 bf 02 00 00    	jne    371f <sbrktest+0x3cf>
  a = sbrk(0);
    3460:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3467:	e8 2e 0b 00 00       	call   3f9a <sbrk>
  c = sbrk(4096);
    346c:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    3473:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    3475:	e8 20 0b 00 00       	call   3f9a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    347a:	39 f0                	cmp    %esi,%eax
  c = sbrk(4096);
    347c:	89 c3                	mov    %eax,%ebx
  if(c != a || sbrk(0) != a + 4096){
    347e:	0f 85 7c 02 00 00    	jne    3700 <sbrktest+0x3b0>
    3484:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    348b:	e8 0a 0b 00 00       	call   3f9a <sbrk>
    3490:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    3496:	39 d0                	cmp    %edx,%eax
    3498:	0f 85 62 02 00 00    	jne    3700 <sbrktest+0x3b0>
  if(*lastaddr == 99){
    349e:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    34a5:	0f 84 48 02 00 00    	je     36f3 <sbrktest+0x3a3>
  a = sbrk(0);
    34ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34b2:	e8 e3 0a 00 00       	call   3f9a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    34b7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    34be:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    34c0:	e8 d5 0a 00 00       	call   3f9a <sbrk>
    34c5:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    34c8:	29 c1                	sub    %eax,%ecx
    34ca:	89 0c 24             	mov    %ecx,(%esp)
    34cd:	e8 c8 0a 00 00       	call   3f9a <sbrk>
  if(c != a){
    34d2:	39 d8                	cmp    %ebx,%eax
    34d4:	0f 85 f0 01 00 00    	jne    36ca <sbrktest+0x37a>
    34da:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    34df:	90                   	nop
    ppid = getpid();
    34e0:	e8 ad 0a 00 00       	call   3f92 <getpid>
    34e5:	89 c6                	mov    %eax,%esi
    pid = fork();
    34e7:	e8 1e 0a 00 00       	call   3f0a <fork>
    if(pid < 0){
    34ec:	85 c0                	test   %eax,%eax
    34ee:	0f 88 cc 01 00 00    	js     36c0 <sbrktest+0x370>
    if(pid == 0){
    34f4:	0f 84 92 01 00 00    	je     368c <sbrktest+0x33c>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    34fa:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    wait();
    3500:	e8 15 0a 00 00       	call   3f1a <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3505:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    350b:	75 d3                	jne    34e0 <sbrktest+0x190>
  if(pipe(fds) != 0){
    350d:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3510:	89 04 24             	mov    %eax,(%esp)
    3513:	e8 0a 0a 00 00       	call   3f22 <pipe>
    3518:	85 c0                	test   %eax,%eax
    351a:	0f 85 4c 01 00 00    	jne    366c <sbrktest+0x31c>
    3520:	8d 5d e8             	lea    -0x18(%ebp),%ebx
    3523:	8d 75 c0             	lea    -0x40(%ebp),%esi
      read(fds[0], &scratch, 1);
    3526:	8d 7d b7             	lea    -0x49(%ebp),%edi
    if((pids[i] = fork()) == 0){
    3529:	e8 dc 09 00 00       	call   3f0a <fork>
    352e:	85 c0                	test   %eax,%eax
    3530:	89 06                	mov    %eax,(%esi)
    3532:	0f 84 9f 00 00 00    	je     35d7 <sbrktest+0x287>
    if(pids[i] != -1)
    3538:	83 f8 ff             	cmp    $0xffffffff,%eax
    353b:	74 17                	je     3554 <sbrktest+0x204>
      read(fds[0], &scratch, 1);
    353d:	8b 45 b8             	mov    -0x48(%ebp),%eax
    3540:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3547:	00 
    3548:	89 7c 24 04          	mov    %edi,0x4(%esp)
    354c:	89 04 24             	mov    %eax,(%esp)
    354f:	e8 d6 09 00 00       	call   3f2a <read>
    3554:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3557:	39 de                	cmp    %ebx,%esi
    3559:	75 ce                	jne    3529 <sbrktest+0x1d9>
  c = sbrk(4096);
    355b:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3562:	8d 75 c0             	lea    -0x40(%ebp),%esi
    3565:	e8 30 0a 00 00       	call   3f9a <sbrk>
    356a:	89 c7                	mov    %eax,%edi
    if(pids[i] == -1)
    356c:	8b 06                	mov    (%esi),%eax
    356e:	83 f8 ff             	cmp    $0xffffffff,%eax
    3571:	74 0d                	je     3580 <sbrktest+0x230>
    kill(pids[i]);
    3573:	89 04 24             	mov    %eax,(%esp)
    3576:	e8 c7 09 00 00       	call   3f42 <kill>
    wait();
    357b:	e8 9a 09 00 00       	call   3f1a <wait>
    3580:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3583:	39 f3                	cmp    %esi,%ebx
    3585:	75 e5                	jne    356c <sbrktest+0x21c>
  if(c == (char*)0xffffffff){
    3587:	83 ff ff             	cmp    $0xffffffff,%edi
    358a:	0f 84 bb 00 00 00    	je     364b <sbrktest+0x2fb>
  if(sbrk(0) > oldbrk)
    3590:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3597:	e8 fe 09 00 00       	call   3f9a <sbrk>
    359c:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    359f:	73 19                	jae    35ba <sbrktest+0x26a>
    sbrk(-(sbrk(0) - oldbrk));
    35a1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35a8:	e8 ed 09 00 00       	call   3f9a <sbrk>
    35ad:	8b 7d a4             	mov    -0x5c(%ebp),%edi
    35b0:	29 c7                	sub    %eax,%edi
    35b2:	89 3c 24             	mov    %edi,(%esp)
    35b5:	e8 e0 09 00 00       	call   3f9a <sbrk>
  printf(stdout, "sbrk test OK\n");
    35ba:	a1 44 64 00 00       	mov    0x6444,%eax
    35bf:	c7 44 24 04 60 52 00 	movl   $0x5260,0x4(%esp)
    35c6:	00 
    35c7:	89 04 24             	mov    %eax,(%esp)
    35ca:	e8 91 0a 00 00       	call   4060 <printf>
}
    35cf:	83 c4 6c             	add    $0x6c,%esp
    35d2:	5b                   	pop    %ebx
    35d3:	5e                   	pop    %esi
    35d4:	5f                   	pop    %edi
    35d5:	5d                   	pop    %ebp
    35d6:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    35d7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35de:	e8 b7 09 00 00       	call   3f9a <sbrk>
    35e3:	ba 00 00 40 06       	mov    $0x6400000,%edx
    35e8:	29 c2                	sub    %eax,%edx
    35ea:	89 14 24             	mov    %edx,(%esp)
    35ed:	e8 a8 09 00 00       	call   3f9a <sbrk>
      write(fds[1], "x", 1);
    35f2:	8b 45 bc             	mov    -0x44(%ebp),%eax
    35f5:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    35fc:	00 
    35fd:	c7 44 24 04 21 4d 00 	movl   $0x4d21,0x4(%esp)
    3604:	00 
    3605:	89 04 24             	mov    %eax,(%esp)
    3608:	e8 25 09 00 00       	call   3f32 <write>
    360d:	8d 76 00             	lea    0x0(%esi),%esi
      for(;;) sleep(1000);
    3610:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
    3617:	e8 86 09 00 00       	call   3fa2 <sleep>
    361c:	eb f2                	jmp    3610 <sbrktest+0x2c0>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    361e:	89 44 24 10          	mov    %eax,0x10(%esp)
    3622:	a1 44 64 00 00       	mov    0x6444,%eax
    3627:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    362b:	89 74 24 08          	mov    %esi,0x8(%esp)
    362f:	c7 44 24 04 c3 51 00 	movl   $0x51c3,0x4(%esp)
    3636:	00 
    3637:	89 04 24             	mov    %eax,(%esp)
    363a:	e8 21 0a 00 00       	call   4060 <printf>
      exit(-1);
    363f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3646:	e8 c7 08 00 00       	call   3f12 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    364b:	c7 44 24 04 45 52 00 	movl   $0x5245,0x4(%esp)
    3652:	00 
    printf(stdout, "sbrk test failed post-fork\n");
    3653:	a1 44 64 00 00       	mov    0x6444,%eax
    3658:	89 04 24             	mov    %eax,(%esp)
    365b:	e8 00 0a 00 00       	call   4060 <printf>
    exit(-1);
    3660:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3667:	e8 a6 08 00 00       	call   3f12 <exit>
    printf(1, "pipe() failed\n");
    366c:	c7 44 24 04 01 47 00 	movl   $0x4701,0x4(%esp)
    3673:	00 
    3674:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    367b:	e8 e0 09 00 00       	call   4060 <printf>
    exit(-1);
    3680:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3687:	e8 86 08 00 00       	call   3f12 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    368c:	0f be 03             	movsbl (%ebx),%eax
    368f:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3693:	c7 44 24 04 2c 52 00 	movl   $0x522c,0x4(%esp)
    369a:	00 
    369b:	89 44 24 0c          	mov    %eax,0xc(%esp)
    369f:	a1 44 64 00 00       	mov    0x6444,%eax
    36a4:	89 04 24             	mov    %eax,(%esp)
    36a7:	e8 b4 09 00 00       	call   4060 <printf>
      kill(ppid);
    36ac:	89 34 24             	mov    %esi,(%esp)
    36af:	e8 8e 08 00 00       	call   3f42 <kill>
      exit(0);
    36b4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36bb:	e8 52 08 00 00       	call   3f12 <exit>
      printf(stdout, "fork failed\n");
    36c0:	c7 44 24 04 09 53 00 	movl   $0x5309,0x4(%esp)
    36c7:	00 
    36c8:	eb 89                	jmp    3653 <sbrktest+0x303>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    36ca:	89 44 24 0c          	mov    %eax,0xc(%esp)
    36ce:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    36d2:	c7 44 24 04 0c 5a 00 	movl   $0x5a0c,0x4(%esp)
    36d9:	00 
    36da:	a1 44 64 00 00       	mov    0x6444,%eax
    36df:	89 04 24             	mov    %eax,(%esp)
    36e2:	e8 79 09 00 00       	call   4060 <printf>
    exit(-1);
    36e7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    36ee:	e8 1f 08 00 00       	call   3f12 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    36f3:	c7 44 24 04 dc 59 00 	movl   $0x59dc,0x4(%esp)
    36fa:	00 
    36fb:	e9 53 ff ff ff       	jmp    3653 <sbrktest+0x303>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    3700:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    3704:	89 74 24 08          	mov    %esi,0x8(%esp)
    3708:	c7 44 24 04 b4 59 00 	movl   $0x59b4,0x4(%esp)
    370f:	00 
    3710:	eb c8                	jmp    36da <sbrktest+0x38a>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    3712:	c7 44 24 04 3c 59 00 	movl   $0x593c,0x4(%esp)
    3719:	00 
    371a:	e9 34 ff ff ff       	jmp    3653 <sbrktest+0x303>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    371f:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3723:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3727:	c7 44 24 04 7c 59 00 	movl   $0x597c,0x4(%esp)
    372e:	00 
    372f:	eb a9                	jmp    36da <sbrktest+0x38a>
    printf(stdout, "sbrk could not deallocate\n");
    3731:	c7 44 24 04 11 52 00 	movl   $0x5211,0x4(%esp)
    3738:	00 
    3739:	e9 15 ff ff ff       	jmp    3653 <sbrktest+0x303>
    printf(stdout, "sbrk test failed post-fork\n");
    373e:	c7 44 24 04 f5 51 00 	movl   $0x51f5,0x4(%esp)
    3745:	00 
    3746:	e9 08 ff ff ff       	jmp    3653 <sbrktest+0x303>
    printf(stdout, "sbrk test fork failed\n");
    374b:	c7 44 24 04 de 51 00 	movl   $0x51de,0x4(%esp)
    3752:	00 
    3753:	e9 fb fe ff ff       	jmp    3653 <sbrktest+0x303>
    3758:	90                   	nop
    3759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003760 <validateint>:
{
    3760:	55                   	push   %ebp
    3761:	89 e5                	mov    %esp,%ebp
}
    3763:	5d                   	pop    %ebp
    3764:	c3                   	ret    
    3765:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3769:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003770 <validatetest>:
{
    3770:	55                   	push   %ebp
    3771:	89 e5                	mov    %esp,%ebp
    3773:	56                   	push   %esi
    3774:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    3775:	31 db                	xor    %ebx,%ebx
{
    3777:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "validate test\n");
    377a:	a1 44 64 00 00       	mov    0x6444,%eax
    377f:	c7 44 24 04 6e 52 00 	movl   $0x526e,0x4(%esp)
    3786:	00 
    3787:	89 04 24             	mov    %eax,(%esp)
    378a:	e8 d1 08 00 00       	call   4060 <printf>
    378f:	90                   	nop
    if((pid = fork()) == 0){
    3790:	e8 75 07 00 00       	call   3f0a <fork>
      exit(0);
    3795:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    if((pid = fork()) == 0){
    379c:	85 c0                	test   %eax,%eax
    379e:	89 c6                	mov    %eax,%esi
    37a0:	74 79                	je     381b <validatetest+0xab>
    sleep(0);
    37a2:	e8 fb 07 00 00       	call   3fa2 <sleep>
    sleep(0);
    37a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    37ae:	e8 ef 07 00 00       	call   3fa2 <sleep>
    kill(pid);
    37b3:	89 34 24             	mov    %esi,(%esp)
    37b6:	e8 87 07 00 00       	call   3f42 <kill>
    wait();
    37bb:	e8 5a 07 00 00       	call   3f1a <wait>
    if(link("nosuchfile", (char*)p) != -1){
    37c0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    37c4:	c7 04 24 7d 52 00 00 	movl   $0x527d,(%esp)
    37cb:	e8 a2 07 00 00       	call   3f72 <link>
    37d0:	83 f8 ff             	cmp    $0xffffffff,%eax
    37d3:	75 2a                	jne    37ff <validatetest+0x8f>
  for(p = 0; p <= (uint)hi; p += 4096){
    37d5:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    37db:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    37e1:	75 ad                	jne    3790 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    37e3:	a1 44 64 00 00       	mov    0x6444,%eax
    37e8:	c7 44 24 04 a1 52 00 	movl   $0x52a1,0x4(%esp)
    37ef:	00 
    37f0:	89 04 24             	mov    %eax,(%esp)
    37f3:	e8 68 08 00 00       	call   4060 <printf>
}
    37f8:	83 c4 10             	add    $0x10,%esp
    37fb:	5b                   	pop    %ebx
    37fc:	5e                   	pop    %esi
    37fd:	5d                   	pop    %ebp
    37fe:	c3                   	ret    
      printf(stdout, "link should not succeed\n");
    37ff:	a1 44 64 00 00       	mov    0x6444,%eax
    3804:	c7 44 24 04 88 52 00 	movl   $0x5288,0x4(%esp)
    380b:	00 
    380c:	89 04 24             	mov    %eax,(%esp)
    380f:	e8 4c 08 00 00       	call   4060 <printf>
      exit(0);
    3814:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    381b:	e8 f2 06 00 00       	call   3f12 <exit>

00003820 <bsstest>:
{
    3820:	55                   	push   %ebp
    3821:	89 e5                	mov    %esp,%ebp
    3823:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "bss test\n");
    3826:	a1 44 64 00 00       	mov    0x6444,%eax
    382b:	c7 44 24 04 ae 52 00 	movl   $0x52ae,0x4(%esp)
    3832:	00 
    3833:	89 04 24             	mov    %eax,(%esp)
    3836:	e8 25 08 00 00       	call   4060 <printf>
    if(uninit[i] != '\0'){
    383b:	80 3d 00 65 00 00 00 	cmpb   $0x0,0x6500
    3842:	75 36                	jne    387a <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    3844:	b8 01 00 00 00       	mov    $0x1,%eax
    3849:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    3850:	80 b8 00 65 00 00 00 	cmpb   $0x0,0x6500(%eax)
    3857:	75 21                	jne    387a <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    3859:	83 c0 01             	add    $0x1,%eax
    385c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3861:	75 ed                	jne    3850 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    3863:	a1 44 64 00 00       	mov    0x6444,%eax
    3868:	c7 44 24 04 c9 52 00 	movl   $0x52c9,0x4(%esp)
    386f:	00 
    3870:	89 04 24             	mov    %eax,(%esp)
    3873:	e8 e8 07 00 00       	call   4060 <printf>
}
    3878:	c9                   	leave  
    3879:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    387a:	a1 44 64 00 00       	mov    0x6444,%eax
    387f:	c7 44 24 04 b8 52 00 	movl   $0x52b8,0x4(%esp)
    3886:	00 
    3887:	89 04 24             	mov    %eax,(%esp)
    388a:	e8 d1 07 00 00       	call   4060 <printf>
      exit(-1);
    388f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3896:	e8 77 06 00 00       	call   3f12 <exit>
    389b:	90                   	nop
    389c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000038a0 <bigargtest>:
{
    38a0:	55                   	push   %ebp
    38a1:	89 e5                	mov    %esp,%ebp
    38a3:	83 ec 18             	sub    $0x18,%esp
  unlink("bigarg-ok");
    38a6:	c7 04 24 d6 52 00 00 	movl   $0x52d6,(%esp)
    38ad:	e8 b0 06 00 00       	call   3f62 <unlink>
  pid = fork();
    38b2:	e8 53 06 00 00       	call   3f0a <fork>
  if(pid == 0){
    38b7:	85 c0                	test   %eax,%eax
    38b9:	74 45                	je     3900 <bigargtest+0x60>
    38bb:	90                   	nop
    38bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  } else if(pid < 0){
    38c0:	0f 88 de 00 00 00    	js     39a4 <bigargtest+0x104>
  wait();
    38c6:	e8 4f 06 00 00       	call   3f1a <wait>
  fd = open("bigarg-ok", 0);
    38cb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    38d2:	00 
    38d3:	c7 04 24 d6 52 00 00 	movl   $0x52d6,(%esp)
    38da:	e8 73 06 00 00       	call   3f52 <open>
  if(fd < 0){
    38df:	85 c0                	test   %eax,%eax
    38e1:	0f 88 9c 00 00 00    	js     3983 <bigargtest+0xe3>
  close(fd);
    38e7:	89 04 24             	mov    %eax,(%esp)
    38ea:	e8 4b 06 00 00       	call   3f3a <close>
  unlink("bigarg-ok");
    38ef:	c7 04 24 d6 52 00 00 	movl   $0x52d6,(%esp)
    38f6:	e8 67 06 00 00       	call   3f62 <unlink>
}
    38fb:	c9                   	leave  
    38fc:	c3                   	ret    
    38fd:	8d 76 00             	lea    0x0(%esi),%esi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3900:	c7 04 85 60 64 00 00 	movl   $0x5a30,0x6460(,%eax,4)
    3907:	30 5a 00 00 
    for(i = 0; i < MAXARG-1; i++)
    390b:	83 c0 01             	add    $0x1,%eax
    390e:	83 f8 1f             	cmp    $0x1f,%eax
    3911:	75 ed                	jne    3900 <bigargtest+0x60>
    printf(stdout, "bigarg test\n");
    3913:	a1 44 64 00 00       	mov    0x6444,%eax
    3918:	c7 44 24 04 e0 52 00 	movl   $0x52e0,0x4(%esp)
    391f:	00 
    args[MAXARG-1] = 0;
    3920:	c7 05 dc 64 00 00 00 	movl   $0x0,0x64dc
    3927:	00 00 00 
    printf(stdout, "bigarg test\n");
    392a:	89 04 24             	mov    %eax,(%esp)
    392d:	e8 2e 07 00 00       	call   4060 <printf>
    exec("echo", args);
    3932:	c7 44 24 04 60 64 00 	movl   $0x6460,0x4(%esp)
    3939:	00 
    393a:	c7 04 24 ad 44 00 00 	movl   $0x44ad,(%esp)
    3941:	e8 04 06 00 00       	call   3f4a <exec>
    printf(stdout, "bigarg test ok\n");
    3946:	a1 44 64 00 00       	mov    0x6444,%eax
    394b:	c7 44 24 04 ed 52 00 	movl   $0x52ed,0x4(%esp)
    3952:	00 
    3953:	89 04 24             	mov    %eax,(%esp)
    3956:	e8 05 07 00 00       	call   4060 <printf>
    fd = open("bigarg-ok", O_CREATE);
    395b:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    3962:	00 
    3963:	c7 04 24 d6 52 00 00 	movl   $0x52d6,(%esp)
    396a:	e8 e3 05 00 00       	call   3f52 <open>
    close(fd);
    396f:	89 04 24             	mov    %eax,(%esp)
    3972:	e8 c3 05 00 00       	call   3f3a <close>
    exit(0);
    3977:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    397e:	e8 8f 05 00 00       	call   3f12 <exit>
    printf(stdout, "bigarg test failed!\n");
    3983:	c7 44 24 04 16 53 00 	movl   $0x5316,0x4(%esp)
    398a:	00 
    398b:	a1 44 64 00 00       	mov    0x6444,%eax
    3990:	89 04 24             	mov    %eax,(%esp)
    3993:	e8 c8 06 00 00       	call   4060 <printf>
    exit(-1);
    3998:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    399f:	e8 6e 05 00 00       	call   3f12 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    39a4:	c7 44 24 04 fd 52 00 	movl   $0x52fd,0x4(%esp)
    39ab:	00 
    39ac:	eb dd                	jmp    398b <bigargtest+0xeb>
    39ae:	66 90                	xchg   %ax,%ax

000039b0 <fsfull>:
{
    39b0:	55                   	push   %ebp
    39b1:	89 e5                	mov    %esp,%ebp
    39b3:	57                   	push   %edi
    39b4:	56                   	push   %esi
    39b5:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    39b6:	31 db                	xor    %ebx,%ebx
{
    39b8:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "fsfull test\n");
    39bb:	c7 44 24 04 2b 53 00 	movl   $0x532b,0x4(%esp)
    39c2:	00 
    39c3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    39ca:	e8 91 06 00 00       	call   4060 <printf>
    39cf:	90                   	nop
    name[1] = '0' + nfiles / 1000;
    39d0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    39d5:	89 d9                	mov    %ebx,%ecx
    39d7:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    39d9:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    39db:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    39de:	89 df                	mov    %ebx,%edi
    printf(1, "writing %s\n", name);
    39e0:	c7 44 24 04 38 53 00 	movl   $0x5338,0x4(%esp)
    39e7:	00 
    39e8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    name[1] = '0' + nfiles / 1000;
    39ef:	c1 fa 06             	sar    $0x6,%edx
    39f2:	29 ca                	sub    %ecx,%edx
    39f4:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    39f7:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    39fd:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3a00:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[0] = 'f';
    3a05:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3a09:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3a0d:	29 d6                	sub    %edx,%esi
    3a0f:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3a11:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3a16:	c1 fe 1f             	sar    $0x1f,%esi
    3a19:	c1 fa 05             	sar    $0x5,%edx
    3a1c:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3a1e:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3a23:	83 c2 30             	add    $0x30,%edx
    3a26:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3a29:	f7 eb                	imul   %ebx
    3a2b:	c1 fa 05             	sar    $0x5,%edx
    3a2e:	29 ca                	sub    %ecx,%edx
    3a30:	6b d2 64             	imul   $0x64,%edx,%edx
    3a33:	29 d7                	sub    %edx,%edi
    3a35:	89 f8                	mov    %edi,%eax
    3a37:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3a39:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3a3b:	c1 ff 1f             	sar    $0x1f,%edi
    3a3e:	c1 fa 02             	sar    $0x2,%edx
    3a41:	29 fa                	sub    %edi,%edx
    3a43:	83 c2 30             	add    $0x30,%edx
    3a46:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3a49:	f7 ee                	imul   %esi
    3a4b:	c1 fa 02             	sar    $0x2,%edx
    3a4e:	29 ca                	sub    %ecx,%edx
    3a50:	89 d9                	mov    %ebx,%ecx
    3a52:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3a55:	01 c0                	add    %eax,%eax
    3a57:	29 c1                	sub    %eax,%ecx
    3a59:	89 c8                	mov    %ecx,%eax
    3a5b:	83 c0 30             	add    $0x30,%eax
    3a5e:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    3a61:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3a64:	89 44 24 08          	mov    %eax,0x8(%esp)
    3a68:	e8 f3 05 00 00       	call   4060 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3a6d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3a70:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    3a77:	00 
    3a78:	89 04 24             	mov    %eax,(%esp)
    3a7b:	e8 d2 04 00 00       	call   3f52 <open>
    if(fd < 0){
    3a80:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    3a82:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    3a84:	78 57                	js     3add <fsfull+0x12d>
    3a86:	31 f6                	xor    %esi,%esi
    3a88:	eb 08                	jmp    3a92 <fsfull+0xe2>
    3a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      total += cc;
    3a90:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    3a92:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    3a99:	00 
    3a9a:	c7 44 24 04 20 8c 00 	movl   $0x8c20,0x4(%esp)
    3aa1:	00 
    3aa2:	89 3c 24             	mov    %edi,(%esp)
    3aa5:	e8 88 04 00 00       	call   3f32 <write>
      if(cc < 512)
    3aaa:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3aaf:	7f df                	jg     3a90 <fsfull+0xe0>
    printf(1, "wrote %d bytes\n", total);
    3ab1:	89 74 24 08          	mov    %esi,0x8(%esp)
    3ab5:	c7 44 24 04 54 53 00 	movl   $0x5354,0x4(%esp)
    3abc:	00 
    3abd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3ac4:	e8 97 05 00 00       	call   4060 <printf>
    close(fd);
    3ac9:	89 3c 24             	mov    %edi,(%esp)
    3acc:	e8 69 04 00 00       	call   3f3a <close>
    if(total == 0)
    3ad1:	85 f6                	test   %esi,%esi
    3ad3:	74 23                	je     3af8 <fsfull+0x148>
  for(nfiles = 0; ; nfiles++){
    3ad5:	83 c3 01             	add    $0x1,%ebx
  }
    3ad8:	e9 f3 fe ff ff       	jmp    39d0 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    3add:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3ae0:	89 44 24 08          	mov    %eax,0x8(%esp)
    3ae4:	c7 44 24 04 44 53 00 	movl   $0x5344,0x4(%esp)
    3aeb:	00 
    3aec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3af3:	e8 68 05 00 00       	call   4060 <printf>
    name[1] = '0' + nfiles / 1000;
    3af8:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3afd:	89 d9                	mov    %ebx,%ecx
    3aff:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3b01:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    3b03:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3b06:	89 df                	mov    %ebx,%edi
    name[0] = 'f';
    3b08:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3b0c:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3b10:	c1 fa 06             	sar    $0x6,%edx
    3b13:	29 ca                	sub    %ecx,%edx
    3b15:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3b18:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3b1e:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3b21:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3b26:	29 d6                	sub    %edx,%esi
    3b28:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3b2a:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3b2f:	c1 fe 1f             	sar    $0x1f,%esi
    3b32:	c1 fa 05             	sar    $0x5,%edx
    3b35:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3b37:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3b3c:	83 c2 30             	add    $0x30,%edx
    3b3f:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3b42:	f7 eb                	imul   %ebx
    3b44:	c1 fa 05             	sar    $0x5,%edx
    3b47:	29 ca                	sub    %ecx,%edx
    3b49:	6b d2 64             	imul   $0x64,%edx,%edx
    3b4c:	29 d7                	sub    %edx,%edi
    3b4e:	89 f8                	mov    %edi,%eax
    3b50:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3b52:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3b54:	c1 ff 1f             	sar    $0x1f,%edi
    3b57:	c1 fa 02             	sar    $0x2,%edx
    3b5a:	29 fa                	sub    %edi,%edx
    3b5c:	83 c2 30             	add    $0x30,%edx
    3b5f:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3b62:	f7 ee                	imul   %esi
    3b64:	c1 fa 02             	sar    $0x2,%edx
    3b67:	29 ca                	sub    %ecx,%edx
    3b69:	89 d9                	mov    %ebx,%ecx
    3b6b:	8d 04 92             	lea    (%edx,%edx,4),%eax
    nfiles--;
    3b6e:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    3b71:	01 c0                	add    %eax,%eax
    3b73:	29 c1                	sub    %eax,%ecx
    3b75:	89 c8                	mov    %ecx,%eax
    3b77:	83 c0 30             	add    $0x30,%eax
    3b7a:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    3b7d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b80:	89 04 24             	mov    %eax,(%esp)
    3b83:	e8 da 03 00 00       	call   3f62 <unlink>
  while(nfiles >= 0){
    3b88:	83 fb ff             	cmp    $0xffffffff,%ebx
    3b8b:	0f 85 67 ff ff ff    	jne    3af8 <fsfull+0x148>
  printf(1, "fsfull test finished\n");
    3b91:	c7 44 24 04 64 53 00 	movl   $0x5364,0x4(%esp)
    3b98:	00 
    3b99:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3ba0:	e8 bb 04 00 00       	call   4060 <printf>
}
    3ba5:	83 c4 5c             	add    $0x5c,%esp
    3ba8:	5b                   	pop    %ebx
    3ba9:	5e                   	pop    %esi
    3baa:	5f                   	pop    %edi
    3bab:	5d                   	pop    %ebp
    3bac:	c3                   	ret    
    3bad:	8d 76 00             	lea    0x0(%esi),%esi

00003bb0 <uio>:
{
    3bb0:	55                   	push   %ebp
    3bb1:	89 e5                	mov    %esp,%ebp
    3bb3:	83 ec 18             	sub    $0x18,%esp
  printf(1, "uio test\n");
    3bb6:	c7 44 24 04 7a 53 00 	movl   $0x537a,0x4(%esp)
    3bbd:	00 
    3bbe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3bc5:	e8 96 04 00 00       	call   4060 <printf>
  pid = fork();
    3bca:	e8 3b 03 00 00       	call   3f0a <fork>
  if(pid == 0){
    3bcf:	85 c0                	test   %eax,%eax
    3bd1:	74 1d                	je     3bf0 <uio+0x40>
  } else if(pid < 0){
    3bd3:	78 49                	js     3c1e <uio+0x6e>
  wait();
    3bd5:	e8 40 03 00 00       	call   3f1a <wait>
  printf(1, "uio test done\n");
    3bda:	c7 44 24 04 84 53 00 	movl   $0x5384,0x4(%esp)
    3be1:	00 
    3be2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3be9:	e8 72 04 00 00       	call   4060 <printf>
}
    3bee:	c9                   	leave  
    3bef:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3bf0:	ba 70 00 00 00       	mov    $0x70,%edx
    3bf5:	b8 09 00 00 00       	mov    $0x9,%eax
    3bfa:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3bfb:	b2 71                	mov    $0x71,%dl
    3bfd:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3bfe:	c7 44 24 04 10 5b 00 	movl   $0x5b10,0x4(%esp)
    3c05:	00 
    3c06:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c0d:	e8 4e 04 00 00       	call   4060 <printf>
    exit(-1);
    3c12:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3c19:	e8 f4 02 00 00       	call   3f12 <exit>
    printf (1, "fork failed\n");
    3c1e:	c7 44 24 04 09 53 00 	movl   $0x5309,0x4(%esp)
    3c25:	00 
    3c26:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c2d:	e8 2e 04 00 00       	call   4060 <printf>
    exit(-1);
    3c32:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3c39:	e8 d4 02 00 00       	call   3f12 <exit>
    3c3e:	66 90                	xchg   %ax,%ax

00003c40 <argptest>:
{
    3c40:	55                   	push   %ebp
    3c41:	89 e5                	mov    %esp,%ebp
    3c43:	53                   	push   %ebx
    3c44:	83 ec 14             	sub    $0x14,%esp
  fd = open("init", O_RDONLY);
    3c47:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3c4e:	00 
    3c4f:	c7 04 24 93 53 00 00 	movl   $0x5393,(%esp)
    3c56:	e8 f7 02 00 00       	call   3f52 <open>
  if (fd < 0) {
    3c5b:	85 c0                	test   %eax,%eax
  fd = open("init", O_RDONLY);
    3c5d:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    3c5f:	78 45                	js     3ca6 <argptest+0x66>
  read(fd, sbrk(0) - 1, -1);
    3c61:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c68:	e8 2d 03 00 00       	call   3f9a <sbrk>
    3c6d:	89 1c 24             	mov    %ebx,(%esp)
    3c70:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
    3c77:	ff 
    3c78:	83 e8 01             	sub    $0x1,%eax
    3c7b:	89 44 24 04          	mov    %eax,0x4(%esp)
    3c7f:	e8 a6 02 00 00       	call   3f2a <read>
  close(fd);
    3c84:	89 1c 24             	mov    %ebx,(%esp)
    3c87:	e8 ae 02 00 00       	call   3f3a <close>
  printf(1, "arg test passed\n");
    3c8c:	c7 44 24 04 a5 53 00 	movl   $0x53a5,0x4(%esp)
    3c93:	00 
    3c94:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c9b:	e8 c0 03 00 00       	call   4060 <printf>
}
    3ca0:	83 c4 14             	add    $0x14,%esp
    3ca3:	5b                   	pop    %ebx
    3ca4:	5d                   	pop    %ebp
    3ca5:	c3                   	ret    
    printf(2, "open failed\n");
    3ca6:	c7 44 24 04 98 53 00 	movl   $0x5398,0x4(%esp)
    3cad:	00 
    3cae:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    3cb5:	e8 a6 03 00 00       	call   4060 <printf>
    exit(-1);
    3cba:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3cc1:	e8 4c 02 00 00       	call   3f12 <exit>
    3cc6:	8d 76 00             	lea    0x0(%esi),%esi
    3cc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003cd0 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3cd0:	69 05 40 64 00 00 0d 	imul   $0x19660d,0x6440,%eax
    3cd7:	66 19 00 
{
    3cda:	55                   	push   %ebp
    3cdb:	89 e5                	mov    %esp,%ebp
}
    3cdd:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    3cde:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3ce3:	a3 40 64 00 00       	mov    %eax,0x6440
}
    3ce8:	c3                   	ret    
    3ce9:	66 90                	xchg   %ax,%ax
    3ceb:	66 90                	xchg   %ax,%ax
    3ced:	66 90                	xchg   %ax,%ax
    3cef:	90                   	nop

00003cf0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3cf0:	55                   	push   %ebp
    3cf1:	89 e5                	mov    %esp,%ebp
    3cf3:	8b 45 08             	mov    0x8(%ebp),%eax
    3cf6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3cf9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3cfa:	89 c2                	mov    %eax,%edx
    3cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3d00:	83 c1 01             	add    $0x1,%ecx
    3d03:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3d07:	83 c2 01             	add    $0x1,%edx
    3d0a:	84 db                	test   %bl,%bl
    3d0c:	88 5a ff             	mov    %bl,-0x1(%edx)
    3d0f:	75 ef                	jne    3d00 <strcpy+0x10>
    ;
  return os;
}
    3d11:	5b                   	pop    %ebx
    3d12:	5d                   	pop    %ebp
    3d13:	c3                   	ret    
    3d14:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3d1a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003d20 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3d20:	55                   	push   %ebp
    3d21:	89 e5                	mov    %esp,%ebp
    3d23:	8b 55 08             	mov    0x8(%ebp),%edx
    3d26:	53                   	push   %ebx
    3d27:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3d2a:	0f b6 02             	movzbl (%edx),%eax
    3d2d:	84 c0                	test   %al,%al
    3d2f:	74 2d                	je     3d5e <strcmp+0x3e>
    3d31:	0f b6 19             	movzbl (%ecx),%ebx
    3d34:	38 d8                	cmp    %bl,%al
    3d36:	74 0e                	je     3d46 <strcmp+0x26>
    3d38:	eb 2b                	jmp    3d65 <strcmp+0x45>
    3d3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3d40:	38 c8                	cmp    %cl,%al
    3d42:	75 15                	jne    3d59 <strcmp+0x39>
    p++, q++;
    3d44:	89 d9                	mov    %ebx,%ecx
    3d46:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3d49:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3d4c:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3d4f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    3d53:	84 c0                	test   %al,%al
    3d55:	75 e9                	jne    3d40 <strcmp+0x20>
    3d57:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    3d59:	29 c8                	sub    %ecx,%eax
}
    3d5b:	5b                   	pop    %ebx
    3d5c:	5d                   	pop    %ebp
    3d5d:	c3                   	ret    
    3d5e:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
    3d61:	31 c0                	xor    %eax,%eax
    3d63:	eb f4                	jmp    3d59 <strcmp+0x39>
    3d65:	0f b6 cb             	movzbl %bl,%ecx
    3d68:	eb ef                	jmp    3d59 <strcmp+0x39>
    3d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003d70 <strlen>:

uint
strlen(const char *s)
{
    3d70:	55                   	push   %ebp
    3d71:	89 e5                	mov    %esp,%ebp
    3d73:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3d76:	80 39 00             	cmpb   $0x0,(%ecx)
    3d79:	74 12                	je     3d8d <strlen+0x1d>
    3d7b:	31 d2                	xor    %edx,%edx
    3d7d:	8d 76 00             	lea    0x0(%esi),%esi
    3d80:	83 c2 01             	add    $0x1,%edx
    3d83:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3d87:	89 d0                	mov    %edx,%eax
    3d89:	75 f5                	jne    3d80 <strlen+0x10>
    ;
  return n;
}
    3d8b:	5d                   	pop    %ebp
    3d8c:	c3                   	ret    
  for(n = 0; s[n]; n++)
    3d8d:	31 c0                	xor    %eax,%eax
}
    3d8f:	5d                   	pop    %ebp
    3d90:	c3                   	ret    
    3d91:	eb 0d                	jmp    3da0 <memset>
    3d93:	90                   	nop
    3d94:	90                   	nop
    3d95:	90                   	nop
    3d96:	90                   	nop
    3d97:	90                   	nop
    3d98:	90                   	nop
    3d99:	90                   	nop
    3d9a:	90                   	nop
    3d9b:	90                   	nop
    3d9c:	90                   	nop
    3d9d:	90                   	nop
    3d9e:	90                   	nop
    3d9f:	90                   	nop

00003da0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3da0:	55                   	push   %ebp
    3da1:	89 e5                	mov    %esp,%ebp
    3da3:	8b 55 08             	mov    0x8(%ebp),%edx
    3da6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3da7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3daa:	8b 45 0c             	mov    0xc(%ebp),%eax
    3dad:	89 d7                	mov    %edx,%edi
    3daf:	fc                   	cld    
    3db0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3db2:	89 d0                	mov    %edx,%eax
    3db4:	5f                   	pop    %edi
    3db5:	5d                   	pop    %ebp
    3db6:	c3                   	ret    
    3db7:	89 f6                	mov    %esi,%esi
    3db9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003dc0 <strchr>:

char*
strchr(const char *s, char c)
{
    3dc0:	55                   	push   %ebp
    3dc1:	89 e5                	mov    %esp,%ebp
    3dc3:	8b 45 08             	mov    0x8(%ebp),%eax
    3dc6:	53                   	push   %ebx
    3dc7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    3dca:	0f b6 18             	movzbl (%eax),%ebx
    3dcd:	84 db                	test   %bl,%bl
    3dcf:	74 1d                	je     3dee <strchr+0x2e>
    if(*s == c)
    3dd1:	38 d3                	cmp    %dl,%bl
    3dd3:	89 d1                	mov    %edx,%ecx
    3dd5:	75 0d                	jne    3de4 <strchr+0x24>
    3dd7:	eb 17                	jmp    3df0 <strchr+0x30>
    3dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3de0:	38 ca                	cmp    %cl,%dl
    3de2:	74 0c                	je     3df0 <strchr+0x30>
  for(; *s; s++)
    3de4:	83 c0 01             	add    $0x1,%eax
    3de7:	0f b6 10             	movzbl (%eax),%edx
    3dea:	84 d2                	test   %dl,%dl
    3dec:	75 f2                	jne    3de0 <strchr+0x20>
      return (char*)s;
  return 0;
    3dee:	31 c0                	xor    %eax,%eax
}
    3df0:	5b                   	pop    %ebx
    3df1:	5d                   	pop    %ebp
    3df2:	c3                   	ret    
    3df3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3df9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003e00 <gets>:

char*
gets(char *buf, int max)
{
    3e00:	55                   	push   %ebp
    3e01:	89 e5                	mov    %esp,%ebp
    3e03:	57                   	push   %edi
    3e04:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3e05:	31 f6                	xor    %esi,%esi
{
    3e07:	53                   	push   %ebx
    3e08:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
    3e0b:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
    3e0e:	eb 31                	jmp    3e41 <gets+0x41>
    cc = read(0, &c, 1);
    3e10:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3e17:	00 
    3e18:	89 7c 24 04          	mov    %edi,0x4(%esp)
    3e1c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e23:	e8 02 01 00 00       	call   3f2a <read>
    if(cc < 1)
    3e28:	85 c0                	test   %eax,%eax
    3e2a:	7e 1d                	jle    3e49 <gets+0x49>
      break;
    buf[i++] = c;
    3e2c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
    3e30:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
    3e32:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    3e35:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
    3e37:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3e3b:	74 0c                	je     3e49 <gets+0x49>
    3e3d:	3c 0a                	cmp    $0xa,%al
    3e3f:	74 08                	je     3e49 <gets+0x49>
  for(i=0; i+1 < max; ){
    3e41:	8d 5e 01             	lea    0x1(%esi),%ebx
    3e44:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3e47:	7c c7                	jl     3e10 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3e49:	8b 45 08             	mov    0x8(%ebp),%eax
    3e4c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3e50:	83 c4 2c             	add    $0x2c,%esp
    3e53:	5b                   	pop    %ebx
    3e54:	5e                   	pop    %esi
    3e55:	5f                   	pop    %edi
    3e56:	5d                   	pop    %ebp
    3e57:	c3                   	ret    
    3e58:	90                   	nop
    3e59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003e60 <stat>:

int
stat(const char *n, struct stat *st)
{
    3e60:	55                   	push   %ebp
    3e61:	89 e5                	mov    %esp,%ebp
    3e63:	56                   	push   %esi
    3e64:	53                   	push   %ebx
    3e65:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3e68:	8b 45 08             	mov    0x8(%ebp),%eax
    3e6b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3e72:	00 
    3e73:	89 04 24             	mov    %eax,(%esp)
    3e76:	e8 d7 00 00 00       	call   3f52 <open>
  if(fd < 0)
    3e7b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
    3e7d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    3e7f:	78 27                	js     3ea8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    3e81:	8b 45 0c             	mov    0xc(%ebp),%eax
    3e84:	89 1c 24             	mov    %ebx,(%esp)
    3e87:	89 44 24 04          	mov    %eax,0x4(%esp)
    3e8b:	e8 da 00 00 00       	call   3f6a <fstat>
  close(fd);
    3e90:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    3e93:	89 c6                	mov    %eax,%esi
  close(fd);
    3e95:	e8 a0 00 00 00       	call   3f3a <close>
  return r;
    3e9a:	89 f0                	mov    %esi,%eax
}
    3e9c:	83 c4 10             	add    $0x10,%esp
    3e9f:	5b                   	pop    %ebx
    3ea0:	5e                   	pop    %esi
    3ea1:	5d                   	pop    %ebp
    3ea2:	c3                   	ret    
    3ea3:	90                   	nop
    3ea4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    3ea8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3ead:	eb ed                	jmp    3e9c <stat+0x3c>
    3eaf:	90                   	nop

00003eb0 <atoi>:

int
atoi(const char *s)
{
    3eb0:	55                   	push   %ebp
    3eb1:	89 e5                	mov    %esp,%ebp
    3eb3:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3eb6:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3eb7:	0f be 11             	movsbl (%ecx),%edx
    3eba:	8d 42 d0             	lea    -0x30(%edx),%eax
    3ebd:	3c 09                	cmp    $0x9,%al
  n = 0;
    3ebf:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3ec4:	77 17                	ja     3edd <atoi+0x2d>
    3ec6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3ec8:	83 c1 01             	add    $0x1,%ecx
    3ecb:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3ece:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    3ed2:	0f be 11             	movsbl (%ecx),%edx
    3ed5:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3ed8:	80 fb 09             	cmp    $0x9,%bl
    3edb:	76 eb                	jbe    3ec8 <atoi+0x18>
  return n;
}
    3edd:	5b                   	pop    %ebx
    3ede:	5d                   	pop    %ebp
    3edf:	c3                   	ret    

00003ee0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3ee0:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3ee1:	31 d2                	xor    %edx,%edx
{
    3ee3:	89 e5                	mov    %esp,%ebp
    3ee5:	56                   	push   %esi
    3ee6:	8b 45 08             	mov    0x8(%ebp),%eax
    3ee9:	53                   	push   %ebx
    3eea:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3eed:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
    3ef0:	85 db                	test   %ebx,%ebx
    3ef2:	7e 12                	jle    3f06 <memmove+0x26>
    3ef4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3ef8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    3efc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3eff:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    3f02:	39 da                	cmp    %ebx,%edx
    3f04:	75 f2                	jne    3ef8 <memmove+0x18>
  return vdst;
}
    3f06:	5b                   	pop    %ebx
    3f07:	5e                   	pop    %esi
    3f08:	5d                   	pop    %ebp
    3f09:	c3                   	ret    

00003f0a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3f0a:	b8 01 00 00 00       	mov    $0x1,%eax
    3f0f:	cd 40                	int    $0x40
    3f11:	c3                   	ret    

00003f12 <exit>:
SYSCALL(exit)
    3f12:	b8 02 00 00 00       	mov    $0x2,%eax
    3f17:	cd 40                	int    $0x40
    3f19:	c3                   	ret    

00003f1a <wait>:
SYSCALL(wait)
    3f1a:	b8 03 00 00 00       	mov    $0x3,%eax
    3f1f:	cd 40                	int    $0x40
    3f21:	c3                   	ret    

00003f22 <pipe>:
SYSCALL(pipe)
    3f22:	b8 04 00 00 00       	mov    $0x4,%eax
    3f27:	cd 40                	int    $0x40
    3f29:	c3                   	ret    

00003f2a <read>:
SYSCALL(read)
    3f2a:	b8 05 00 00 00       	mov    $0x5,%eax
    3f2f:	cd 40                	int    $0x40
    3f31:	c3                   	ret    

00003f32 <write>:
SYSCALL(write)
    3f32:	b8 10 00 00 00       	mov    $0x10,%eax
    3f37:	cd 40                	int    $0x40
    3f39:	c3                   	ret    

00003f3a <close>:
SYSCALL(close)
    3f3a:	b8 15 00 00 00       	mov    $0x15,%eax
    3f3f:	cd 40                	int    $0x40
    3f41:	c3                   	ret    

00003f42 <kill>:
SYSCALL(kill)
    3f42:	b8 06 00 00 00       	mov    $0x6,%eax
    3f47:	cd 40                	int    $0x40
    3f49:	c3                   	ret    

00003f4a <exec>:
SYSCALL(exec)
    3f4a:	b8 07 00 00 00       	mov    $0x7,%eax
    3f4f:	cd 40                	int    $0x40
    3f51:	c3                   	ret    

00003f52 <open>:
SYSCALL(open)
    3f52:	b8 0f 00 00 00       	mov    $0xf,%eax
    3f57:	cd 40                	int    $0x40
    3f59:	c3                   	ret    

00003f5a <mknod>:
SYSCALL(mknod)
    3f5a:	b8 11 00 00 00       	mov    $0x11,%eax
    3f5f:	cd 40                	int    $0x40
    3f61:	c3                   	ret    

00003f62 <unlink>:
SYSCALL(unlink)
    3f62:	b8 12 00 00 00       	mov    $0x12,%eax
    3f67:	cd 40                	int    $0x40
    3f69:	c3                   	ret    

00003f6a <fstat>:
SYSCALL(fstat)
    3f6a:	b8 08 00 00 00       	mov    $0x8,%eax
    3f6f:	cd 40                	int    $0x40
    3f71:	c3                   	ret    

00003f72 <link>:
SYSCALL(link)
    3f72:	b8 13 00 00 00       	mov    $0x13,%eax
    3f77:	cd 40                	int    $0x40
    3f79:	c3                   	ret    

00003f7a <mkdir>:
SYSCALL(mkdir)
    3f7a:	b8 14 00 00 00       	mov    $0x14,%eax
    3f7f:	cd 40                	int    $0x40
    3f81:	c3                   	ret    

00003f82 <chdir>:
SYSCALL(chdir)
    3f82:	b8 09 00 00 00       	mov    $0x9,%eax
    3f87:	cd 40                	int    $0x40
    3f89:	c3                   	ret    

00003f8a <dup>:
SYSCALL(dup)
    3f8a:	b8 0a 00 00 00       	mov    $0xa,%eax
    3f8f:	cd 40                	int    $0x40
    3f91:	c3                   	ret    

00003f92 <getpid>:
SYSCALL(getpid)
    3f92:	b8 0b 00 00 00       	mov    $0xb,%eax
    3f97:	cd 40                	int    $0x40
    3f99:	c3                   	ret    

00003f9a <sbrk>:
SYSCALL(sbrk)
    3f9a:	b8 0c 00 00 00       	mov    $0xc,%eax
    3f9f:	cd 40                	int    $0x40
    3fa1:	c3                   	ret    

00003fa2 <sleep>:
SYSCALL(sleep)
    3fa2:	b8 0d 00 00 00       	mov    $0xd,%eax
    3fa7:	cd 40                	int    $0x40
    3fa9:	c3                   	ret    

00003faa <uptime>:
SYSCALL(uptime)
    3faa:	b8 0e 00 00 00       	mov    $0xe,%eax
    3faf:	cd 40                	int    $0x40
    3fb1:	c3                   	ret    
    3fb2:	66 90                	xchg   %ax,%ax
    3fb4:	66 90                	xchg   %ax,%ax
    3fb6:	66 90                	xchg   %ax,%ax
    3fb8:	66 90                	xchg   %ax,%ax
    3fba:	66 90                	xchg   %ax,%ax
    3fbc:	66 90                	xchg   %ax,%ax
    3fbe:	66 90                	xchg   %ax,%ax

00003fc0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3fc0:	55                   	push   %ebp
    3fc1:	89 e5                	mov    %esp,%ebp
    3fc3:	57                   	push   %edi
    3fc4:	56                   	push   %esi
    3fc5:	89 c6                	mov    %eax,%esi
    3fc7:	53                   	push   %ebx
    3fc8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    3fcb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3fce:	85 db                	test   %ebx,%ebx
    3fd0:	74 09                	je     3fdb <printint+0x1b>
    3fd2:	89 d0                	mov    %edx,%eax
    3fd4:	c1 e8 1f             	shr    $0x1f,%eax
    3fd7:	84 c0                	test   %al,%al
    3fd9:	75 75                	jne    4050 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    3fdb:	89 d0                	mov    %edx,%eax
  neg = 0;
    3fdd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    3fe4:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
    3fe7:	31 ff                	xor    %edi,%edi
    3fe9:	89 ce                	mov    %ecx,%esi
    3feb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    3fee:	eb 02                	jmp    3ff2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    3ff0:	89 cf                	mov    %ecx,%edi
    3ff2:	31 d2                	xor    %edx,%edx
    3ff4:	f7 f6                	div    %esi
    3ff6:	8d 4f 01             	lea    0x1(%edi),%ecx
    3ff9:	0f b6 92 67 5b 00 00 	movzbl 0x5b67(%edx),%edx
  }while((x /= base) != 0);
    4000:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    4002:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    4005:	75 e9                	jne    3ff0 <printint+0x30>
  if(neg)
    4007:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
    400a:	89 c8                	mov    %ecx,%eax
    400c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
    400f:	85 d2                	test   %edx,%edx
    4011:	74 08                	je     401b <printint+0x5b>
    buf[i++] = '-';
    4013:	8d 4f 02             	lea    0x2(%edi),%ecx
    4016:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    401b:	8d 79 ff             	lea    -0x1(%ecx),%edi
    401e:	66 90                	xchg   %ax,%ax
    4020:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    4025:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    4028:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    402f:	00 
    4030:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    4034:	89 34 24             	mov    %esi,(%esp)
    4037:	88 45 d7             	mov    %al,-0x29(%ebp)
    403a:	e8 f3 fe ff ff       	call   3f32 <write>
  while(--i >= 0)
    403f:	83 ff ff             	cmp    $0xffffffff,%edi
    4042:	75 dc                	jne    4020 <printint+0x60>
    putc(fd, buf[i]);
}
    4044:	83 c4 4c             	add    $0x4c,%esp
    4047:	5b                   	pop    %ebx
    4048:	5e                   	pop    %esi
    4049:	5f                   	pop    %edi
    404a:	5d                   	pop    %ebp
    404b:	c3                   	ret    
    404c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
    4050:	89 d0                	mov    %edx,%eax
    4052:	f7 d8                	neg    %eax
    neg = 1;
    4054:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    405b:	eb 87                	jmp    3fe4 <printint+0x24>
    405d:	8d 76 00             	lea    0x0(%esi),%esi

00004060 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    4060:	55                   	push   %ebp
    4061:	89 e5                	mov    %esp,%ebp
    4063:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    4064:	31 ff                	xor    %edi,%edi
{
    4066:	56                   	push   %esi
    4067:	53                   	push   %ebx
    4068:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    406b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
    406e:	8d 45 10             	lea    0x10(%ebp),%eax
{
    4071:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    4074:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    4077:	0f b6 13             	movzbl (%ebx),%edx
    407a:	83 c3 01             	add    $0x1,%ebx
    407d:	84 d2                	test   %dl,%dl
    407f:	75 39                	jne    40ba <printf+0x5a>
    4081:	e9 c2 00 00 00       	jmp    4148 <printf+0xe8>
    4086:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    4088:	83 fa 25             	cmp    $0x25,%edx
    408b:	0f 84 bf 00 00 00    	je     4150 <printf+0xf0>
  write(fd, &c, 1);
    4091:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    4094:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    409b:	00 
    409c:	89 44 24 04          	mov    %eax,0x4(%esp)
    40a0:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
    40a3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
    40a6:	e8 87 fe ff ff       	call   3f32 <write>
    40ab:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
    40ae:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    40b2:	84 d2                	test   %dl,%dl
    40b4:	0f 84 8e 00 00 00    	je     4148 <printf+0xe8>
    if(state == 0){
    40ba:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    40bc:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    40bf:	74 c7                	je     4088 <printf+0x28>
      }
    } else if(state == '%'){
    40c1:	83 ff 25             	cmp    $0x25,%edi
    40c4:	75 e5                	jne    40ab <printf+0x4b>
      if(c == 'd'){
    40c6:	83 fa 64             	cmp    $0x64,%edx
    40c9:	0f 84 31 01 00 00    	je     4200 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    40cf:	25 f7 00 00 00       	and    $0xf7,%eax
    40d4:	83 f8 70             	cmp    $0x70,%eax
    40d7:	0f 84 83 00 00 00    	je     4160 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    40dd:	83 fa 73             	cmp    $0x73,%edx
    40e0:	0f 84 a2 00 00 00    	je     4188 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    40e6:	83 fa 63             	cmp    $0x63,%edx
    40e9:	0f 84 35 01 00 00    	je     4224 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    40ef:	83 fa 25             	cmp    $0x25,%edx
    40f2:	0f 84 e0 00 00 00    	je     41d8 <printf+0x178>
  write(fd, &c, 1);
    40f8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    40fb:	83 c3 01             	add    $0x1,%ebx
    40fe:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4105:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    4106:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    4108:	89 44 24 04          	mov    %eax,0x4(%esp)
    410c:	89 34 24             	mov    %esi,(%esp)
    410f:	89 55 d0             	mov    %edx,-0x30(%ebp)
    4112:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    4116:	e8 17 fe ff ff       	call   3f32 <write>
        putc(fd, c);
    411b:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
    411e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    4121:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4128:	00 
    4129:	89 44 24 04          	mov    %eax,0x4(%esp)
    412d:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
    4130:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    4133:	e8 fa fd ff ff       	call   3f32 <write>
  for(i = 0; fmt[i]; i++){
    4138:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    413c:	84 d2                	test   %dl,%dl
    413e:	0f 85 76 ff ff ff    	jne    40ba <printf+0x5a>
    4144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
    4148:	83 c4 3c             	add    $0x3c,%esp
    414b:	5b                   	pop    %ebx
    414c:	5e                   	pop    %esi
    414d:	5f                   	pop    %edi
    414e:	5d                   	pop    %ebp
    414f:	c3                   	ret    
        state = '%';
    4150:	bf 25 00 00 00       	mov    $0x25,%edi
    4155:	e9 51 ff ff ff       	jmp    40ab <printf+0x4b>
    415a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    4160:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    4163:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
    4168:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
    416a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4171:	8b 10                	mov    (%eax),%edx
    4173:	89 f0                	mov    %esi,%eax
    4175:	e8 46 fe ff ff       	call   3fc0 <printint>
        ap++;
    417a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    417e:	e9 28 ff ff ff       	jmp    40ab <printf+0x4b>
    4183:	90                   	nop
    4184:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    4188:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    418b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
    418f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
    4191:	b8 60 5b 00 00       	mov    $0x5b60,%eax
    4196:	85 ff                	test   %edi,%edi
    4198:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    419b:	0f b6 07             	movzbl (%edi),%eax
    419e:	84 c0                	test   %al,%al
    41a0:	74 2a                	je     41cc <printf+0x16c>
    41a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    41a8:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    41ab:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
    41ae:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
    41b1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    41b8:	00 
    41b9:	89 44 24 04          	mov    %eax,0x4(%esp)
    41bd:	89 34 24             	mov    %esi,(%esp)
    41c0:	e8 6d fd ff ff       	call   3f32 <write>
        while(*s != 0){
    41c5:	0f b6 07             	movzbl (%edi),%eax
    41c8:	84 c0                	test   %al,%al
    41ca:	75 dc                	jne    41a8 <printf+0x148>
      state = 0;
    41cc:	31 ff                	xor    %edi,%edi
    41ce:	e9 d8 fe ff ff       	jmp    40ab <printf+0x4b>
    41d3:	90                   	nop
    41d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    41d8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
    41db:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    41dd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    41e4:	00 
    41e5:	89 44 24 04          	mov    %eax,0x4(%esp)
    41e9:	89 34 24             	mov    %esi,(%esp)
    41ec:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    41f0:	e8 3d fd ff ff       	call   3f32 <write>
    41f5:	e9 b1 fe ff ff       	jmp    40ab <printf+0x4b>
    41fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    4200:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    4203:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
    4208:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
    420b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    4212:	8b 10                	mov    (%eax),%edx
    4214:	89 f0                	mov    %esi,%eax
    4216:	e8 a5 fd ff ff       	call   3fc0 <printint>
        ap++;
    421b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    421f:	e9 87 fe ff ff       	jmp    40ab <printf+0x4b>
        putc(fd, *ap);
    4224:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
    4227:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
    4229:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    422b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4232:	00 
    4233:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
    4236:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    4239:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    423c:	89 44 24 04          	mov    %eax,0x4(%esp)
    4240:	e8 ed fc ff ff       	call   3f32 <write>
        ap++;
    4245:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    4249:	e9 5d fe ff ff       	jmp    40ab <printf+0x4b>
    424e:	66 90                	xchg   %ax,%ax

00004250 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    4250:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4251:	a1 e0 64 00 00       	mov    0x64e0,%eax
{
    4256:	89 e5                	mov    %esp,%ebp
    4258:	57                   	push   %edi
    4259:	56                   	push   %esi
    425a:	53                   	push   %ebx
    425b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    425e:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
    4260:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4263:	39 d0                	cmp    %edx,%eax
    4265:	72 11                	jb     4278 <free+0x28>
    4267:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4268:	39 c8                	cmp    %ecx,%eax
    426a:	72 04                	jb     4270 <free+0x20>
    426c:	39 ca                	cmp    %ecx,%edx
    426e:	72 10                	jb     4280 <free+0x30>
    4270:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4272:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4274:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4276:	73 f0                	jae    4268 <free+0x18>
    4278:	39 ca                	cmp    %ecx,%edx
    427a:	72 04                	jb     4280 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    427c:	39 c8                	cmp    %ecx,%eax
    427e:	72 f0                	jb     4270 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    4280:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4283:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    4286:	39 cf                	cmp    %ecx,%edi
    4288:	74 1e                	je     42a8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    428a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    428d:	8b 48 04             	mov    0x4(%eax),%ecx
    4290:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    4293:	39 f2                	cmp    %esi,%edx
    4295:	74 28                	je     42bf <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4297:	89 10                	mov    %edx,(%eax)
  freep = p;
    4299:	a3 e0 64 00 00       	mov    %eax,0x64e0
}
    429e:	5b                   	pop    %ebx
    429f:	5e                   	pop    %esi
    42a0:	5f                   	pop    %edi
    42a1:	5d                   	pop    %ebp
    42a2:	c3                   	ret    
    42a3:	90                   	nop
    42a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    42a8:	03 71 04             	add    0x4(%ecx),%esi
    42ab:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    42ae:	8b 08                	mov    (%eax),%ecx
    42b0:	8b 09                	mov    (%ecx),%ecx
    42b2:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    42b5:	8b 48 04             	mov    0x4(%eax),%ecx
    42b8:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    42bb:	39 f2                	cmp    %esi,%edx
    42bd:	75 d8                	jne    4297 <free+0x47>
    p->s.size += bp->s.size;
    42bf:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
    42c2:	a3 e0 64 00 00       	mov    %eax,0x64e0
    p->s.size += bp->s.size;
    42c7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    42ca:	8b 53 f8             	mov    -0x8(%ebx),%edx
    42cd:	89 10                	mov    %edx,(%eax)
}
    42cf:	5b                   	pop    %ebx
    42d0:	5e                   	pop    %esi
    42d1:	5f                   	pop    %edi
    42d2:	5d                   	pop    %ebp
    42d3:	c3                   	ret    
    42d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    42da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000042e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    42e0:	55                   	push   %ebp
    42e1:	89 e5                	mov    %esp,%ebp
    42e3:	57                   	push   %edi
    42e4:	56                   	push   %esi
    42e5:	53                   	push   %ebx
    42e6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    42e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    42ec:	8b 1d e0 64 00 00    	mov    0x64e0,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    42f2:	8d 48 07             	lea    0x7(%eax),%ecx
    42f5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    42f8:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    42fa:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    42fd:	0f 84 9b 00 00 00    	je     439e <malloc+0xbe>
    4303:	8b 13                	mov    (%ebx),%edx
    4305:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4308:	39 fe                	cmp    %edi,%esi
    430a:	76 64                	jbe    4370 <malloc+0x90>
    430c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
    4313:	bb 00 80 00 00       	mov    $0x8000,%ebx
    4318:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    431b:	eb 0e                	jmp    432b <malloc+0x4b>
    431d:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4320:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    4322:	8b 78 04             	mov    0x4(%eax),%edi
    4325:	39 fe                	cmp    %edi,%esi
    4327:	76 4f                	jbe    4378 <malloc+0x98>
    4329:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    432b:	3b 15 e0 64 00 00    	cmp    0x64e0,%edx
    4331:	75 ed                	jne    4320 <malloc+0x40>
  if(nu < 4096)
    4333:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4336:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    433c:	bf 00 10 00 00       	mov    $0x1000,%edi
    4341:	0f 43 fe             	cmovae %esi,%edi
    4344:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
    4347:	89 04 24             	mov    %eax,(%esp)
    434a:	e8 4b fc ff ff       	call   3f9a <sbrk>
  if(p == (char*)-1)
    434f:	83 f8 ff             	cmp    $0xffffffff,%eax
    4352:	74 18                	je     436c <malloc+0x8c>
  hp->s.size = nu;
    4354:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    4357:	83 c0 08             	add    $0x8,%eax
    435a:	89 04 24             	mov    %eax,(%esp)
    435d:	e8 ee fe ff ff       	call   4250 <free>
  return freep;
    4362:	8b 15 e0 64 00 00    	mov    0x64e0,%edx
      if((p = morecore(nunits)) == 0)
    4368:	85 d2                	test   %edx,%edx
    436a:	75 b4                	jne    4320 <malloc+0x40>
        return 0;
    436c:	31 c0                	xor    %eax,%eax
    436e:	eb 20                	jmp    4390 <malloc+0xb0>
    if(p->s.size >= nunits){
    4370:	89 d0                	mov    %edx,%eax
    4372:	89 da                	mov    %ebx,%edx
    4374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    4378:	39 fe                	cmp    %edi,%esi
    437a:	74 1c                	je     4398 <malloc+0xb8>
        p->s.size -= nunits;
    437c:	29 f7                	sub    %esi,%edi
    437e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    4381:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    4384:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    4387:	89 15 e0 64 00 00    	mov    %edx,0x64e0
      return (void*)(p + 1);
    438d:	83 c0 08             	add    $0x8,%eax
  }
}
    4390:	83 c4 1c             	add    $0x1c,%esp
    4393:	5b                   	pop    %ebx
    4394:	5e                   	pop    %esi
    4395:	5f                   	pop    %edi
    4396:	5d                   	pop    %ebp
    4397:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    4398:	8b 08                	mov    (%eax),%ecx
    439a:	89 0a                	mov    %ecx,(%edx)
    439c:	eb e9                	jmp    4387 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
    439e:	c7 05 e0 64 00 00 e4 	movl   $0x64e4,0x64e0
    43a5:	64 00 00 
    base.s.size = 0;
    43a8:	ba e4 64 00 00       	mov    $0x64e4,%edx
    base.s.ptr = freep = prevp = &base;
    43ad:	c7 05 e4 64 00 00 e4 	movl   $0x64e4,0x64e4
    43b4:	64 00 00 
    base.s.size = 0;
    43b7:	c7 05 e8 64 00 00 00 	movl   $0x0,0x64e8
    43be:	00 00 00 
    43c1:	e9 46 ff ff ff       	jmp    430c <malloc+0x2c>
