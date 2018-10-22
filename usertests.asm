
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
       9:	c7 44 24 04 76 54 00 	movl   $0x5476,0x4(%esp)
      10:	00 
      11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      18:	e8 03 41 00 00       	call   4120 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      24:	00 
      25:	c7 04 24 8a 54 00 00 	movl   $0x548a,(%esp)
      2c:	e8 e1 3f 00 00       	call   4012 <open>
      31:	85 c0                	test   %eax,%eax
      33:	78 20                	js     55 <main+0x55>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      35:	c7 44 24 04 f4 5b 00 	movl   $0x5bf4,0x4(%esp)
      3c:	00 
      3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      44:	e8 d7 40 00 00       	call   4120 <printf>
    exit(0);
      49:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      50:	e8 7d 3f 00 00       	call   3fd2 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      55:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
      5c:	00 
      5d:	c7 04 24 8a 54 00 00 	movl   $0x548a,(%esp)
      64:	e8 a9 3f 00 00       	call   4012 <open>
      69:	89 04 24             	mov    %eax,(%esp)
      6c:	e8 89 3f 00 00       	call   3ffa <close>

  argptest();
      71:	e8 8a 3c 00 00       	call   3d00 <argptest>
  createdelete();
      76:	e8 c5 12 00 00       	call   1340 <createdelete>
      7b:	90                   	nop
      7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  linkunlink();
      80:	e8 2b 1d 00 00       	call   1db0 <linkunlink>
  concreate();
      85:	e8 d6 19 00 00       	call   1a60 <concreate>
  fourfiles();
      8a:	e8 61 10 00 00       	call   10f0 <fourfiles>
      8f:	90                   	nop
  sharedfd();
      90:	e8 6b 0e 00 00       	call   f00 <sharedfd>

  bigargtest();
      95:	e8 a6 38 00 00       	call   3940 <bigargtest>
  bigwrite();
      9a:	e8 11 28 00 00       	call   28b0 <bigwrite>
      9f:	90                   	nop
  bigargtest();
      a0:	e8 9b 38 00 00       	call   3940 <bigargtest>
  bsstest();
      a5:	e8 16 38 00 00       	call   38c0 <bsstest>
  sbrktest();
      aa:	e8 21 33 00 00       	call   33d0 <sbrktest>
      af:	90                   	nop
  validatetest();
      b0:	e8 4b 37 00 00       	call   3800 <validatetest>

  opentest();
      b5:	e8 36 03 00 00       	call   3f0 <opentest>
  writetest();
      ba:	e8 e1 03 00 00       	call   4a0 <writetest>
      bf:	90                   	nop
  writetest1();
      c0:	e8 ab 05 00 00       	call   670 <writetest1>
  createtest();
      c5:	e8 96 07 00 00       	call   860 <createtest>

  openiputtest();
      ca:	e8 11 02 00 00       	call   2e0 <openiputtest>
      cf:	90                   	nop
  exitiputtest();
      d0:	e8 2b 01 00 00       	call   200 <exitiputtest>
  iputtest();
      d5:	e8 66 00 00 00       	call   140 <iputtest>

  mem();
      da:	e8 41 0d 00 00       	call   e20 <mem>
      df:	90                   	nop
  pipe1();
      e0:	e8 4b 09 00 00       	call   a30 <pipe1>
  preempt();
      e5:	e8 36 0b 00 00       	call   c20 <preempt>
  exitwait();
      ea:	e8 a1 0c 00 00       	call   d90 <exitwait>
      ef:	90                   	nop

  rmdot();
      f0:	e8 7b 2c 00 00       	call   2d70 <rmdot>
  fourteen();
      f5:	e8 f6 2a 00 00       	call   2bf0 <fourteen>
  bigfile();
      fa:	e8 c1 28 00 00       	call   29c0 <bigfile>
      ff:	90                   	nop
  subdir();
     100:	e8 2b 1f 00 00       	call   2030 <subdir>
  linktest();
     105:	e8 b6 16 00 00       	call   17c0 <linktest>
  unlinkread();
     10a:	e8 b1 14 00 00       	call   15c0 <unlinkread>
     10f:	90                   	nop
  dirfile();
     110:	e8 2b 2e 00 00       	call   2f40 <dirfile>
  iref();
     115:	e8 a6 30 00 00       	call   31c0 <iref>
  forktest();
     11a:	e8 d1 31 00 00       	call   32f0 <forktest>
     11f:	90                   	nop
  bigdir(); // slow
     120:	e8 ab 1d 00 00       	call   1ed0 <bigdir>

  uio();
     125:	e8 36 3b 00 00       	call   3c60 <uio>

  exectest();
     12a:	e8 a1 08 00 00       	call   9d0 <exectest>

  exit(0);
     12f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     136:	e8 97 3e 00 00       	call   3fd2 <exit>
     13b:	66 90                	xchg   %ax,%ax
     13d:	66 90                	xchg   %ax,%ax
     13f:	90                   	nop

00000140 <iputtest>:
{
     140:	55                   	push   %ebp
     141:	89 e5                	mov    %esp,%ebp
     143:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "iput test\n");
     146:	a1 04 65 00 00       	mov    0x6504,%eax
     14b:	c7 44 24 04 1c 45 00 	movl   $0x451c,0x4(%esp)
     152:	00 
     153:	89 04 24             	mov    %eax,(%esp)
     156:	e8 c5 3f 00 00       	call   4120 <printf>
  if(mkdir("iputdir") < 0){
     15b:	c7 04 24 af 44 00 00 	movl   $0x44af,(%esp)
     162:	e8 d3 3e 00 00       	call   403a <mkdir>
     167:	85 c0                	test   %eax,%eax
     169:	78 47                	js     1b2 <iputtest+0x72>
  if(chdir("iputdir") < 0){
     16b:	c7 04 24 af 44 00 00 	movl   $0x44af,(%esp)
     172:	e8 cb 3e 00 00       	call   4042 <chdir>
     177:	85 c0                	test   %eax,%eax
     179:	78 6c                	js     1e7 <iputtest+0xa7>
  if(unlink("../iputdir") < 0){
     17b:	c7 04 24 ac 44 00 00 	movl   $0x44ac,(%esp)
     182:	e8 9b 3e 00 00       	call   4022 <unlink>
     187:	85 c0                	test   %eax,%eax
     189:	78 52                	js     1dd <iputtest+0x9d>
  if(chdir("/") < 0){
     18b:	c7 04 24 d1 44 00 00 	movl   $0x44d1,(%esp)
     192:	e8 ab 3e 00 00       	call   4042 <chdir>
     197:	85 c0                	test   %eax,%eax
     199:	78 38                	js     1d3 <iputtest+0x93>
  printf(stdout, "iput test ok\n");
     19b:	a1 04 65 00 00       	mov    0x6504,%eax
     1a0:	c7 44 24 04 54 45 00 	movl   $0x4554,0x4(%esp)
     1a7:	00 
     1a8:	89 04 24             	mov    %eax,(%esp)
     1ab:	e8 70 3f 00 00       	call   4120 <printf>
}
     1b0:	c9                   	leave  
     1b1:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1b2:	c7 44 24 04 88 44 00 	movl   $0x4488,0x4(%esp)
     1b9:	00 
    printf(stdout, "chdir iputdir failed\n");
     1ba:	a1 04 65 00 00       	mov    0x6504,%eax
     1bf:	89 04 24             	mov    %eax,(%esp)
     1c2:	e8 59 3f 00 00       	call   4120 <printf>
    exit(-1);
     1c7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     1ce:	e8 ff 3d 00 00       	call   3fd2 <exit>
    printf(stdout, "chdir / failed\n");
     1d3:	c7 44 24 04 d3 44 00 	movl   $0x44d3,0x4(%esp)
     1da:	00 
     1db:	eb dd                	jmp    1ba <iputtest+0x7a>
    printf(stdout, "unlink ../iputdir failed\n");
     1dd:	c7 44 24 04 b7 44 00 	movl   $0x44b7,0x4(%esp)
     1e4:	00 
     1e5:	eb d3                	jmp    1ba <iputtest+0x7a>
    printf(stdout, "chdir iputdir failed\n");
     1e7:	c7 44 24 04 96 44 00 	movl   $0x4496,0x4(%esp)
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
     206:	a1 04 65 00 00       	mov    0x6504,%eax
     20b:	c7 44 24 04 e3 44 00 	movl   $0x44e3,0x4(%esp)
     212:	00 
     213:	89 04 24             	mov    %eax,(%esp)
     216:	e8 05 3f 00 00       	call   4120 <printf>
  pid = fork();
     21b:	e8 aa 3d 00 00       	call   3fca <fork>
  if(pid < 0){
     220:	85 c0                	test   %eax,%eax
     222:	0f 88 91 00 00 00    	js     2b9 <exitiputtest+0xb9>
  if(pid == 0){
     228:	75 46                	jne    270 <exitiputtest+0x70>
    if(mkdir("iputdir") < 0){
     22a:	c7 04 24 af 44 00 00 	movl   $0x44af,(%esp)
     231:	e8 04 3e 00 00       	call   403a <mkdir>
     236:	85 c0                	test   %eax,%eax
     238:	0f 88 8f 00 00 00    	js     2cd <exitiputtest+0xcd>
    if(chdir("iputdir") < 0){
     23e:	c7 04 24 af 44 00 00 	movl   $0x44af,(%esp)
     245:	e8 f8 3d 00 00       	call   4042 <chdir>
     24a:	85 c0                	test   %eax,%eax
     24c:	78 75                	js     2c3 <exitiputtest+0xc3>
    if(unlink("../iputdir") < 0){
     24e:	c7 04 24 ac 44 00 00 	movl   $0x44ac,(%esp)
     255:	e8 c8 3d 00 00       	call   4022 <unlink>
     25a:	85 c0                	test   %eax,%eax
     25c:	78 3a                	js     298 <exitiputtest+0x98>
    exit(0);
     25e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     265:	e8 68 3d 00 00       	call   3fd2 <exit>
     26a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  wait(0);
     270:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     277:	e8 5e 3d 00 00       	call   3fda <wait>
  printf(stdout, "exitiput test ok\n");
     27c:	a1 04 65 00 00       	mov    0x6504,%eax
     281:	c7 44 24 04 06 45 00 	movl   $0x4506,0x4(%esp)
     288:	00 
     289:	89 04 24             	mov    %eax,(%esp)
     28c:	e8 8f 3e 00 00       	call   4120 <printf>
}
     291:	c9                   	leave  
     292:	c3                   	ret    
     293:	90                   	nop
     294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     298:	c7 44 24 04 b7 44 00 	movl   $0x44b7,0x4(%esp)
     29f:	00 
      printf(stdout, "mkdir failed\n");
     2a0:	a1 04 65 00 00       	mov    0x6504,%eax
     2a5:	89 04 24             	mov    %eax,(%esp)
     2a8:	e8 73 3e 00 00       	call   4120 <printf>
      exit(-1);
     2ad:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     2b4:	e8 19 3d 00 00       	call   3fd2 <exit>
    printf(stdout, "fork failed\n");
     2b9:	c7 44 24 04 c9 53 00 	movl   $0x53c9,0x4(%esp)
     2c0:	00 
     2c1:	eb dd                	jmp    2a0 <exitiputtest+0xa0>
      printf(stdout, "child chdir failed\n");
     2c3:	c7 44 24 04 f2 44 00 	movl   $0x44f2,0x4(%esp)
     2ca:	00 
     2cb:	eb d3                	jmp    2a0 <exitiputtest+0xa0>
      printf(stdout, "mkdir failed\n");
     2cd:	c7 44 24 04 88 44 00 	movl   $0x4488,0x4(%esp)
     2d4:	00 
     2d5:	eb c9                	jmp    2a0 <exitiputtest+0xa0>
     2d7:	89 f6                	mov    %esi,%esi
     2d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002e0 <openiputtest>:
{
     2e0:	55                   	push   %ebp
     2e1:	89 e5                	mov    %esp,%ebp
     2e3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "openiput test\n");
     2e6:	a1 04 65 00 00       	mov    0x6504,%eax
     2eb:	c7 44 24 04 18 45 00 	movl   $0x4518,0x4(%esp)
     2f2:	00 
     2f3:	89 04 24             	mov    %eax,(%esp)
     2f6:	e8 25 3e 00 00       	call   4120 <printf>
  if(mkdir("oidir") < 0){
     2fb:	c7 04 24 27 45 00 00 	movl   $0x4527,(%esp)
     302:	e8 33 3d 00 00       	call   403a <mkdir>
     307:	85 c0                	test   %eax,%eax
     309:	0f 88 9d 00 00 00    	js     3ac <openiputtest+0xcc>
  pid = fork();
     30f:	e8 b6 3c 00 00       	call   3fca <fork>
  if(pid < 0){
     314:	85 c0                	test   %eax,%eax
     316:	0f 88 b1 00 00 00    	js     3cd <openiputtest+0xed>
     31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(pid == 0){
     320:	75 3e                	jne    360 <openiputtest+0x80>
    int fd = open("oidir", O_RDWR);
     322:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     329:	00 
     32a:	c7 04 24 27 45 00 00 	movl   $0x4527,(%esp)
     331:	e8 dc 3c 00 00       	call   4012 <open>
    if(fd >= 0){
     336:	85 c0                	test   %eax,%eax
     338:	78 66                	js     3a0 <openiputtest+0xc0>
      printf(stdout, "open directory for write succeeded\n");
     33a:	a1 04 65 00 00       	mov    0x6504,%eax
     33f:	c7 44 24 04 ac 54 00 	movl   $0x54ac,0x4(%esp)
     346:	00 
     347:	89 04 24             	mov    %eax,(%esp)
     34a:	e8 d1 3d 00 00       	call   4120 <printf>
      exit(0);
     34f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     356:	e8 77 3c 00 00       	call   3fd2 <exit>
     35b:	90                   	nop
     35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  sleep(1);
     360:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     367:	e8 f6 3c 00 00       	call   4062 <sleep>
  if(unlink("oidir") != 0){
     36c:	c7 04 24 27 45 00 00 	movl   $0x4527,(%esp)
     373:	e8 aa 3c 00 00       	call   4022 <unlink>
     378:	85 c0                	test   %eax,%eax
     37a:	75 5b                	jne    3d7 <openiputtest+0xf7>
  wait(0);
     37c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     383:	e8 52 3c 00 00       	call   3fda <wait>
  printf(stdout, "openiput test ok\n");
     388:	a1 04 65 00 00       	mov    0x6504,%eax
     38d:	c7 44 24 04 50 45 00 	movl   $0x4550,0x4(%esp)
     394:	00 
     395:	89 04 24             	mov    %eax,(%esp)
     398:	e8 83 3d 00 00       	call   4120 <printf>
}
     39d:	c9                   	leave  
     39e:	c3                   	ret    
     39f:	90                   	nop
    exit(0);
     3a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3a7:	e8 26 3c 00 00       	call   3fd2 <exit>
    printf(stdout, "mkdir oidir failed\n");
     3ac:	c7 44 24 04 2d 45 00 	movl   $0x452d,0x4(%esp)
     3b3:	00 
    printf(stdout, "fork failed\n");
     3b4:	a1 04 65 00 00       	mov    0x6504,%eax
     3b9:	89 04 24             	mov    %eax,(%esp)
     3bc:	e8 5f 3d 00 00       	call   4120 <printf>
    exit(-1);
     3c1:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     3c8:	e8 05 3c 00 00       	call   3fd2 <exit>
    printf(stdout, "fork failed\n");
     3cd:	c7 44 24 04 c9 53 00 	movl   $0x53c9,0x4(%esp)
     3d4:	00 
     3d5:	eb dd                	jmp    3b4 <openiputtest+0xd4>
    printf(stdout, "unlink failed\n");
     3d7:	c7 44 24 04 41 45 00 	movl   $0x4541,0x4(%esp)
     3de:	00 
     3df:	eb d3                	jmp    3b4 <openiputtest+0xd4>
     3e1:	eb 0d                	jmp    3f0 <opentest>
     3e3:	90                   	nop
     3e4:	90                   	nop
     3e5:	90                   	nop
     3e6:	90                   	nop
     3e7:	90                   	nop
     3e8:	90                   	nop
     3e9:	90                   	nop
     3ea:	90                   	nop
     3eb:	90                   	nop
     3ec:	90                   	nop
     3ed:	90                   	nop
     3ee:	90                   	nop
     3ef:	90                   	nop

000003f0 <opentest>:
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "open test\n");
     3f6:	a1 04 65 00 00       	mov    0x6504,%eax
     3fb:	c7 44 24 04 62 45 00 	movl   $0x4562,0x4(%esp)
     402:	00 
     403:	89 04 24             	mov    %eax,(%esp)
     406:	e8 15 3d 00 00       	call   4120 <printf>
  fd = open("echo", 0);
     40b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     412:	00 
     413:	c7 04 24 6d 45 00 00 	movl   $0x456d,(%esp)
     41a:	e8 f3 3b 00 00       	call   4012 <open>
  if(fd < 0){
     41f:	85 c0                	test   %eax,%eax
     421:	78 37                	js     45a <opentest+0x6a>
  close(fd);
     423:	89 04 24             	mov    %eax,(%esp)
     426:	e8 cf 3b 00 00       	call   3ffa <close>
  fd = open("doesnotexist", 0);
     42b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     432:	00 
     433:	c7 04 24 85 45 00 00 	movl   $0x4585,(%esp)
     43a:	e8 d3 3b 00 00       	call   4012 <open>
  if(fd >= 0){
     43f:	85 c0                	test   %eax,%eax
     441:	79 38                	jns    47b <opentest+0x8b>
  printf(stdout, "open test ok\n");
     443:	a1 04 65 00 00       	mov    0x6504,%eax
     448:	c7 44 24 04 b0 45 00 	movl   $0x45b0,0x4(%esp)
     44f:	00 
     450:	89 04 24             	mov    %eax,(%esp)
     453:	e8 c8 3c 00 00       	call   4120 <printf>
}
     458:	c9                   	leave  
     459:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     45a:	a1 04 65 00 00       	mov    0x6504,%eax
     45f:	c7 44 24 04 72 45 00 	movl   $0x4572,0x4(%esp)
     466:	00 
     467:	89 04 24             	mov    %eax,(%esp)
     46a:	e8 b1 3c 00 00       	call   4120 <printf>
    exit(-1);
     46f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     476:	e8 57 3b 00 00       	call   3fd2 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     47b:	a1 04 65 00 00       	mov    0x6504,%eax
     480:	c7 44 24 04 92 45 00 	movl   $0x4592,0x4(%esp)
     487:	00 
     488:	89 04 24             	mov    %eax,(%esp)
     48b:	e8 90 3c 00 00       	call   4120 <printf>
    exit(0);
     490:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     497:	e8 36 3b 00 00       	call   3fd2 <exit>
     49c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004a0 <writetest>:
{
     4a0:	55                   	push   %ebp
     4a1:	89 e5                	mov    %esp,%ebp
     4a3:	56                   	push   %esi
     4a4:	53                   	push   %ebx
     4a5:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "small file test\n");
     4a8:	a1 04 65 00 00       	mov    0x6504,%eax
     4ad:	c7 44 24 04 be 45 00 	movl   $0x45be,0x4(%esp)
     4b4:	00 
     4b5:	89 04 24             	mov    %eax,(%esp)
     4b8:	e8 63 3c 00 00       	call   4120 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4bd:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     4c4:	00 
     4c5:	c7 04 24 cf 45 00 00 	movl   $0x45cf,(%esp)
     4cc:	e8 41 3b 00 00       	call   4012 <open>
  if(fd >= 0){
     4d1:	85 c0                	test   %eax,%eax
  fd = open("small", O_CREATE|O_RDWR);
     4d3:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     4d5:	0f 88 8b 01 00 00    	js     666 <writetest+0x1c6>
    printf(stdout, "creat small succeeded; ok\n");
     4db:	a1 04 65 00 00       	mov    0x6504,%eax
  for(i = 0; i < 100; i++){
     4e0:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4e2:	c7 44 24 04 d5 45 00 	movl   $0x45d5,0x4(%esp)
     4e9:	00 
     4ea:	89 04 24             	mov    %eax,(%esp)
     4ed:	e8 2e 3c 00 00       	call   4120 <printf>
     4f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4f8:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     4ff:	00 
     500:	c7 44 24 04 0c 46 00 	movl   $0x460c,0x4(%esp)
     507:	00 
     508:	89 34 24             	mov    %esi,(%esp)
     50b:	e8 e2 3a 00 00       	call   3ff2 <write>
     510:	83 f8 0a             	cmp    $0xa,%eax
     513:	0f 85 e5 00 00 00    	jne    5fe <writetest+0x15e>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     519:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     520:	00 
     521:	c7 44 24 04 17 46 00 	movl   $0x4617,0x4(%esp)
     528:	00 
     529:	89 34 24             	mov    %esi,(%esp)
     52c:	e8 c1 3a 00 00       	call   3ff2 <write>
     531:	83 f8 0a             	cmp    $0xa,%eax
     534:	0f 85 e9 00 00 00    	jne    623 <writetest+0x183>
  for(i = 0; i < 100; i++){
     53a:	83 c3 01             	add    $0x1,%ebx
     53d:	83 fb 64             	cmp    $0x64,%ebx
     540:	75 b6                	jne    4f8 <writetest+0x58>
  printf(stdout, "writes ok\n");
     542:	a1 04 65 00 00       	mov    0x6504,%eax
     547:	c7 44 24 04 22 46 00 	movl   $0x4622,0x4(%esp)
     54e:	00 
     54f:	89 04 24             	mov    %eax,(%esp)
     552:	e8 c9 3b 00 00       	call   4120 <printf>
  close(fd);
     557:	89 34 24             	mov    %esi,(%esp)
     55a:	e8 9b 3a 00 00       	call   3ffa <close>
  fd = open("small", O_RDONLY);
     55f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     566:	00 
     567:	c7 04 24 cf 45 00 00 	movl   $0x45cf,(%esp)
     56e:	e8 9f 3a 00 00       	call   4012 <open>
  if(fd >= 0){
     573:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     575:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     577:	0f 88 b4 00 00 00    	js     631 <writetest+0x191>
    printf(stdout, "open small succeeded ok\n");
     57d:	a1 04 65 00 00       	mov    0x6504,%eax
     582:	c7 44 24 04 2d 46 00 	movl   $0x462d,0x4(%esp)
     589:	00 
     58a:	89 04 24             	mov    %eax,(%esp)
     58d:	e8 8e 3b 00 00       	call   4120 <printf>
  i = read(fd, buf, 2000);
     592:	c7 44 24 08 d0 07 00 	movl   $0x7d0,0x8(%esp)
     599:	00 
     59a:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
     5a1:	00 
     5a2:	89 1c 24             	mov    %ebx,(%esp)
     5a5:	e8 40 3a 00 00       	call   3fea <read>
  if(i == 2000){
     5aa:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     5af:	0f 85 9d 00 00 00    	jne    652 <writetest+0x1b2>
    printf(stdout, "read succeeded ok\n");
     5b5:	a1 04 65 00 00       	mov    0x6504,%eax
     5ba:	c7 44 24 04 61 46 00 	movl   $0x4661,0x4(%esp)
     5c1:	00 
     5c2:	89 04 24             	mov    %eax,(%esp)
     5c5:	e8 56 3b 00 00       	call   4120 <printf>
  close(fd);
     5ca:	89 1c 24             	mov    %ebx,(%esp)
     5cd:	e8 28 3a 00 00       	call   3ffa <close>
  if(unlink("small") < 0){
     5d2:	c7 04 24 cf 45 00 00 	movl   $0x45cf,(%esp)
     5d9:	e8 44 3a 00 00       	call   4022 <unlink>
     5de:	85 c0                	test   %eax,%eax
     5e0:	78 7a                	js     65c <writetest+0x1bc>
  printf(stdout, "small file test ok\n");
     5e2:	a1 04 65 00 00       	mov    0x6504,%eax
     5e7:	c7 44 24 04 89 46 00 	movl   $0x4689,0x4(%esp)
     5ee:	00 
     5ef:	89 04 24             	mov    %eax,(%esp)
     5f2:	e8 29 3b 00 00       	call   4120 <printf>
}
     5f7:	83 c4 10             	add    $0x10,%esp
     5fa:	5b                   	pop    %ebx
     5fb:	5e                   	pop    %esi
     5fc:	5d                   	pop    %ebp
     5fd:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     5fe:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     602:	c7 44 24 04 d0 54 00 	movl   $0x54d0,0x4(%esp)
     609:	00 
      printf(stdout, "error: write bb %d new file failed\n", i);
     60a:	a1 04 65 00 00       	mov    0x6504,%eax
     60f:	89 04 24             	mov    %eax,(%esp)
     612:	e8 09 3b 00 00       	call   4120 <printf>
      exit(-1);
     617:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     61e:	e8 af 39 00 00       	call   3fd2 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     623:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     627:	c7 44 24 04 f4 54 00 	movl   $0x54f4,0x4(%esp)
     62e:	00 
     62f:	eb d9                	jmp    60a <writetest+0x16a>
    printf(stdout, "error: open small failed!\n");
     631:	c7 44 24 04 46 46 00 	movl   $0x4646,0x4(%esp)
     638:	00 
     639:	a1 04 65 00 00       	mov    0x6504,%eax
     63e:	89 04 24             	mov    %eax,(%esp)
     641:	e8 da 3a 00 00       	call   4120 <printf>
    exit(-1);
     646:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     64d:	e8 80 39 00 00       	call   3fd2 <exit>
    printf(stdout, "read failed\n");
     652:	c7 44 24 04 8d 49 00 	movl   $0x498d,0x4(%esp)
     659:	00 
     65a:	eb dd                	jmp    639 <writetest+0x199>
    printf(stdout, "unlink small failed\n");
     65c:	c7 44 24 04 74 46 00 	movl   $0x4674,0x4(%esp)
     663:	00 
     664:	eb d3                	jmp    639 <writetest+0x199>
    printf(stdout, "error: creat small failed!\n");
     666:	c7 44 24 04 f0 45 00 	movl   $0x45f0,0x4(%esp)
     66d:	00 
     66e:	eb c9                	jmp    639 <writetest+0x199>

00000670 <writetest1>:
{
     670:	55                   	push   %ebp
     671:	89 e5                	mov    %esp,%ebp
     673:	56                   	push   %esi
     674:	53                   	push   %ebx
     675:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "big files test\n");
     678:	a1 04 65 00 00       	mov    0x6504,%eax
     67d:	c7 44 24 04 9d 46 00 	movl   $0x469d,0x4(%esp)
     684:	00 
     685:	89 04 24             	mov    %eax,(%esp)
     688:	e8 93 3a 00 00       	call   4120 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     68d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     694:	00 
     695:	c7 04 24 17 47 00 00 	movl   $0x4717,(%esp)
     69c:	e8 71 39 00 00       	call   4012 <open>
  if(fd < 0){
     6a1:	85 c0                	test   %eax,%eax
  fd = open("big", O_CREATE|O_RDWR);
     6a3:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     6a5:	0f 88 86 01 00 00    	js     831 <writetest1+0x1c1>
     6ab:	31 db                	xor    %ebx,%ebx
     6ad:	8d 76 00             	lea    0x0(%esi),%esi
    if(write(fd, buf, 512) != 512){
     6b0:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     6b7:	00 
     6b8:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
     6bf:	00 
     6c0:	89 34 24             	mov    %esi,(%esp)
    ((int*)buf)[0] = i;
     6c3:	89 1d e0 8c 00 00    	mov    %ebx,0x8ce0
    if(write(fd, buf, 512) != 512){
     6c9:	e8 24 39 00 00       	call   3ff2 <write>
     6ce:	3d 00 02 00 00       	cmp    $0x200,%eax
     6d3:	0f 85 b2 00 00 00    	jne    78b <writetest1+0x11b>
  for(i = 0; i < MAXFILE; i++){
     6d9:	83 c3 01             	add    $0x1,%ebx
     6dc:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6e2:	75 cc                	jne    6b0 <writetest1+0x40>
  close(fd);
     6e4:	89 34 24             	mov    %esi,(%esp)
     6e7:	e8 0e 39 00 00       	call   3ffa <close>
  fd = open("big", O_RDONLY);
     6ec:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     6f3:	00 
     6f4:	c7 04 24 17 47 00 00 	movl   $0x4717,(%esp)
     6fb:	e8 12 39 00 00       	call   4012 <open>
  if(fd < 0){
     700:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     702:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     704:	0f 88 06 01 00 00    	js     810 <writetest1+0x1a0>
     70a:	31 db                	xor    %ebx,%ebx
     70c:	eb 1d                	jmp    72b <writetest1+0xbb>
     70e:	66 90                	xchg   %ax,%ax
    } else if(i != 512){
     710:	3d 00 02 00 00       	cmp    $0x200,%eax
     715:	0f 85 be 00 00 00    	jne    7d9 <writetest1+0x169>
    if(((int*)buf)[0] != n){
     71b:	a1 e0 8c 00 00       	mov    0x8ce0,%eax
     720:	39 d8                	cmp    %ebx,%eax
     722:	0f 85 88 00 00 00    	jne    7b0 <writetest1+0x140>
    n++;
     728:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     72b:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     732:	00 
     733:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
     73a:	00 
     73b:	89 34 24             	mov    %esi,(%esp)
     73e:	e8 a7 38 00 00       	call   3fea <read>
    if(i == 0){
     743:	85 c0                	test   %eax,%eax
     745:	75 c9                	jne    710 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     747:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     74d:	0f 84 94 00 00 00    	je     7e7 <writetest1+0x177>
  close(fd);
     753:	89 34 24             	mov    %esi,(%esp)
     756:	e8 9f 38 00 00       	call   3ffa <close>
  if(unlink("big") < 0){
     75b:	c7 04 24 17 47 00 00 	movl   $0x4717,(%esp)
     762:	e8 bb 38 00 00       	call   4022 <unlink>
     767:	85 c0                	test   %eax,%eax
     769:	0f 88 cc 00 00 00    	js     83b <writetest1+0x1cb>
  printf(stdout, "big files ok\n");
     76f:	a1 04 65 00 00       	mov    0x6504,%eax
     774:	c7 44 24 04 3e 47 00 	movl   $0x473e,0x4(%esp)
     77b:	00 
     77c:	89 04 24             	mov    %eax,(%esp)
     77f:	e8 9c 39 00 00       	call   4120 <printf>
}
     784:	83 c4 10             	add    $0x10,%esp
     787:	5b                   	pop    %ebx
     788:	5e                   	pop    %esi
     789:	5d                   	pop    %ebp
     78a:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     78b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     78f:	c7 44 24 04 c7 46 00 	movl   $0x46c7,0x4(%esp)
     796:	00 
      printf(stdout, "read failed %d\n", i);
     797:	a1 04 65 00 00       	mov    0x6504,%eax
     79c:	89 04 24             	mov    %eax,(%esp)
     79f:	e8 7c 39 00 00       	call   4120 <printf>
      exit(-1);
     7a4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     7ab:	e8 22 38 00 00       	call   3fd2 <exit>
      printf(stdout, "read content of block %d is %d\n",
     7b0:	89 44 24 0c          	mov    %eax,0xc(%esp)
     7b4:	a1 04 65 00 00       	mov    0x6504,%eax
     7b9:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     7bd:	c7 44 24 04 18 55 00 	movl   $0x5518,0x4(%esp)
     7c4:	00 
     7c5:	89 04 24             	mov    %eax,(%esp)
     7c8:	e8 53 39 00 00       	call   4120 <printf>
      exit(0);
     7cd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7d4:	e8 f9 37 00 00       	call   3fd2 <exit>
      printf(stdout, "read failed %d\n", i);
     7d9:	89 44 24 08          	mov    %eax,0x8(%esp)
     7dd:	c7 44 24 04 1b 47 00 	movl   $0x471b,0x4(%esp)
     7e4:	00 
     7e5:	eb b0                	jmp    797 <writetest1+0x127>
        printf(stdout, "read only %d blocks from big", n);
     7e7:	a1 04 65 00 00       	mov    0x6504,%eax
     7ec:	c7 44 24 08 8b 00 00 	movl   $0x8b,0x8(%esp)
     7f3:	00 
     7f4:	c7 44 24 04 fe 46 00 	movl   $0x46fe,0x4(%esp)
     7fb:	00 
     7fc:	89 04 24             	mov    %eax,(%esp)
     7ff:	e8 1c 39 00 00       	call   4120 <printf>
        exit(0);
     804:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     80b:	e8 c2 37 00 00       	call   3fd2 <exit>
    printf(stdout, "error: open big failed!\n");
     810:	c7 44 24 04 e5 46 00 	movl   $0x46e5,0x4(%esp)
     817:	00 
     818:	a1 04 65 00 00       	mov    0x6504,%eax
     81d:	89 04 24             	mov    %eax,(%esp)
     820:	e8 fb 38 00 00       	call   4120 <printf>
    exit(-1);
     825:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     82c:	e8 a1 37 00 00       	call   3fd2 <exit>
    printf(stdout, "error: creat big failed!\n");
     831:	c7 44 24 04 ad 46 00 	movl   $0x46ad,0x4(%esp)
     838:	00 
     839:	eb dd                	jmp    818 <writetest1+0x1a8>
    printf(stdout, "unlink big failed\n");
     83b:	a1 04 65 00 00       	mov    0x6504,%eax
     840:	c7 44 24 04 2b 47 00 	movl   $0x472b,0x4(%esp)
     847:	00 
     848:	89 04 24             	mov    %eax,(%esp)
     84b:	e8 d0 38 00 00       	call   4120 <printf>
    exit(0);
     850:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     857:	e8 76 37 00 00       	call   3fd2 <exit>
     85c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000860 <createtest>:
{
     860:	55                   	push   %ebp
     861:	89 e5                	mov    %esp,%ebp
     863:	53                   	push   %ebx
  name[2] = '\0';
     864:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     869:	83 ec 14             	sub    $0x14,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     86c:	a1 04 65 00 00       	mov    0x6504,%eax
     871:	c7 44 24 04 38 55 00 	movl   $0x5538,0x4(%esp)
     878:	00 
     879:	89 04 24             	mov    %eax,(%esp)
     87c:	e8 9f 38 00 00       	call   4120 <printf>
  name[0] = 'a';
     881:	c6 05 e0 ac 00 00 61 	movb   $0x61,0xace0
  name[2] = '\0';
     888:	c6 05 e2 ac 00 00 00 	movb   $0x0,0xace2
     88f:	90                   	nop
    fd = open(name, O_CREATE|O_RDWR);
     890:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     897:	00 
     898:	c7 04 24 e0 ac 00 00 	movl   $0xace0,(%esp)
    name[1] = '0' + i;
     89f:	88 1d e1 ac 00 00    	mov    %bl,0xace1
     8a5:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     8a8:	e8 65 37 00 00       	call   4012 <open>
    close(fd);
     8ad:	89 04 24             	mov    %eax,(%esp)
     8b0:	e8 45 37 00 00       	call   3ffa <close>
  for(i = 0; i < 52; i++){
     8b5:	80 fb 64             	cmp    $0x64,%bl
     8b8:	75 d6                	jne    890 <createtest+0x30>
  name[0] = 'a';
     8ba:	c6 05 e0 ac 00 00 61 	movb   $0x61,0xace0
  name[2] = '\0';
     8c1:	bb 30 00 00 00       	mov    $0x30,%ebx
     8c6:	c6 05 e2 ac 00 00 00 	movb   $0x0,0xace2
     8cd:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + i;
     8d0:	88 1d e1 ac 00 00    	mov    %bl,0xace1
     8d6:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8d9:	c7 04 24 e0 ac 00 00 	movl   $0xace0,(%esp)
     8e0:	e8 3d 37 00 00       	call   4022 <unlink>
  for(i = 0; i < 52; i++){
     8e5:	80 fb 64             	cmp    $0x64,%bl
     8e8:	75 e6                	jne    8d0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8ea:	a1 04 65 00 00       	mov    0x6504,%eax
     8ef:	c7 44 24 04 60 55 00 	movl   $0x5560,0x4(%esp)
     8f6:	00 
     8f7:	89 04 24             	mov    %eax,(%esp)
     8fa:	e8 21 38 00 00       	call   4120 <printf>
}
     8ff:	83 c4 14             	add    $0x14,%esp
     902:	5b                   	pop    %ebx
     903:	5d                   	pop    %ebp
     904:	c3                   	ret    
     905:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000910 <dirtest>:
{
     910:	55                   	push   %ebp
     911:	89 e5                	mov    %esp,%ebp
     913:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "mkdir test\n");
     916:	a1 04 65 00 00       	mov    0x6504,%eax
     91b:	c7 44 24 04 4c 47 00 	movl   $0x474c,0x4(%esp)
     922:	00 
     923:	89 04 24             	mov    %eax,(%esp)
     926:	e8 f5 37 00 00       	call   4120 <printf>
  if(mkdir("dir0") < 0){
     92b:	c7 04 24 58 47 00 00 	movl   $0x4758,(%esp)
     932:	e8 03 37 00 00       	call   403a <mkdir>
     937:	85 c0                	test   %eax,%eax
     939:	78 47                	js     982 <dirtest+0x72>
  if(chdir("dir0") < 0){
     93b:	c7 04 24 58 47 00 00 	movl   $0x4758,(%esp)
     942:	e8 fb 36 00 00       	call   4042 <chdir>
     947:	85 c0                	test   %eax,%eax
     949:	78 6c                	js     9b7 <dirtest+0xa7>
  if(chdir("..") < 0){
     94b:	c7 04 24 fd 4c 00 00 	movl   $0x4cfd,(%esp)
     952:	e8 eb 36 00 00       	call   4042 <chdir>
     957:	85 c0                	test   %eax,%eax
     959:	78 52                	js     9ad <dirtest+0x9d>
  if(unlink("dir0") < 0){
     95b:	c7 04 24 58 47 00 00 	movl   $0x4758,(%esp)
     962:	e8 bb 36 00 00       	call   4022 <unlink>
     967:	85 c0                	test   %eax,%eax
     969:	78 38                	js     9a3 <dirtest+0x93>
  printf(stdout, "mkdir test ok\n");
     96b:	a1 04 65 00 00       	mov    0x6504,%eax
     970:	c7 44 24 04 95 47 00 	movl   $0x4795,0x4(%esp)
     977:	00 
     978:	89 04 24             	mov    %eax,(%esp)
     97b:	e8 a0 37 00 00       	call   4120 <printf>
}
     980:	c9                   	leave  
     981:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     982:	c7 44 24 04 88 44 00 	movl   $0x4488,0x4(%esp)
     989:	00 
    printf(stdout, "chdir dir0 failed\n");
     98a:	a1 04 65 00 00       	mov    0x6504,%eax
     98f:	89 04 24             	mov    %eax,(%esp)
     992:	e8 89 37 00 00       	call   4120 <printf>
    exit(-1);
     997:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     99e:	e8 2f 36 00 00       	call   3fd2 <exit>
    printf(stdout, "unlink dir0 failed\n");
     9a3:	c7 44 24 04 81 47 00 	movl   $0x4781,0x4(%esp)
     9aa:	00 
     9ab:	eb dd                	jmp    98a <dirtest+0x7a>
    printf(stdout, "chdir .. failed\n");
     9ad:	c7 44 24 04 70 47 00 	movl   $0x4770,0x4(%esp)
     9b4:	00 
     9b5:	eb d3                	jmp    98a <dirtest+0x7a>
    printf(stdout, "chdir dir0 failed\n");
     9b7:	c7 44 24 04 5d 47 00 	movl   $0x475d,0x4(%esp)
     9be:	00 
     9bf:	eb c9                	jmp    98a <dirtest+0x7a>
     9c1:	eb 0d                	jmp    9d0 <exectest>
     9c3:	90                   	nop
     9c4:	90                   	nop
     9c5:	90                   	nop
     9c6:	90                   	nop
     9c7:	90                   	nop
     9c8:	90                   	nop
     9c9:	90                   	nop
     9ca:	90                   	nop
     9cb:	90                   	nop
     9cc:	90                   	nop
     9cd:	90                   	nop
     9ce:	90                   	nop
     9cf:	90                   	nop

000009d0 <exectest>:
{
     9d0:	55                   	push   %ebp
     9d1:	89 e5                	mov    %esp,%ebp
     9d3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exec test\n");
     9d6:	a1 04 65 00 00       	mov    0x6504,%eax
     9db:	c7 44 24 04 a4 47 00 	movl   $0x47a4,0x4(%esp)
     9e2:	00 
     9e3:	89 04 24             	mov    %eax,(%esp)
     9e6:	e8 35 37 00 00       	call   4120 <printf>
  if(exec("echo", echoargv) < 0){
     9eb:	c7 44 24 04 08 65 00 	movl   $0x6508,0x4(%esp)
     9f2:	00 
     9f3:	c7 04 24 6d 45 00 00 	movl   $0x456d,(%esp)
     9fa:	e8 0b 36 00 00       	call   400a <exec>
     9ff:	85 c0                	test   %eax,%eax
     a01:	78 02                	js     a05 <exectest+0x35>
}
     a03:	c9                   	leave  
     a04:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     a05:	a1 04 65 00 00       	mov    0x6504,%eax
     a0a:	c7 44 24 04 af 47 00 	movl   $0x47af,0x4(%esp)
     a11:	00 
     a12:	89 04 24             	mov    %eax,(%esp)
     a15:	e8 06 37 00 00       	call   4120 <printf>
    exit(0);
     a1a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     a21:	e8 ac 35 00 00       	call   3fd2 <exit>
     a26:	8d 76 00             	lea    0x0(%esi),%esi
     a29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a30 <pipe1>:
{
     a30:	55                   	push   %ebp
     a31:	89 e5                	mov    %esp,%ebp
     a33:	57                   	push   %edi
     a34:	56                   	push   %esi
     a35:	53                   	push   %ebx
     a36:	83 ec 2c             	sub    $0x2c,%esp
  if(pipe(fds) != 0){
     a39:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a3c:	89 04 24             	mov    %eax,(%esp)
     a3f:	e8 9e 35 00 00       	call   3fe2 <pipe>
     a44:	85 c0                	test   %eax,%eax
     a46:	0f 85 66 01 00 00    	jne    bb2 <pipe1+0x182>
  pid = fork();
     a4c:	e8 79 35 00 00       	call   3fca <fork>
  if(pid == 0){
     a51:	83 f8 00             	cmp    $0x0,%eax
     a54:	0f 84 93 00 00 00    	je     aed <pipe1+0xbd>
  } else if(pid > 0){
     a5a:	0f 8e 72 01 00 00    	jle    bd2 <pipe1+0x1a2>
    close(fds[1]);
     a60:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    cc = 1;
     a63:	bf 01 00 00 00       	mov    $0x1,%edi
  seq = 0;
     a68:	31 db                	xor    %ebx,%ebx
    close(fds[1]);
     a6a:	89 04 24             	mov    %eax,(%esp)
     a6d:	e8 88 35 00 00       	call   3ffa <close>
    total = 0;
     a72:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a79:	8b 45 e0             	mov    -0x20(%ebp),%eax
     a7c:	89 7c 24 08          	mov    %edi,0x8(%esp)
     a80:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
     a87:	00 
     a88:	89 04 24             	mov    %eax,(%esp)
     a8b:	e8 5a 35 00 00       	call   3fea <read>
     a90:	85 c0                	test   %eax,%eax
     a92:	0f 8e ba 00 00 00    	jle    b52 <pipe1+0x122>
     a98:	89 d9                	mov    %ebx,%ecx
     a9a:	8d 34 03             	lea    (%ebx,%eax,1),%esi
     a9d:	f7 d9                	neg    %ecx
     a9f:	eb 09                	jmp    aaa <pipe1+0x7a>
     aa1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     aa8:	89 d3                	mov    %edx,%ebx
     aaa:	38 9c 0b e0 8c 00 00 	cmp    %bl,0x8ce0(%ebx,%ecx,1)
     ab1:	8d 53 01             	lea    0x1(%ebx),%edx
     ab4:	75 1b                	jne    ad1 <pipe1+0xa1>
      for(i = 0; i < n; i++){
     ab6:	39 f2                	cmp    %esi,%edx
     ab8:	75 ee                	jne    aa8 <pipe1+0x78>
      cc = cc * 2;
     aba:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     abc:	89 f3                	mov    %esi,%ebx
      total += n;
     abe:	01 45 d4             	add    %eax,-0x2c(%ebp)
        cc = sizeof(buf);
     ac1:	81 ff 01 20 00 00    	cmp    $0x2001,%edi
     ac7:	b8 00 20 00 00       	mov    $0x2000,%eax
     acc:	0f 43 f8             	cmovae %eax,%edi
     acf:	eb a8                	jmp    a79 <pipe1+0x49>
          printf(1, "pipe1 oops 2\n");
     ad1:	c7 44 24 04 de 47 00 	movl   $0x47de,0x4(%esp)
     ad8:	00 
     ad9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ae0:	e8 3b 36 00 00       	call   4120 <printf>
}
     ae5:	83 c4 2c             	add    $0x2c,%esp
     ae8:	5b                   	pop    %ebx
     ae9:	5e                   	pop    %esi
     aea:	5f                   	pop    %edi
     aeb:	5d                   	pop    %ebp
     aec:	c3                   	ret    
    close(fds[0]);
     aed:	8b 45 e0             	mov    -0x20(%ebp),%eax
  seq = 0;
     af0:	31 f6                	xor    %esi,%esi
    close(fds[0]);
     af2:	89 04 24             	mov    %eax,(%esp)
     af5:	e8 00 35 00 00       	call   3ffa <close>
     afa:	89 f0                	mov    %esi,%eax
{
     afc:	89 f3                	mov    %esi,%ebx
     afe:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx
     b04:	f7 d8                	neg    %eax
     b06:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
     b08:	88 9c 18 e0 8c 00 00 	mov    %bl,0x8ce0(%eax,%ebx,1)
     b0f:	83 c3 01             	add    $0x1,%ebx
      for(i = 0; i < 1033; i++)
     b12:	39 d3                	cmp    %edx,%ebx
     b14:	75 f2                	jne    b08 <pipe1+0xd8>
      if(write(fds[1], buf, 1033) != 1033){
     b16:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     b19:	89 de                	mov    %ebx,%esi
     b1b:	c7 44 24 08 09 04 00 	movl   $0x409,0x8(%esp)
     b22:	00 
     b23:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
     b2a:	00 
     b2b:	89 04 24             	mov    %eax,(%esp)
     b2e:	e8 bf 34 00 00       	call   3ff2 <write>
     b33:	3d 09 04 00 00       	cmp    $0x409,%eax
     b38:	0f 85 b4 00 00 00    	jne    bf2 <pipe1+0x1c2>
    for(n = 0; n < 5; n++){
     b3e:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b44:	75 b4                	jne    afa <pipe1+0xca>
    exit(0);
     b46:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b4d:	e8 80 34 00 00       	call   3fd2 <exit>
    if(total != 5 * 1033){
     b52:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b59:	75 30                	jne    b8b <pipe1+0x15b>
    close(fds[0]);
     b5b:	8b 45 e0             	mov    -0x20(%ebp),%eax
     b5e:	89 04 24             	mov    %eax,(%esp)
     b61:	e8 94 34 00 00       	call   3ffa <close>
    wait(0);
     b66:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b6d:	e8 68 34 00 00       	call   3fda <wait>
  printf(1, "pipe1 ok\n");
     b72:	c7 44 24 04 03 48 00 	movl   $0x4803,0x4(%esp)
     b79:	00 
     b7a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b81:	e8 9a 35 00 00       	call   4120 <printf>
     b86:	e9 5a ff ff ff       	jmp    ae5 <pipe1+0xb5>
      printf(1, "pipe1 oops 3 total %d\n", total);
     b8b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     b8e:	c7 44 24 04 ec 47 00 	movl   $0x47ec,0x4(%esp)
     b95:	00 
     b96:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b9d:	89 44 24 08          	mov    %eax,0x8(%esp)
     ba1:	e8 7a 35 00 00       	call   4120 <printf>
      exit(-1);
     ba6:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     bad:	e8 20 34 00 00       	call   3fd2 <exit>
    printf(1, "pipe() failed\n");
     bb2:	c7 44 24 04 c1 47 00 	movl   $0x47c1,0x4(%esp)
     bb9:	00 
     bba:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bc1:	e8 5a 35 00 00       	call   4120 <printf>
    exit(-1);
     bc6:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     bcd:	e8 00 34 00 00       	call   3fd2 <exit>
    printf(1, "fork() failed\n");
     bd2:	c7 44 24 04 0d 48 00 	movl   $0x480d,0x4(%esp)
     bd9:	00 
     bda:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     be1:	e8 3a 35 00 00       	call   4120 <printf>
    exit(-1);
     be6:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     bed:	e8 e0 33 00 00       	call   3fd2 <exit>
        printf(1, "pipe1 oops 1\n");
     bf2:	c7 44 24 04 d0 47 00 	movl   $0x47d0,0x4(%esp)
     bf9:	00 
     bfa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c01:	e8 1a 35 00 00       	call   4120 <printf>
        exit(-1);
     c06:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
     c0d:	e8 c0 33 00 00       	call   3fd2 <exit>
     c12:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c20 <preempt>:
{
     c20:	55                   	push   %ebp
     c21:	89 e5                	mov    %esp,%ebp
     c23:	57                   	push   %edi
     c24:	56                   	push   %esi
     c25:	53                   	push   %ebx
     c26:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "preempt: ");
     c29:	c7 44 24 04 1c 48 00 	movl   $0x481c,0x4(%esp)
     c30:	00 
     c31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c38:	e8 e3 34 00 00       	call   4120 <printf>
  pid1 = fork();
     c3d:	e8 88 33 00 00       	call   3fca <fork>
  if(pid1 == 0)
     c42:	85 c0                	test   %eax,%eax
  pid1 = fork();
     c44:	89 c7                	mov    %eax,%edi
  if(pid1 == 0)
     c46:	75 02                	jne    c4a <preempt+0x2a>
     c48:	eb fe                	jmp    c48 <preempt+0x28>
     c4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  pid2 = fork();
     c50:	e8 75 33 00 00       	call   3fca <fork>
  if(pid2 == 0)
     c55:	85 c0                	test   %eax,%eax
  pid2 = fork();
     c57:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     c59:	75 02                	jne    c5d <preempt+0x3d>
     c5b:	eb fe                	jmp    c5b <preempt+0x3b>
  pipe(pfds);
     c5d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     c60:	89 04 24             	mov    %eax,(%esp)
     c63:	e8 7a 33 00 00       	call   3fe2 <pipe>
  pid3 = fork();
     c68:	e8 5d 33 00 00       	call   3fca <fork>
  if(pid3 == 0){
     c6d:	85 c0                	test   %eax,%eax
  pid3 = fork();
     c6f:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     c71:	75 4c                	jne    cbf <preempt+0x9f>
    close(pfds[0]);
     c73:	8b 45 e0             	mov    -0x20(%ebp),%eax
     c76:	89 04 24             	mov    %eax,(%esp)
     c79:	e8 7c 33 00 00       	call   3ffa <close>
    if(write(pfds[1], "x", 1) != 1)
     c7e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c81:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     c88:	00 
     c89:	c7 44 24 04 e1 4d 00 	movl   $0x4de1,0x4(%esp)
     c90:	00 
     c91:	89 04 24             	mov    %eax,(%esp)
     c94:	e8 59 33 00 00       	call   3ff2 <write>
     c99:	83 f8 01             	cmp    $0x1,%eax
     c9c:	74 14                	je     cb2 <preempt+0x92>
      printf(1, "preempt write error");
     c9e:	c7 44 24 04 26 48 00 	movl   $0x4826,0x4(%esp)
     ca5:	00 
     ca6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     cad:	e8 6e 34 00 00       	call   4120 <printf>
    close(pfds[1]);
     cb2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     cb5:	89 04 24             	mov    %eax,(%esp)
     cb8:	e8 3d 33 00 00       	call   3ffa <close>
     cbd:	eb fe                	jmp    cbd <preempt+0x9d>
  close(pfds[1]);
     cbf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     cc2:	89 04 24             	mov    %eax,(%esp)
     cc5:	e8 30 33 00 00       	call   3ffa <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     cca:	8b 45 e0             	mov    -0x20(%ebp),%eax
     ccd:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
     cd4:	00 
     cd5:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
     cdc:	00 
     cdd:	89 04 24             	mov    %eax,(%esp)
     ce0:	e8 05 33 00 00       	call   3fea <read>
     ce5:	83 f8 01             	cmp    $0x1,%eax
     ce8:	74 1c                	je     d06 <preempt+0xe6>
    printf(1, "preempt read error");
     cea:	c7 44 24 04 3a 48 00 	movl   $0x483a,0x4(%esp)
     cf1:	00 
     cf2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     cf9:	e8 22 34 00 00       	call   4120 <printf>
}
     cfe:	83 c4 2c             	add    $0x2c,%esp
     d01:	5b                   	pop    %ebx
     d02:	5e                   	pop    %esi
     d03:	5f                   	pop    %edi
     d04:	5d                   	pop    %ebp
     d05:	c3                   	ret    
  close(pfds[0]);
     d06:	8b 45 e0             	mov    -0x20(%ebp),%eax
     d09:	89 04 24             	mov    %eax,(%esp)
     d0c:	e8 e9 32 00 00       	call   3ffa <close>
  printf(1, "kill... ");
     d11:	c7 44 24 04 4d 48 00 	movl   $0x484d,0x4(%esp)
     d18:	00 
     d19:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d20:	e8 fb 33 00 00       	call   4120 <printf>
  kill(pid1);
     d25:	89 3c 24             	mov    %edi,(%esp)
     d28:	e8 d5 32 00 00       	call   4002 <kill>
  kill(pid2);
     d2d:	89 34 24             	mov    %esi,(%esp)
     d30:	e8 cd 32 00 00       	call   4002 <kill>
  kill(pid3);
     d35:	89 1c 24             	mov    %ebx,(%esp)
     d38:	e8 c5 32 00 00       	call   4002 <kill>
  printf(1, "wait... ");
     d3d:	c7 44 24 04 56 48 00 	movl   $0x4856,0x4(%esp)
     d44:	00 
     d45:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d4c:	e8 cf 33 00 00       	call   4120 <printf>
  wait(0);
     d51:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d58:	e8 7d 32 00 00       	call   3fda <wait>
  wait(0);
     d5d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d64:	e8 71 32 00 00       	call   3fda <wait>
  wait(0);
     d69:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d70:	e8 65 32 00 00       	call   3fda <wait>
  printf(1, "preempt ok\n");
     d75:	c7 44 24 04 5f 48 00 	movl   $0x485f,0x4(%esp)
     d7c:	00 
     d7d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d84:	e8 97 33 00 00       	call   4120 <printf>
     d89:	e9 70 ff ff ff       	jmp    cfe <preempt+0xde>
     d8e:	66 90                	xchg   %ax,%ax

00000d90 <exitwait>:
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	56                   	push   %esi
     d94:	be 64 00 00 00       	mov    $0x64,%esi
     d99:	53                   	push   %ebx
     d9a:	83 ec 10             	sub    $0x10,%esp
     d9d:	eb 18                	jmp    db7 <exitwait+0x27>
     d9f:	90                   	nop
      if(wait(0) != pid){
     da0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    if(pid){
     da7:	74 72                	je     e1b <exitwait+0x8b>
      if(wait(0) != pid){
     da9:	e8 2c 32 00 00       	call   3fda <wait>
     dae:	39 d8                	cmp    %ebx,%eax
     db0:	75 2e                	jne    de0 <exitwait+0x50>
  for(i = 0; i < 100; i++){
     db2:	83 ee 01             	sub    $0x1,%esi
     db5:	74 49                	je     e00 <exitwait+0x70>
    pid = fork();
     db7:	e8 0e 32 00 00       	call   3fca <fork>
    if(pid < 0){
     dbc:	85 c0                	test   %eax,%eax
    pid = fork();
     dbe:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     dc0:	79 de                	jns    da0 <exitwait+0x10>
      printf(1, "fork failed\n");
     dc2:	c7 44 24 04 c9 53 00 	movl   $0x53c9,0x4(%esp)
     dc9:	00 
     dca:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     dd1:	e8 4a 33 00 00       	call   4120 <printf>
}
     dd6:	83 c4 10             	add    $0x10,%esp
     dd9:	5b                   	pop    %ebx
     dda:	5e                   	pop    %esi
     ddb:	5d                   	pop    %ebp
     ddc:	c3                   	ret    
     ddd:	8d 76 00             	lea    0x0(%esi),%esi
        printf(1, "wait wrong pid\n");
     de0:	c7 44 24 04 6b 48 00 	movl   $0x486b,0x4(%esp)
     de7:	00 
     de8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     def:	e8 2c 33 00 00       	call   4120 <printf>
}
     df4:	83 c4 10             	add    $0x10,%esp
     df7:	5b                   	pop    %ebx
     df8:	5e                   	pop    %esi
     df9:	5d                   	pop    %ebp
     dfa:	c3                   	ret    
     dfb:	90                   	nop
     dfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "exitwait ok\n");
     e00:	c7 44 24 04 7b 48 00 	movl   $0x487b,0x4(%esp)
     e07:	00 
     e08:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e0f:	e8 0c 33 00 00       	call   4120 <printf>
}
     e14:	83 c4 10             	add    $0x10,%esp
     e17:	5b                   	pop    %ebx
     e18:	5e                   	pop    %esi
     e19:	5d                   	pop    %ebp
     e1a:	c3                   	ret    
      exit(0);
     e1b:	e8 b2 31 00 00       	call   3fd2 <exit>

00000e20 <mem>:
{
     e20:	55                   	push   %ebp
     e21:	89 e5                	mov    %esp,%ebp
     e23:	57                   	push   %edi
     e24:	56                   	push   %esi
     e25:	53                   	push   %ebx
     e26:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "mem test\n");
     e29:	c7 44 24 04 88 48 00 	movl   $0x4888,0x4(%esp)
     e30:	00 
     e31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e38:	e8 e3 32 00 00       	call   4120 <printf>
  ppid = getpid();
     e3d:	e8 10 32 00 00       	call   4052 <getpid>
     e42:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     e44:	e8 81 31 00 00       	call   3fca <fork>
     e49:	85 c0                	test   %eax,%eax
     e4b:	75 73                	jne    ec0 <mem+0xa0>
     e4d:	31 db                	xor    %ebx,%ebx
     e4f:	90                   	nop
     e50:	eb 0a                	jmp    e5c <mem+0x3c>
     e52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *(char**)m2 = m1;
     e58:	89 18                	mov    %ebx,(%eax)
     e5a:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     e5c:	c7 04 24 11 27 00 00 	movl   $0x2711,(%esp)
     e63:	e8 38 35 00 00       	call   43a0 <malloc>
     e68:	85 c0                	test   %eax,%eax
     e6a:	75 ec                	jne    e58 <mem+0x38>
    while(m1){
     e6c:	85 db                	test   %ebx,%ebx
     e6e:	75 0a                	jne    e7a <mem+0x5a>
     e70:	eb 16                	jmp    e88 <mem+0x68>
     e72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      m1 = m2;
     e78:	89 fb                	mov    %edi,%ebx
      m2 = *(char**)m1;
     e7a:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     e7c:	89 1c 24             	mov    %ebx,(%esp)
     e7f:	e8 8c 34 00 00       	call   4310 <free>
    while(m1){
     e84:	85 ff                	test   %edi,%edi
     e86:	75 f0                	jne    e78 <mem+0x58>
    m1 = malloc(1024*20);
     e88:	c7 04 24 00 50 00 00 	movl   $0x5000,(%esp)
     e8f:	e8 0c 35 00 00       	call   43a0 <malloc>
    if(m1 == 0){
     e94:	85 c0                	test   %eax,%eax
     e96:	74 40                	je     ed8 <mem+0xb8>
    free(m1);
     e98:	89 04 24             	mov    %eax,(%esp)
     e9b:	e8 70 34 00 00       	call   4310 <free>
    printf(1, "mem ok\n");
     ea0:	c7 44 24 04 ac 48 00 	movl   $0x48ac,0x4(%esp)
     ea7:	00 
     ea8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     eaf:	e8 6c 32 00 00       	call   4120 <printf>
    exit(0);
     eb4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ebb:	e8 12 31 00 00       	call   3fd2 <exit>
    wait(0);
     ec0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ec7:	e8 0e 31 00 00       	call   3fda <wait>
}
     ecc:	83 c4 1c             	add    $0x1c,%esp
     ecf:	5b                   	pop    %ebx
     ed0:	5e                   	pop    %esi
     ed1:	5f                   	pop    %edi
     ed2:	5d                   	pop    %ebp
     ed3:	c3                   	ret    
     ed4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     ed8:	c7 44 24 04 92 48 00 	movl   $0x4892,0x4(%esp)
     edf:	00 
     ee0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ee7:	e8 34 32 00 00       	call   4120 <printf>
      kill(ppid);
     eec:	89 34 24             	mov    %esi,(%esp)
     eef:	e8 0e 31 00 00       	call   4002 <kill>
      exit(0);
     ef4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     efb:	e8 d2 30 00 00       	call   3fd2 <exit>

00000f00 <sharedfd>:
{
     f00:	55                   	push   %ebp
     f01:	89 e5                	mov    %esp,%ebp
     f03:	57                   	push   %edi
     f04:	56                   	push   %esi
     f05:	53                   	push   %ebx
     f06:	83 ec 3c             	sub    $0x3c,%esp
  printf(1, "sharedfd test\n");
     f09:	c7 44 24 04 b4 48 00 	movl   $0x48b4,0x4(%esp)
     f10:	00 
     f11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f18:	e8 03 32 00 00       	call   4120 <printf>
  unlink("sharedfd");
     f1d:	c7 04 24 c3 48 00 00 	movl   $0x48c3,(%esp)
     f24:	e8 f9 30 00 00       	call   4022 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     f29:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     f30:	00 
     f31:	c7 04 24 c3 48 00 00 	movl   $0x48c3,(%esp)
     f38:	e8 d5 30 00 00       	call   4012 <open>
  if(fd < 0){
     f3d:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
     f3f:	89 c7                	mov    %eax,%edi
  if(fd < 0){
     f41:	0f 88 48 01 00 00    	js     108f <sharedfd+0x18f>
  pid = fork();
     f47:	e8 7e 30 00 00       	call   3fca <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f4c:	8d 75 de             	lea    -0x22(%ebp),%esi
     f4f:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     f54:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f5b:	00 
     f5c:	89 34 24             	mov    %esi,(%esp)
     f5f:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     f62:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f65:	19 c0                	sbb    %eax,%eax
     f67:	83 e0 f3             	and    $0xfffffff3,%eax
     f6a:	83 c0 70             	add    $0x70,%eax
     f6d:	89 44 24 04          	mov    %eax,0x4(%esp)
     f71:	e8 ea 2e 00 00       	call   3e60 <memset>
     f76:	eb 05                	jmp    f7d <sharedfd+0x7d>
  for(i = 0; i < 1000; i++){
     f78:	83 eb 01             	sub    $0x1,%ebx
     f7b:	74 2d                	je     faa <sharedfd+0xaa>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     f7d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f84:	00 
     f85:	89 74 24 04          	mov    %esi,0x4(%esp)
     f89:	89 3c 24             	mov    %edi,(%esp)
     f8c:	e8 61 30 00 00       	call   3ff2 <write>
     f91:	83 f8 0a             	cmp    $0xa,%eax
     f94:	74 e2                	je     f78 <sharedfd+0x78>
      printf(1, "fstests: write sharedfd failed\n");
     f96:	c7 44 24 04 b4 55 00 	movl   $0x55b4,0x4(%esp)
     f9d:	00 
     f9e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     fa5:	e8 76 31 00 00       	call   4120 <printf>
  if(pid == 0)
     faa:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    exit(0);
     fad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid == 0)
     fb4:	85 c0                	test   %eax,%eax
     fb6:	0f 84 2e 01 00 00    	je     10ea <sharedfd+0x1ea>
    wait(0);
     fbc:	e8 19 30 00 00       	call   3fda <wait>
  close(fd);
     fc1:	89 3c 24             	mov    %edi,(%esp)
     fc4:	e8 31 30 00 00       	call   3ffa <close>
  fd = open("sharedfd", 0);
     fc9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     fd0:	00 
     fd1:	c7 04 24 c3 48 00 00 	movl   $0x48c3,(%esp)
     fd8:	e8 35 30 00 00       	call   4012 <open>
  if(fd < 0){
     fdd:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
     fdf:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     fe2:	0f 88 c3 00 00 00    	js     10ab <sharedfd+0x1ab>
     fe8:	31 d2                	xor    %edx,%edx
     fea:	31 db                	xor    %ebx,%ebx
     fec:	8d 7d e8             	lea    -0x18(%ebp),%edi
     fef:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     ff2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
     ff8:	8b 45 d0             	mov    -0x30(%ebp),%eax
     ffb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    1002:	00 
    1003:	89 74 24 04          	mov    %esi,0x4(%esp)
    1007:	89 04 24             	mov    %eax,(%esp)
    100a:	e8 db 2f 00 00       	call   3fea <read>
    100f:	85 c0                	test   %eax,%eax
    1011:	7e 36                	jle    1049 <sharedfd+0x149>
    1013:	89 f0                	mov    %esi,%eax
    1015:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1018:	eb 18                	jmp    1032 <sharedfd+0x132>
    101a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        np++;
    1020:	80 f9 70             	cmp    $0x70,%cl
    1023:	0f 94 c1             	sete   %cl
    1026:	83 c0 01             	add    $0x1,%eax
    1029:	0f b6 c9             	movzbl %cl,%ecx
    102c:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
    102e:	39 f8                	cmp    %edi,%eax
    1030:	74 12                	je     1044 <sharedfd+0x144>
      if(buf[i] == 'c')
    1032:	0f b6 08             	movzbl (%eax),%ecx
    1035:	80 f9 63             	cmp    $0x63,%cl
    1038:	75 e6                	jne    1020 <sharedfd+0x120>
    103a:	83 c0 01             	add    $0x1,%eax
        nc++;
    103d:	83 c2 01             	add    $0x1,%edx
    for(i = 0; i < sizeof(buf); i++){
    1040:	39 f8                	cmp    %edi,%eax
    1042:	75 ee                	jne    1032 <sharedfd+0x132>
    1044:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1047:	eb af                	jmp    ff8 <sharedfd+0xf8>
  close(fd);
    1049:	8b 45 d0             	mov    -0x30(%ebp),%eax
    104c:	89 04 24             	mov    %eax,(%esp)
    104f:	e8 a6 2f 00 00       	call   3ffa <close>
  unlink("sharedfd");
    1054:	c7 04 24 c3 48 00 00 	movl   $0x48c3,(%esp)
    105b:	e8 c2 2f 00 00       	call   4022 <unlink>
  if(nc == 10000 && np == 10000){
    1060:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    1066:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1069:	75 5c                	jne    10c7 <sharedfd+0x1c7>
    106b:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1071:	75 54                	jne    10c7 <sharedfd+0x1c7>
    printf(1, "sharedfd ok\n");
    1073:	c7 44 24 04 cc 48 00 	movl   $0x48cc,0x4(%esp)
    107a:	00 
    107b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1082:	e8 99 30 00 00       	call   4120 <printf>
}
    1087:	83 c4 3c             	add    $0x3c,%esp
    108a:	5b                   	pop    %ebx
    108b:	5e                   	pop    %esi
    108c:	5f                   	pop    %edi
    108d:	5d                   	pop    %ebp
    108e:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    108f:	c7 44 24 04 88 55 00 	movl   $0x5588,0x4(%esp)
    1096:	00 
    1097:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    109e:	e8 7d 30 00 00       	call   4120 <printf>
}
    10a3:	83 c4 3c             	add    $0x3c,%esp
    10a6:	5b                   	pop    %ebx
    10a7:	5e                   	pop    %esi
    10a8:	5f                   	pop    %edi
    10a9:	5d                   	pop    %ebp
    10aa:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    10ab:	c7 44 24 04 d4 55 00 	movl   $0x55d4,0x4(%esp)
    10b2:	00 
    10b3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10ba:	e8 61 30 00 00       	call   4120 <printf>
}
    10bf:	83 c4 3c             	add    $0x3c,%esp
    10c2:	5b                   	pop    %ebx
    10c3:	5e                   	pop    %esi
    10c4:	5f                   	pop    %edi
    10c5:	5d                   	pop    %ebp
    10c6:	c3                   	ret    
    printf(1, "sharedfd oops %d %d\n", nc, np);
    10c7:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    10cb:	89 54 24 08          	mov    %edx,0x8(%esp)
    10cf:	c7 44 24 04 d9 48 00 	movl   $0x48d9,0x4(%esp)
    10d6:	00 
    10d7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10de:	e8 3d 30 00 00       	call   4120 <printf>
    exit(-1);
    10e3:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    10ea:	e8 e3 2e 00 00       	call   3fd2 <exit>
    10ef:	90                   	nop

000010f0 <fourfiles>:
{
    10f0:	55                   	push   %ebp
    10f1:	89 e5                	mov    %esp,%ebp
    10f3:	57                   	push   %edi
    10f4:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    10f5:	be ee 48 00 00       	mov    $0x48ee,%esi
{
    10fa:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    10fb:	31 db                	xor    %ebx,%ebx
{
    10fd:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "fourfiles test\n");
    1100:	c7 44 24 04 f4 48 00 	movl   $0x48f4,0x4(%esp)
    1107:	00 
    1108:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  char *names[] = { "f0", "f1", "f2", "f3" };
    110f:	c7 45 d8 ee 48 00 00 	movl   $0x48ee,-0x28(%ebp)
    1116:	c7 45 dc 37 4a 00 00 	movl   $0x4a37,-0x24(%ebp)
    111d:	c7 45 e0 3b 4a 00 00 	movl   $0x4a3b,-0x20(%ebp)
    1124:	c7 45 e4 f1 48 00 00 	movl   $0x48f1,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    112b:	e8 f0 2f 00 00       	call   4120 <printf>
    unlink(fname);
    1130:	89 34 24             	mov    %esi,(%esp)
    1133:	e8 ea 2e 00 00       	call   4022 <unlink>
    pid = fork();
    1138:	e8 8d 2e 00 00       	call   3fca <fork>
    if(pid < 0){
    113d:	85 c0                	test   %eax,%eax
    113f:	0f 88 bb 01 00 00    	js     1300 <fourfiles+0x210>
    if(pid == 0){
    1145:	0f 84 0b 01 00 00    	je     1256 <fourfiles+0x166>
  for(pi = 0; pi < 4; pi++){
    114b:	83 c3 01             	add    $0x1,%ebx
    114e:	83 fb 04             	cmp    $0x4,%ebx
    1151:	74 06                	je     1159 <fourfiles+0x69>
    1153:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1157:	eb d7                	jmp    1130 <fourfiles+0x40>
    wait(0);
    1159:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1160:	bf 30 00 00 00       	mov    $0x30,%edi
    1165:	e8 70 2e 00 00       	call   3fda <wait>
    116a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1171:	e8 64 2e 00 00       	call   3fda <wait>
    1176:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    117d:	e8 58 2e 00 00       	call   3fda <wait>
    1182:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1189:	e8 4c 2e 00 00       	call   3fda <wait>
    118e:	c7 45 d4 ee 48 00 00 	movl   $0x48ee,-0x2c(%ebp)
    fd = open(fname, 0);
    1195:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    total = 0;
    1198:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    119a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    11a1:	00 
    11a2:	89 04 24             	mov    %eax,(%esp)
    11a5:	e8 68 2e 00 00       	call   4012 <open>
    11aa:	89 c6                	mov    %eax,%esi
    11ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    11b0:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    11b7:	00 
    11b8:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    11bf:	00 
    11c0:	89 34 24             	mov    %esi,(%esp)
    11c3:	e8 22 2e 00 00       	call   3fea <read>
    11c8:	85 c0                	test   %eax,%eax
    11ca:	7e 1a                	jle    11e6 <fourfiles+0xf6>
    11cc:	31 d2                	xor    %edx,%edx
    11ce:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    11d0:	0f be 8a e0 8c 00 00 	movsbl 0x8ce0(%edx),%ecx
    11d7:	39 f9                	cmp    %edi,%ecx
    11d9:	75 5b                	jne    1236 <fourfiles+0x146>
      for(j = 0; j < n; j++){
    11db:	83 c2 01             	add    $0x1,%edx
    11de:	39 c2                	cmp    %eax,%edx
    11e0:	75 ee                	jne    11d0 <fourfiles+0xe0>
      total += n;
    11e2:	01 d3                	add    %edx,%ebx
    11e4:	eb ca                	jmp    11b0 <fourfiles+0xc0>
    close(fd);
    11e6:	89 34 24             	mov    %esi,(%esp)
    11e9:	e8 0c 2e 00 00       	call   3ffa <close>
    if(total != 12*500){
    11ee:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    11f4:	0f 85 26 01 00 00    	jne    1320 <fourfiles+0x230>
    unlink(fname);
    11fa:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    11fd:	89 04 24             	mov    %eax,(%esp)
    1200:	e8 1d 2e 00 00       	call   4022 <unlink>
  for(i = 0; i < 2; i++){
    1205:	83 ff 31             	cmp    $0x31,%edi
    1208:	75 1c                	jne    1226 <fourfiles+0x136>
  printf(1, "fourfiles ok\n");
    120a:	c7 44 24 04 32 49 00 	movl   $0x4932,0x4(%esp)
    1211:	00 
    1212:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1219:	e8 02 2f 00 00       	call   4120 <printf>
}
    121e:	83 c4 2c             	add    $0x2c,%esp
    1221:	5b                   	pop    %ebx
    1222:	5e                   	pop    %esi
    1223:	5f                   	pop    %edi
    1224:	5d                   	pop    %ebp
    1225:	c3                   	ret    
    1226:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1229:	bf 31 00 00 00       	mov    $0x31,%edi
    122e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1231:	e9 5f ff ff ff       	jmp    1195 <fourfiles+0xa5>
          printf(1, "wrong char\n");
    1236:	c7 44 24 04 15 49 00 	movl   $0x4915,0x4(%esp)
    123d:	00 
    123e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1245:	e8 d6 2e 00 00       	call   4120 <printf>
          exit(-1);
    124a:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1251:	e8 7c 2d 00 00       	call   3fd2 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    1256:	89 34 24             	mov    %esi,(%esp)
    1259:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1260:	00 
    1261:	e8 ac 2d 00 00       	call   4012 <open>
      if(fd < 0){
    1266:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    1268:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    126a:	78 74                	js     12e0 <fourfiles+0x1f0>
      memset(buf, '0'+pi, 512);
    126c:	83 c3 30             	add    $0x30,%ebx
    126f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1273:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1278:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    127f:	00 
    1280:	c7 04 24 e0 8c 00 00 	movl   $0x8ce0,(%esp)
    1287:	e8 d4 2b 00 00       	call   3e60 <memset>
        if((n = write(fd, buf, 500)) != 500){
    128c:	c7 44 24 08 f4 01 00 	movl   $0x1f4,0x8(%esp)
    1293:	00 
    1294:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    129b:	00 
    129c:	89 34 24             	mov    %esi,(%esp)
    129f:	e8 4e 2d 00 00       	call   3ff2 <write>
    12a4:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    12a9:	75 11                	jne    12bc <fourfiles+0x1cc>
      for(i = 0; i < 12; i++){
    12ab:	83 eb 01             	sub    $0x1,%ebx
    12ae:	75 dc                	jne    128c <fourfiles+0x19c>
      exit(0);
    12b0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12b7:	e8 16 2d 00 00       	call   3fd2 <exit>
          printf(1, "write failed %d\n", n);
    12bc:	89 44 24 08          	mov    %eax,0x8(%esp)
    12c0:	c7 44 24 04 04 49 00 	movl   $0x4904,0x4(%esp)
    12c7:	00 
    12c8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12cf:	e8 4c 2e 00 00       	call   4120 <printf>
          exit(-1);
    12d4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    12db:	e8 f2 2c 00 00       	call   3fd2 <exit>
        printf(1, "create failed\n");
    12e0:	c7 44 24 04 8f 4b 00 	movl   $0x4b8f,0x4(%esp)
    12e7:	00 
    12e8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12ef:	e8 2c 2e 00 00       	call   4120 <printf>
        exit(-1);
    12f4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    12fb:	e8 d2 2c 00 00       	call   3fd2 <exit>
      printf(1, "fork failed\n");
    1300:	c7 44 24 04 c9 53 00 	movl   $0x53c9,0x4(%esp)
    1307:	00 
    1308:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    130f:	e8 0c 2e 00 00       	call   4120 <printf>
      exit(-1);
    1314:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    131b:	e8 b2 2c 00 00       	call   3fd2 <exit>
      printf(1, "wrong length %d\n", total);
    1320:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1324:	c7 44 24 04 21 49 00 	movl   $0x4921,0x4(%esp)
    132b:	00 
    132c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1333:	e8 e8 2d 00 00       	call   4120 <printf>
    1338:	e9 73 ff ff ff       	jmp    12b0 <fourfiles+0x1c0>
    133d:	8d 76 00             	lea    0x0(%esi),%esi

00001340 <createdelete>:
{
    1340:	55                   	push   %ebp
    1341:	89 e5                	mov    %esp,%ebp
    1343:	57                   	push   %edi
    1344:	56                   	push   %esi
    1345:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1346:	31 db                	xor    %ebx,%ebx
{
    1348:	83 ec 4c             	sub    $0x4c,%esp
  printf(1, "createdelete test\n");
    134b:	c7 44 24 04 40 49 00 	movl   $0x4940,0x4(%esp)
    1352:	00 
    1353:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    135a:	e8 c1 2d 00 00       	call   4120 <printf>
    pid = fork();
    135f:	e8 66 2c 00 00       	call   3fca <fork>
    if(pid < 0){
    1364:	85 c0                	test   %eax,%eax
    1366:	0f 88 0c 02 00 00    	js     1578 <createdelete+0x238>
    136c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    1370:	0f 84 2c 01 00 00    	je     14a2 <createdelete+0x162>
  for(pi = 0; pi < 4; pi++){
    1376:	83 c3 01             	add    $0x1,%ebx
    1379:	83 fb 04             	cmp    $0x4,%ebx
    137c:	75 e1                	jne    135f <createdelete+0x1f>
    wait(0);
    137e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < N; i++){
    1385:	31 f6                	xor    %esi,%esi
    wait(0);
    1387:	e8 4e 2c 00 00       	call   3fda <wait>
    138c:	8d 7d c8             	lea    -0x38(%ebp),%edi
    138f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1396:	e8 3f 2c 00 00       	call   3fda <wait>
    139b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13a2:	e8 33 2c 00 00       	call   3fda <wait>
    13a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13ae:	e8 27 2c 00 00       	call   3fda <wait>
  name[0] = name[1] = name[2] = 0;
    13b3:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    13b7:	90                   	nop
    13b8:	83 fe 09             	cmp    $0x9,%esi
      name[2] = '\0';
    13bb:	bb 70 00 00 00       	mov    $0x70,%ebx
    13c0:	8d 46 30             	lea    0x30(%esi),%eax
    13c3:	0f 9f 45 c7          	setg   -0x39(%ebp)
    13c7:	85 f6                	test   %esi,%esi
    13c9:	88 45 c6             	mov    %al,-0x3a(%ebp)
    13cc:	0f 94 c0             	sete   %al
    13cf:	08 45 c7             	or     %al,-0x39(%ebp)
    13d2:	8d 46 ff             	lea    -0x1(%esi),%eax
    13d5:	89 45 c0             	mov    %eax,-0x40(%ebp)
      name[1] = '0' + i;
    13d8:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    13dc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    13e3:	00 
    13e4:	89 3c 24             	mov    %edi,(%esp)
      name[0] = 'p' + pi;
    13e7:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    13ea:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    13ed:	e8 20 2c 00 00       	call   4012 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    13f2:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    13f6:	0f 84 84 00 00 00    	je     1480 <createdelete+0x140>
    13fc:	85 c0                	test   %eax,%eax
    13fe:	0f 88 30 01 00 00    	js     1534 <createdelete+0x1f4>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1404:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    1408:	0f 86 8a 01 00 00    	jbe    1598 <createdelete+0x258>
        close(fd);
    140e:	89 04 24             	mov    %eax,(%esp)
    1411:	83 c3 01             	add    $0x1,%ebx
    1414:	e8 e1 2b 00 00       	call   3ffa <close>
    for(pi = 0; pi < 4; pi++){
    1419:	80 fb 74             	cmp    $0x74,%bl
    141c:	75 ba                	jne    13d8 <createdelete+0x98>
  for(i = 0; i < N; i++){
    141e:	83 c6 01             	add    $0x1,%esi
    1421:	83 fe 14             	cmp    $0x14,%esi
    1424:	75 92                	jne    13b8 <createdelete+0x78>
    1426:	be 70 00 00 00       	mov    $0x70,%esi
    142b:	90                   	nop
    142c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1430:	8d 46 c0             	lea    -0x40(%esi),%eax
    1433:	bb 04 00 00 00       	mov    $0x4,%ebx
    1438:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    143b:	89 f0                	mov    %esi,%eax
    143d:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1440:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    1444:	89 3c 24             	mov    %edi,(%esp)
      name[1] = '0' + i;
    1447:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    144a:	e8 d3 2b 00 00       	call   4022 <unlink>
    for(pi = 0; pi < 4; pi++){
    144f:	83 eb 01             	sub    $0x1,%ebx
    1452:	75 e7                	jne    143b <createdelete+0xfb>
    1454:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    1457:	89 f0                	mov    %esi,%eax
    1459:	3c 84                	cmp    $0x84,%al
    145b:	75 d3                	jne    1430 <createdelete+0xf0>
  printf(1, "createdelete ok\n");
    145d:	c7 44 24 04 53 49 00 	movl   $0x4953,0x4(%esp)
    1464:	00 
    1465:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    146c:	e8 af 2c 00 00       	call   4120 <printf>
}
    1471:	83 c4 4c             	add    $0x4c,%esp
    1474:	5b                   	pop    %ebx
    1475:	5e                   	pop    %esi
    1476:	5f                   	pop    %edi
    1477:	5d                   	pop    %ebp
    1478:	c3                   	ret    
    1479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1480:	85 c0                	test   %eax,%eax
    1482:	0f 89 10 01 00 00    	jns    1598 <createdelete+0x258>
    1488:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    148b:	80 fb 74             	cmp    $0x74,%bl
    148e:	0f 85 44 ff ff ff    	jne    13d8 <createdelete+0x98>
  for(i = 0; i < N; i++){
    1494:	83 c6 01             	add    $0x1,%esi
    1497:	83 fe 14             	cmp    $0x14,%esi
    149a:	0f 85 18 ff ff ff    	jne    13b8 <createdelete+0x78>
    14a0:	eb 84                	jmp    1426 <createdelete+0xe6>
      name[0] = 'p' + pi;
    14a2:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    14a5:	be 01 00 00 00       	mov    $0x1,%esi
      name[0] = 'p' + pi;
    14aa:	88 5d c8             	mov    %bl,-0x38(%ebp)
    14ad:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[2] = '\0';
    14b0:	31 db                	xor    %ebx,%ebx
    14b2:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    14b6:	eb 0b                	jmp    14c3 <createdelete+0x183>
      for(i = 0; i < N; i++){
    14b8:	83 fe 14             	cmp    $0x14,%esi
    14bb:	74 6b                	je     1528 <createdelete+0x1e8>
    14bd:	83 c3 01             	add    $0x1,%ebx
    14c0:	83 c6 01             	add    $0x1,%esi
    14c3:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    14c6:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    14cd:	00 
    14ce:	89 3c 24             	mov    %edi,(%esp)
    14d1:	88 45 c9             	mov    %al,-0x37(%ebp)
    14d4:	e8 39 2b 00 00       	call   4012 <open>
        if(fd < 0){
    14d9:	85 c0                	test   %eax,%eax
    14db:	78 7b                	js     1558 <createdelete+0x218>
        close(fd);
    14dd:	89 04 24             	mov    %eax,(%esp)
    14e0:	e8 15 2b 00 00       	call   3ffa <close>
        if(i > 0 && (i % 2 ) == 0){
    14e5:	85 db                	test   %ebx,%ebx
    14e7:	74 d4                	je     14bd <createdelete+0x17d>
    14e9:	f6 c3 01             	test   $0x1,%bl
    14ec:	75 ca                	jne    14b8 <createdelete+0x178>
          name[1] = '0' + (i / 2);
    14ee:	89 d8                	mov    %ebx,%eax
    14f0:	d1 f8                	sar    %eax
    14f2:	83 c0 30             	add    $0x30,%eax
          if(unlink(name) < 0){
    14f5:	89 3c 24             	mov    %edi,(%esp)
          name[1] = '0' + (i / 2);
    14f8:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    14fb:	e8 22 2b 00 00       	call   4022 <unlink>
    1500:	85 c0                	test   %eax,%eax
    1502:	79 b4                	jns    14b8 <createdelete+0x178>
            printf(1, "unlink failed\n");
    1504:	c7 44 24 04 41 45 00 	movl   $0x4541,0x4(%esp)
    150b:	00 
    150c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1513:	e8 08 2c 00 00       	call   4120 <printf>
            exit(-1);
    1518:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    151f:	e8 ae 2a 00 00       	call   3fd2 <exit>
    1524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      exit(0);
    1528:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    152f:	e8 9e 2a 00 00       	call   3fd2 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    1534:	89 7c 24 08          	mov    %edi,0x8(%esp)
    1538:	c7 44 24 04 00 56 00 	movl   $0x5600,0x4(%esp)
    153f:	00 
    1540:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1547:	e8 d4 2b 00 00       	call   4120 <printf>
        exit(-1);
    154c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1553:	e8 7a 2a 00 00       	call   3fd2 <exit>
          printf(1, "create failed\n");
    1558:	c7 44 24 04 8f 4b 00 	movl   $0x4b8f,0x4(%esp)
    155f:	00 
    1560:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1567:	e8 b4 2b 00 00       	call   4120 <printf>
          exit(-1);
    156c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1573:	e8 5a 2a 00 00       	call   3fd2 <exit>
      printf(1, "fork failed\n");
    1578:	c7 44 24 04 c9 53 00 	movl   $0x53c9,0x4(%esp)
    157f:	00 
    1580:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1587:	e8 94 2b 00 00       	call   4120 <printf>
      exit(-1);
    158c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1593:	e8 3a 2a 00 00       	call   3fd2 <exit>
        printf(1, "oops createdelete %s did exist\n", name);
    1598:	89 7c 24 08          	mov    %edi,0x8(%esp)
    159c:	c7 44 24 04 24 56 00 	movl   $0x5624,0x4(%esp)
    15a3:	00 
    15a4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15ab:	e8 70 2b 00 00       	call   4120 <printf>
        exit(-1);
    15b0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    15b7:	e8 16 2a 00 00       	call   3fd2 <exit>
    15bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000015c0 <unlinkread>:
{
    15c0:	55                   	push   %ebp
    15c1:	89 e5                	mov    %esp,%ebp
    15c3:	56                   	push   %esi
    15c4:	53                   	push   %ebx
    15c5:	83 ec 10             	sub    $0x10,%esp
  printf(1, "unlinkread test\n");
    15c8:	c7 44 24 04 64 49 00 	movl   $0x4964,0x4(%esp)
    15cf:	00 
    15d0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15d7:	e8 44 2b 00 00       	call   4120 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15dc:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    15e3:	00 
    15e4:	c7 04 24 75 49 00 00 	movl   $0x4975,(%esp)
    15eb:	e8 22 2a 00 00       	call   4012 <open>
  if(fd < 0){
    15f0:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15f2:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    15f4:	0f 88 02 01 00 00    	js     16fc <unlinkread+0x13c>
  write(fd, "hello", 5);
    15fa:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1601:	00 
    1602:	c7 44 24 04 9a 49 00 	movl   $0x499a,0x4(%esp)
    1609:	00 
    160a:	89 04 24             	mov    %eax,(%esp)
    160d:	e8 e0 29 00 00       	call   3ff2 <write>
  close(fd);
    1612:	89 1c 24             	mov    %ebx,(%esp)
    1615:	e8 e0 29 00 00       	call   3ffa <close>
  fd = open("unlinkread", O_RDWR);
    161a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    1621:	00 
    1622:	c7 04 24 75 49 00 00 	movl   $0x4975,(%esp)
    1629:	e8 e4 29 00 00       	call   4012 <open>
  if(fd < 0){
    162e:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    1630:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1632:	0f 88 64 01 00 00    	js     179c <unlinkread+0x1dc>
  if(unlink("unlinkread") != 0){
    1638:	c7 04 24 75 49 00 00 	movl   $0x4975,(%esp)
    163f:	e8 de 29 00 00       	call   4022 <unlink>
    1644:	85 c0                	test   %eax,%eax
    1646:	0f 85 30 01 00 00    	jne    177c <unlinkread+0x1bc>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    164c:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1653:	00 
    1654:	c7 04 24 75 49 00 00 	movl   $0x4975,(%esp)
    165b:	e8 b2 29 00 00       	call   4012 <open>
  write(fd1, "yyy", 3);
    1660:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
    1667:	00 
    1668:	c7 44 24 04 d2 49 00 	movl   $0x49d2,0x4(%esp)
    166f:	00 
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1670:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1672:	89 04 24             	mov    %eax,(%esp)
    1675:	e8 78 29 00 00       	call   3ff2 <write>
  close(fd1);
    167a:	89 34 24             	mov    %esi,(%esp)
    167d:	e8 78 29 00 00       	call   3ffa <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    1682:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1689:	00 
    168a:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    1691:	00 
    1692:	89 1c 24             	mov    %ebx,(%esp)
    1695:	e8 50 29 00 00       	call   3fea <read>
    169a:	83 f8 05             	cmp    $0x5,%eax
    169d:	0f 85 b9 00 00 00    	jne    175c <unlinkread+0x19c>
  if(buf[0] != 'h'){
    16a3:	80 3d e0 8c 00 00 68 	cmpb   $0x68,0x8ce0
    16aa:	0f 85 8c 00 00 00    	jne    173c <unlinkread+0x17c>
  if(write(fd, buf, 10) != 10){
    16b0:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    16b7:	00 
    16b8:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    16bf:	00 
    16c0:	89 1c 24             	mov    %ebx,(%esp)
    16c3:	e8 2a 29 00 00       	call   3ff2 <write>
    16c8:	83 f8 0a             	cmp    $0xa,%eax
    16cb:	75 4f                	jne    171c <unlinkread+0x15c>
  close(fd);
    16cd:	89 1c 24             	mov    %ebx,(%esp)
    16d0:	e8 25 29 00 00       	call   3ffa <close>
  unlink("unlinkread");
    16d5:	c7 04 24 75 49 00 00 	movl   $0x4975,(%esp)
    16dc:	e8 41 29 00 00       	call   4022 <unlink>
  printf(1, "unlinkread ok\n");
    16e1:	c7 44 24 04 1d 4a 00 	movl   $0x4a1d,0x4(%esp)
    16e8:	00 
    16e9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16f0:	e8 2b 2a 00 00       	call   4120 <printf>
}
    16f5:	83 c4 10             	add    $0x10,%esp
    16f8:	5b                   	pop    %ebx
    16f9:	5e                   	pop    %esi
    16fa:	5d                   	pop    %ebp
    16fb:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    16fc:	c7 44 24 04 80 49 00 	movl   $0x4980,0x4(%esp)
    1703:	00 
    1704:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    170b:	e8 10 2a 00 00       	call   4120 <printf>
    exit(-1);
    1710:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1717:	e8 b6 28 00 00       	call   3fd2 <exit>
    printf(1, "unlinkread write failed\n");
    171c:	c7 44 24 04 04 4a 00 	movl   $0x4a04,0x4(%esp)
    1723:	00 
    1724:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    172b:	e8 f0 29 00 00       	call   4120 <printf>
    exit(-1);
    1730:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1737:	e8 96 28 00 00       	call   3fd2 <exit>
    printf(1, "unlinkread wrong data\n");
    173c:	c7 44 24 04 ed 49 00 	movl   $0x49ed,0x4(%esp)
    1743:	00 
    1744:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    174b:	e8 d0 29 00 00       	call   4120 <printf>
    exit(-1);
    1750:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1757:	e8 76 28 00 00       	call   3fd2 <exit>
    printf(1, "unlinkread read failed");
    175c:	c7 44 24 04 d6 49 00 	movl   $0x49d6,0x4(%esp)
    1763:	00 
    1764:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    176b:	e8 b0 29 00 00       	call   4120 <printf>
    exit(-1);
    1770:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1777:	e8 56 28 00 00       	call   3fd2 <exit>
    printf(1, "unlink unlinkread failed\n");
    177c:	c7 44 24 04 b8 49 00 	movl   $0x49b8,0x4(%esp)
    1783:	00 
    1784:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    178b:	e8 90 29 00 00       	call   4120 <printf>
    exit(-1);
    1790:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1797:	e8 36 28 00 00       	call   3fd2 <exit>
    printf(1, "open unlinkread failed\n");
    179c:	c7 44 24 04 a0 49 00 	movl   $0x49a0,0x4(%esp)
    17a3:	00 
    17a4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17ab:	e8 70 29 00 00       	call   4120 <printf>
    exit(-1);
    17b0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    17b7:	e8 16 28 00 00       	call   3fd2 <exit>
    17bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000017c0 <linktest>:
{
    17c0:	55                   	push   %ebp
    17c1:	89 e5                	mov    %esp,%ebp
    17c3:	53                   	push   %ebx
    17c4:	83 ec 14             	sub    $0x14,%esp
  printf(1, "linktest\n");
    17c7:	c7 44 24 04 2c 4a 00 	movl   $0x4a2c,0x4(%esp)
    17ce:	00 
    17cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17d6:	e8 45 29 00 00       	call   4120 <printf>
  unlink("lf1");
    17db:	c7 04 24 36 4a 00 00 	movl   $0x4a36,(%esp)
    17e2:	e8 3b 28 00 00       	call   4022 <unlink>
  unlink("lf2");
    17e7:	c7 04 24 3a 4a 00 00 	movl   $0x4a3a,(%esp)
    17ee:	e8 2f 28 00 00       	call   4022 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    17f3:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    17fa:	00 
    17fb:	c7 04 24 36 4a 00 00 	movl   $0x4a36,(%esp)
    1802:	e8 0b 28 00 00       	call   4012 <open>
  if(fd < 0){
    1807:	85 c0                	test   %eax,%eax
  fd = open("lf1", O_CREATE|O_RDWR);
    1809:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    180b:	0f 88 26 01 00 00    	js     1937 <linktest+0x177>
  if(write(fd, "hello", 5) != 5){
    1811:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1818:	00 
    1819:	c7 44 24 04 9a 49 00 	movl   $0x499a,0x4(%esp)
    1820:	00 
    1821:	89 04 24             	mov    %eax,(%esp)
    1824:	e8 c9 27 00 00       	call   3ff2 <write>
    1829:	83 f8 05             	cmp    $0x5,%eax
    182c:	0f 85 05 02 00 00    	jne    1a37 <linktest+0x277>
  close(fd);
    1832:	89 1c 24             	mov    %ebx,(%esp)
    1835:	e8 c0 27 00 00       	call   3ffa <close>
  if(link("lf1", "lf2") < 0){
    183a:	c7 44 24 04 3a 4a 00 	movl   $0x4a3a,0x4(%esp)
    1841:	00 
    1842:	c7 04 24 36 4a 00 00 	movl   $0x4a36,(%esp)
    1849:	e8 e4 27 00 00       	call   4032 <link>
    184e:	85 c0                	test   %eax,%eax
    1850:	0f 88 c1 01 00 00    	js     1a17 <linktest+0x257>
  unlink("lf1");
    1856:	c7 04 24 36 4a 00 00 	movl   $0x4a36,(%esp)
    185d:	e8 c0 27 00 00       	call   4022 <unlink>
  if(open("lf1", 0) >= 0){
    1862:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1869:	00 
    186a:	c7 04 24 36 4a 00 00 	movl   $0x4a36,(%esp)
    1871:	e8 9c 27 00 00       	call   4012 <open>
    1876:	85 c0                	test   %eax,%eax
    1878:	0f 89 79 01 00 00    	jns    19f7 <linktest+0x237>
  fd = open("lf2", 0);
    187e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1885:	00 
    1886:	c7 04 24 3a 4a 00 00 	movl   $0x4a3a,(%esp)
    188d:	e8 80 27 00 00       	call   4012 <open>
  if(fd < 0){
    1892:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    1894:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1896:	0f 88 3b 01 00 00    	js     19d7 <linktest+0x217>
  if(read(fd, buf, sizeof(buf)) != 5){
    189c:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    18a3:	00 
    18a4:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    18ab:	00 
    18ac:	89 04 24             	mov    %eax,(%esp)
    18af:	e8 36 27 00 00       	call   3fea <read>
    18b4:	83 f8 05             	cmp    $0x5,%eax
    18b7:	0f 85 fa 00 00 00    	jne    19b7 <linktest+0x1f7>
  close(fd);
    18bd:	89 1c 24             	mov    %ebx,(%esp)
    18c0:	e8 35 27 00 00       	call   3ffa <close>
  if(link("lf2", "lf2") >= 0){
    18c5:	c7 44 24 04 3a 4a 00 	movl   $0x4a3a,0x4(%esp)
    18cc:	00 
    18cd:	c7 04 24 3a 4a 00 00 	movl   $0x4a3a,(%esp)
    18d4:	e8 59 27 00 00       	call   4032 <link>
    18d9:	85 c0                	test   %eax,%eax
    18db:	0f 89 b6 00 00 00    	jns    1997 <linktest+0x1d7>
  unlink("lf2");
    18e1:	c7 04 24 3a 4a 00 00 	movl   $0x4a3a,(%esp)
    18e8:	e8 35 27 00 00       	call   4022 <unlink>
  if(link("lf2", "lf1") >= 0){
    18ed:	c7 44 24 04 36 4a 00 	movl   $0x4a36,0x4(%esp)
    18f4:	00 
    18f5:	c7 04 24 3a 4a 00 00 	movl   $0x4a3a,(%esp)
    18fc:	e8 31 27 00 00       	call   4032 <link>
    1901:	85 c0                	test   %eax,%eax
    1903:	79 72                	jns    1977 <linktest+0x1b7>
  if(link(".", "lf1") >= 0){
    1905:	c7 44 24 04 36 4a 00 	movl   $0x4a36,0x4(%esp)
    190c:	00 
    190d:	c7 04 24 fe 4c 00 00 	movl   $0x4cfe,(%esp)
    1914:	e8 19 27 00 00       	call   4032 <link>
    1919:	85 c0                	test   %eax,%eax
    191b:	79 3a                	jns    1957 <linktest+0x197>
  printf(1, "linktest ok\n");
    191d:	c7 44 24 04 d4 4a 00 	movl   $0x4ad4,0x4(%esp)
    1924:	00 
    1925:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    192c:	e8 ef 27 00 00       	call   4120 <printf>
}
    1931:	83 c4 14             	add    $0x14,%esp
    1934:	5b                   	pop    %ebx
    1935:	5d                   	pop    %ebp
    1936:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    1937:	c7 44 24 04 3e 4a 00 	movl   $0x4a3e,0x4(%esp)
    193e:	00 
    193f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1946:	e8 d5 27 00 00       	call   4120 <printf>
    exit(-1);
    194b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1952:	e8 7b 26 00 00       	call   3fd2 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1957:	c7 44 24 04 b8 4a 00 	movl   $0x4ab8,0x4(%esp)
    195e:	00 
    195f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1966:	e8 b5 27 00 00       	call   4120 <printf>
    exit(0);
    196b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1972:	e8 5b 26 00 00       	call   3fd2 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    1977:	c7 44 24 04 6c 56 00 	movl   $0x566c,0x4(%esp)
    197e:	00 
    197f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1986:	e8 95 27 00 00       	call   4120 <printf>
    exit(0);
    198b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1992:	e8 3b 26 00 00       	call   3fd2 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1997:	c7 44 24 04 9a 4a 00 	movl   $0x4a9a,0x4(%esp)
    199e:	00 
    199f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19a6:	e8 75 27 00 00       	call   4120 <printf>
    exit(0);
    19ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19b2:	e8 1b 26 00 00       	call   3fd2 <exit>
    printf(1, "read lf2 failed\n");
    19b7:	c7 44 24 04 89 4a 00 	movl   $0x4a89,0x4(%esp)
    19be:	00 
    19bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19c6:	e8 55 27 00 00       	call   4120 <printf>
    exit(-1);
    19cb:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    19d2:	e8 fb 25 00 00       	call   3fd2 <exit>
    printf(1, "open lf2 failed\n");
    19d7:	c7 44 24 04 78 4a 00 	movl   $0x4a78,0x4(%esp)
    19de:	00 
    19df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19e6:	e8 35 27 00 00       	call   4120 <printf>
    exit(-1);
    19eb:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    19f2:	e8 db 25 00 00       	call   3fd2 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    19f7:	c7 44 24 04 44 56 00 	movl   $0x5644,0x4(%esp)
    19fe:	00 
    19ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a06:	e8 15 27 00 00       	call   4120 <printf>
    exit(-1);
    1a0b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1a12:	e8 bb 25 00 00       	call   3fd2 <exit>
    printf(1, "link lf1 lf2 failed\n");
    1a17:	c7 44 24 04 63 4a 00 	movl   $0x4a63,0x4(%esp)
    1a1e:	00 
    1a1f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a26:	e8 f5 26 00 00       	call   4120 <printf>
    exit(-1);
    1a2b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1a32:	e8 9b 25 00 00       	call   3fd2 <exit>
    printf(1, "write lf1 failed\n");
    1a37:	c7 44 24 04 51 4a 00 	movl   $0x4a51,0x4(%esp)
    1a3e:	00 
    1a3f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a46:	e8 d5 26 00 00       	call   4120 <printf>
    exit(-1);
    1a4b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1a52:	e8 7b 25 00 00       	call   3fd2 <exit>
    1a57:	89 f6                	mov    %esi,%esi
    1a59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001a60 <concreate>:
{
    1a60:	55                   	push   %ebp
    1a61:	89 e5                	mov    %esp,%ebp
    1a63:	57                   	push   %edi
    1a64:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    1a65:	31 f6                	xor    %esi,%esi
{
    1a67:	53                   	push   %ebx
    1a68:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "concreate test\n");
    1a6b:	c7 44 24 04 e1 4a 00 	movl   $0x4ae1,0x4(%esp)
    1a72:	00 
    1a73:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    1a76:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a7d:	e8 9e 26 00 00       	call   4120 <printf>
  file[0] = 'C';
    1a82:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1a86:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1a8a:	eb 5a                	jmp    1ae6 <concreate+0x86>
    1a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1a90:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1a95:	89 f1                	mov    %esi,%ecx
    1a97:	f7 ee                	imul   %esi
    1a99:	89 f0                	mov    %esi,%eax
    1a9b:	c1 f8 1f             	sar    $0x1f,%eax
    1a9e:	29 c2                	sub    %eax,%edx
    1aa0:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1aa3:	29 c1                	sub    %eax,%ecx
    1aa5:	83 f9 01             	cmp    $0x1,%ecx
    1aa8:	0f 84 8a 00 00 00    	je     1b38 <concreate+0xd8>
      fd = open(file, O_CREATE | O_RDWR);
    1aae:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1ab5:	00 
    1ab6:	89 1c 24             	mov    %ebx,(%esp)
    1ab9:	e8 54 25 00 00       	call   4012 <open>
      if(fd < 0){
    1abe:	85 c0                	test   %eax,%eax
    1ac0:	0f 88 5e 02 00 00    	js     1d24 <concreate+0x2c4>
      close(fd);
    1ac6:	89 04 24             	mov    %eax,(%esp)
    1ac9:	e8 2c 25 00 00       	call   3ffa <close>
    if(pid == 0)
    1ace:	85 ff                	test   %edi,%edi
    1ad0:	74 59                	je     1b2b <concreate+0xcb>
      wait(0);
    1ad2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1ad9:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1adc:	e8 f9 24 00 00       	call   3fda <wait>
  for(i = 0; i < 40; i++){
    1ae1:	83 fe 28             	cmp    $0x28,%esi
    1ae4:	74 6a                	je     1b50 <concreate+0xf0>
    1ae6:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    1ae9:	89 1c 24             	mov    %ebx,(%esp)
    1aec:	88 45 ae             	mov    %al,-0x52(%ebp)
    1aef:	e8 2e 25 00 00       	call   4022 <unlink>
    pid = fork();
    1af4:	e8 d1 24 00 00       	call   3fca <fork>
    if(pid && (i % 3) == 1){
    1af9:	85 c0                	test   %eax,%eax
    pid = fork();
    1afb:	89 c7                	mov    %eax,%edi
    if(pid && (i % 3) == 1){
    1afd:	75 91                	jne    1a90 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1aff:	b8 67 66 66 66       	mov    $0x66666667,%eax
    1b04:	89 f1                	mov    %esi,%ecx
    1b06:	f7 ee                	imul   %esi
    1b08:	89 f0                	mov    %esi,%eax
    1b0a:	c1 f8 1f             	sar    $0x1f,%eax
    1b0d:	d1 fa                	sar    %edx
    1b0f:	29 c2                	sub    %eax,%edx
    1b11:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1b14:	29 c1                	sub    %eax,%ecx
    1b16:	83 f9 01             	cmp    $0x1,%ecx
    1b19:	75 93                	jne    1aae <concreate+0x4e>
      link("C0", file);
    1b1b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1b1f:	c7 04 24 f1 4a 00 00 	movl   $0x4af1,(%esp)
    1b26:	e8 07 25 00 00       	call   4032 <link>
        exit(0);
    1b2b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b32:	e8 9b 24 00 00       	call   3fd2 <exit>
    1b37:	90                   	nop
      link("C0", file);
    1b38:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1b3c:	c7 04 24 f1 4a 00 00 	movl   $0x4af1,(%esp)
    1b43:	e8 ea 24 00 00       	call   4032 <link>
    1b48:	eb 88                	jmp    1ad2 <concreate+0x72>
    1b4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  memset(fa, 0, sizeof(fa));
    1b50:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1b53:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
    1b5a:	00 
    1b5b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1b5e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b65:	00 
    1b66:	89 04 24             	mov    %eax,(%esp)
    1b69:	e8 f2 22 00 00       	call   3e60 <memset>
  fd = open(".", 0);
    1b6e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b75:	00 
    1b76:	c7 04 24 fe 4c 00 00 	movl   $0x4cfe,(%esp)
    1b7d:	e8 90 24 00 00       	call   4012 <open>
  n = 0;
    1b82:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    1b89:	89 c6                	mov    %eax,%esi
    1b8b:	90                   	nop
    1b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1b90:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
    1b97:	00 
    1b98:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1b9c:	89 34 24             	mov    %esi,(%esp)
    1b9f:	e8 46 24 00 00       	call   3fea <read>
    1ba4:	85 c0                	test   %eax,%eax
    1ba6:	7e 40                	jle    1be8 <concreate+0x188>
    if(de.inum == 0)
    1ba8:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1bad:	74 e1                	je     1b90 <concreate+0x130>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1baf:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1bb3:	75 db                	jne    1b90 <concreate+0x130>
    1bb5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1bb9:	75 d5                	jne    1b90 <concreate+0x130>
      i = de.name[1] - '0';
    1bbb:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1bbf:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1bc2:	83 f8 27             	cmp    $0x27,%eax
    1bc5:	0f 87 7d 01 00 00    	ja     1d48 <concreate+0x2e8>
      if(fa[i]){
    1bcb:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1bd0:	0f 85 b2 01 00 00    	jne    1d88 <concreate+0x328>
      fa[i] = 1;
    1bd6:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1bdb:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1bdf:	eb af                	jmp    1b90 <concreate+0x130>
    1be1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1be8:	89 34 24             	mov    %esi,(%esp)
    1beb:	e8 0a 24 00 00       	call   3ffa <close>
  if(n != 40){
    1bf0:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1bf4:	0f 85 6e 01 00 00    	jne    1d68 <concreate+0x308>
    1bfa:	31 f6                	xor    %esi,%esi
    1bfc:	e9 8b 00 00 00       	jmp    1c8c <concreate+0x22c>
    1c01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
       ((i % 3) == 1 && pid != 0)){
    1c08:	85 ff                	test   %edi,%edi
    1c0a:	0f 84 b5 00 00 00    	je     1cc5 <concreate+0x265>
      close(open(file, 0));
    1c10:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c17:	00 
    1c18:	89 1c 24             	mov    %ebx,(%esp)
    1c1b:	e8 f2 23 00 00       	call   4012 <open>
    1c20:	89 04 24             	mov    %eax,(%esp)
    1c23:	e8 d2 23 00 00       	call   3ffa <close>
      close(open(file, 0));
    1c28:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c2f:	00 
    1c30:	89 1c 24             	mov    %ebx,(%esp)
    1c33:	e8 da 23 00 00       	call   4012 <open>
    1c38:	89 04 24             	mov    %eax,(%esp)
    1c3b:	e8 ba 23 00 00       	call   3ffa <close>
      close(open(file, 0));
    1c40:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c47:	00 
    1c48:	89 1c 24             	mov    %ebx,(%esp)
    1c4b:	e8 c2 23 00 00       	call   4012 <open>
    1c50:	89 04 24             	mov    %eax,(%esp)
    1c53:	e8 a2 23 00 00       	call   3ffa <close>
      close(open(file, 0));
    1c58:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c5f:	00 
    1c60:	89 1c 24             	mov    %ebx,(%esp)
    1c63:	e8 aa 23 00 00       	call   4012 <open>
    1c68:	89 04 24             	mov    %eax,(%esp)
    1c6b:	e8 8a 23 00 00       	call   3ffa <close>
    if(pid == 0)
    1c70:	85 ff                	test   %edi,%edi
    1c72:	0f 84 b3 fe ff ff    	je     1b2b <concreate+0xcb>
      wait(0);
    1c78:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1c7f:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1c82:	e8 53 23 00 00       	call   3fda <wait>
  for(i = 0; i < 40; i++){
    1c87:	83 fe 28             	cmp    $0x28,%esi
    1c8a:	74 5c                	je     1ce8 <concreate+0x288>
    1c8c:	8d 46 30             	lea    0x30(%esi),%eax
    1c8f:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1c92:	e8 33 23 00 00       	call   3fca <fork>
    if(pid < 0){
    1c97:	85 c0                	test   %eax,%eax
    pid = fork();
    1c99:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1c9b:	78 67                	js     1d04 <concreate+0x2a4>
    if(((i % 3) == 0 && pid == 0) ||
    1c9d:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1ca2:	f7 ee                	imul   %esi
    1ca4:	89 f0                	mov    %esi,%eax
    1ca6:	c1 f8 1f             	sar    $0x1f,%eax
    1ca9:	29 c2                	sub    %eax,%edx
    1cab:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1cae:	89 f2                	mov    %esi,%edx
    1cb0:	29 c2                	sub    %eax,%edx
    1cb2:	89 d0                	mov    %edx,%eax
    1cb4:	09 f8                	or     %edi,%eax
    1cb6:	0f 84 54 ff ff ff    	je     1c10 <concreate+0x1b0>
    1cbc:	83 fa 01             	cmp    $0x1,%edx
    1cbf:	0f 84 43 ff ff ff    	je     1c08 <concreate+0x1a8>
      unlink(file);
    1cc5:	89 1c 24             	mov    %ebx,(%esp)
    1cc8:	e8 55 23 00 00       	call   4022 <unlink>
      unlink(file);
    1ccd:	89 1c 24             	mov    %ebx,(%esp)
    1cd0:	e8 4d 23 00 00       	call   4022 <unlink>
      unlink(file);
    1cd5:	89 1c 24             	mov    %ebx,(%esp)
    1cd8:	e8 45 23 00 00       	call   4022 <unlink>
      unlink(file);
    1cdd:	89 1c 24             	mov    %ebx,(%esp)
    1ce0:	e8 3d 23 00 00       	call   4022 <unlink>
    1ce5:	eb 89                	jmp    1c70 <concreate+0x210>
    1ce7:	90                   	nop
  printf(1, "concreate ok\n");
    1ce8:	c7 44 24 04 46 4b 00 	movl   $0x4b46,0x4(%esp)
    1cef:	00 
    1cf0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cf7:	e8 24 24 00 00       	call   4120 <printf>
}
    1cfc:	83 c4 5c             	add    $0x5c,%esp
    1cff:	5b                   	pop    %ebx
    1d00:	5e                   	pop    %esi
    1d01:	5f                   	pop    %edi
    1d02:	5d                   	pop    %ebp
    1d03:	c3                   	ret    
      printf(1, "fork failed\n");
    1d04:	c7 44 24 04 c9 53 00 	movl   $0x53c9,0x4(%esp)
    1d0b:	00 
    1d0c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d13:	e8 08 24 00 00       	call   4120 <printf>
      exit(-1);
    1d18:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1d1f:	e8 ae 22 00 00       	call   3fd2 <exit>
        printf(1, "concreate create %s failed\n", file);
    1d24:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1d28:	c7 44 24 04 f4 4a 00 	movl   $0x4af4,0x4(%esp)
    1d2f:	00 
    1d30:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d37:	e8 e4 23 00 00       	call   4120 <printf>
        exit(-1);
    1d3c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1d43:	e8 8a 22 00 00       	call   3fd2 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1d48:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d4b:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d4f:	c7 44 24 04 10 4b 00 	movl   $0x4b10,0x4(%esp)
    1d56:	00 
    1d57:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d5e:	e8 bd 23 00 00       	call   4120 <printf>
    1d63:	e9 c3 fd ff ff       	jmp    1b2b <concreate+0xcb>
    printf(1, "concreate not enough files in directory listing\n");
    1d68:	c7 44 24 04 90 56 00 	movl   $0x5690,0x4(%esp)
    1d6f:	00 
    1d70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d77:	e8 a4 23 00 00       	call   4120 <printf>
    exit(-1);
    1d7c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1d83:	e8 4a 22 00 00       	call   3fd2 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1d88:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d8b:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d8f:	c7 44 24 04 29 4b 00 	movl   $0x4b29,0x4(%esp)
    1d96:	00 
    1d97:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d9e:	e8 7d 23 00 00       	call   4120 <printf>
        exit(0);
    1da3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1daa:	e8 23 22 00 00       	call   3fd2 <exit>
    1daf:	90                   	nop

00001db0 <linkunlink>:
{
    1db0:	55                   	push   %ebp
    1db1:	89 e5                	mov    %esp,%ebp
    1db3:	57                   	push   %edi
    1db4:	56                   	push   %esi
    1db5:	53                   	push   %ebx
    1db6:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "linkunlink test\n");
    1db9:	c7 44 24 04 54 4b 00 	movl   $0x4b54,0x4(%esp)
    1dc0:	00 
    1dc1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1dc8:	e8 53 23 00 00       	call   4120 <printf>
  unlink("x");
    1dcd:	c7 04 24 e1 4d 00 00 	movl   $0x4de1,(%esp)
    1dd4:	e8 49 22 00 00       	call   4022 <unlink>
  pid = fork();
    1dd9:	e8 ec 21 00 00       	call   3fca <fork>
  if(pid < 0){
    1dde:	85 c0                	test   %eax,%eax
  pid = fork();
    1de0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1de3:	0f 88 c0 00 00 00    	js     1ea9 <linkunlink+0xf9>
  unsigned int x = (pid ? 1 : 97);
    1de9:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1ded:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1df2:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1df7:	19 ff                	sbb    %edi,%edi
    1df9:	83 e7 60             	and    $0x60,%edi
    1dfc:	83 c7 01             	add    $0x1,%edi
    1dff:	eb 21                	jmp    1e22 <linkunlink+0x72>
    1e01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1e08:	83 fa 01             	cmp    $0x1,%edx
    1e0b:	0f 84 7f 00 00 00    	je     1e90 <linkunlink+0xe0>
      unlink("x");
    1e11:	c7 04 24 e1 4d 00 00 	movl   $0x4de1,(%esp)
    1e18:	e8 05 22 00 00       	call   4022 <unlink>
  for(i = 0; i < 100; i++){
    1e1d:	83 eb 01             	sub    $0x1,%ebx
    1e20:	74 3c                	je     1e5e <linkunlink+0xae>
    x = x * 1103515245 + 12345;
    1e22:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1e28:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1e2e:	89 f8                	mov    %edi,%eax
    1e30:	f7 e6                	mul    %esi
    1e32:	d1 ea                	shr    %edx
    1e34:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1e37:	89 fa                	mov    %edi,%edx
    1e39:	29 c2                	sub    %eax,%edx
    1e3b:	75 cb                	jne    1e08 <linkunlink+0x58>
      close(open("x", O_RDWR | O_CREATE));
    1e3d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1e44:	00 
    1e45:	c7 04 24 e1 4d 00 00 	movl   $0x4de1,(%esp)
    1e4c:	e8 c1 21 00 00       	call   4012 <open>
    1e51:	89 04 24             	mov    %eax,(%esp)
    1e54:	e8 a1 21 00 00       	call   3ffa <close>
  for(i = 0; i < 100; i++){
    1e59:	83 eb 01             	sub    $0x1,%ebx
    1e5c:	75 c4                	jne    1e22 <linkunlink+0x72>
  if(pid)
    1e5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    wait(0);
    1e61:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid)
    1e68:	85 c0                	test   %eax,%eax
    1e6a:	74 5d                	je     1ec9 <linkunlink+0x119>
    wait(0);
    1e6c:	e8 69 21 00 00       	call   3fda <wait>
  printf(1, "linkunlink ok\n");
    1e71:	c7 44 24 04 69 4b 00 	movl   $0x4b69,0x4(%esp)
    1e78:	00 
    1e79:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e80:	e8 9b 22 00 00       	call   4120 <printf>
}
    1e85:	83 c4 1c             	add    $0x1c,%esp
    1e88:	5b                   	pop    %ebx
    1e89:	5e                   	pop    %esi
    1e8a:	5f                   	pop    %edi
    1e8b:	5d                   	pop    %ebp
    1e8c:	c3                   	ret    
    1e8d:	8d 76 00             	lea    0x0(%esi),%esi
      link("cat", "x");
    1e90:	c7 44 24 04 e1 4d 00 	movl   $0x4de1,0x4(%esp)
    1e97:	00 
    1e98:	c7 04 24 65 4b 00 00 	movl   $0x4b65,(%esp)
    1e9f:	e8 8e 21 00 00       	call   4032 <link>
    1ea4:	e9 74 ff ff ff       	jmp    1e1d <linkunlink+0x6d>
    printf(1, "fork failed\n");
    1ea9:	c7 44 24 04 c9 53 00 	movl   $0x53c9,0x4(%esp)
    1eb0:	00 
    1eb1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1eb8:	e8 63 22 00 00       	call   4120 <printf>
    exit(-1);
    1ebd:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1ec4:	e8 09 21 00 00       	call   3fd2 <exit>
    exit(0);
    1ec9:	e8 04 21 00 00       	call   3fd2 <exit>
    1ece:	66 90                	xchg   %ax,%ax

00001ed0 <bigdir>:
{
    1ed0:	55                   	push   %ebp
    1ed1:	89 e5                	mov    %esp,%ebp
    1ed3:	56                   	push   %esi
    1ed4:	53                   	push   %ebx
    1ed5:	83 ec 20             	sub    $0x20,%esp
  printf(1, "bigdir test\n");
    1ed8:	c7 44 24 04 78 4b 00 	movl   $0x4b78,0x4(%esp)
    1edf:	00 
    1ee0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ee7:	e8 34 22 00 00       	call   4120 <printf>
  unlink("bd");
    1eec:	c7 04 24 85 4b 00 00 	movl   $0x4b85,(%esp)
    1ef3:	e8 2a 21 00 00       	call   4022 <unlink>
  fd = open("bd", O_CREATE);
    1ef8:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    1eff:	00 
    1f00:	c7 04 24 85 4b 00 00 	movl   $0x4b85,(%esp)
    1f07:	e8 06 21 00 00       	call   4012 <open>
  if(fd < 0){
    1f0c:	85 c0                	test   %eax,%eax
    1f0e:	0f 88 f4 00 00 00    	js     2008 <bigdir+0x138>
  close(fd);
    1f14:	89 04 24             	mov    %eax,(%esp)
  for(i = 0; i < 500; i++){
    1f17:	31 db                	xor    %ebx,%ebx
  close(fd);
    1f19:	e8 dc 20 00 00       	call   3ffa <close>
    1f1e:	8d 75 ee             	lea    -0x12(%ebp),%esi
    1f21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1f28:	89 d8                	mov    %ebx,%eax
    1f2a:	c1 f8 06             	sar    $0x6,%eax
    1f2d:	83 c0 30             	add    $0x30,%eax
    1f30:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f33:	89 d8                	mov    %ebx,%eax
    1f35:	83 e0 3f             	and    $0x3f,%eax
    1f38:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    1f3b:	89 74 24 04          	mov    %esi,0x4(%esp)
    1f3f:	c7 04 24 85 4b 00 00 	movl   $0x4b85,(%esp)
    name[0] = 'x';
    1f46:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1f4a:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1f4d:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(link("bd", name) != 0){
    1f51:	e8 dc 20 00 00       	call   4032 <link>
    1f56:	85 c0                	test   %eax,%eax
    1f58:	75 6e                	jne    1fc8 <bigdir+0xf8>
  for(i = 0; i < 500; i++){
    1f5a:	83 c3 01             	add    $0x1,%ebx
    1f5d:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1f63:	75 c3                	jne    1f28 <bigdir+0x58>
  unlink("bd");
    1f65:	c7 04 24 85 4b 00 00 	movl   $0x4b85,(%esp)
  for(i = 0; i < 500; i++){
    1f6c:	66 31 db             	xor    %bx,%bx
  unlink("bd");
    1f6f:	e8 ae 20 00 00       	call   4022 <unlink>
    1f74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1f78:	89 d8                	mov    %ebx,%eax
    1f7a:	c1 f8 06             	sar    $0x6,%eax
    1f7d:	83 c0 30             	add    $0x30,%eax
    1f80:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f83:	89 d8                	mov    %ebx,%eax
    1f85:	83 e0 3f             	and    $0x3f,%eax
    1f88:	83 c0 30             	add    $0x30,%eax
    if(unlink(name) != 0){
    1f8b:	89 34 24             	mov    %esi,(%esp)
    name[0] = 'x';
    1f8e:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1f92:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1f95:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(unlink(name) != 0){
    1f99:	e8 84 20 00 00       	call   4022 <unlink>
    1f9e:	85 c0                	test   %eax,%eax
    1fa0:	75 46                	jne    1fe8 <bigdir+0x118>
  for(i = 0; i < 500; i++){
    1fa2:	83 c3 01             	add    $0x1,%ebx
    1fa5:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1fab:	75 cb                	jne    1f78 <bigdir+0xa8>
  printf(1, "bigdir ok\n");
    1fad:	c7 44 24 04 c7 4b 00 	movl   $0x4bc7,0x4(%esp)
    1fb4:	00 
    1fb5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fbc:	e8 5f 21 00 00       	call   4120 <printf>
}
    1fc1:	83 c4 20             	add    $0x20,%esp
    1fc4:	5b                   	pop    %ebx
    1fc5:	5e                   	pop    %esi
    1fc6:	5d                   	pop    %ebp
    1fc7:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1fc8:	c7 44 24 04 9e 4b 00 	movl   $0x4b9e,0x4(%esp)
    1fcf:	00 
    1fd0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fd7:	e8 44 21 00 00       	call   4120 <printf>
      exit(-1);
    1fdc:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    1fe3:	e8 ea 1f 00 00       	call   3fd2 <exit>
      printf(1, "bigdir unlink failed");
    1fe8:	c7 44 24 04 b2 4b 00 	movl   $0x4bb2,0x4(%esp)
    1fef:	00 
    1ff0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ff7:	e8 24 21 00 00       	call   4120 <printf>
      exit(-1);
    1ffc:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2003:	e8 ca 1f 00 00       	call   3fd2 <exit>
    printf(1, "bigdir create failed\n");
    2008:	c7 44 24 04 88 4b 00 	movl   $0x4b88,0x4(%esp)
    200f:	00 
    2010:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2017:	e8 04 21 00 00       	call   4120 <printf>
    exit(-1);
    201c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2023:	e8 aa 1f 00 00       	call   3fd2 <exit>
    2028:	90                   	nop
    2029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002030 <subdir>:
{
    2030:	55                   	push   %ebp
    2031:	89 e5                	mov    %esp,%ebp
    2033:	53                   	push   %ebx
    2034:	83 ec 14             	sub    $0x14,%esp
  printf(1, "subdir test\n");
    2037:	c7 44 24 04 d2 4b 00 	movl   $0x4bd2,0x4(%esp)
    203e:	00 
    203f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2046:	e8 d5 20 00 00       	call   4120 <printf>
  unlink("ff");
    204b:	c7 04 24 5b 4c 00 00 	movl   $0x4c5b,(%esp)
    2052:	e8 cb 1f 00 00       	call   4022 <unlink>
  if(mkdir("dd") != 0){
    2057:	c7 04 24 f8 4c 00 00 	movl   $0x4cf8,(%esp)
    205e:	e8 d7 1f 00 00       	call   403a <mkdir>
    2063:	85 c0                	test   %eax,%eax
    2065:	0f 85 a1 06 00 00    	jne    270c <subdir+0x6dc>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    206b:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2072:	00 
    2073:	c7 04 24 31 4c 00 00 	movl   $0x4c31,(%esp)
    207a:	e8 93 1f 00 00       	call   4012 <open>
  if(fd < 0){
    207f:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2081:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2083:	0f 88 63 06 00 00    	js     26ec <subdir+0x6bc>
  write(fd, "ff", 2);
    2089:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2090:	00 
    2091:	c7 44 24 04 5b 4c 00 	movl   $0x4c5b,0x4(%esp)
    2098:	00 
    2099:	89 04 24             	mov    %eax,(%esp)
    209c:	e8 51 1f 00 00       	call   3ff2 <write>
  close(fd);
    20a1:	89 1c 24             	mov    %ebx,(%esp)
    20a4:	e8 51 1f 00 00       	call   3ffa <close>
  if(unlink("dd") >= 0){
    20a9:	c7 04 24 f8 4c 00 00 	movl   $0x4cf8,(%esp)
    20b0:	e8 6d 1f 00 00       	call   4022 <unlink>
    20b5:	85 c0                	test   %eax,%eax
    20b7:	0f 89 0f 06 00 00    	jns    26cc <subdir+0x69c>
  if(mkdir("/dd/dd") != 0){
    20bd:	c7 04 24 0c 4c 00 00 	movl   $0x4c0c,(%esp)
    20c4:	e8 71 1f 00 00       	call   403a <mkdir>
    20c9:	85 c0                	test   %eax,%eax
    20cb:	0f 85 db 05 00 00    	jne    26ac <subdir+0x67c>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    20d1:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    20d8:	00 
    20d9:	c7 04 24 2e 4c 00 00 	movl   $0x4c2e,(%esp)
    20e0:	e8 2d 1f 00 00       	call   4012 <open>
  if(fd < 0){
    20e5:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    20e7:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20e9:	0f 88 5d 04 00 00    	js     254c <subdir+0x51c>
  write(fd, "FF", 2);
    20ef:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    20f6:	00 
    20f7:	c7 44 24 04 4f 4c 00 	movl   $0x4c4f,0x4(%esp)
    20fe:	00 
    20ff:	89 04 24             	mov    %eax,(%esp)
    2102:	e8 eb 1e 00 00       	call   3ff2 <write>
  close(fd);
    2107:	89 1c 24             	mov    %ebx,(%esp)
    210a:	e8 eb 1e 00 00       	call   3ffa <close>
  fd = open("dd/dd/../ff", 0);
    210f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2116:	00 
    2117:	c7 04 24 52 4c 00 00 	movl   $0x4c52,(%esp)
    211e:	e8 ef 1e 00 00       	call   4012 <open>
  if(fd < 0){
    2123:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    2125:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2127:	0f 88 ff 03 00 00    	js     252c <subdir+0x4fc>
  cc = read(fd, buf, sizeof(buf));
    212d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2134:	00 
    2135:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    213c:	00 
    213d:	89 04 24             	mov    %eax,(%esp)
    2140:	e8 a5 1e 00 00       	call   3fea <read>
  if(cc != 2 || buf[0] != 'f'){
    2145:	83 f8 02             	cmp    $0x2,%eax
    2148:	0f 85 fe 02 00 00    	jne    244c <subdir+0x41c>
    214e:	80 3d e0 8c 00 00 66 	cmpb   $0x66,0x8ce0
    2155:	0f 85 f1 02 00 00    	jne    244c <subdir+0x41c>
  close(fd);
    215b:	89 1c 24             	mov    %ebx,(%esp)
    215e:	e8 97 1e 00 00       	call   3ffa <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2163:	c7 44 24 04 92 4c 00 	movl   $0x4c92,0x4(%esp)
    216a:	00 
    216b:	c7 04 24 2e 4c 00 00 	movl   $0x4c2e,(%esp)
    2172:	e8 bb 1e 00 00       	call   4032 <link>
    2177:	85 c0                	test   %eax,%eax
    2179:	0f 85 0d 04 00 00    	jne    258c <subdir+0x55c>
  if(unlink("dd/dd/ff") != 0){
    217f:	c7 04 24 2e 4c 00 00 	movl   $0x4c2e,(%esp)
    2186:	e8 97 1e 00 00       	call   4022 <unlink>
    218b:	85 c0                	test   %eax,%eax
    218d:	0f 85 f9 02 00 00    	jne    248c <subdir+0x45c>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2193:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    219a:	00 
    219b:	c7 04 24 2e 4c 00 00 	movl   $0x4c2e,(%esp)
    21a2:	e8 6b 1e 00 00       	call   4012 <open>
    21a7:	85 c0                	test   %eax,%eax
    21a9:	0f 89 dd 04 00 00    	jns    268c <subdir+0x65c>
  if(chdir("dd") != 0){
    21af:	c7 04 24 f8 4c 00 00 	movl   $0x4cf8,(%esp)
    21b6:	e8 87 1e 00 00       	call   4042 <chdir>
    21bb:	85 c0                	test   %eax,%eax
    21bd:	0f 85 a9 04 00 00    	jne    266c <subdir+0x63c>
  if(chdir("dd/../../dd") != 0){
    21c3:	c7 04 24 c6 4c 00 00 	movl   $0x4cc6,(%esp)
    21ca:	e8 73 1e 00 00       	call   4042 <chdir>
    21cf:	85 c0                	test   %eax,%eax
    21d1:	0f 85 95 02 00 00    	jne    246c <subdir+0x43c>
  if(chdir("dd/../../../dd") != 0){
    21d7:	c7 04 24 ec 4c 00 00 	movl   $0x4cec,(%esp)
    21de:	e8 5f 1e 00 00       	call   4042 <chdir>
    21e3:	85 c0                	test   %eax,%eax
    21e5:	0f 85 81 02 00 00    	jne    246c <subdir+0x43c>
  if(chdir("./..") != 0){
    21eb:	c7 04 24 fb 4c 00 00 	movl   $0x4cfb,(%esp)
    21f2:	e8 4b 1e 00 00       	call   4042 <chdir>
    21f7:	85 c0                	test   %eax,%eax
    21f9:	0f 85 6d 03 00 00    	jne    256c <subdir+0x53c>
  fd = open("dd/dd/ffff", 0);
    21ff:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2206:	00 
    2207:	c7 04 24 92 4c 00 00 	movl   $0x4c92,(%esp)
    220e:	e8 ff 1d 00 00       	call   4012 <open>
  if(fd < 0){
    2213:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    2215:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2217:	0f 88 6f 06 00 00    	js     288c <subdir+0x85c>
  if(read(fd, buf, sizeof(buf)) != 2){
    221d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2224:	00 
    2225:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    222c:	00 
    222d:	89 04 24             	mov    %eax,(%esp)
    2230:	e8 b5 1d 00 00       	call   3fea <read>
    2235:	83 f8 02             	cmp    $0x2,%eax
    2238:	0f 85 2e 06 00 00    	jne    286c <subdir+0x83c>
  close(fd);
    223e:	89 1c 24             	mov    %ebx,(%esp)
    2241:	e8 b4 1d 00 00       	call   3ffa <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2246:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    224d:	00 
    224e:	c7 04 24 2e 4c 00 00 	movl   $0x4c2e,(%esp)
    2255:	e8 b8 1d 00 00       	call   4012 <open>
    225a:	85 c0                	test   %eax,%eax
    225c:	0f 89 6a 02 00 00    	jns    24cc <subdir+0x49c>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2262:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2269:	00 
    226a:	c7 04 24 46 4d 00 00 	movl   $0x4d46,(%esp)
    2271:	e8 9c 1d 00 00       	call   4012 <open>
    2276:	85 c0                	test   %eax,%eax
    2278:	0f 89 2e 02 00 00    	jns    24ac <subdir+0x47c>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    227e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2285:	00 
    2286:	c7 04 24 6b 4d 00 00 	movl   $0x4d6b,(%esp)
    228d:	e8 80 1d 00 00       	call   4012 <open>
    2292:	85 c0                	test   %eax,%eax
    2294:	0f 89 b2 03 00 00    	jns    264c <subdir+0x61c>
  if(open("dd", O_CREATE) >= 0){
    229a:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    22a1:	00 
    22a2:	c7 04 24 f8 4c 00 00 	movl   $0x4cf8,(%esp)
    22a9:	e8 64 1d 00 00       	call   4012 <open>
    22ae:	85 c0                	test   %eax,%eax
    22b0:	0f 89 76 03 00 00    	jns    262c <subdir+0x5fc>
  if(open("dd", O_RDWR) >= 0){
    22b6:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    22bd:	00 
    22be:	c7 04 24 f8 4c 00 00 	movl   $0x4cf8,(%esp)
    22c5:	e8 48 1d 00 00       	call   4012 <open>
    22ca:	85 c0                	test   %eax,%eax
    22cc:	0f 89 3a 03 00 00    	jns    260c <subdir+0x5dc>
  if(open("dd", O_WRONLY) >= 0){
    22d2:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    22d9:	00 
    22da:	c7 04 24 f8 4c 00 00 	movl   $0x4cf8,(%esp)
    22e1:	e8 2c 1d 00 00       	call   4012 <open>
    22e6:	85 c0                	test   %eax,%eax
    22e8:	0f 89 fe 02 00 00    	jns    25ec <subdir+0x5bc>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    22ee:	c7 44 24 04 da 4d 00 	movl   $0x4dda,0x4(%esp)
    22f5:	00 
    22f6:	c7 04 24 46 4d 00 00 	movl   $0x4d46,(%esp)
    22fd:	e8 30 1d 00 00       	call   4032 <link>
    2302:	85 c0                	test   %eax,%eax
    2304:	0f 84 c2 02 00 00    	je     25cc <subdir+0x59c>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    230a:	c7 44 24 04 da 4d 00 	movl   $0x4dda,0x4(%esp)
    2311:	00 
    2312:	c7 04 24 6b 4d 00 00 	movl   $0x4d6b,(%esp)
    2319:	e8 14 1d 00 00       	call   4032 <link>
    231e:	85 c0                	test   %eax,%eax
    2320:	0f 84 86 02 00 00    	je     25ac <subdir+0x57c>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2326:	c7 44 24 04 92 4c 00 	movl   $0x4c92,0x4(%esp)
    232d:	00 
    232e:	c7 04 24 31 4c 00 00 	movl   $0x4c31,(%esp)
    2335:	e8 f8 1c 00 00       	call   4032 <link>
    233a:	85 c0                	test   %eax,%eax
    233c:	0f 84 ca 01 00 00    	je     250c <subdir+0x4dc>
  if(mkdir("dd/ff/ff") == 0){
    2342:	c7 04 24 46 4d 00 00 	movl   $0x4d46,(%esp)
    2349:	e8 ec 1c 00 00       	call   403a <mkdir>
    234e:	85 c0                	test   %eax,%eax
    2350:	0f 84 96 01 00 00    	je     24ec <subdir+0x4bc>
  if(mkdir("dd/xx/ff") == 0){
    2356:	c7 04 24 6b 4d 00 00 	movl   $0x4d6b,(%esp)
    235d:	e8 d8 1c 00 00       	call   403a <mkdir>
    2362:	85 c0                	test   %eax,%eax
    2364:	0f 84 e2 04 00 00    	je     284c <subdir+0x81c>
  if(mkdir("dd/dd/ffff") == 0){
    236a:	c7 04 24 92 4c 00 00 	movl   $0x4c92,(%esp)
    2371:	e8 c4 1c 00 00       	call   403a <mkdir>
    2376:	85 c0                	test   %eax,%eax
    2378:	0f 84 ae 04 00 00    	je     282c <subdir+0x7fc>
  if(unlink("dd/xx/ff") == 0){
    237e:	c7 04 24 6b 4d 00 00 	movl   $0x4d6b,(%esp)
    2385:	e8 98 1c 00 00       	call   4022 <unlink>
    238a:	85 c0                	test   %eax,%eax
    238c:	0f 84 7a 04 00 00    	je     280c <subdir+0x7dc>
  if(unlink("dd/ff/ff") == 0){
    2392:	c7 04 24 46 4d 00 00 	movl   $0x4d46,(%esp)
    2399:	e8 84 1c 00 00       	call   4022 <unlink>
    239e:	85 c0                	test   %eax,%eax
    23a0:	0f 84 46 04 00 00    	je     27ec <subdir+0x7bc>
  if(chdir("dd/ff") == 0){
    23a6:	c7 04 24 31 4c 00 00 	movl   $0x4c31,(%esp)
    23ad:	e8 90 1c 00 00       	call   4042 <chdir>
    23b2:	85 c0                	test   %eax,%eax
    23b4:	0f 84 12 04 00 00    	je     27cc <subdir+0x79c>
  if(chdir("dd/xx") == 0){
    23ba:	c7 04 24 dd 4d 00 00 	movl   $0x4ddd,(%esp)
    23c1:	e8 7c 1c 00 00       	call   4042 <chdir>
    23c6:	85 c0                	test   %eax,%eax
    23c8:	0f 84 de 03 00 00    	je     27ac <subdir+0x77c>
  if(unlink("dd/dd/ffff") != 0){
    23ce:	c7 04 24 92 4c 00 00 	movl   $0x4c92,(%esp)
    23d5:	e8 48 1c 00 00       	call   4022 <unlink>
    23da:	85 c0                	test   %eax,%eax
    23dc:	0f 85 aa 00 00 00    	jne    248c <subdir+0x45c>
  if(unlink("dd/ff") != 0){
    23e2:	c7 04 24 31 4c 00 00 	movl   $0x4c31,(%esp)
    23e9:	e8 34 1c 00 00       	call   4022 <unlink>
    23ee:	85 c0                	test   %eax,%eax
    23f0:	0f 85 96 03 00 00    	jne    278c <subdir+0x75c>
  if(unlink("dd") == 0){
    23f6:	c7 04 24 f8 4c 00 00 	movl   $0x4cf8,(%esp)
    23fd:	e8 20 1c 00 00       	call   4022 <unlink>
    2402:	85 c0                	test   %eax,%eax
    2404:	0f 84 62 03 00 00    	je     276c <subdir+0x73c>
  if(unlink("dd/dd") < 0){
    240a:	c7 04 24 0d 4c 00 00 	movl   $0x4c0d,(%esp)
    2411:	e8 0c 1c 00 00       	call   4022 <unlink>
    2416:	85 c0                	test   %eax,%eax
    2418:	0f 88 2e 03 00 00    	js     274c <subdir+0x71c>
  if(unlink("dd") < 0){
    241e:	c7 04 24 f8 4c 00 00 	movl   $0x4cf8,(%esp)
    2425:	e8 f8 1b 00 00       	call   4022 <unlink>
    242a:	85 c0                	test   %eax,%eax
    242c:	0f 88 fa 02 00 00    	js     272c <subdir+0x6fc>
  printf(1, "subdir ok\n");
    2432:	c7 44 24 04 da 4e 00 	movl   $0x4eda,0x4(%esp)
    2439:	00 
    243a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2441:	e8 da 1c 00 00       	call   4120 <printf>
}
    2446:	83 c4 14             	add    $0x14,%esp
    2449:	5b                   	pop    %ebx
    244a:	5d                   	pop    %ebp
    244b:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    244c:	c7 44 24 04 77 4c 00 	movl   $0x4c77,0x4(%esp)
    2453:	00 
    2454:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    245b:	e8 c0 1c 00 00       	call   4120 <printf>
    exit(-1);
    2460:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2467:	e8 66 1b 00 00       	call   3fd2 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    246c:	c7 44 24 04 d2 4c 00 	movl   $0x4cd2,0x4(%esp)
    2473:	00 
    2474:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    247b:	e8 a0 1c 00 00       	call   4120 <printf>
    exit(-1);
    2480:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2487:	e8 46 1b 00 00       	call   3fd2 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    248c:	c7 44 24 04 9d 4c 00 	movl   $0x4c9d,0x4(%esp)
    2493:	00 
    2494:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    249b:	e8 80 1c 00 00       	call   4120 <printf>
    exit(-1);
    24a0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    24a7:	e8 26 1b 00 00       	call   3fd2 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    24ac:	c7 44 24 04 4f 4d 00 	movl   $0x4d4f,0x4(%esp)
    24b3:	00 
    24b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24bb:	e8 60 1c 00 00       	call   4120 <printf>
    exit(0);
    24c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24c7:	e8 06 1b 00 00       	call   3fd2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    24cc:	c7 44 24 04 34 57 00 	movl   $0x5734,0x4(%esp)
    24d3:	00 
    24d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24db:	e8 40 1c 00 00       	call   4120 <printf>
    exit(0);
    24e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24e7:	e8 e6 1a 00 00       	call   3fd2 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    24ec:	c7 44 24 04 e3 4d 00 	movl   $0x4de3,0x4(%esp)
    24f3:	00 
    24f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24fb:	e8 20 1c 00 00       	call   4120 <printf>
    exit(0);
    2500:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2507:	e8 c6 1a 00 00       	call   3fd2 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    250c:	c7 44 24 04 a4 57 00 	movl   $0x57a4,0x4(%esp)
    2513:	00 
    2514:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    251b:	e8 00 1c 00 00       	call   4120 <printf>
    exit(0);
    2520:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2527:	e8 a6 1a 00 00       	call   3fd2 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    252c:	c7 44 24 04 5e 4c 00 	movl   $0x4c5e,0x4(%esp)
    2533:	00 
    2534:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    253b:	e8 e0 1b 00 00       	call   4120 <printf>
    exit(-1);
    2540:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2547:	e8 86 1a 00 00       	call   3fd2 <exit>
    printf(1, "create dd/dd/ff failed\n");
    254c:	c7 44 24 04 37 4c 00 	movl   $0x4c37,0x4(%esp)
    2553:	00 
    2554:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    255b:	e8 c0 1b 00 00       	call   4120 <printf>
    exit(-1);
    2560:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2567:	e8 66 1a 00 00       	call   3fd2 <exit>
    printf(1, "chdir ./.. failed\n");
    256c:	c7 44 24 04 00 4d 00 	movl   $0x4d00,0x4(%esp)
    2573:	00 
    2574:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    257b:	e8 a0 1b 00 00       	call   4120 <printf>
    exit(-1);
    2580:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2587:	e8 46 1a 00 00       	call   3fd2 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    258c:	c7 44 24 04 ec 56 00 	movl   $0x56ec,0x4(%esp)
    2593:	00 
    2594:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    259b:	e8 80 1b 00 00       	call   4120 <printf>
    exit(-1);
    25a0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    25a7:	e8 26 1a 00 00       	call   3fd2 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    25ac:	c7 44 24 04 80 57 00 	movl   $0x5780,0x4(%esp)
    25b3:	00 
    25b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25bb:	e8 60 1b 00 00       	call   4120 <printf>
    exit(0);
    25c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25c7:	e8 06 1a 00 00       	call   3fd2 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    25cc:	c7 44 24 04 5c 57 00 	movl   $0x575c,0x4(%esp)
    25d3:	00 
    25d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25db:	e8 40 1b 00 00       	call   4120 <printf>
    exit(0);
    25e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25e7:	e8 e6 19 00 00       	call   3fd2 <exit>
    printf(1, "open dd wronly succeeded!\n");
    25ec:	c7 44 24 04 bf 4d 00 	movl   $0x4dbf,0x4(%esp)
    25f3:	00 
    25f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25fb:	e8 20 1b 00 00       	call   4120 <printf>
    exit(0);
    2600:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2607:	e8 c6 19 00 00       	call   3fd2 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    260c:	c7 44 24 04 a6 4d 00 	movl   $0x4da6,0x4(%esp)
    2613:	00 
    2614:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    261b:	e8 00 1b 00 00       	call   4120 <printf>
    exit(0);
    2620:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2627:	e8 a6 19 00 00       	call   3fd2 <exit>
    printf(1, "create dd succeeded!\n");
    262c:	c7 44 24 04 90 4d 00 	movl   $0x4d90,0x4(%esp)
    2633:	00 
    2634:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    263b:	e8 e0 1a 00 00       	call   4120 <printf>
    exit(0);
    2640:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2647:	e8 86 19 00 00       	call   3fd2 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    264c:	c7 44 24 04 74 4d 00 	movl   $0x4d74,0x4(%esp)
    2653:	00 
    2654:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    265b:	e8 c0 1a 00 00       	call   4120 <printf>
    exit(0);
    2660:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2667:	e8 66 19 00 00       	call   3fd2 <exit>
    printf(1, "chdir dd failed\n");
    266c:	c7 44 24 04 b5 4c 00 	movl   $0x4cb5,0x4(%esp)
    2673:	00 
    2674:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    267b:	e8 a0 1a 00 00       	call   4120 <printf>
    exit(-1);
    2680:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2687:	e8 46 19 00 00       	call   3fd2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    268c:	c7 44 24 04 10 57 00 	movl   $0x5710,0x4(%esp)
    2693:	00 
    2694:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    269b:	e8 80 1a 00 00       	call   4120 <printf>
    exit(0);
    26a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26a7:	e8 26 19 00 00       	call   3fd2 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    26ac:	c7 44 24 04 13 4c 00 	movl   $0x4c13,0x4(%esp)
    26b3:	00 
    26b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26bb:	e8 60 1a 00 00       	call   4120 <printf>
    exit(-1);
    26c0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    26c7:	e8 06 19 00 00       	call   3fd2 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    26cc:	c7 44 24 04 c4 56 00 	movl   $0x56c4,0x4(%esp)
    26d3:	00 
    26d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26db:	e8 40 1a 00 00       	call   4120 <printf>
    exit(0);
    26e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26e7:	e8 e6 18 00 00       	call   3fd2 <exit>
    printf(1, "create dd/ff failed\n");
    26ec:	c7 44 24 04 f7 4b 00 	movl   $0x4bf7,0x4(%esp)
    26f3:	00 
    26f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26fb:	e8 20 1a 00 00       	call   4120 <printf>
    exit(-1);
    2700:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2707:	e8 c6 18 00 00       	call   3fd2 <exit>
    printf(1, "subdir mkdir dd failed\n");
    270c:	c7 44 24 04 df 4b 00 	movl   $0x4bdf,0x4(%esp)
    2713:	00 
    2714:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    271b:	e8 00 1a 00 00       	call   4120 <printf>
    exit(-1);
    2720:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2727:	e8 a6 18 00 00       	call   3fd2 <exit>
    printf(1, "unlink dd failed\n");
    272c:	c7 44 24 04 c8 4e 00 	movl   $0x4ec8,0x4(%esp)
    2733:	00 
    2734:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    273b:	e8 e0 19 00 00       	call   4120 <printf>
    exit(-1);
    2740:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2747:	e8 86 18 00 00       	call   3fd2 <exit>
    printf(1, "unlink dd/dd failed\n");
    274c:	c7 44 24 04 b3 4e 00 	movl   $0x4eb3,0x4(%esp)
    2753:	00 
    2754:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    275b:	e8 c0 19 00 00       	call   4120 <printf>
    exit(-1);
    2760:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2767:	e8 66 18 00 00       	call   3fd2 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    276c:	c7 44 24 04 c8 57 00 	movl   $0x57c8,0x4(%esp)
    2773:	00 
    2774:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    277b:	e8 a0 19 00 00       	call   4120 <printf>
    exit(0);
    2780:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2787:	e8 46 18 00 00       	call   3fd2 <exit>
    printf(1, "unlink dd/ff failed\n");
    278c:	c7 44 24 04 9e 4e 00 	movl   $0x4e9e,0x4(%esp)
    2793:	00 
    2794:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    279b:	e8 80 19 00 00       	call   4120 <printf>
    exit(-1);
    27a0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    27a7:	e8 26 18 00 00       	call   3fd2 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    27ac:	c7 44 24 04 86 4e 00 	movl   $0x4e86,0x4(%esp)
    27b3:	00 
    27b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27bb:	e8 60 19 00 00       	call   4120 <printf>
    exit(0);
    27c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27c7:	e8 06 18 00 00       	call   3fd2 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    27cc:	c7 44 24 04 6e 4e 00 	movl   $0x4e6e,0x4(%esp)
    27d3:	00 
    27d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27db:	e8 40 19 00 00       	call   4120 <printf>
    exit(0);
    27e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27e7:	e8 e6 17 00 00       	call   3fd2 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    27ec:	c7 44 24 04 52 4e 00 	movl   $0x4e52,0x4(%esp)
    27f3:	00 
    27f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27fb:	e8 20 19 00 00       	call   4120 <printf>
    exit(0);
    2800:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2807:	e8 c6 17 00 00       	call   3fd2 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    280c:	c7 44 24 04 36 4e 00 	movl   $0x4e36,0x4(%esp)
    2813:	00 
    2814:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    281b:	e8 00 19 00 00       	call   4120 <printf>
    exit(0);
    2820:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2827:	e8 a6 17 00 00       	call   3fd2 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    282c:	c7 44 24 04 19 4e 00 	movl   $0x4e19,0x4(%esp)
    2833:	00 
    2834:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    283b:	e8 e0 18 00 00       	call   4120 <printf>
    exit(0);
    2840:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2847:	e8 86 17 00 00       	call   3fd2 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    284c:	c7 44 24 04 fe 4d 00 	movl   $0x4dfe,0x4(%esp)
    2853:	00 
    2854:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    285b:	e8 c0 18 00 00       	call   4120 <printf>
    exit(0);
    2860:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2867:	e8 66 17 00 00       	call   3fd2 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    286c:	c7 44 24 04 2b 4d 00 	movl   $0x4d2b,0x4(%esp)
    2873:	00 
    2874:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    287b:	e8 a0 18 00 00       	call   4120 <printf>
    exit(-1);
    2880:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2887:	e8 46 17 00 00       	call   3fd2 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    288c:	c7 44 24 04 13 4d 00 	movl   $0x4d13,0x4(%esp)
    2893:	00 
    2894:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    289b:	e8 80 18 00 00       	call   4120 <printf>
    exit(-1);
    28a0:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    28a7:	e8 26 17 00 00       	call   3fd2 <exit>
    28ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000028b0 <bigwrite>:
{
    28b0:	55                   	push   %ebp
    28b1:	89 e5                	mov    %esp,%ebp
    28b3:	56                   	push   %esi
    28b4:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    28b5:	bb f3 01 00 00       	mov    $0x1f3,%ebx
{
    28ba:	83 ec 10             	sub    $0x10,%esp
  printf(1, "bigwrite test\n");
    28bd:	c7 44 24 04 e5 4e 00 	movl   $0x4ee5,0x4(%esp)
    28c4:	00 
    28c5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28cc:	e8 4f 18 00 00       	call   4120 <printf>
  unlink("bigwrite");
    28d1:	c7 04 24 f4 4e 00 00 	movl   $0x4ef4,(%esp)
    28d8:	e8 45 17 00 00       	call   4022 <unlink>
    28dd:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    28e0:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    28e7:	00 
    28e8:	c7 04 24 f4 4e 00 00 	movl   $0x4ef4,(%esp)
    28ef:	e8 1e 17 00 00       	call   4012 <open>
    if(fd < 0){
    28f4:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    28f6:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    28f8:	0f 88 95 00 00 00    	js     2993 <bigwrite+0xe3>
      int cc = write(fd, buf, sz);
    28fe:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2902:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    2909:	00 
    290a:	89 04 24             	mov    %eax,(%esp)
    290d:	e8 e0 16 00 00       	call   3ff2 <write>
      if(cc != sz){
    2912:	39 d8                	cmp    %ebx,%eax
    2914:	75 55                	jne    296b <bigwrite+0xbb>
      int cc = write(fd, buf, sz);
    2916:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    291a:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    2921:	00 
    2922:	89 34 24             	mov    %esi,(%esp)
    2925:	e8 c8 16 00 00       	call   3ff2 <write>
      if(cc != sz){
    292a:	39 c3                	cmp    %eax,%ebx
    292c:	75 3d                	jne    296b <bigwrite+0xbb>
    close(fd);
    292e:	89 34 24             	mov    %esi,(%esp)
  for(sz = 499; sz < 12*512; sz += 471){
    2931:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2937:	e8 be 16 00 00       	call   3ffa <close>
    unlink("bigwrite");
    293c:	c7 04 24 f4 4e 00 00 	movl   $0x4ef4,(%esp)
    2943:	e8 da 16 00 00       	call   4022 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2948:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    294e:	75 90                	jne    28e0 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    2950:	c7 44 24 04 27 4f 00 	movl   $0x4f27,0x4(%esp)
    2957:	00 
    2958:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    295f:	e8 bc 17 00 00       	call   4120 <printf>
}
    2964:	83 c4 10             	add    $0x10,%esp
    2967:	5b                   	pop    %ebx
    2968:	5e                   	pop    %esi
    2969:	5d                   	pop    %ebp
    296a:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    296b:	89 44 24 0c          	mov    %eax,0xc(%esp)
    296f:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2973:	c7 44 24 04 15 4f 00 	movl   $0x4f15,0x4(%esp)
    297a:	00 
    297b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2982:	e8 99 17 00 00       	call   4120 <printf>
        exit(0);
    2987:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    298e:	e8 3f 16 00 00       	call   3fd2 <exit>
      printf(1, "cannot create bigwrite\n");
    2993:	c7 44 24 04 fd 4e 00 	movl   $0x4efd,0x4(%esp)
    299a:	00 
    299b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29a2:	e8 79 17 00 00       	call   4120 <printf>
      exit(-1);
    29a7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    29ae:	e8 1f 16 00 00       	call   3fd2 <exit>
    29b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    29b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000029c0 <bigfile>:
{
    29c0:	55                   	push   %ebp
    29c1:	89 e5                	mov    %esp,%ebp
    29c3:	57                   	push   %edi
    29c4:	56                   	push   %esi
    29c5:	53                   	push   %ebx
    29c6:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "bigfile test\n");
    29c9:	c7 44 24 04 34 4f 00 	movl   $0x4f34,0x4(%esp)
    29d0:	00 
    29d1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29d8:	e8 43 17 00 00       	call   4120 <printf>
  unlink("bigfile");
    29dd:	c7 04 24 50 4f 00 00 	movl   $0x4f50,(%esp)
    29e4:	e8 39 16 00 00       	call   4022 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    29e9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    29f0:	00 
    29f1:	c7 04 24 50 4f 00 00 	movl   $0x4f50,(%esp)
    29f8:	e8 15 16 00 00       	call   4012 <open>
  if(fd < 0){
    29fd:	85 c0                	test   %eax,%eax
  fd = open("bigfile", O_CREATE | O_RDWR);
    29ff:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2a01:	0f 88 a2 01 00 00    	js     2ba9 <bigfile+0x1e9>
    2a07:	31 db                	xor    %ebx,%ebx
    2a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2a10:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2a17:	00 
    2a18:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    2a1c:	c7 04 24 e0 8c 00 00 	movl   $0x8ce0,(%esp)
    2a23:	e8 38 14 00 00       	call   3e60 <memset>
    if(write(fd, buf, 600) != 600){
    2a28:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2a2f:	00 
    2a30:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    2a37:	00 
    2a38:	89 34 24             	mov    %esi,(%esp)
    2a3b:	e8 b2 15 00 00       	call   3ff2 <write>
    2a40:	3d 58 02 00 00       	cmp    $0x258,%eax
    2a45:	0f 85 1e 01 00 00    	jne    2b69 <bigfile+0x1a9>
  for(i = 0; i < 20; i++){
    2a4b:	83 c3 01             	add    $0x1,%ebx
    2a4e:	83 fb 14             	cmp    $0x14,%ebx
    2a51:	75 bd                	jne    2a10 <bigfile+0x50>
  close(fd);
    2a53:	89 34 24             	mov    %esi,(%esp)
    2a56:	e8 9f 15 00 00       	call   3ffa <close>
  fd = open("bigfile", 0);
    2a5b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2a62:	00 
    2a63:	c7 04 24 50 4f 00 00 	movl   $0x4f50,(%esp)
    2a6a:	e8 a3 15 00 00       	call   4012 <open>
  if(fd < 0){
    2a6f:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    2a71:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2a73:	0f 88 10 01 00 00    	js     2b89 <bigfile+0x1c9>
    2a79:	31 db                	xor    %ebx,%ebx
    2a7b:	31 ff                	xor    %edi,%edi
    2a7d:	eb 2f                	jmp    2aae <bigfile+0xee>
    2a7f:	90                   	nop
    if(cc != 300){
    2a80:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2a85:	0f 85 9e 00 00 00    	jne    2b29 <bigfile+0x169>
    if(buf[0] != i/2 || buf[299] != i/2){
    2a8b:	0f be 05 e0 8c 00 00 	movsbl 0x8ce0,%eax
    2a92:	89 fa                	mov    %edi,%edx
    2a94:	d1 fa                	sar    %edx
    2a96:	39 d0                	cmp    %edx,%eax
    2a98:	75 6f                	jne    2b09 <bigfile+0x149>
    2a9a:	0f be 15 0b 8e 00 00 	movsbl 0x8e0b,%edx
    2aa1:	39 d0                	cmp    %edx,%eax
    2aa3:	75 64                	jne    2b09 <bigfile+0x149>
    total += cc;
    2aa5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    2aab:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    2aae:	c7 44 24 08 2c 01 00 	movl   $0x12c,0x8(%esp)
    2ab5:	00 
    2ab6:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    2abd:	00 
    2abe:	89 34 24             	mov    %esi,(%esp)
    2ac1:	e8 24 15 00 00       	call   3fea <read>
    if(cc < 0){
    2ac6:	85 c0                	test   %eax,%eax
    2ac8:	78 7f                	js     2b49 <bigfile+0x189>
    if(cc == 0)
    2aca:	75 b4                	jne    2a80 <bigfile+0xc0>
  close(fd);
    2acc:	89 34 24             	mov    %esi,(%esp)
    2acf:	90                   	nop
    2ad0:	e8 25 15 00 00       	call   3ffa <close>
  if(total != 20*600){
    2ad5:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    2adb:	0f 85 e8 00 00 00    	jne    2bc9 <bigfile+0x209>
  unlink("bigfile");
    2ae1:	c7 04 24 50 4f 00 00 	movl   $0x4f50,(%esp)
    2ae8:	e8 35 15 00 00       	call   4022 <unlink>
  printf(1, "bigfile test ok\n");
    2aed:	c7 44 24 04 df 4f 00 	movl   $0x4fdf,0x4(%esp)
    2af4:	00 
    2af5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2afc:	e8 1f 16 00 00       	call   4120 <printf>
}
    2b01:	83 c4 1c             	add    $0x1c,%esp
    2b04:	5b                   	pop    %ebx
    2b05:	5e                   	pop    %esi
    2b06:	5f                   	pop    %edi
    2b07:	5d                   	pop    %ebp
    2b08:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2b09:	c7 44 24 04 ac 4f 00 	movl   $0x4fac,0x4(%esp)
    2b10:	00 
    2b11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b18:	e8 03 16 00 00       	call   4120 <printf>
      exit(-1);
    2b1d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b24:	e8 a9 14 00 00       	call   3fd2 <exit>
      printf(1, "short read bigfile\n");
    2b29:	c7 44 24 04 98 4f 00 	movl   $0x4f98,0x4(%esp)
    2b30:	00 
    2b31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b38:	e8 e3 15 00 00       	call   4120 <printf>
      exit(-1);
    2b3d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b44:	e8 89 14 00 00       	call   3fd2 <exit>
      printf(1, "read bigfile failed\n");
    2b49:	c7 44 24 04 83 4f 00 	movl   $0x4f83,0x4(%esp)
    2b50:	00 
    2b51:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b58:	e8 c3 15 00 00       	call   4120 <printf>
      exit(-1);
    2b5d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b64:	e8 69 14 00 00       	call   3fd2 <exit>
      printf(1, "write bigfile failed\n");
    2b69:	c7 44 24 04 58 4f 00 	movl   $0x4f58,0x4(%esp)
    2b70:	00 
    2b71:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b78:	e8 a3 15 00 00       	call   4120 <printf>
      exit(-1);
    2b7d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2b84:	e8 49 14 00 00       	call   3fd2 <exit>
    printf(1, "cannot open bigfile\n");
    2b89:	c7 44 24 04 6e 4f 00 	movl   $0x4f6e,0x4(%esp)
    2b90:	00 
    2b91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b98:	e8 83 15 00 00       	call   4120 <printf>
    exit(-1);
    2b9d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2ba4:	e8 29 14 00 00       	call   3fd2 <exit>
    printf(1, "cannot create bigfile");
    2ba9:	c7 44 24 04 42 4f 00 	movl   $0x4f42,0x4(%esp)
    2bb0:	00 
    2bb1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bb8:	e8 63 15 00 00       	call   4120 <printf>
    exit(-1);
    2bbd:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2bc4:	e8 09 14 00 00       	call   3fd2 <exit>
    printf(1, "read bigfile wrong total\n");
    2bc9:	c7 44 24 04 c5 4f 00 	movl   $0x4fc5,0x4(%esp)
    2bd0:	00 
    2bd1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bd8:	e8 43 15 00 00       	call   4120 <printf>
    exit(-1);
    2bdd:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2be4:	e8 e9 13 00 00       	call   3fd2 <exit>
    2be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002bf0 <fourteen>:
{
    2bf0:	55                   	push   %ebp
    2bf1:	89 e5                	mov    %esp,%ebp
    2bf3:	83 ec 18             	sub    $0x18,%esp
  printf(1, "fourteen test\n");
    2bf6:	c7 44 24 04 f0 4f 00 	movl   $0x4ff0,0x4(%esp)
    2bfd:	00 
    2bfe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c05:	e8 16 15 00 00       	call   4120 <printf>
  if(mkdir("12345678901234") != 0){
    2c0a:	c7 04 24 2b 50 00 00 	movl   $0x502b,(%esp)
    2c11:	e8 24 14 00 00       	call   403a <mkdir>
    2c16:	85 c0                	test   %eax,%eax
    2c18:	0f 85 92 00 00 00    	jne    2cb0 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    2c1e:	c7 04 24 e8 57 00 00 	movl   $0x57e8,(%esp)
    2c25:	e8 10 14 00 00       	call   403a <mkdir>
    2c2a:	85 c0                	test   %eax,%eax
    2c2c:	0f 85 1e 01 00 00    	jne    2d50 <fourteen+0x160>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2c32:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2c39:	00 
    2c3a:	c7 04 24 38 58 00 00 	movl   $0x5838,(%esp)
    2c41:	e8 cc 13 00 00       	call   4012 <open>
  if(fd < 0){
    2c46:	85 c0                	test   %eax,%eax
    2c48:	0f 88 e2 00 00 00    	js     2d30 <fourteen+0x140>
  close(fd);
    2c4e:	89 04 24             	mov    %eax,(%esp)
    2c51:	e8 a4 13 00 00       	call   3ffa <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2c56:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2c5d:	00 
    2c5e:	c7 04 24 a8 58 00 00 	movl   $0x58a8,(%esp)
    2c65:	e8 a8 13 00 00       	call   4012 <open>
  if(fd < 0){
    2c6a:	85 c0                	test   %eax,%eax
    2c6c:	0f 88 9e 00 00 00    	js     2d10 <fourteen+0x120>
  close(fd);
    2c72:	89 04 24             	mov    %eax,(%esp)
    2c75:	e8 80 13 00 00       	call   3ffa <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2c7a:	c7 04 24 1c 50 00 00 	movl   $0x501c,(%esp)
    2c81:	e8 b4 13 00 00       	call   403a <mkdir>
    2c86:	85 c0                	test   %eax,%eax
    2c88:	74 66                	je     2cf0 <fourteen+0x100>
  if(mkdir("123456789012345/12345678901234") == 0){
    2c8a:	c7 04 24 44 59 00 00 	movl   $0x5944,(%esp)
    2c91:	e8 a4 13 00 00       	call   403a <mkdir>
    2c96:	85 c0                	test   %eax,%eax
    2c98:	74 36                	je     2cd0 <fourteen+0xe0>
  printf(1, "fourteen ok\n");
    2c9a:	c7 44 24 04 3a 50 00 	movl   $0x503a,0x4(%esp)
    2ca1:	00 
    2ca2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ca9:	e8 72 14 00 00       	call   4120 <printf>
}
    2cae:	c9                   	leave  
    2caf:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    2cb0:	c7 44 24 04 ff 4f 00 	movl   $0x4fff,0x4(%esp)
    2cb7:	00 
    2cb8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cbf:	e8 5c 14 00 00       	call   4120 <printf>
    exit(-1);
    2cc4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2ccb:	e8 02 13 00 00       	call   3fd2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2cd0:	c7 44 24 04 64 59 00 	movl   $0x5964,0x4(%esp)
    2cd7:	00 
    2cd8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cdf:	e8 3c 14 00 00       	call   4120 <printf>
    exit(0);
    2ce4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ceb:	e8 e2 12 00 00       	call   3fd2 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2cf0:	c7 44 24 04 14 59 00 	movl   $0x5914,0x4(%esp)
    2cf7:	00 
    2cf8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cff:	e8 1c 14 00 00       	call   4120 <printf>
    exit(0);
    2d04:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d0b:	e8 c2 12 00 00       	call   3fd2 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2d10:	c7 44 24 04 d8 58 00 	movl   $0x58d8,0x4(%esp)
    2d17:	00 
    2d18:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d1f:	e8 fc 13 00 00       	call   4120 <printf>
    exit(-1);
    2d24:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2d2b:	e8 a2 12 00 00       	call   3fd2 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2d30:	c7 44 24 04 68 58 00 	movl   $0x5868,0x4(%esp)
    2d37:	00 
    2d38:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d3f:	e8 dc 13 00 00       	call   4120 <printf>
    exit(-1);
    2d44:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2d4b:	e8 82 12 00 00       	call   3fd2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2d50:	c7 44 24 04 08 58 00 	movl   $0x5808,0x4(%esp)
    2d57:	00 
    2d58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d5f:	e8 bc 13 00 00       	call   4120 <printf>
    exit(-1);
    2d64:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2d6b:	e8 62 12 00 00       	call   3fd2 <exit>

00002d70 <rmdot>:
{
    2d70:	55                   	push   %ebp
    2d71:	89 e5                	mov    %esp,%ebp
    2d73:	83 ec 18             	sub    $0x18,%esp
  printf(1, "rmdot test\n");
    2d76:	c7 44 24 04 47 50 00 	movl   $0x5047,0x4(%esp)
    2d7d:	00 
    2d7e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d85:	e8 96 13 00 00       	call   4120 <printf>
  if(mkdir("dots") != 0){
    2d8a:	c7 04 24 53 50 00 00 	movl   $0x5053,(%esp)
    2d91:	e8 a4 12 00 00       	call   403a <mkdir>
    2d96:	85 c0                	test   %eax,%eax
    2d98:	0f 85 9a 00 00 00    	jne    2e38 <rmdot+0xc8>
  if(chdir("dots") != 0){
    2d9e:	c7 04 24 53 50 00 00 	movl   $0x5053,(%esp)
    2da5:	e8 98 12 00 00       	call   4042 <chdir>
    2daa:	85 c0                	test   %eax,%eax
    2dac:	0f 85 66 01 00 00    	jne    2f18 <rmdot+0x1a8>
  if(unlink(".") == 0){
    2db2:	c7 04 24 fe 4c 00 00 	movl   $0x4cfe,(%esp)
    2db9:	e8 64 12 00 00       	call   4022 <unlink>
    2dbe:	85 c0                	test   %eax,%eax
    2dc0:	0f 84 32 01 00 00    	je     2ef8 <rmdot+0x188>
  if(unlink("..") == 0){
    2dc6:	c7 04 24 fd 4c 00 00 	movl   $0x4cfd,(%esp)
    2dcd:	e8 50 12 00 00       	call   4022 <unlink>
    2dd2:	85 c0                	test   %eax,%eax
    2dd4:	0f 84 fe 00 00 00    	je     2ed8 <rmdot+0x168>
  if(chdir("/") != 0){
    2dda:	c7 04 24 d1 44 00 00 	movl   $0x44d1,(%esp)
    2de1:	e8 5c 12 00 00       	call   4042 <chdir>
    2de6:	85 c0                	test   %eax,%eax
    2de8:	0f 85 ca 00 00 00    	jne    2eb8 <rmdot+0x148>
  if(unlink("dots/.") == 0){
    2dee:	c7 04 24 9b 50 00 00 	movl   $0x509b,(%esp)
    2df5:	e8 28 12 00 00       	call   4022 <unlink>
    2dfa:	85 c0                	test   %eax,%eax
    2dfc:	0f 84 96 00 00 00    	je     2e98 <rmdot+0x128>
  if(unlink("dots/..") == 0){
    2e02:	c7 04 24 b9 50 00 00 	movl   $0x50b9,(%esp)
    2e09:	e8 14 12 00 00       	call   4022 <unlink>
    2e0e:	85 c0                	test   %eax,%eax
    2e10:	74 66                	je     2e78 <rmdot+0x108>
  if(unlink("dots") != 0){
    2e12:	c7 04 24 53 50 00 00 	movl   $0x5053,(%esp)
    2e19:	e8 04 12 00 00       	call   4022 <unlink>
    2e1e:	85 c0                	test   %eax,%eax
    2e20:	75 36                	jne    2e58 <rmdot+0xe8>
  printf(1, "rmdot ok\n");
    2e22:	c7 44 24 04 ee 50 00 	movl   $0x50ee,0x4(%esp)
    2e29:	00 
    2e2a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e31:	e8 ea 12 00 00       	call   4120 <printf>
}
    2e36:	c9                   	leave  
    2e37:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    2e38:	c7 44 24 04 58 50 00 	movl   $0x5058,0x4(%esp)
    2e3f:	00 
    2e40:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e47:	e8 d4 12 00 00       	call   4120 <printf>
    exit(-1);
    2e4c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2e53:	e8 7a 11 00 00       	call   3fd2 <exit>
    printf(1, "unlink dots failed!\n");
    2e58:	c7 44 24 04 d9 50 00 	movl   $0x50d9,0x4(%esp)
    2e5f:	00 
    2e60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e67:	e8 b4 12 00 00       	call   4120 <printf>
    exit(-1);
    2e6c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2e73:	e8 5a 11 00 00       	call   3fd2 <exit>
    printf(1, "unlink dots/.. worked!\n");
    2e78:	c7 44 24 04 c1 50 00 	movl   $0x50c1,0x4(%esp)
    2e7f:	00 
    2e80:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e87:	e8 94 12 00 00       	call   4120 <printf>
    exit(0);
    2e8c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e93:	e8 3a 11 00 00       	call   3fd2 <exit>
    printf(1, "unlink dots/. worked!\n");
    2e98:	c7 44 24 04 a2 50 00 	movl   $0x50a2,0x4(%esp)
    2e9f:	00 
    2ea0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ea7:	e8 74 12 00 00       	call   4120 <printf>
    exit(0);
    2eac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2eb3:	e8 1a 11 00 00       	call   3fd2 <exit>
    printf(1, "chdir / failed\n");
    2eb8:	c7 44 24 04 d3 44 00 	movl   $0x44d3,0x4(%esp)
    2ebf:	00 
    2ec0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ec7:	e8 54 12 00 00       	call   4120 <printf>
    exit(-1);
    2ecc:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2ed3:	e8 fa 10 00 00       	call   3fd2 <exit>
    printf(1, "rm .. worked!\n");
    2ed8:	c7 44 24 04 8c 50 00 	movl   $0x508c,0x4(%esp)
    2edf:	00 
    2ee0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ee7:	e8 34 12 00 00       	call   4120 <printf>
    exit(0);
    2eec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ef3:	e8 da 10 00 00       	call   3fd2 <exit>
    printf(1, "rm . worked!\n");
    2ef8:	c7 44 24 04 7e 50 00 	movl   $0x507e,0x4(%esp)
    2eff:	00 
    2f00:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f07:	e8 14 12 00 00       	call   4120 <printf>
    exit(0);
    2f0c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f13:	e8 ba 10 00 00       	call   3fd2 <exit>
    printf(1, "chdir dots failed\n");
    2f18:	c7 44 24 04 6b 50 00 	movl   $0x506b,0x4(%esp)
    2f1f:	00 
    2f20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f27:	e8 f4 11 00 00       	call   4120 <printf>
    exit(-1);
    2f2c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    2f33:	e8 9a 10 00 00       	call   3fd2 <exit>
    2f38:	90                   	nop
    2f39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002f40 <dirfile>:
{
    2f40:	55                   	push   %ebp
    2f41:	89 e5                	mov    %esp,%ebp
    2f43:	53                   	push   %ebx
    2f44:	83 ec 14             	sub    $0x14,%esp
  printf(1, "dir vs file\n");
    2f47:	c7 44 24 04 f8 50 00 	movl   $0x50f8,0x4(%esp)
    2f4e:	00 
    2f4f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f56:	e8 c5 11 00 00       	call   4120 <printf>
  fd = open("dirfile", O_CREATE);
    2f5b:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2f62:	00 
    2f63:	c7 04 24 05 51 00 00 	movl   $0x5105,(%esp)
    2f6a:	e8 a3 10 00 00       	call   4012 <open>
  if(fd < 0){
    2f6f:	85 c0                	test   %eax,%eax
    2f71:	0f 88 60 01 00 00    	js     30d7 <dirfile+0x197>
  close(fd);
    2f77:	89 04 24             	mov    %eax,(%esp)
    2f7a:	e8 7b 10 00 00       	call   3ffa <close>
  if(chdir("dirfile") == 0){
    2f7f:	c7 04 24 05 51 00 00 	movl   $0x5105,(%esp)
    2f86:	e8 b7 10 00 00       	call   4042 <chdir>
    2f8b:	85 c0                	test   %eax,%eax
    2f8d:	0f 84 24 01 00 00    	je     30b7 <dirfile+0x177>
  fd = open("dirfile/xx", 0);
    2f93:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2f9a:	00 
    2f9b:	c7 04 24 3e 51 00 00 	movl   $0x513e,(%esp)
    2fa2:	e8 6b 10 00 00       	call   4012 <open>
  if(fd >= 0){
    2fa7:	85 c0                	test   %eax,%eax
    2fa9:	0f 89 e8 00 00 00    	jns    3097 <dirfile+0x157>
  fd = open("dirfile/xx", O_CREATE);
    2faf:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2fb6:	00 
    2fb7:	c7 04 24 3e 51 00 00 	movl   $0x513e,(%esp)
    2fbe:	e8 4f 10 00 00       	call   4012 <open>
  if(fd >= 0){
    2fc3:	85 c0                	test   %eax,%eax
    2fc5:	0f 89 cc 00 00 00    	jns    3097 <dirfile+0x157>
  if(mkdir("dirfile/xx") == 0){
    2fcb:	c7 04 24 3e 51 00 00 	movl   $0x513e,(%esp)
    2fd2:	e8 63 10 00 00       	call   403a <mkdir>
    2fd7:	85 c0                	test   %eax,%eax
    2fd9:	0f 84 b8 01 00 00    	je     3197 <dirfile+0x257>
  if(unlink("dirfile/xx") == 0){
    2fdf:	c7 04 24 3e 51 00 00 	movl   $0x513e,(%esp)
    2fe6:	e8 37 10 00 00       	call   4022 <unlink>
    2feb:	85 c0                	test   %eax,%eax
    2fed:	0f 84 84 01 00 00    	je     3177 <dirfile+0x237>
  if(link("README", "dirfile/xx") == 0){
    2ff3:	c7 44 24 04 3e 51 00 	movl   $0x513e,0x4(%esp)
    2ffa:	00 
    2ffb:	c7 04 24 a2 51 00 00 	movl   $0x51a2,(%esp)
    3002:	e8 2b 10 00 00       	call   4032 <link>
    3007:	85 c0                	test   %eax,%eax
    3009:	0f 84 48 01 00 00    	je     3157 <dirfile+0x217>
  if(unlink("dirfile") != 0){
    300f:	c7 04 24 05 51 00 00 	movl   $0x5105,(%esp)
    3016:	e8 07 10 00 00       	call   4022 <unlink>
    301b:	85 c0                	test   %eax,%eax
    301d:	0f 85 14 01 00 00    	jne    3137 <dirfile+0x1f7>
  fd = open(".", O_RDWR);
    3023:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    302a:	00 
    302b:	c7 04 24 fe 4c 00 00 	movl   $0x4cfe,(%esp)
    3032:	e8 db 0f 00 00       	call   4012 <open>
  if(fd >= 0){
    3037:	85 c0                	test   %eax,%eax
    3039:	0f 89 d8 00 00 00    	jns    3117 <dirfile+0x1d7>
  fd = open(".", 0);
    303f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3046:	00 
    3047:	c7 04 24 fe 4c 00 00 	movl   $0x4cfe,(%esp)
    304e:	e8 bf 0f 00 00       	call   4012 <open>
  if(write(fd, "x", 1) > 0){
    3053:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    305a:	00 
    305b:	c7 44 24 04 e1 4d 00 	movl   $0x4de1,0x4(%esp)
    3062:	00 
    3063:	89 04 24             	mov    %eax,(%esp)
  fd = open(".", 0);
    3066:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    3068:	e8 85 0f 00 00       	call   3ff2 <write>
    306d:	85 c0                	test   %eax,%eax
    306f:	0f 8f 82 00 00 00    	jg     30f7 <dirfile+0x1b7>
  close(fd);
    3075:	89 1c 24             	mov    %ebx,(%esp)
    3078:	e8 7d 0f 00 00       	call   3ffa <close>
  printf(1, "dir vs file OK\n");
    307d:	c7 44 24 04 d5 51 00 	movl   $0x51d5,0x4(%esp)
    3084:	00 
    3085:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    308c:	e8 8f 10 00 00       	call   4120 <printf>
}
    3091:	83 c4 14             	add    $0x14,%esp
    3094:	5b                   	pop    %ebx
    3095:	5d                   	pop    %ebp
    3096:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    3097:	c7 44 24 04 49 51 00 	movl   $0x5149,0x4(%esp)
    309e:	00 
    309f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30a6:	e8 75 10 00 00       	call   4120 <printf>
    exit(0);
    30ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30b2:	e8 1b 0f 00 00       	call   3fd2 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    30b7:	c7 44 24 04 24 51 00 	movl   $0x5124,0x4(%esp)
    30be:	00 
    30bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30c6:	e8 55 10 00 00       	call   4120 <printf>
    exit(0);
    30cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30d2:	e8 fb 0e 00 00       	call   3fd2 <exit>
    printf(1, "create dirfile failed\n");
    30d7:	c7 44 24 04 0d 51 00 	movl   $0x510d,0x4(%esp)
    30de:	00 
    30df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30e6:	e8 35 10 00 00       	call   4120 <printf>
    exit(-1);
    30eb:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    30f2:	e8 db 0e 00 00       	call   3fd2 <exit>
    printf(1, "write . succeeded!\n");
    30f7:	c7 44 24 04 c1 51 00 	movl   $0x51c1,0x4(%esp)
    30fe:	00 
    30ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3106:	e8 15 10 00 00       	call   4120 <printf>
    exit(0);
    310b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3112:	e8 bb 0e 00 00       	call   3fd2 <exit>
    printf(1, "open . for writing succeeded!\n");
    3117:	c7 44 24 04 b8 59 00 	movl   $0x59b8,0x4(%esp)
    311e:	00 
    311f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3126:	e8 f5 0f 00 00       	call   4120 <printf>
    exit(0);
    312b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3132:	e8 9b 0e 00 00       	call   3fd2 <exit>
    printf(1, "unlink dirfile failed!\n");
    3137:	c7 44 24 04 a9 51 00 	movl   $0x51a9,0x4(%esp)
    313e:	00 
    313f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3146:	e8 d5 0f 00 00       	call   4120 <printf>
    exit(-1);
    314b:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3152:	e8 7b 0e 00 00       	call   3fd2 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    3157:	c7 44 24 04 98 59 00 	movl   $0x5998,0x4(%esp)
    315e:	00 
    315f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3166:	e8 b5 0f 00 00       	call   4120 <printf>
    exit(0);
    316b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3172:	e8 5b 0e 00 00       	call   3fd2 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    3177:	c7 44 24 04 84 51 00 	movl   $0x5184,0x4(%esp)
    317e:	00 
    317f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3186:	e8 95 0f 00 00       	call   4120 <printf>
    exit(0);
    318b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3192:	e8 3b 0e 00 00       	call   3fd2 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3197:	c7 44 24 04 67 51 00 	movl   $0x5167,0x4(%esp)
    319e:	00 
    319f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31a6:	e8 75 0f 00 00       	call   4120 <printf>
    exit(0);
    31ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31b2:	e8 1b 0e 00 00       	call   3fd2 <exit>
    31b7:	89 f6                	mov    %esi,%esi
    31b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000031c0 <iref>:
{
    31c0:	55                   	push   %ebp
    31c1:	89 e5                	mov    %esp,%ebp
    31c3:	53                   	push   %ebx
  printf(1, "empty file name\n");
    31c4:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    31c9:	83 ec 14             	sub    $0x14,%esp
  printf(1, "empty file name\n");
    31cc:	c7 44 24 04 e5 51 00 	movl   $0x51e5,0x4(%esp)
    31d3:	00 
    31d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31db:	e8 40 0f 00 00       	call   4120 <printf>
    if(mkdir("irefd") != 0){
    31e0:	c7 04 24 f6 51 00 00 	movl   $0x51f6,(%esp)
    31e7:	e8 4e 0e 00 00       	call   403a <mkdir>
    31ec:	85 c0                	test   %eax,%eax
    31ee:	0f 85 af 00 00 00    	jne    32a3 <iref+0xe3>
    if(chdir("irefd") != 0){
    31f4:	c7 04 24 f6 51 00 00 	movl   $0x51f6,(%esp)
    31fb:	e8 42 0e 00 00       	call   4042 <chdir>
    3200:	85 c0                	test   %eax,%eax
    3202:	0f 85 bb 00 00 00    	jne    32c3 <iref+0x103>
    mkdir("");
    3208:	c7 04 24 ab 48 00 00 	movl   $0x48ab,(%esp)
    320f:	e8 26 0e 00 00       	call   403a <mkdir>
    link("README", "");
    3214:	c7 44 24 04 ab 48 00 	movl   $0x48ab,0x4(%esp)
    321b:	00 
    321c:	c7 04 24 a2 51 00 00 	movl   $0x51a2,(%esp)
    3223:	e8 0a 0e 00 00       	call   4032 <link>
    fd = open("", O_CREATE);
    3228:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    322f:	00 
    3230:	c7 04 24 ab 48 00 00 	movl   $0x48ab,(%esp)
    3237:	e8 d6 0d 00 00       	call   4012 <open>
    if(fd >= 0)
    323c:	85 c0                	test   %eax,%eax
    323e:	78 08                	js     3248 <iref+0x88>
      close(fd);
    3240:	89 04 24             	mov    %eax,(%esp)
    3243:	e8 b2 0d 00 00       	call   3ffa <close>
    fd = open("xx", O_CREATE);
    3248:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    324f:	00 
    3250:	c7 04 24 e0 4d 00 00 	movl   $0x4de0,(%esp)
    3257:	e8 b6 0d 00 00       	call   4012 <open>
    if(fd >= 0)
    325c:	85 c0                	test   %eax,%eax
    325e:	78 08                	js     3268 <iref+0xa8>
      close(fd);
    3260:	89 04 24             	mov    %eax,(%esp)
    3263:	e8 92 0d 00 00       	call   3ffa <close>
    unlink("xx");
    3268:	c7 04 24 e0 4d 00 00 	movl   $0x4de0,(%esp)
    326f:	e8 ae 0d 00 00       	call   4022 <unlink>
  for(i = 0; i < 50 + 1; i++){
    3274:	83 eb 01             	sub    $0x1,%ebx
    3277:	0f 85 63 ff ff ff    	jne    31e0 <iref+0x20>
  chdir("/");
    327d:	c7 04 24 d1 44 00 00 	movl   $0x44d1,(%esp)
    3284:	e8 b9 0d 00 00       	call   4042 <chdir>
  printf(1, "empty file name OK\n");
    3289:	c7 44 24 04 24 52 00 	movl   $0x5224,0x4(%esp)
    3290:	00 
    3291:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3298:	e8 83 0e 00 00       	call   4120 <printf>
}
    329d:	83 c4 14             	add    $0x14,%esp
    32a0:	5b                   	pop    %ebx
    32a1:	5d                   	pop    %ebp
    32a2:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    32a3:	c7 44 24 04 fc 51 00 	movl   $0x51fc,0x4(%esp)
    32aa:	00 
    32ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32b2:	e8 69 0e 00 00       	call   4120 <printf>
      exit(-1);
    32b7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    32be:	e8 0f 0d 00 00       	call   3fd2 <exit>
      printf(1, "chdir irefd failed\n");
    32c3:	c7 44 24 04 10 52 00 	movl   $0x5210,0x4(%esp)
    32ca:	00 
    32cb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32d2:	e8 49 0e 00 00       	call   4120 <printf>
      exit(-1);
    32d7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    32de:	e8 ef 0c 00 00       	call   3fd2 <exit>
    32e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    32e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000032f0 <forktest>:
{
    32f0:	55                   	push   %ebp
    32f1:	89 e5                	mov    %esp,%ebp
    32f3:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    32f4:	31 db                	xor    %ebx,%ebx
{
    32f6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "fork test\n");
    32f9:	c7 44 24 04 38 52 00 	movl   $0x5238,0x4(%esp)
    3300:	00 
    3301:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3308:	e8 13 0e 00 00       	call   4120 <printf>
    330d:	eb 0e                	jmp    331d <forktest+0x2d>
    330f:	90                   	nop
    if(pid == 0)
    3310:	74 72                	je     3384 <forktest+0x94>
  for(n=0; n<1000; n++){
    3312:	83 c3 01             	add    $0x1,%ebx
    3315:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    331b:	74 53                	je     3370 <forktest+0x80>
    pid = fork();
    331d:	e8 a8 0c 00 00       	call   3fca <fork>
    if(pid < 0)
    3322:	85 c0                	test   %eax,%eax
    3324:	79 ea                	jns    3310 <forktest+0x20>
  for(; n > 0; n--){
    3326:	85 db                	test   %ebx,%ebx
    3328:	74 1b                	je     3345 <forktest+0x55>
    332a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait(0) < 0){
    3330:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3337:	e8 9e 0c 00 00       	call   3fda <wait>
    333c:	85 c0                	test   %eax,%eax
    333e:	78 50                	js     3390 <forktest+0xa0>
  for(; n > 0; n--){
    3340:	83 eb 01             	sub    $0x1,%ebx
    3343:	75 eb                	jne    3330 <forktest+0x40>
  if(wait(0) != -1){
    3345:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    334c:	e8 89 0c 00 00       	call   3fda <wait>
    3351:	83 f8 ff             	cmp    $0xffffffff,%eax
    3354:	75 5a                	jne    33b0 <forktest+0xc0>
  printf(1, "fork test OK\n");
    3356:	c7 44 24 04 6a 52 00 	movl   $0x526a,0x4(%esp)
    335d:	00 
    335e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3365:	e8 b6 0d 00 00       	call   4120 <printf>
}
    336a:	83 c4 14             	add    $0x14,%esp
    336d:	5b                   	pop    %ebx
    336e:	5d                   	pop    %ebp
    336f:	c3                   	ret    
    printf(1, "fork claimed to work 1000 times!\n");
    3370:	c7 44 24 04 d8 59 00 	movl   $0x59d8,0x4(%esp)
    3377:	00 
    3378:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    337f:	e8 9c 0d 00 00       	call   4120 <printf>
    exit(0);
    3384:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    338b:	e8 42 0c 00 00       	call   3fd2 <exit>
      printf(1, "wait stopped early\n");
    3390:	c7 44 24 04 43 52 00 	movl   $0x5243,0x4(%esp)
    3397:	00 
    3398:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    339f:	e8 7c 0d 00 00       	call   4120 <printf>
      exit(-1);
    33a4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    33ab:	e8 22 0c 00 00       	call   3fd2 <exit>
    printf(1, "wait got too many\n");
    33b0:	c7 44 24 04 57 52 00 	movl   $0x5257,0x4(%esp)
    33b7:	00 
    33b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33bf:	e8 5c 0d 00 00       	call   4120 <printf>
    exit(-1);
    33c4:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    33cb:	e8 02 0c 00 00       	call   3fd2 <exit>

000033d0 <sbrktest>:
{
    33d0:	55                   	push   %ebp
    33d1:	89 e5                	mov    %esp,%ebp
    33d3:	57                   	push   %edi
    33d4:	56                   	push   %esi
  for(i = 0; i < 5000; i++){
    33d5:	31 f6                	xor    %esi,%esi
{
    33d7:	53                   	push   %ebx
    33d8:	83 ec 6c             	sub    $0x6c,%esp
  printf(stdout, "sbrk test\n");
    33db:	a1 04 65 00 00       	mov    0x6504,%eax
    33e0:	c7 44 24 04 78 52 00 	movl   $0x5278,0x4(%esp)
    33e7:	00 
    33e8:	89 04 24             	mov    %eax,(%esp)
    33eb:	e8 30 0d 00 00       	call   4120 <printf>
  oldbrk = sbrk(0);
    33f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33f7:	e8 5e 0c 00 00       	call   405a <sbrk>
  a = sbrk(0);
    33fc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    3403:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    3406:	e8 4f 0c 00 00       	call   405a <sbrk>
    340b:	89 c3                	mov    %eax,%ebx
    340d:	8d 76 00             	lea    0x0(%esi),%esi
    b = sbrk(1);
    3410:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3417:	e8 3e 0c 00 00       	call   405a <sbrk>
    if(b != a){
    341c:	39 d8                	cmp    %ebx,%eax
    b = sbrk(1);
    341e:	89 c7                	mov    %eax,%edi
    if(b != a){
    3420:	0f 85 90 02 00 00    	jne    36b6 <sbrktest+0x2e6>
  for(i = 0; i < 5000; i++){
    3426:	83 c6 01             	add    $0x1,%esi
    a = b + 1;
    3429:	83 c3 01             	add    $0x1,%ebx
    *b = 1;
    342c:	c6 43 ff 01          	movb   $0x1,-0x1(%ebx)
  for(i = 0; i < 5000; i++){
    3430:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    3436:	75 d8                	jne    3410 <sbrktest+0x40>
  pid = fork();
    3438:	e8 8d 0b 00 00       	call   3fca <fork>
  if(pid < 0){
    343d:	85 c0                	test   %eax,%eax
  pid = fork();
    343f:	89 c3                	mov    %eax,%ebx
  if(pid < 0){
    3441:	0f 88 9c 03 00 00    	js     37e3 <sbrktest+0x413>
  c = sbrk(1);
    3447:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    344e:	e8 07 0c 00 00       	call   405a <sbrk>
  c = sbrk(1);
    3453:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    345a:	e8 fb 0b 00 00       	call   405a <sbrk>
  if(c != a + 1){
    345f:	8d 57 02             	lea    0x2(%edi),%edx
    3462:	39 d0                	cmp    %edx,%eax
    3464:	0f 85 6c 03 00 00    	jne    37d6 <sbrktest+0x406>
  if(pid == 0)
    346a:	85 db                	test   %ebx,%ebx
    exit(0);
    346c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid == 0)
    3473:	0f 84 a6 02 00 00    	je     371f <sbrktest+0x34f>
  wait(0);
    3479:	e8 5c 0b 00 00       	call   3fda <wait>
  a = sbrk(0);
    347e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3485:	e8 d0 0b 00 00       	call   405a <sbrk>
  amt = (BIG) - (uint)a;
    348a:	ba 00 00 40 06       	mov    $0x6400000,%edx
    348f:	29 c2                	sub    %eax,%edx
  a = sbrk(0);
    3491:	89 c3                	mov    %eax,%ebx
  p = sbrk(amt);
    3493:	89 14 24             	mov    %edx,(%esp)
    3496:	e8 bf 0b 00 00       	call   405a <sbrk>
  if (p != a) {
    349b:	39 d8                	cmp    %ebx,%eax
    349d:	0f 85 07 03 00 00    	jne    37aa <sbrktest+0x3da>
  *lastaddr = 99;
    34a3:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    34aa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34b1:	e8 a4 0b 00 00       	call   405a <sbrk>
  c = sbrk(-4096);
    34b6:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    34bd:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    34bf:	e8 96 0b 00 00       	call   405a <sbrk>
  if(c == (char*)0xffffffff){
    34c4:	83 f8 ff             	cmp    $0xffffffff,%eax
    34c7:	0f 84 fc 02 00 00    	je     37c9 <sbrktest+0x3f9>
  c = sbrk(0);
    34cd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34d4:	e8 81 0b 00 00       	call   405a <sbrk>
  if(c != a - 4096){
    34d9:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    34df:	39 d0                	cmp    %edx,%eax
    34e1:	0f 85 d0 02 00 00    	jne    37b7 <sbrktest+0x3e7>
  a = sbrk(0);
    34e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34ee:	e8 67 0b 00 00       	call   405a <sbrk>
  c = sbrk(4096);
    34f3:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    34fa:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    34fc:	e8 59 0b 00 00       	call   405a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3501:	39 f0                	cmp    %esi,%eax
  c = sbrk(4096);
    3503:	89 c3                	mov    %eax,%ebx
  if(c != a || sbrk(0) != a + 4096){
    3505:	0f 85 8d 02 00 00    	jne    3798 <sbrktest+0x3c8>
    350b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3512:	e8 43 0b 00 00       	call   405a <sbrk>
    3517:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    351d:	39 d0                	cmp    %edx,%eax
    351f:	0f 85 73 02 00 00    	jne    3798 <sbrktest+0x3c8>
  if(*lastaddr == 99){
    3525:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    352c:	0f 84 59 02 00 00    	je     378b <sbrktest+0x3bb>
  a = sbrk(0);
    3532:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3539:	e8 1c 0b 00 00       	call   405a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    353e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3545:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    3547:	e8 0e 0b 00 00       	call   405a <sbrk>
    354c:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    354f:	29 c1                	sub    %eax,%ecx
    3551:	89 0c 24             	mov    %ecx,(%esp)
    3554:	e8 01 0b 00 00       	call   405a <sbrk>
  if(c != a){
    3559:	39 d8                	cmp    %ebx,%eax
    355b:	0f 85 01 02 00 00    	jne    3762 <sbrktest+0x392>
    3561:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    3566:	66 90                	xchg   %ax,%ax
    ppid = getpid();
    3568:	e8 e5 0a 00 00       	call   4052 <getpid>
    356d:	89 c6                	mov    %eax,%esi
    pid = fork();
    356f:	e8 56 0a 00 00       	call   3fca <fork>
    if(pid < 0){
    3574:	85 c0                	test   %eax,%eax
    3576:	0f 88 dc 01 00 00    	js     3758 <sbrktest+0x388>
    357c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    3580:	0f 84 9e 01 00 00    	je     3724 <sbrktest+0x354>
    wait(0);
    3586:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    358d:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    wait(0);
    3593:	e8 42 0a 00 00       	call   3fda <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3598:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    359e:	75 c8                	jne    3568 <sbrktest+0x198>
  if(pipe(fds) != 0){
    35a0:	8d 45 b8             	lea    -0x48(%ebp),%eax
    35a3:	89 04 24             	mov    %eax,(%esp)
    35a6:	e8 37 0a 00 00       	call   3fe2 <pipe>
    35ab:	85 c0                	test   %eax,%eax
    35ad:	0f 85 51 01 00 00    	jne    3704 <sbrktest+0x334>
    35b3:	8d 5d e8             	lea    -0x18(%ebp),%ebx
    35b6:	8d 75 c0             	lea    -0x40(%ebp),%esi
      read(fds[0], &scratch, 1);
    35b9:	8d 7d b7             	lea    -0x49(%ebp),%edi
    if((pids[i] = fork()) == 0){
    35bc:	e8 09 0a 00 00       	call   3fca <fork>
    35c1:	85 c0                	test   %eax,%eax
    35c3:	89 06                	mov    %eax,(%esi)
    35c5:	0f 84 a6 00 00 00    	je     3671 <sbrktest+0x2a1>
    if(pids[i] != -1)
    35cb:	83 f8 ff             	cmp    $0xffffffff,%eax
    35ce:	74 17                	je     35e7 <sbrktest+0x217>
      read(fds[0], &scratch, 1);
    35d0:	8b 45 b8             	mov    -0x48(%ebp),%eax
    35d3:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    35da:	00 
    35db:	89 7c 24 04          	mov    %edi,0x4(%esp)
    35df:	89 04 24             	mov    %eax,(%esp)
    35e2:	e8 03 0a 00 00       	call   3fea <read>
    35e7:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    35ea:	39 de                	cmp    %ebx,%esi
    35ec:	75 ce                	jne    35bc <sbrktest+0x1ec>
  c = sbrk(4096);
    35ee:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    35f5:	8d 75 c0             	lea    -0x40(%ebp),%esi
    35f8:	e8 5d 0a 00 00       	call   405a <sbrk>
    35fd:	89 c7                	mov    %eax,%edi
    if(pids[i] == -1)
    35ff:	8b 06                	mov    (%esi),%eax
    3601:	83 f8 ff             	cmp    $0xffffffff,%eax
    3604:	74 14                	je     361a <sbrktest+0x24a>
    kill(pids[i]);
    3606:	89 04 24             	mov    %eax,(%esp)
    3609:	e8 f4 09 00 00       	call   4002 <kill>
    wait(0);
    360e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3615:	e8 c0 09 00 00       	call   3fda <wait>
    361a:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    361d:	39 f3                	cmp    %esi,%ebx
    361f:	75 de                	jne    35ff <sbrktest+0x22f>
  if(c == (char*)0xffffffff){
    3621:	83 ff ff             	cmp    $0xffffffff,%edi
    3624:	0f 84 b9 00 00 00    	je     36e3 <sbrktest+0x313>
  if(sbrk(0) > oldbrk)
    362a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3631:	e8 24 0a 00 00       	call   405a <sbrk>
    3636:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3639:	73 19                	jae    3654 <sbrktest+0x284>
    sbrk(-(sbrk(0) - oldbrk));
    363b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3642:	e8 13 0a 00 00       	call   405a <sbrk>
    3647:	8b 7d a4             	mov    -0x5c(%ebp),%edi
    364a:	29 c7                	sub    %eax,%edi
    364c:	89 3c 24             	mov    %edi,(%esp)
    364f:	e8 06 0a 00 00       	call   405a <sbrk>
  printf(stdout, "sbrk test OK\n");
    3654:	a1 04 65 00 00       	mov    0x6504,%eax
    3659:	c7 44 24 04 20 53 00 	movl   $0x5320,0x4(%esp)
    3660:	00 
    3661:	89 04 24             	mov    %eax,(%esp)
    3664:	e8 b7 0a 00 00       	call   4120 <printf>
}
    3669:	83 c4 6c             	add    $0x6c,%esp
    366c:	5b                   	pop    %ebx
    366d:	5e                   	pop    %esi
    366e:	5f                   	pop    %edi
    366f:	5d                   	pop    %ebp
    3670:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    3671:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3678:	e8 dd 09 00 00       	call   405a <sbrk>
    367d:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3682:	29 c2                	sub    %eax,%edx
    3684:	89 14 24             	mov    %edx,(%esp)
    3687:	e8 ce 09 00 00       	call   405a <sbrk>
      write(fds[1], "x", 1);
    368c:	8b 45 bc             	mov    -0x44(%ebp),%eax
    368f:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3696:	00 
    3697:	c7 44 24 04 e1 4d 00 	movl   $0x4de1,0x4(%esp)
    369e:	00 
    369f:	89 04 24             	mov    %eax,(%esp)
    36a2:	e8 4b 09 00 00       	call   3ff2 <write>
    36a7:	90                   	nop
      for(;;) sleep(1000);
    36a8:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
    36af:	e8 ae 09 00 00       	call   4062 <sleep>
    36b4:	eb f2                	jmp    36a8 <sbrktest+0x2d8>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    36b6:	89 44 24 10          	mov    %eax,0x10(%esp)
    36ba:	a1 04 65 00 00       	mov    0x6504,%eax
    36bf:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    36c3:	89 74 24 08          	mov    %esi,0x8(%esp)
    36c7:	c7 44 24 04 83 52 00 	movl   $0x5283,0x4(%esp)
    36ce:	00 
    36cf:	89 04 24             	mov    %eax,(%esp)
    36d2:	e8 49 0a 00 00       	call   4120 <printf>
      exit(-1);
    36d7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    36de:	e8 ef 08 00 00       	call   3fd2 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    36e3:	c7 44 24 04 05 53 00 	movl   $0x5305,0x4(%esp)
    36ea:	00 
    printf(stdout, "sbrk test failed post-fork\n");
    36eb:	a1 04 65 00 00       	mov    0x6504,%eax
    36f0:	89 04 24             	mov    %eax,(%esp)
    36f3:	e8 28 0a 00 00       	call   4120 <printf>
    exit(-1);
    36f8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    36ff:	e8 ce 08 00 00       	call   3fd2 <exit>
    printf(1, "pipe() failed\n");
    3704:	c7 44 24 04 c1 47 00 	movl   $0x47c1,0x4(%esp)
    370b:	00 
    370c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3713:	e8 08 0a 00 00       	call   4120 <printf>
    exit(-1);
    3718:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    371f:	e8 ae 08 00 00       	call   3fd2 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3724:	0f be 03             	movsbl (%ebx),%eax
    3727:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    372b:	c7 44 24 04 ec 52 00 	movl   $0x52ec,0x4(%esp)
    3732:	00 
    3733:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3737:	a1 04 65 00 00       	mov    0x6504,%eax
    373c:	89 04 24             	mov    %eax,(%esp)
    373f:	e8 dc 09 00 00       	call   4120 <printf>
      kill(ppid);
    3744:	89 34 24             	mov    %esi,(%esp)
    3747:	e8 b6 08 00 00       	call   4002 <kill>
      exit(-1);
    374c:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3753:	e8 7a 08 00 00       	call   3fd2 <exit>
      printf(stdout, "fork failed\n");
    3758:	c7 44 24 04 c9 53 00 	movl   $0x53c9,0x4(%esp)
    375f:	00 
    3760:	eb 89                	jmp    36eb <sbrktest+0x31b>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3762:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3766:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    376a:	c7 44 24 04 cc 5a 00 	movl   $0x5acc,0x4(%esp)
    3771:	00 
    3772:	a1 04 65 00 00       	mov    0x6504,%eax
    3777:	89 04 24             	mov    %eax,(%esp)
    377a:	e8 a1 09 00 00       	call   4120 <printf>
    exit(-1);
    377f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3786:	e8 47 08 00 00       	call   3fd2 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    378b:	c7 44 24 04 9c 5a 00 	movl   $0x5a9c,0x4(%esp)
    3792:	00 
    3793:	e9 53 ff ff ff       	jmp    36eb <sbrktest+0x31b>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    3798:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    379c:	89 74 24 08          	mov    %esi,0x8(%esp)
    37a0:	c7 44 24 04 74 5a 00 	movl   $0x5a74,0x4(%esp)
    37a7:	00 
    37a8:	eb c8                	jmp    3772 <sbrktest+0x3a2>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    37aa:	c7 44 24 04 fc 59 00 	movl   $0x59fc,0x4(%esp)
    37b1:	00 
    37b2:	e9 34 ff ff ff       	jmp    36eb <sbrktest+0x31b>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    37b7:	89 44 24 0c          	mov    %eax,0xc(%esp)
    37bb:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    37bf:	c7 44 24 04 3c 5a 00 	movl   $0x5a3c,0x4(%esp)
    37c6:	00 
    37c7:	eb a9                	jmp    3772 <sbrktest+0x3a2>
    printf(stdout, "sbrk could not deallocate\n");
    37c9:	c7 44 24 04 d1 52 00 	movl   $0x52d1,0x4(%esp)
    37d0:	00 
    37d1:	e9 15 ff ff ff       	jmp    36eb <sbrktest+0x31b>
    printf(stdout, "sbrk test failed post-fork\n");
    37d6:	c7 44 24 04 b5 52 00 	movl   $0x52b5,0x4(%esp)
    37dd:	00 
    37de:	e9 08 ff ff ff       	jmp    36eb <sbrktest+0x31b>
    printf(stdout, "sbrk test fork failed\n");
    37e3:	c7 44 24 04 9e 52 00 	movl   $0x529e,0x4(%esp)
    37ea:	00 
    37eb:	e9 fb fe ff ff       	jmp    36eb <sbrktest+0x31b>

000037f0 <validateint>:
{
    37f0:	55                   	push   %ebp
    37f1:	89 e5                	mov    %esp,%ebp
}
    37f3:	5d                   	pop    %ebp
    37f4:	c3                   	ret    
    37f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    37f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003800 <validatetest>:
{
    3800:	55                   	push   %ebp
    3801:	89 e5                	mov    %esp,%ebp
    3803:	56                   	push   %esi
    3804:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    3805:	31 db                	xor    %ebx,%ebx
{
    3807:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "validate test\n");
    380a:	a1 04 65 00 00       	mov    0x6504,%eax
    380f:	c7 44 24 04 2e 53 00 	movl   $0x532e,0x4(%esp)
    3816:	00 
    3817:	89 04 24             	mov    %eax,(%esp)
    381a:	e8 01 09 00 00       	call   4120 <printf>
    381f:	90                   	nop
    if((pid = fork()) == 0){
    3820:	e8 a5 07 00 00       	call   3fca <fork>
      exit(0);
    3825:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    if((pid = fork()) == 0){
    382c:	85 c0                	test   %eax,%eax
    382e:	89 c6                	mov    %eax,%esi
    3830:	0f 84 80 00 00 00    	je     38b6 <validatetest+0xb6>
    sleep(0);
    3836:	e8 27 08 00 00       	call   4062 <sleep>
    sleep(0);
    383b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3842:	e8 1b 08 00 00       	call   4062 <sleep>
    kill(pid);
    3847:	89 34 24             	mov    %esi,(%esp)
    384a:	e8 b3 07 00 00       	call   4002 <kill>
    wait(0);
    384f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3856:	e8 7f 07 00 00       	call   3fda <wait>
    if(link("nosuchfile", (char*)p) != -1){
    385b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    385f:	c7 04 24 3d 53 00 00 	movl   $0x533d,(%esp)
    3866:	e8 c7 07 00 00       	call   4032 <link>
    386b:	83 f8 ff             	cmp    $0xffffffff,%eax
    386e:	75 2a                	jne    389a <validatetest+0x9a>
  for(p = 0; p <= (uint)hi; p += 4096){
    3870:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3876:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    387c:	75 a2                	jne    3820 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    387e:	a1 04 65 00 00       	mov    0x6504,%eax
    3883:	c7 44 24 04 61 53 00 	movl   $0x5361,0x4(%esp)
    388a:	00 
    388b:	89 04 24             	mov    %eax,(%esp)
    388e:	e8 8d 08 00 00       	call   4120 <printf>
}
    3893:	83 c4 10             	add    $0x10,%esp
    3896:	5b                   	pop    %ebx
    3897:	5e                   	pop    %esi
    3898:	5d                   	pop    %ebp
    3899:	c3                   	ret    
      printf(stdout, "link should not succeed\n");
    389a:	a1 04 65 00 00       	mov    0x6504,%eax
    389f:	c7 44 24 04 48 53 00 	movl   $0x5348,0x4(%esp)
    38a6:	00 
    38a7:	89 04 24             	mov    %eax,(%esp)
    38aa:	e8 71 08 00 00       	call   4120 <printf>
      exit(-1);
    38af:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    38b6:	e8 17 07 00 00       	call   3fd2 <exit>
    38bb:	90                   	nop
    38bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000038c0 <bsstest>:
{
    38c0:	55                   	push   %ebp
    38c1:	89 e5                	mov    %esp,%ebp
    38c3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "bss test\n");
    38c6:	a1 04 65 00 00       	mov    0x6504,%eax
    38cb:	c7 44 24 04 6e 53 00 	movl   $0x536e,0x4(%esp)
    38d2:	00 
    38d3:	89 04 24             	mov    %eax,(%esp)
    38d6:	e8 45 08 00 00       	call   4120 <printf>
    if(uninit[i] != '\0'){
    38db:	80 3d c0 65 00 00 00 	cmpb   $0x0,0x65c0
    38e2:	75 36                	jne    391a <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    38e4:	b8 01 00 00 00       	mov    $0x1,%eax
    38e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    38f0:	80 b8 c0 65 00 00 00 	cmpb   $0x0,0x65c0(%eax)
    38f7:	75 21                	jne    391a <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    38f9:	83 c0 01             	add    $0x1,%eax
    38fc:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3901:	75 ed                	jne    38f0 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    3903:	a1 04 65 00 00       	mov    0x6504,%eax
    3908:	c7 44 24 04 89 53 00 	movl   $0x5389,0x4(%esp)
    390f:	00 
    3910:	89 04 24             	mov    %eax,(%esp)
    3913:	e8 08 08 00 00       	call   4120 <printf>
}
    3918:	c9                   	leave  
    3919:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    391a:	a1 04 65 00 00       	mov    0x6504,%eax
    391f:	c7 44 24 04 78 53 00 	movl   $0x5378,0x4(%esp)
    3926:	00 
    3927:	89 04 24             	mov    %eax,(%esp)
    392a:	e8 f1 07 00 00       	call   4120 <printf>
      exit(-1);
    392f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3936:	e8 97 06 00 00       	call   3fd2 <exit>
    393b:	90                   	nop
    393c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003940 <bigargtest>:
{
    3940:	55                   	push   %ebp
    3941:	89 e5                	mov    %esp,%ebp
    3943:	83 ec 18             	sub    $0x18,%esp
  unlink("bigarg-ok");
    3946:	c7 04 24 96 53 00 00 	movl   $0x5396,(%esp)
    394d:	e8 d0 06 00 00       	call   4022 <unlink>
  pid = fork();
    3952:	e8 73 06 00 00       	call   3fca <fork>
  if(pid == 0){
    3957:	85 c0                	test   %eax,%eax
    3959:	74 4d                	je     39a8 <bigargtest+0x68>
    395b:	90                   	nop
    395c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  } else if(pid < 0){
    3960:	0f 88 e6 00 00 00    	js     3a4c <bigargtest+0x10c>
  wait(0);
    3966:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    396d:	e8 68 06 00 00       	call   3fda <wait>
  fd = open("bigarg-ok", 0);
    3972:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3979:	00 
    397a:	c7 04 24 96 53 00 00 	movl   $0x5396,(%esp)
    3981:	e8 8c 06 00 00       	call   4012 <open>
  if(fd < 0){
    3986:	85 c0                	test   %eax,%eax
    3988:	0f 88 9d 00 00 00    	js     3a2b <bigargtest+0xeb>
  close(fd);
    398e:	89 04 24             	mov    %eax,(%esp)
    3991:	e8 64 06 00 00       	call   3ffa <close>
  unlink("bigarg-ok");
    3996:	c7 04 24 96 53 00 00 	movl   $0x5396,(%esp)
    399d:	e8 80 06 00 00       	call   4022 <unlink>
}
    39a2:	c9                   	leave  
    39a3:	c3                   	ret    
    39a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    39a8:	c7 04 85 20 65 00 00 	movl   $0x5af0,0x6520(,%eax,4)
    39af:	f0 5a 00 00 
    for(i = 0; i < MAXARG-1; i++)
    39b3:	83 c0 01             	add    $0x1,%eax
    39b6:	83 f8 1f             	cmp    $0x1f,%eax
    39b9:	75 ed                	jne    39a8 <bigargtest+0x68>
    printf(stdout, "bigarg test\n");
    39bb:	a1 04 65 00 00       	mov    0x6504,%eax
    39c0:	c7 44 24 04 a0 53 00 	movl   $0x53a0,0x4(%esp)
    39c7:	00 
    args[MAXARG-1] = 0;
    39c8:	c7 05 9c 65 00 00 00 	movl   $0x0,0x659c
    39cf:	00 00 00 
    printf(stdout, "bigarg test\n");
    39d2:	89 04 24             	mov    %eax,(%esp)
    39d5:	e8 46 07 00 00       	call   4120 <printf>
    exec("echo", args);
    39da:	c7 44 24 04 20 65 00 	movl   $0x6520,0x4(%esp)
    39e1:	00 
    39e2:	c7 04 24 6d 45 00 00 	movl   $0x456d,(%esp)
    39e9:	e8 1c 06 00 00       	call   400a <exec>
    printf(stdout, "bigarg test ok\n");
    39ee:	a1 04 65 00 00       	mov    0x6504,%eax
    39f3:	c7 44 24 04 ad 53 00 	movl   $0x53ad,0x4(%esp)
    39fa:	00 
    39fb:	89 04 24             	mov    %eax,(%esp)
    39fe:	e8 1d 07 00 00       	call   4120 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3a03:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    3a0a:	00 
    3a0b:	c7 04 24 96 53 00 00 	movl   $0x5396,(%esp)
    3a12:	e8 fb 05 00 00       	call   4012 <open>
    close(fd);
    3a17:	89 04 24             	mov    %eax,(%esp)
    3a1a:	e8 db 05 00 00       	call   3ffa <close>
    exit(0);
    3a1f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a26:	e8 a7 05 00 00       	call   3fd2 <exit>
    printf(stdout, "bigarg test failed!\n");
    3a2b:	c7 44 24 04 d6 53 00 	movl   $0x53d6,0x4(%esp)
    3a32:	00 
    3a33:	a1 04 65 00 00       	mov    0x6504,%eax
    3a38:	89 04 24             	mov    %eax,(%esp)
    3a3b:	e8 e0 06 00 00       	call   4120 <printf>
    exit(-1);
    3a40:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3a47:	e8 86 05 00 00       	call   3fd2 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    3a4c:	c7 44 24 04 bd 53 00 	movl   $0x53bd,0x4(%esp)
    3a53:	00 
    3a54:	eb dd                	jmp    3a33 <bigargtest+0xf3>
    3a56:	8d 76 00             	lea    0x0(%esi),%esi
    3a59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003a60 <fsfull>:
{
    3a60:	55                   	push   %ebp
    3a61:	89 e5                	mov    %esp,%ebp
    3a63:	57                   	push   %edi
    3a64:	56                   	push   %esi
    3a65:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    3a66:	31 db                	xor    %ebx,%ebx
{
    3a68:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "fsfull test\n");
    3a6b:	c7 44 24 04 eb 53 00 	movl   $0x53eb,0x4(%esp)
    3a72:	00 
    3a73:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a7a:	e8 a1 06 00 00       	call   4120 <printf>
    3a7f:	90                   	nop
    name[1] = '0' + nfiles / 1000;
    3a80:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3a85:	89 d9                	mov    %ebx,%ecx
    3a87:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3a89:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    3a8b:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3a8e:	89 df                	mov    %ebx,%edi
    printf(1, "writing %s\n", name);
    3a90:	c7 44 24 04 f8 53 00 	movl   $0x53f8,0x4(%esp)
    3a97:	00 
    3a98:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    name[1] = '0' + nfiles / 1000;
    3a9f:	c1 fa 06             	sar    $0x6,%edx
    3aa2:	29 ca                	sub    %ecx,%edx
    3aa4:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3aa7:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3aad:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3ab0:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[0] = 'f';
    3ab5:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3ab9:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3abd:	29 d6                	sub    %edx,%esi
    3abf:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3ac1:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3ac6:	c1 fe 1f             	sar    $0x1f,%esi
    3ac9:	c1 fa 05             	sar    $0x5,%edx
    3acc:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3ace:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3ad3:	83 c2 30             	add    $0x30,%edx
    3ad6:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3ad9:	f7 eb                	imul   %ebx
    3adb:	c1 fa 05             	sar    $0x5,%edx
    3ade:	29 ca                	sub    %ecx,%edx
    3ae0:	6b d2 64             	imul   $0x64,%edx,%edx
    3ae3:	29 d7                	sub    %edx,%edi
    3ae5:	89 f8                	mov    %edi,%eax
    3ae7:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3ae9:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3aeb:	c1 ff 1f             	sar    $0x1f,%edi
    3aee:	c1 fa 02             	sar    $0x2,%edx
    3af1:	29 fa                	sub    %edi,%edx
    3af3:	83 c2 30             	add    $0x30,%edx
    3af6:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3af9:	f7 ee                	imul   %esi
    3afb:	c1 fa 02             	sar    $0x2,%edx
    3afe:	29 ca                	sub    %ecx,%edx
    3b00:	89 d9                	mov    %ebx,%ecx
    3b02:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3b05:	01 c0                	add    %eax,%eax
    3b07:	29 c1                	sub    %eax,%ecx
    3b09:	89 c8                	mov    %ecx,%eax
    3b0b:	83 c0 30             	add    $0x30,%eax
    3b0e:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    3b11:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b14:	89 44 24 08          	mov    %eax,0x8(%esp)
    3b18:	e8 03 06 00 00       	call   4120 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3b1d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b20:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    3b27:	00 
    3b28:	89 04 24             	mov    %eax,(%esp)
    3b2b:	e8 e2 04 00 00       	call   4012 <open>
    if(fd < 0){
    3b30:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    3b32:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    3b34:	78 57                	js     3b8d <fsfull+0x12d>
    3b36:	31 f6                	xor    %esi,%esi
    3b38:	eb 08                	jmp    3b42 <fsfull+0xe2>
    3b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      total += cc;
    3b40:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    3b42:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    3b49:	00 
    3b4a:	c7 44 24 04 e0 8c 00 	movl   $0x8ce0,0x4(%esp)
    3b51:	00 
    3b52:	89 3c 24             	mov    %edi,(%esp)
    3b55:	e8 98 04 00 00       	call   3ff2 <write>
      if(cc < 512)
    3b5a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3b5f:	7f df                	jg     3b40 <fsfull+0xe0>
    printf(1, "wrote %d bytes\n", total);
    3b61:	89 74 24 08          	mov    %esi,0x8(%esp)
    3b65:	c7 44 24 04 14 54 00 	movl   $0x5414,0x4(%esp)
    3b6c:	00 
    3b6d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3b74:	e8 a7 05 00 00       	call   4120 <printf>
    close(fd);
    3b79:	89 3c 24             	mov    %edi,(%esp)
    3b7c:	e8 79 04 00 00       	call   3ffa <close>
    if(total == 0)
    3b81:	85 f6                	test   %esi,%esi
    3b83:	74 23                	je     3ba8 <fsfull+0x148>
  for(nfiles = 0; ; nfiles++){
    3b85:	83 c3 01             	add    $0x1,%ebx
  }
    3b88:	e9 f3 fe ff ff       	jmp    3a80 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    3b8d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b90:	89 44 24 08          	mov    %eax,0x8(%esp)
    3b94:	c7 44 24 04 04 54 00 	movl   $0x5404,0x4(%esp)
    3b9b:	00 
    3b9c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3ba3:	e8 78 05 00 00       	call   4120 <printf>
    name[1] = '0' + nfiles / 1000;
    3ba8:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3bad:	89 d9                	mov    %ebx,%ecx
    3baf:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3bb1:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    3bb3:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3bb6:	89 df                	mov    %ebx,%edi
    name[0] = 'f';
    3bb8:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3bbc:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3bc0:	c1 fa 06             	sar    $0x6,%edx
    3bc3:	29 ca                	sub    %ecx,%edx
    3bc5:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3bc8:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3bce:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3bd1:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3bd6:	29 d6                	sub    %edx,%esi
    3bd8:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3bda:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3bdf:	c1 fe 1f             	sar    $0x1f,%esi
    3be2:	c1 fa 05             	sar    $0x5,%edx
    3be5:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3be7:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3bec:	83 c2 30             	add    $0x30,%edx
    3bef:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3bf2:	f7 eb                	imul   %ebx
    3bf4:	c1 fa 05             	sar    $0x5,%edx
    3bf7:	29 ca                	sub    %ecx,%edx
    3bf9:	6b d2 64             	imul   $0x64,%edx,%edx
    3bfc:	29 d7                	sub    %edx,%edi
    3bfe:	89 f8                	mov    %edi,%eax
    3c00:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3c02:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3c04:	c1 ff 1f             	sar    $0x1f,%edi
    3c07:	c1 fa 02             	sar    $0x2,%edx
    3c0a:	29 fa                	sub    %edi,%edx
    3c0c:	83 c2 30             	add    $0x30,%edx
    3c0f:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3c12:	f7 ee                	imul   %esi
    3c14:	c1 fa 02             	sar    $0x2,%edx
    3c17:	29 ca                	sub    %ecx,%edx
    3c19:	89 d9                	mov    %ebx,%ecx
    3c1b:	8d 04 92             	lea    (%edx,%edx,4),%eax
    nfiles--;
    3c1e:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    3c21:	01 c0                	add    %eax,%eax
    3c23:	29 c1                	sub    %eax,%ecx
    3c25:	89 c8                	mov    %ecx,%eax
    3c27:	83 c0 30             	add    $0x30,%eax
    3c2a:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    3c2d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3c30:	89 04 24             	mov    %eax,(%esp)
    3c33:	e8 ea 03 00 00       	call   4022 <unlink>
  while(nfiles >= 0){
    3c38:	83 fb ff             	cmp    $0xffffffff,%ebx
    3c3b:	0f 85 67 ff ff ff    	jne    3ba8 <fsfull+0x148>
  printf(1, "fsfull test finished\n");
    3c41:	c7 44 24 04 24 54 00 	movl   $0x5424,0x4(%esp)
    3c48:	00 
    3c49:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c50:	e8 cb 04 00 00       	call   4120 <printf>
}
    3c55:	83 c4 5c             	add    $0x5c,%esp
    3c58:	5b                   	pop    %ebx
    3c59:	5e                   	pop    %esi
    3c5a:	5f                   	pop    %edi
    3c5b:	5d                   	pop    %ebp
    3c5c:	c3                   	ret    
    3c5d:	8d 76 00             	lea    0x0(%esi),%esi

00003c60 <uio>:
{
    3c60:	55                   	push   %ebp
    3c61:	89 e5                	mov    %esp,%ebp
    3c63:	83 ec 18             	sub    $0x18,%esp
  printf(1, "uio test\n");
    3c66:	c7 44 24 04 3a 54 00 	movl   $0x543a,0x4(%esp)
    3c6d:	00 
    3c6e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c75:	e8 a6 04 00 00       	call   4120 <printf>
  pid = fork();
    3c7a:	e8 4b 03 00 00       	call   3fca <fork>
  if(pid == 0){
    3c7f:	85 c0                	test   %eax,%eax
    3c81:	74 24                	je     3ca7 <uio+0x47>
  } else if(pid < 0){
    3c83:	78 50                	js     3cd5 <uio+0x75>
  wait(0);
    3c85:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c8c:	e8 49 03 00 00       	call   3fda <wait>
  printf(1, "uio test done\n");
    3c91:	c7 44 24 04 44 54 00 	movl   $0x5444,0x4(%esp)
    3c98:	00 
    3c99:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3ca0:	e8 7b 04 00 00       	call   4120 <printf>
}
    3ca5:	c9                   	leave  
    3ca6:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3ca7:	ba 70 00 00 00       	mov    $0x70,%edx
    3cac:	b8 09 00 00 00       	mov    $0x9,%eax
    3cb1:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3cb2:	b2 71                	mov    $0x71,%dl
    3cb4:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3cb5:	c7 44 24 04 d0 5b 00 	movl   $0x5bd0,0x4(%esp)
    3cbc:	00 
    3cbd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3cc4:	e8 57 04 00 00       	call   4120 <printf>
    exit(-1);
    3cc9:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3cd0:	e8 fd 02 00 00       	call   3fd2 <exit>
    printf (1, "fork failed\n");
    3cd5:	c7 44 24 04 c9 53 00 	movl   $0x53c9,0x4(%esp)
    3cdc:	00 
    3cdd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3ce4:	e8 37 04 00 00       	call   4120 <printf>
    exit(-1);
    3ce9:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3cf0:	e8 dd 02 00 00       	call   3fd2 <exit>
    3cf5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3cf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003d00 <argptest>:
{
    3d00:	55                   	push   %ebp
    3d01:	89 e5                	mov    %esp,%ebp
    3d03:	53                   	push   %ebx
    3d04:	83 ec 14             	sub    $0x14,%esp
  fd = open("init", O_RDONLY);
    3d07:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3d0e:	00 
    3d0f:	c7 04 24 53 54 00 00 	movl   $0x5453,(%esp)
    3d16:	e8 f7 02 00 00       	call   4012 <open>
  if (fd < 0) {
    3d1b:	85 c0                	test   %eax,%eax
  fd = open("init", O_RDONLY);
    3d1d:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    3d1f:	78 45                	js     3d66 <argptest+0x66>
  read(fd, sbrk(0) - 1, -1);
    3d21:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d28:	e8 2d 03 00 00       	call   405a <sbrk>
    3d2d:	89 1c 24             	mov    %ebx,(%esp)
    3d30:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
    3d37:	ff 
    3d38:	83 e8 01             	sub    $0x1,%eax
    3d3b:	89 44 24 04          	mov    %eax,0x4(%esp)
    3d3f:	e8 a6 02 00 00       	call   3fea <read>
  close(fd);
    3d44:	89 1c 24             	mov    %ebx,(%esp)
    3d47:	e8 ae 02 00 00       	call   3ffa <close>
  printf(1, "arg test passed\n");
    3d4c:	c7 44 24 04 65 54 00 	movl   $0x5465,0x4(%esp)
    3d53:	00 
    3d54:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d5b:	e8 c0 03 00 00       	call   4120 <printf>
}
    3d60:	83 c4 14             	add    $0x14,%esp
    3d63:	5b                   	pop    %ebx
    3d64:	5d                   	pop    %ebp
    3d65:	c3                   	ret    
    printf(2, "open failed\n");
    3d66:	c7 44 24 04 58 54 00 	movl   $0x5458,0x4(%esp)
    3d6d:	00 
    3d6e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    3d75:	e8 a6 03 00 00       	call   4120 <printf>
    exit(-1);
    3d7a:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
    3d81:	e8 4c 02 00 00       	call   3fd2 <exit>
    3d86:	8d 76 00             	lea    0x0(%esi),%esi
    3d89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003d90 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3d90:	69 05 00 65 00 00 0d 	imul   $0x19660d,0x6500,%eax
    3d97:	66 19 00 
{
    3d9a:	55                   	push   %ebp
    3d9b:	89 e5                	mov    %esp,%ebp
}
    3d9d:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    3d9e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3da3:	a3 00 65 00 00       	mov    %eax,0x6500
}
    3da8:	c3                   	ret    
    3da9:	66 90                	xchg   %ax,%ax
    3dab:	66 90                	xchg   %ax,%ax
    3dad:	66 90                	xchg   %ax,%ax
    3daf:	90                   	nop

00003db0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3db0:	55                   	push   %ebp
    3db1:	89 e5                	mov    %esp,%ebp
    3db3:	8b 45 08             	mov    0x8(%ebp),%eax
    3db6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3db9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3dba:	89 c2                	mov    %eax,%edx
    3dbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3dc0:	83 c1 01             	add    $0x1,%ecx
    3dc3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3dc7:	83 c2 01             	add    $0x1,%edx
    3dca:	84 db                	test   %bl,%bl
    3dcc:	88 5a ff             	mov    %bl,-0x1(%edx)
    3dcf:	75 ef                	jne    3dc0 <strcpy+0x10>
    ;
  return os;
}
    3dd1:	5b                   	pop    %ebx
    3dd2:	5d                   	pop    %ebp
    3dd3:	c3                   	ret    
    3dd4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3dda:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003de0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3de0:	55                   	push   %ebp
    3de1:	89 e5                	mov    %esp,%ebp
    3de3:	8b 55 08             	mov    0x8(%ebp),%edx
    3de6:	53                   	push   %ebx
    3de7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3dea:	0f b6 02             	movzbl (%edx),%eax
    3ded:	84 c0                	test   %al,%al
    3def:	74 2d                	je     3e1e <strcmp+0x3e>
    3df1:	0f b6 19             	movzbl (%ecx),%ebx
    3df4:	38 d8                	cmp    %bl,%al
    3df6:	74 0e                	je     3e06 <strcmp+0x26>
    3df8:	eb 2b                	jmp    3e25 <strcmp+0x45>
    3dfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3e00:	38 c8                	cmp    %cl,%al
    3e02:	75 15                	jne    3e19 <strcmp+0x39>
    p++, q++;
    3e04:	89 d9                	mov    %ebx,%ecx
    3e06:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3e09:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3e0c:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3e0f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    3e13:	84 c0                	test   %al,%al
    3e15:	75 e9                	jne    3e00 <strcmp+0x20>
    3e17:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    3e19:	29 c8                	sub    %ecx,%eax
}
    3e1b:	5b                   	pop    %ebx
    3e1c:	5d                   	pop    %ebp
    3e1d:	c3                   	ret    
    3e1e:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
    3e21:	31 c0                	xor    %eax,%eax
    3e23:	eb f4                	jmp    3e19 <strcmp+0x39>
    3e25:	0f b6 cb             	movzbl %bl,%ecx
    3e28:	eb ef                	jmp    3e19 <strcmp+0x39>
    3e2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003e30 <strlen>:

uint
strlen(const char *s)
{
    3e30:	55                   	push   %ebp
    3e31:	89 e5                	mov    %esp,%ebp
    3e33:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3e36:	80 39 00             	cmpb   $0x0,(%ecx)
    3e39:	74 12                	je     3e4d <strlen+0x1d>
    3e3b:	31 d2                	xor    %edx,%edx
    3e3d:	8d 76 00             	lea    0x0(%esi),%esi
    3e40:	83 c2 01             	add    $0x1,%edx
    3e43:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3e47:	89 d0                	mov    %edx,%eax
    3e49:	75 f5                	jne    3e40 <strlen+0x10>
    ;
  return n;
}
    3e4b:	5d                   	pop    %ebp
    3e4c:	c3                   	ret    
  for(n = 0; s[n]; n++)
    3e4d:	31 c0                	xor    %eax,%eax
}
    3e4f:	5d                   	pop    %ebp
    3e50:	c3                   	ret    
    3e51:	eb 0d                	jmp    3e60 <memset>
    3e53:	90                   	nop
    3e54:	90                   	nop
    3e55:	90                   	nop
    3e56:	90                   	nop
    3e57:	90                   	nop
    3e58:	90                   	nop
    3e59:	90                   	nop
    3e5a:	90                   	nop
    3e5b:	90                   	nop
    3e5c:	90                   	nop
    3e5d:	90                   	nop
    3e5e:	90                   	nop
    3e5f:	90                   	nop

00003e60 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3e60:	55                   	push   %ebp
    3e61:	89 e5                	mov    %esp,%ebp
    3e63:	8b 55 08             	mov    0x8(%ebp),%edx
    3e66:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3e67:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3e6a:	8b 45 0c             	mov    0xc(%ebp),%eax
    3e6d:	89 d7                	mov    %edx,%edi
    3e6f:	fc                   	cld    
    3e70:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3e72:	89 d0                	mov    %edx,%eax
    3e74:	5f                   	pop    %edi
    3e75:	5d                   	pop    %ebp
    3e76:	c3                   	ret    
    3e77:	89 f6                	mov    %esi,%esi
    3e79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003e80 <strchr>:

char*
strchr(const char *s, char c)
{
    3e80:	55                   	push   %ebp
    3e81:	89 e5                	mov    %esp,%ebp
    3e83:	8b 45 08             	mov    0x8(%ebp),%eax
    3e86:	53                   	push   %ebx
    3e87:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    3e8a:	0f b6 18             	movzbl (%eax),%ebx
    3e8d:	84 db                	test   %bl,%bl
    3e8f:	74 1d                	je     3eae <strchr+0x2e>
    if(*s == c)
    3e91:	38 d3                	cmp    %dl,%bl
    3e93:	89 d1                	mov    %edx,%ecx
    3e95:	75 0d                	jne    3ea4 <strchr+0x24>
    3e97:	eb 17                	jmp    3eb0 <strchr+0x30>
    3e99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3ea0:	38 ca                	cmp    %cl,%dl
    3ea2:	74 0c                	je     3eb0 <strchr+0x30>
  for(; *s; s++)
    3ea4:	83 c0 01             	add    $0x1,%eax
    3ea7:	0f b6 10             	movzbl (%eax),%edx
    3eaa:	84 d2                	test   %dl,%dl
    3eac:	75 f2                	jne    3ea0 <strchr+0x20>
      return (char*)s;
  return 0;
    3eae:	31 c0                	xor    %eax,%eax
}
    3eb0:	5b                   	pop    %ebx
    3eb1:	5d                   	pop    %ebp
    3eb2:	c3                   	ret    
    3eb3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3eb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003ec0 <gets>:

char*
gets(char *buf, int max)
{
    3ec0:	55                   	push   %ebp
    3ec1:	89 e5                	mov    %esp,%ebp
    3ec3:	57                   	push   %edi
    3ec4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3ec5:	31 f6                	xor    %esi,%esi
{
    3ec7:	53                   	push   %ebx
    3ec8:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
    3ecb:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
    3ece:	eb 31                	jmp    3f01 <gets+0x41>
    cc = read(0, &c, 1);
    3ed0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3ed7:	00 
    3ed8:	89 7c 24 04          	mov    %edi,0x4(%esp)
    3edc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ee3:	e8 02 01 00 00       	call   3fea <read>
    if(cc < 1)
    3ee8:	85 c0                	test   %eax,%eax
    3eea:	7e 1d                	jle    3f09 <gets+0x49>
      break;
    buf[i++] = c;
    3eec:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
    3ef0:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
    3ef2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    3ef5:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
    3ef7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3efb:	74 0c                	je     3f09 <gets+0x49>
    3efd:	3c 0a                	cmp    $0xa,%al
    3eff:	74 08                	je     3f09 <gets+0x49>
  for(i=0; i+1 < max; ){
    3f01:	8d 5e 01             	lea    0x1(%esi),%ebx
    3f04:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3f07:	7c c7                	jl     3ed0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3f09:	8b 45 08             	mov    0x8(%ebp),%eax
    3f0c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3f10:	83 c4 2c             	add    $0x2c,%esp
    3f13:	5b                   	pop    %ebx
    3f14:	5e                   	pop    %esi
    3f15:	5f                   	pop    %edi
    3f16:	5d                   	pop    %ebp
    3f17:	c3                   	ret    
    3f18:	90                   	nop
    3f19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003f20 <stat>:

int
stat(const char *n, struct stat *st)
{
    3f20:	55                   	push   %ebp
    3f21:	89 e5                	mov    %esp,%ebp
    3f23:	56                   	push   %esi
    3f24:	53                   	push   %ebx
    3f25:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3f28:	8b 45 08             	mov    0x8(%ebp),%eax
    3f2b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3f32:	00 
    3f33:	89 04 24             	mov    %eax,(%esp)
    3f36:	e8 d7 00 00 00       	call   4012 <open>
  if(fd < 0)
    3f3b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
    3f3d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    3f3f:	78 27                	js     3f68 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    3f41:	8b 45 0c             	mov    0xc(%ebp),%eax
    3f44:	89 1c 24             	mov    %ebx,(%esp)
    3f47:	89 44 24 04          	mov    %eax,0x4(%esp)
    3f4b:	e8 da 00 00 00       	call   402a <fstat>
  close(fd);
    3f50:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    3f53:	89 c6                	mov    %eax,%esi
  close(fd);
    3f55:	e8 a0 00 00 00       	call   3ffa <close>
  return r;
    3f5a:	89 f0                	mov    %esi,%eax
}
    3f5c:	83 c4 10             	add    $0x10,%esp
    3f5f:	5b                   	pop    %ebx
    3f60:	5e                   	pop    %esi
    3f61:	5d                   	pop    %ebp
    3f62:	c3                   	ret    
    3f63:	90                   	nop
    3f64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    3f68:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3f6d:	eb ed                	jmp    3f5c <stat+0x3c>
    3f6f:	90                   	nop

00003f70 <atoi>:

int
atoi(const char *s)
{
    3f70:	55                   	push   %ebp
    3f71:	89 e5                	mov    %esp,%ebp
    3f73:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3f76:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3f77:	0f be 11             	movsbl (%ecx),%edx
    3f7a:	8d 42 d0             	lea    -0x30(%edx),%eax
    3f7d:	3c 09                	cmp    $0x9,%al
  n = 0;
    3f7f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3f84:	77 17                	ja     3f9d <atoi+0x2d>
    3f86:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3f88:	83 c1 01             	add    $0x1,%ecx
    3f8b:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3f8e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    3f92:	0f be 11             	movsbl (%ecx),%edx
    3f95:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3f98:	80 fb 09             	cmp    $0x9,%bl
    3f9b:	76 eb                	jbe    3f88 <atoi+0x18>
  return n;
}
    3f9d:	5b                   	pop    %ebx
    3f9e:	5d                   	pop    %ebp
    3f9f:	c3                   	ret    

00003fa0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3fa0:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3fa1:	31 d2                	xor    %edx,%edx
{
    3fa3:	89 e5                	mov    %esp,%ebp
    3fa5:	56                   	push   %esi
    3fa6:	8b 45 08             	mov    0x8(%ebp),%eax
    3fa9:	53                   	push   %ebx
    3faa:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3fad:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
    3fb0:	85 db                	test   %ebx,%ebx
    3fb2:	7e 12                	jle    3fc6 <memmove+0x26>
    3fb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3fb8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    3fbc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3fbf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    3fc2:	39 da                	cmp    %ebx,%edx
    3fc4:	75 f2                	jne    3fb8 <memmove+0x18>
  return vdst;
}
    3fc6:	5b                   	pop    %ebx
    3fc7:	5e                   	pop    %esi
    3fc8:	5d                   	pop    %ebp
    3fc9:	c3                   	ret    

00003fca <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3fca:	b8 01 00 00 00       	mov    $0x1,%eax
    3fcf:	cd 40                	int    $0x40
    3fd1:	c3                   	ret    

00003fd2 <exit>:
SYSCALL(exit)
    3fd2:	b8 02 00 00 00       	mov    $0x2,%eax
    3fd7:	cd 40                	int    $0x40
    3fd9:	c3                   	ret    

00003fda <wait>:
SYSCALL(wait)
    3fda:	b8 03 00 00 00       	mov    $0x3,%eax
    3fdf:	cd 40                	int    $0x40
    3fe1:	c3                   	ret    

00003fe2 <pipe>:
SYSCALL(pipe)
    3fe2:	b8 04 00 00 00       	mov    $0x4,%eax
    3fe7:	cd 40                	int    $0x40
    3fe9:	c3                   	ret    

00003fea <read>:
SYSCALL(read)
    3fea:	b8 05 00 00 00       	mov    $0x5,%eax
    3fef:	cd 40                	int    $0x40
    3ff1:	c3                   	ret    

00003ff2 <write>:
SYSCALL(write)
    3ff2:	b8 10 00 00 00       	mov    $0x10,%eax
    3ff7:	cd 40                	int    $0x40
    3ff9:	c3                   	ret    

00003ffa <close>:
SYSCALL(close)
    3ffa:	b8 15 00 00 00       	mov    $0x15,%eax
    3fff:	cd 40                	int    $0x40
    4001:	c3                   	ret    

00004002 <kill>:
SYSCALL(kill)
    4002:	b8 06 00 00 00       	mov    $0x6,%eax
    4007:	cd 40                	int    $0x40
    4009:	c3                   	ret    

0000400a <exec>:
SYSCALL(exec)
    400a:	b8 07 00 00 00       	mov    $0x7,%eax
    400f:	cd 40                	int    $0x40
    4011:	c3                   	ret    

00004012 <open>:
SYSCALL(open)
    4012:	b8 0f 00 00 00       	mov    $0xf,%eax
    4017:	cd 40                	int    $0x40
    4019:	c3                   	ret    

0000401a <mknod>:
SYSCALL(mknod)
    401a:	b8 11 00 00 00       	mov    $0x11,%eax
    401f:	cd 40                	int    $0x40
    4021:	c3                   	ret    

00004022 <unlink>:
SYSCALL(unlink)
    4022:	b8 12 00 00 00       	mov    $0x12,%eax
    4027:	cd 40                	int    $0x40
    4029:	c3                   	ret    

0000402a <fstat>:
SYSCALL(fstat)
    402a:	b8 08 00 00 00       	mov    $0x8,%eax
    402f:	cd 40                	int    $0x40
    4031:	c3                   	ret    

00004032 <link>:
SYSCALL(link)
    4032:	b8 13 00 00 00       	mov    $0x13,%eax
    4037:	cd 40                	int    $0x40
    4039:	c3                   	ret    

0000403a <mkdir>:
SYSCALL(mkdir)
    403a:	b8 14 00 00 00       	mov    $0x14,%eax
    403f:	cd 40                	int    $0x40
    4041:	c3                   	ret    

00004042 <chdir>:
SYSCALL(chdir)
    4042:	b8 09 00 00 00       	mov    $0x9,%eax
    4047:	cd 40                	int    $0x40
    4049:	c3                   	ret    

0000404a <dup>:
SYSCALL(dup)
    404a:	b8 0a 00 00 00       	mov    $0xa,%eax
    404f:	cd 40                	int    $0x40
    4051:	c3                   	ret    

00004052 <getpid>:
SYSCALL(getpid)
    4052:	b8 0b 00 00 00       	mov    $0xb,%eax
    4057:	cd 40                	int    $0x40
    4059:	c3                   	ret    

0000405a <sbrk>:
SYSCALL(sbrk)
    405a:	b8 0c 00 00 00       	mov    $0xc,%eax
    405f:	cd 40                	int    $0x40
    4061:	c3                   	ret    

00004062 <sleep>:
SYSCALL(sleep)
    4062:	b8 0d 00 00 00       	mov    $0xd,%eax
    4067:	cd 40                	int    $0x40
    4069:	c3                   	ret    

0000406a <uptime>:
SYSCALL(uptime)
    406a:	b8 0e 00 00 00       	mov    $0xe,%eax
    406f:	cd 40                	int    $0x40
    4071:	c3                   	ret    
    4072:	66 90                	xchg   %ax,%ax
    4074:	66 90                	xchg   %ax,%ax
    4076:	66 90                	xchg   %ax,%ax
    4078:	66 90                	xchg   %ax,%ax
    407a:	66 90                	xchg   %ax,%ax
    407c:	66 90                	xchg   %ax,%ax
    407e:	66 90                	xchg   %ax,%ax

00004080 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4080:	55                   	push   %ebp
    4081:	89 e5                	mov    %esp,%ebp
    4083:	57                   	push   %edi
    4084:	56                   	push   %esi
    4085:	89 c6                	mov    %eax,%esi
    4087:	53                   	push   %ebx
    4088:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    408b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    408e:	85 db                	test   %ebx,%ebx
    4090:	74 09                	je     409b <printint+0x1b>
    4092:	89 d0                	mov    %edx,%eax
    4094:	c1 e8 1f             	shr    $0x1f,%eax
    4097:	84 c0                	test   %al,%al
    4099:	75 75                	jne    4110 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    409b:	89 d0                	mov    %edx,%eax
  neg = 0;
    409d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    40a4:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
    40a7:	31 ff                	xor    %edi,%edi
    40a9:	89 ce                	mov    %ecx,%esi
    40ab:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    40ae:	eb 02                	jmp    40b2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    40b0:	89 cf                	mov    %ecx,%edi
    40b2:	31 d2                	xor    %edx,%edx
    40b4:	f7 f6                	div    %esi
    40b6:	8d 4f 01             	lea    0x1(%edi),%ecx
    40b9:	0f b6 92 27 5c 00 00 	movzbl 0x5c27(%edx),%edx
  }while((x /= base) != 0);
    40c0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    40c2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    40c5:	75 e9                	jne    40b0 <printint+0x30>
  if(neg)
    40c7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
    40ca:	89 c8                	mov    %ecx,%eax
    40cc:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
    40cf:	85 d2                	test   %edx,%edx
    40d1:	74 08                	je     40db <printint+0x5b>
    buf[i++] = '-';
    40d3:	8d 4f 02             	lea    0x2(%edi),%ecx
    40d6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    40db:	8d 79 ff             	lea    -0x1(%ecx),%edi
    40de:	66 90                	xchg   %ax,%ax
    40e0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    40e5:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    40e8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    40ef:	00 
    40f0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    40f4:	89 34 24             	mov    %esi,(%esp)
    40f7:	88 45 d7             	mov    %al,-0x29(%ebp)
    40fa:	e8 f3 fe ff ff       	call   3ff2 <write>
  while(--i >= 0)
    40ff:	83 ff ff             	cmp    $0xffffffff,%edi
    4102:	75 dc                	jne    40e0 <printint+0x60>
    putc(fd, buf[i]);
}
    4104:	83 c4 4c             	add    $0x4c,%esp
    4107:	5b                   	pop    %ebx
    4108:	5e                   	pop    %esi
    4109:	5f                   	pop    %edi
    410a:	5d                   	pop    %ebp
    410b:	c3                   	ret    
    410c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
    4110:	89 d0                	mov    %edx,%eax
    4112:	f7 d8                	neg    %eax
    neg = 1;
    4114:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    411b:	eb 87                	jmp    40a4 <printint+0x24>
    411d:	8d 76 00             	lea    0x0(%esi),%esi

00004120 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    4120:	55                   	push   %ebp
    4121:	89 e5                	mov    %esp,%ebp
    4123:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    4124:	31 ff                	xor    %edi,%edi
{
    4126:	56                   	push   %esi
    4127:	53                   	push   %ebx
    4128:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    412b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
    412e:	8d 45 10             	lea    0x10(%ebp),%eax
{
    4131:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    4134:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    4137:	0f b6 13             	movzbl (%ebx),%edx
    413a:	83 c3 01             	add    $0x1,%ebx
    413d:	84 d2                	test   %dl,%dl
    413f:	75 39                	jne    417a <printf+0x5a>
    4141:	e9 c2 00 00 00       	jmp    4208 <printf+0xe8>
    4146:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    4148:	83 fa 25             	cmp    $0x25,%edx
    414b:	0f 84 bf 00 00 00    	je     4210 <printf+0xf0>
  write(fd, &c, 1);
    4151:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    4154:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    415b:	00 
    415c:	89 44 24 04          	mov    %eax,0x4(%esp)
    4160:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
    4163:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
    4166:	e8 87 fe ff ff       	call   3ff2 <write>
    416b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
    416e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    4172:	84 d2                	test   %dl,%dl
    4174:	0f 84 8e 00 00 00    	je     4208 <printf+0xe8>
    if(state == 0){
    417a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    417c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    417f:	74 c7                	je     4148 <printf+0x28>
      }
    } else if(state == '%'){
    4181:	83 ff 25             	cmp    $0x25,%edi
    4184:	75 e5                	jne    416b <printf+0x4b>
      if(c == 'd'){
    4186:	83 fa 64             	cmp    $0x64,%edx
    4189:	0f 84 31 01 00 00    	je     42c0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    418f:	25 f7 00 00 00       	and    $0xf7,%eax
    4194:	83 f8 70             	cmp    $0x70,%eax
    4197:	0f 84 83 00 00 00    	je     4220 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    419d:	83 fa 73             	cmp    $0x73,%edx
    41a0:	0f 84 a2 00 00 00    	je     4248 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    41a6:	83 fa 63             	cmp    $0x63,%edx
    41a9:	0f 84 35 01 00 00    	je     42e4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    41af:	83 fa 25             	cmp    $0x25,%edx
    41b2:	0f 84 e0 00 00 00    	je     4298 <printf+0x178>
  write(fd, &c, 1);
    41b8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    41bb:	83 c3 01             	add    $0x1,%ebx
    41be:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    41c5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    41c6:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    41c8:	89 44 24 04          	mov    %eax,0x4(%esp)
    41cc:	89 34 24             	mov    %esi,(%esp)
    41cf:	89 55 d0             	mov    %edx,-0x30(%ebp)
    41d2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    41d6:	e8 17 fe ff ff       	call   3ff2 <write>
        putc(fd, c);
    41db:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
    41de:	8d 45 e7             	lea    -0x19(%ebp),%eax
    41e1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    41e8:	00 
    41e9:	89 44 24 04          	mov    %eax,0x4(%esp)
    41ed:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
    41f0:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    41f3:	e8 fa fd ff ff       	call   3ff2 <write>
  for(i = 0; fmt[i]; i++){
    41f8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    41fc:	84 d2                	test   %dl,%dl
    41fe:	0f 85 76 ff ff ff    	jne    417a <printf+0x5a>
    4204:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
    4208:	83 c4 3c             	add    $0x3c,%esp
    420b:	5b                   	pop    %ebx
    420c:	5e                   	pop    %esi
    420d:	5f                   	pop    %edi
    420e:	5d                   	pop    %ebp
    420f:	c3                   	ret    
        state = '%';
    4210:	bf 25 00 00 00       	mov    $0x25,%edi
    4215:	e9 51 ff ff ff       	jmp    416b <printf+0x4b>
    421a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    4220:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    4223:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
    4228:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
    422a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4231:	8b 10                	mov    (%eax),%edx
    4233:	89 f0                	mov    %esi,%eax
    4235:	e8 46 fe ff ff       	call   4080 <printint>
        ap++;
    423a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    423e:	e9 28 ff ff ff       	jmp    416b <printf+0x4b>
    4243:	90                   	nop
    4244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    4248:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    424b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
    424f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
    4251:	b8 20 5c 00 00       	mov    $0x5c20,%eax
    4256:	85 ff                	test   %edi,%edi
    4258:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    425b:	0f b6 07             	movzbl (%edi),%eax
    425e:	84 c0                	test   %al,%al
    4260:	74 2a                	je     428c <printf+0x16c>
    4262:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4268:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    426b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
    426e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
    4271:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4278:	00 
    4279:	89 44 24 04          	mov    %eax,0x4(%esp)
    427d:	89 34 24             	mov    %esi,(%esp)
    4280:	e8 6d fd ff ff       	call   3ff2 <write>
        while(*s != 0){
    4285:	0f b6 07             	movzbl (%edi),%eax
    4288:	84 c0                	test   %al,%al
    428a:	75 dc                	jne    4268 <printf+0x148>
      state = 0;
    428c:	31 ff                	xor    %edi,%edi
    428e:	e9 d8 fe ff ff       	jmp    416b <printf+0x4b>
    4293:	90                   	nop
    4294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    4298:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
    429b:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    429d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    42a4:	00 
    42a5:	89 44 24 04          	mov    %eax,0x4(%esp)
    42a9:	89 34 24             	mov    %esi,(%esp)
    42ac:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    42b0:	e8 3d fd ff ff       	call   3ff2 <write>
    42b5:	e9 b1 fe ff ff       	jmp    416b <printf+0x4b>
    42ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    42c0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    42c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
    42c8:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
    42cb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    42d2:	8b 10                	mov    (%eax),%edx
    42d4:	89 f0                	mov    %esi,%eax
    42d6:	e8 a5 fd ff ff       	call   4080 <printint>
        ap++;
    42db:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    42df:	e9 87 fe ff ff       	jmp    416b <printf+0x4b>
        putc(fd, *ap);
    42e4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
    42e7:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
    42e9:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    42eb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    42f2:	00 
    42f3:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
    42f6:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    42f9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    42fc:	89 44 24 04          	mov    %eax,0x4(%esp)
    4300:	e8 ed fc ff ff       	call   3ff2 <write>
        ap++;
    4305:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    4309:	e9 5d fe ff ff       	jmp    416b <printf+0x4b>
    430e:	66 90                	xchg   %ax,%ax

00004310 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    4310:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4311:	a1 a0 65 00 00       	mov    0x65a0,%eax
{
    4316:	89 e5                	mov    %esp,%ebp
    4318:	57                   	push   %edi
    4319:	56                   	push   %esi
    431a:	53                   	push   %ebx
    431b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    431e:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
    4320:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4323:	39 d0                	cmp    %edx,%eax
    4325:	72 11                	jb     4338 <free+0x28>
    4327:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4328:	39 c8                	cmp    %ecx,%eax
    432a:	72 04                	jb     4330 <free+0x20>
    432c:	39 ca                	cmp    %ecx,%edx
    432e:	72 10                	jb     4340 <free+0x30>
    4330:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4332:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4334:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4336:	73 f0                	jae    4328 <free+0x18>
    4338:	39 ca                	cmp    %ecx,%edx
    433a:	72 04                	jb     4340 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    433c:	39 c8                	cmp    %ecx,%eax
    433e:	72 f0                	jb     4330 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    4340:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4343:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    4346:	39 cf                	cmp    %ecx,%edi
    4348:	74 1e                	je     4368 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    434a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    434d:	8b 48 04             	mov    0x4(%eax),%ecx
    4350:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    4353:	39 f2                	cmp    %esi,%edx
    4355:	74 28                	je     437f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4357:	89 10                	mov    %edx,(%eax)
  freep = p;
    4359:	a3 a0 65 00 00       	mov    %eax,0x65a0
}
    435e:	5b                   	pop    %ebx
    435f:	5e                   	pop    %esi
    4360:	5f                   	pop    %edi
    4361:	5d                   	pop    %ebp
    4362:	c3                   	ret    
    4363:	90                   	nop
    4364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    4368:	03 71 04             	add    0x4(%ecx),%esi
    436b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    436e:	8b 08                	mov    (%eax),%ecx
    4370:	8b 09                	mov    (%ecx),%ecx
    4372:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4375:	8b 48 04             	mov    0x4(%eax),%ecx
    4378:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    437b:	39 f2                	cmp    %esi,%edx
    437d:	75 d8                	jne    4357 <free+0x47>
    p->s.size += bp->s.size;
    437f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
    4382:	a3 a0 65 00 00       	mov    %eax,0x65a0
    p->s.size += bp->s.size;
    4387:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    438a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    438d:	89 10                	mov    %edx,(%eax)
}
    438f:	5b                   	pop    %ebx
    4390:	5e                   	pop    %esi
    4391:	5f                   	pop    %edi
    4392:	5d                   	pop    %ebp
    4393:	c3                   	ret    
    4394:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    439a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000043a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    43a0:	55                   	push   %ebp
    43a1:	89 e5                	mov    %esp,%ebp
    43a3:	57                   	push   %edi
    43a4:	56                   	push   %esi
    43a5:	53                   	push   %ebx
    43a6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    43a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    43ac:	8b 1d a0 65 00 00    	mov    0x65a0,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    43b2:	8d 48 07             	lea    0x7(%eax),%ecx
    43b5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    43b8:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    43ba:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    43bd:	0f 84 9b 00 00 00    	je     445e <malloc+0xbe>
    43c3:	8b 13                	mov    (%ebx),%edx
    43c5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    43c8:	39 fe                	cmp    %edi,%esi
    43ca:	76 64                	jbe    4430 <malloc+0x90>
    43cc:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
    43d3:	bb 00 80 00 00       	mov    $0x8000,%ebx
    43d8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    43db:	eb 0e                	jmp    43eb <malloc+0x4b>
    43dd:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    43e0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    43e2:	8b 78 04             	mov    0x4(%eax),%edi
    43e5:	39 fe                	cmp    %edi,%esi
    43e7:	76 4f                	jbe    4438 <malloc+0x98>
    43e9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    43eb:	3b 15 a0 65 00 00    	cmp    0x65a0,%edx
    43f1:	75 ed                	jne    43e0 <malloc+0x40>
  if(nu < 4096)
    43f3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    43f6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    43fc:	bf 00 10 00 00       	mov    $0x1000,%edi
    4401:	0f 43 fe             	cmovae %esi,%edi
    4404:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
    4407:	89 04 24             	mov    %eax,(%esp)
    440a:	e8 4b fc ff ff       	call   405a <sbrk>
  if(p == (char*)-1)
    440f:	83 f8 ff             	cmp    $0xffffffff,%eax
    4412:	74 18                	je     442c <malloc+0x8c>
  hp->s.size = nu;
    4414:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    4417:	83 c0 08             	add    $0x8,%eax
    441a:	89 04 24             	mov    %eax,(%esp)
    441d:	e8 ee fe ff ff       	call   4310 <free>
  return freep;
    4422:	8b 15 a0 65 00 00    	mov    0x65a0,%edx
      if((p = morecore(nunits)) == 0)
    4428:	85 d2                	test   %edx,%edx
    442a:	75 b4                	jne    43e0 <malloc+0x40>
        return 0;
    442c:	31 c0                	xor    %eax,%eax
    442e:	eb 20                	jmp    4450 <malloc+0xb0>
    if(p->s.size >= nunits){
    4430:	89 d0                	mov    %edx,%eax
    4432:	89 da                	mov    %ebx,%edx
    4434:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    4438:	39 fe                	cmp    %edi,%esi
    443a:	74 1c                	je     4458 <malloc+0xb8>
        p->s.size -= nunits;
    443c:	29 f7                	sub    %esi,%edi
    443e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    4441:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    4444:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    4447:	89 15 a0 65 00 00    	mov    %edx,0x65a0
      return (void*)(p + 1);
    444d:	83 c0 08             	add    $0x8,%eax
  }
}
    4450:	83 c4 1c             	add    $0x1c,%esp
    4453:	5b                   	pop    %ebx
    4454:	5e                   	pop    %esi
    4455:	5f                   	pop    %edi
    4456:	5d                   	pop    %ebp
    4457:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    4458:	8b 08                	mov    (%eax),%ecx
    445a:	89 0a                	mov    %ecx,(%edx)
    445c:	eb e9                	jmp    4447 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
    445e:	c7 05 a0 65 00 00 a4 	movl   $0x65a4,0x65a0
    4465:	65 00 00 
    base.s.size = 0;
    4468:	ba a4 65 00 00       	mov    $0x65a4,%edx
    base.s.ptr = freep = prevp = &base;
    446d:	c7 05 a4 65 00 00 a4 	movl   $0x65a4,0x65a4
    4474:	65 00 00 
    base.s.size = 0;
    4477:	c7 05 a8 65 00 00 00 	movl   $0x0,0x65a8
    447e:	00 00 00 
    4481:	e9 46 ff ff ff       	jmp    43cc <malloc+0x2c>
