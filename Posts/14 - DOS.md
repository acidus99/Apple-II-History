---
title: DOS
author: Steven Weyhrich
date: February 16 2001
version: v1.3
---

# DOS

## Apple DOS

For a computer to be useful, it must have a means of easy storage and retrieval of data. That storage medium must be both convenient and affordable. In the early days of the Apple II computer, the best that they could achieve was "affordable". The built-in cassette port was "the" state of the art for personal computers back in 1977; the Apple I computer had a cassette interface available "only" as an add-on item. But, although a cassette storage system may be inexpensive, it is not very convenient. The simplistic cassette operating system on the Apple II (visual examination of the mechanical index counter on the cassette recorder to know the location of the next program) was downright frustrating to use for many early Apple II owners. Something better was desperately needed.

As you may recall from Part 5 of the History, in December of 1977 Steve Wozniak began a crash effort to develop a floppy disk drive for the Apple II computer. To get it ready for the Consumer Electronics Show in January 1978, Wozniak and Randy Wigginton made a very simple disk operating system that would only load files from fixed locations off the disk in response to one-letter commands. But it was not a true disk operating system (DOS); their rudimentary control program would not be flexible enough for efficient and simple use of the disk drive.

## Disk system basics

To create an operating system that would be both simple to use and yet powerful enough for advanced file manipulations, Apple had much work to do, building on the device driver that Wozniak had written. Among other things, it had to interface well with the BASICs in ROM on the Apple II, and be no more complicated to use than the cassette system. Although Woz's driver routines were efficient in writing and reading data to and from the disk, they could only be used from 6502 assembly language.

Designing a disk operating system from scratch is no trivial matter. On one side is the RAM memory in the Apple II, waiting patiently for a useful program to be loaded and executed. On the other side of an electronic bridge (interface card and connecting cable) is the floppy disk and disk drive hardware itself. The control program the Woz wrote could be compared to a narrow rope bridge crossing a chasm; it works, but you can't carry much with you, and it is easy to slip and fall (lose data). A complete DOS is more like a concrete and steel bridge, capable of carrying autos and trucks in both directions over the chasm. Woz's "rope bridge" was a foundation, but there was much work yet to do.

A disk drive consists of a recording head that is mechanically moved across the surface of the floppy disk, tracing the radius of the disk from the center to the edge. The disk itself is spinning under the head. This is similar to the stylus on a turntable that plays 33 RPM records (remember those?), but the head on a disk drive can be given a command to move to a different "track" on the spinning disk. Also unlike the turntable, which is a "read-only" device, the head on the disk drive can either reads bits off or write bits onto the disk. To be able to find where data has been stored on a disk, it is "formatted" into a known configuration. A blank disk could be compared to empty land that will be filled with new houses, but currently has no streets, street signs, or house numbers. The initial formatting (called "hard" formatting) of a blank disk is, then, like building the streets and assigning lots for future building. The second part of disk formatting (called "soft" formatting), involves naming the streets, designating addresses, and building houses.

In the case of Apple's Disk II, it was designed with 35 concentric circles ("streets") called tracks. Each track is subdivided into 16 segments ("houses") called sectors. Each sector can hold 256 bytes of information. In the hardware system that Wozniak designed, the timing hole near the center of the floppy disk was not used by the hardware to keep track of which sector was passing the head at any particular time. Because of that, it was necessary for the software to identify in a different way where one sector ended and the next sector began. A complicated method was used of specially encoding each of the 256 bytes so they have a standard, recognizable appearance to a program that is controlling the disk drive, plus some other specialized bytes that identify the start and end of a sector. Although it did decrease somewhat the storage capacity of the disk, the cost savings in less complicated hardware compensated for it.

## DOS 3.1 - Structure & Function with BASIC

With this background, let's get back to tracing the gap between Woz's demo DOS and Apple's first official release, DOS 3.1. Worth and Lechner in their book, _Beneath Apple DOS_, divided DOS up into four parts according to function and location in memory. When a computer needs an operating system, it's because there is a need to insulate the user from the complexity of trying to control the hardware. Consider the four parts of DOS as layers; as you get closer to the bottom layer, you are closer to the hardware (the raw data on the disk and direct control of the disk drive), but you also increase greatly the difficulty of managing it. The farther up you go, the easier it is to manage things on the disk, but the less direct is the control of the disk data and hardware. [1], [2] When Wozniak wrote his disk controller (driver) routines, he worked at the deepest layer, directly manipulating the disk hardware and raw data. This involved some complex timing and error checking for reading and writing data to the disk. This section is also where the program lies that erases the disk and creates the sectors and their addresses. In memory, this layer of DOS started at $B800 on a 48K Apple II. [2], [3]

Randy Wigginton, who had worked with Wozniak when they demonstrated the Disk II drive at the 1978 Consumer Electronics Show, wrote a "front end" or shell for Wozniak's controller routines. His part (called an "API" by today's terminology)  [4] could be considered a thin layer that is part of the lowest layer of disk routines. Together, the two layers made up what came to be known as "RWTS", or "Read/Write Track/Sector". It could do four things only: SEEK (to move the disk arm to the desired track), READ (load a sector from disk into memory), WRITE (save a sector to disk from memory), and FORMAT (discussed above). This layer of DOS, the Disk II driver, started at $B600. [2], [3]

Apple had previously contracted with an outside consultant firm, Shepardson Microsystems, to write a BASIC interpreter for a possible upcoming successor to the Apple II. Paul Laughton was a programmer working for Shepardson who was assigned to that project. In the process of working with Steve Wozniak on getting a paper tape reader interfaced to an Apple II for development and testing purposes (so he could load the code for the BASIC interpreter created on their non-Apple II development system), he learned about the Disk II project. Wozniak expressed concern about getting the hardware "and" the disk operating system completed in time to meet the schedule that Apple had assigned him. Laughton offered to write the operating system for Wozniak, which he gladly accepted. After securing this arrangement between Apple and Shepardson Microsystems, Laughton got to work on the project. [5]

Laughton took the handwritten object code for RWTS that Wozniak and Wigginton had created and entered it into his 6502 cross-assembler, adding comments to explain how RWTS worked. Next, it was necessary to decide how to make it possible for programs written in BASIC to make use of the Disk II. In an e-mail communication, Laughton commented on this next step in the process:

> The real genius behind the user interface specifications was Randy Wigginton (who was 19 at the time). Randy was the guy who had adapted Microsoft's BASIC to the Apple II. It was Randy who decided that the way to interface to the DOS was to do it from BASIC - rather than via a command line thing like CP/M. It was also Randy who figured out 'how' to make it work - intercepting the BASIC input stream, the various flags that would show if BASIC was running, etc. With these details provided by Randy, I designed the next layer of DOS - the User Interface. (It turns out this layer was much bigger than we had anticipated. This led to the first extension (of many) contracts between Shepardson and Apple for the DOS.)" [4]

Although a few modifications were later made by Apple programmers Dick Huston and Rick Auricchio)  [6], [7], [8], Laughton designed and wrote the rest of DOS  [4], specifically the layers (parts) that later became known as the "File Manager" and the "Main DOS routines". The File Manager was the next layer in memory above RWTS. It started at $AAC9 in memory, and was responsible for twelve higher level functions that dealt with files and the disk in general. These functions were OPEN, CLOSE, READ, WRITE, DELETE, CATALOG, LOCK, UNLOCK, RENAME, POSITION, INIT (format a disk and create an empty catalog track), and VERIFY. This set of routines, along with RWTS, would be similar to the file PRODOS in the current 8-bit disk operating system. It handled the disk at the file level, but knew nothing about BASIC. [2], [3]

The next layer of code above the File Manager contained the Main DOS Routines. These routines started at $9D00 in memory, and were responsible for interfacing BASIC with the disk. This layer would be similar to the file called BASIC.SYSTEM used today in the ProDOS system. Since neither Integer BASIC nor Applesoft were specifically modified to handle disk commands, this part of DOS kept a constant look at any output PRINTed by BASIC. When a BASIC program was running, DOS looked to see if the character Ctrl-D (hex $04) was printed immediately after a Ctrl-M (carriage return). If that sequence was detected, DOS assumed that the next text printed was a command for it. If a BASIC program was not running, then DOS examined anything typed directly from the keyboard. If it decided that a DOS command had been entered, it would execute that command. If the user typed a command that DOS recognized (such as "RUN PROGRAM" or "SAVE PROGRAM") but which resulted in a disk error, DOS 3.1 would generate an error message. On the other hand, if DOS did not recognize the command, it passed it on to the active BASIC for processing.

The final, uppermost layer of DOS was not a program code area but a set of memory areas called "buffers". One buffer was used by DOS for each open file. These buffers ordinarily started at $9600 in memory.

Here is an example of how the layers of DOS interacted: When a user typed the command "LOAD PROGRAM" at the keyboard, DOS intercepted the statement. The Main DOS Routines determined that it WAS a legal DOS command. The File Manager was called to 1) OPEN a file named "PROGRAM", 2) READ all the bytes associated with that file into memory starting at a specific location, and then 3) CLOSE the file. The File Manager's OPEN command in turn instructed RWTS where to move the disk read/write head, and in what order to read the correct tracks and sectors to find the contents of the entire file, wherever it happened to be on the disk. Complicated, perhaps, but the only thing the user had to know was how to type "LOAD PROGRAM".

Finally, one piece of trivia: Why was the first DOS released for the Apple II called "DOS 3.1" rather than "DOS 1.0"? Previously, I had written that Steve Wozniak believed it was Shepardson Microsystems that decided on calling it "DOS 3". [2] However, Paul Laughton notes on his web site this more accurate explanation:

> Why was the first release of Apple DOS called Apple DOS 3.1?
> Every time I recompiled the code, I incremented a revision counter. The counter started at Rev 0.1. Whenever I got to (n).9, I would roll the counter over to (n+1).0. The first listing I gave Apple was Rev 2.8. They (I forget who) decided they could not call it DOS 2.8, so they changed it to DOS 3.0. Apple did the beta testing with this version (2.8 renamed 3.0). When Apple shipped the DOS for revenue, they incremented it to 3.1 to indicate that the code had changed from the beta version. As a final note, when I transferred the source code to Apple in October, 1978 the Rev number was up to 6.3. [5]

(As mentioned in Paul's note, DOS 3.0 was never actually released to the public, as it was a beta version which still had a few bugs left to fix, so "DOS 3.1" came with the first Disk II drives shipped by Apple to their dealers).

## DOS 3.1 - Manual

When originally introduced with the new Disk II drive in 1978, DOS 3.1 had very little documentation. Because the demand for the disk drive was so great, the engineers at Apple had worked feverishly to produce enough working drives to begin shipping. They went out, although there was not time to complete a real manual on how to use the disk operating system. They did include a leaflet about some of the commands, but there were still, obviously, complaints. One letter to Apple president Mike Markkula made these blunt comments: "You [expletive deleted]. I bought an Apple with floppy and nobody, I mean nobody, in L.A. or San Diego knows how to use the [thing] for random access files. I really feel 'ripped off.' Everybody talks about this great manual in the sky that is coming out soon??? ... [more expletives]! I need this computer now in my business not next year. [Expletive]. I hope your dog dies." [9]

It was not until the release of DOS 3.2 in February 1979 that a true reference manual was made available. It was given the unwieldy title, "Disk II Floppy Disk Subsystem Installation and Operating Manual", and subtitled "Apple Intelligent Subsystems (part #030-0011-00)". It was all of 38 pages long, with weak jokes and typos, but not much else of substance. Instruction on how to READ and WRITE text files was given in a mere ten lines, with no programming examples. The EXEC command was given a little more description, but was still unclear to many users. The manual also talked about " *3D0G ". What it "didn't" say was that this meant that the user was supposed to type "3D0G" from the Monitor prompt (to allow a return to the active BASIC with DOS connected). [10], [11]

## DOS 3.1 - Features

A catalog of the DOS 3.1 System Master disk would produce this output:

```
> CATALOG
DISK VOLUMN 254
 I 007 HELLO
*I 043 APPLESOFT
 I 016 ANIMALS
 I 009 COLOR DEMOS
*I 004 MASTER.CREATE
*B 039 RAWDOS
*I 007 COPY
*B 007 COPY.OBJ

>█ 
```

"HELLO" was the startup file executed when the disk was booted. It just displayed the following:

```
  DISK II MASTER DISKETTE. VERSION 3.1
                                      
                             20-JUL-78
                                      
  COPYRIGHT 1978   APPLE COMPUTER INC.
>█
```

stopping at the Integer BASIC prompt. "ANIMALS" was an Integer program that gave an example of the use of disk files, and "COLOR DEMOS" was a disk version of a program that had earlier come on cassette. "MASTER CREATE" was a program that could be used to initialize a "master" disk. Using the binary file "RAWDOS", it executed the DOS "INIT" command, but put a version of DOS on the newly formatted disk that was relocatable. [12] When DOS from a "master" disk was booted on an Apple II, it first determined what was size of the memory, and then loaded itself into memory as high as possible. The INIT command properly formatted a new disk, but created what Apple called a "slave" disk; that is, the DOS loaded from a slave disk was fixed in memory to the same size as the computer on which DOS had been booted. In most cases this would not be a problem. However, the problem would surface if someone whose Apple II had only 16K of RAM shared a disk with a friend whose computer had, say, 32K of memory. Booting that borrowed disk would make the 32K computer appear to have only 16K of RAM (since it forced DOS to load at the highest location available to a 16K machine). A "master" disk was more versatile, being "intelligent" enough to adapt itself to differing memory sizes.

The Integer BASIC file "APPLESOFT" was interesting. It was a 43 sector file that appeared in a catalog as an Integer BASIC program (with the "I" filetype code). If you loaded the file and listed lines 10 through 80, there were lines that would produce the following text:

```
***************************************
*  APPLESOFT ][ FLOATING POINT BASIC  *
*             APRIL 1978              *
***************************************

COPYRIGHT 1978 APPLE COMPUTER

COPYRIGHT 1976 BY MICROSOFT

ALL RIGHTS RESERVED


]█
```

There were also lines that poked some values into memory, and then jumped to a machine language routine that relocated Applesoft into RAM starting at $800 (the same place where Cassette Applesoft loaded). If you tried to LIST the entire program in memory, the lines after line 80 appeared to be a jumble of Integer BASIC commands. This is because a majority of the file was actually a machine language program that had been appended to the end of the short Integer BASIC program that displayed the title above and did the memory pokes. This machine language code was the Applesoft BASIC interpreter. Now, if the file "APPLESOFT" was executed by typing "RUN APPLESOFT", it would display the title and leave the cursor next to the Applesoft bracket prompt. However, DOS was no longer connected; the result was much like using Cassette Applesoft. To properly use this file with DOS, you had to type "FP" from the Integer BASIC prompt. DOS would then load the "APPLESOFT" file and properly initialize the interpreter, leaving DOS connected. Since this version of Applesoft still had a few bugs in it, this method of using Applesoft was obsoleted by the Applesoft Firmware card and the Apple II Plus. [11]

Interestingly, the error messages produced by DOS 3.1 were made to look similar to those displayed by Integer BASIC. For example, this is what happened if an attempt was made to load a type "B" (binary) file with the "LOAD" command:

```
›LOAD COPY.OBJ
***DISK: NOT BASIC PROGRAM
>█
```

Integer BASIC had error messages that looked like "*** SYNTAX ERR" (with a space following the asterisks). The possible error messages in this version of DOS that were different from later versions were:

```
SYS ERROR
CMD SYNTAX ERROR
NO FILE BUFFS AVAIL ERROR
NOT BASIC PROGRAM ERROR
NOT BINARY FILE ERROR
```

## DOS 3.1 - User Experiences

One problem encountered by early users of the Disk II was properly connecting the drive to the controller card, as discussed in Part 9 of this History. Some quirks in DOS that plagued users at the time of the first releases of DOS 3.1 included one in which LOCKing a file sometimes mysteriously caused the length of the first file in the catalog to change. Apple told people not to worry about that; in fact, they told people not to pay attention to the sector counts in the catalog at all, as there was a bug in that part of the catalog routine. Another problem in early versions of DOS 3.1 was an inability to execute READ or WRITE statements in an Applesoft program if they occurred in program lines that were numbered higher than 256. It also wouldn't allow more than one DOS command on the same line of a program, so this was not possible:

```
10  ONERR  OR GOTO 1000
20  PRINT D$;"VERIFY FILE": PRINT
    D$;"OPEN FILE": PRINT D$;"RE
    AD FILE" 
```

Other bugs in early versions of DOS 3.1 included not being able to initialize disks with MASTER.CREATE unless the disk controller was moved to slot 7. (Originally, slot 7 was going to be the disk slot, but Apple decided to change it to slot 6 and leave slot 7 for video cards. Why the various 80-column cards that were eventually released were made to go into slot 3 instead of slot 7 is anybody's guess). The A.P.P.L.E. user group had patches to MASTER.CREATE and RAWDOS to fix the slot 7 INIT bug, and the >255 line number bug in Applesoft. [13] Apple later released a modified version of DOS 3.1 that fixed these bugs (without changing the version number).

## DOS 3.2 - Enhancements

As mentioned above, DOS 3 and 3.1 had a few problems. When the Apple II Plus with the Autostart ROM was released, DOS needed to be updated to handle the changes. DOS 3.2, released in February 1979, contained several modifications, but retained 90 percent of the basic structure of DOS 3.1. One interesting change made to plan for the future was a doubling of the number of possible filetypes. The original DOS used "I" for Integer BASIC files, "A" for Applesoft, "B" for binary files, and "T" for text files. DOS 3.2 added types "S", "R", another "A", and another "B". Of those four types, only "R" was ever officially designated by Apple, and that for relocatable assembler object files.

```
  MASTER DISKETTE. VERSION 3.2 STANDARD
                                       
                              1-JUNE-79
                                       
  COPYRIGHT 1978.   APPLE COMPUTER INC.
>█  
```

DOS 3.2 included a program called "UPDATE 3.2", which worked much like the earlier program "MASTER.CREATE" in changing a "slave" DOS disk into a "master" disk. As time went by, and more users had their Apple II's fully populated with 48K RAM, the need for such a utility became less and less important. [14]

DOS 3.2 - FEATURES

I've found two versions of DOS 3.2 System Master disks. The first appears to be a non-Applesoft version of the disk. A catalog of this disk would produce this output:

```
>CATALOG

DISK VOLUME 254

*I 002 HELLO
*I 053 APPLE-TREK
*I 018 ANIMALS
*B 009 UPDATE 3.2
*I 014 COPY
*I 009 COLOR DEMO
*I 053 BRICK OUT
*I 026 SPACE WAR
*I 050 THE INFINITE NO. OF MONKEYS
*I 051 COLOR SKETCH
*I 053 SUPERMATH
*I 026 APPLEVISION
*I 017 BIORHYTHM
*I 027 PINBALL

>█
```

The file "RAWDOS" that was on the DOS 3.1 disk was no longer needed, as its function was included in the "UPDATE 3.2" program. [12] As you can see, some of the files from the DOS 3.1 master disk were retained, but some others were added. "APPLE-TREK" was a Star Trek game that appeared on many computers of this era, both mainframe and micro. Rather than "Klingons", this game had you hunting "Klarnons".

![Screenshot of APPLE-TREK game [15] ](images/screen-apple-trek.png)

"COLOR DEMO" was a demonstration of the color display abilities of the Apple II. The lo-res Kaleidoscope part of the program looked like this:

![Screenshot of COLOR DEMO [16] ](images/screen-colordemo.png)

"BRICK OUT" was the full Apple II version of "Breakout", designed by Wozniak for Atari, and part of his inspiration for features that he designed into the Apple II from the start. This version, written by Bruce Tognazzini, allowed adjustment of all colors in the game, the width of the paddle, and more.

![Screenshot of BRICK OUT game [17] ](images/screen-brickout.png)

"SPACE WAR" was another game based on popular culture, this time patterened after Star Wars. As with "BRICK OUT", this game required use of the game paddles, but this time it required both paddles in order to adjust your aim vertically and horizontally and allow you to fire at the fighters.

![Screenshot of SPACE WAR game [18] ](images/screen-spacewar.png)

Another program written by Bruce Tognazzini was essentially a clever set of BASIC programming tricks disguised as a joke. Complete with typewriter-like sound effects, it was amusing and educational.

![Screenshot of The Infinite Number of Monkeys [19] ](images/screen-monkeys.png)

Another Tognazzini program, "SUPERMATH", did drilling on math facts.

![Screenshot of SUPERMATH [20] ](images/screen-supermath.png)

"APPLEVISION" was written by Bob Bishop, and was another one of those "How did they do that" type of programs. It used the mysterious and sparsely documented feature of shape tables (less easy in Integer BASIC than it was in Applesoft), and also showed the use of hi-res graphics and the display of text on the hi-res graphics screen. Additionally, it created music, in the form of "Turkey In The Straw", played on the Apple II's built-in speaker.

![Screenshot of APPLEVISION demo [21] ](images/screen-applevision.png)

The other two demonstration programs, "BIORHYTHM" and "PINBALL" used lo-res graphics.

The other version of the DOS 3.2 System Master I have found produced this when a catalog was done:


```
>CATALOG

DISK VOLUME 254

*I 002 HELLO
*I 018 ANIMALS
*B 009 UPDATE 3.2
*I 014 COPY
*I 009 COLOR DEMO
*B 003 CHAIN
*A 009 COLOR DEMOSOFT
*A 028 LITTLE BRICK OUT
*A 003 MAKE TEXT
*A 003 RETRIEVE TEXT
*A 010 EXEC DEMO
*A 010 RANDOM
*T 003 APPLE PROMS
*A 039 RENUMBER INSTRUCTIONS
*A 014 RENUMBER

>█
```

This included several Applesoft files, including a version of the color demonstration ("COLOR DEMOSOFT"), a smaller version of the older Integer BASIC game "BRICK OUT" ("LITTLE BRICK OUT"), a couple of files to show simple disk access ("MAKE TEXT" and "RETRIEVE TEXT"), and a program to exhibit the use of random-access disk files ("RANDOM", with the file "APPLE PROMS"). There was finally a program ("EXEC DEMO") that showed how to use the EXEC command in DOS. Also found on this disk were two utilities for Applesoft. One made it possible to renumber Applesoft programs, and the other ("CHAIN") allowed linking between multiple Applesoft programs, retaining the value of any variables created by the first program. There "was" a CHAIN command built into DOS, but it worked properly only with Integer BASIC programs.

## DOS 3.2.1

In late July 1979, DOS 3.2.1 was released. This was merely a minor upgrade to make some patches to RWTS and correct a timing problem that caused the utility "COPY" to fail when copying disks with two disk drives. It also began a system disk version numbering system that persists to this day, that of adding a third digit to indicate a minor upgrade. (For example, GS/OS 5.0 changed to 5.0.1 with some bug fixes, rather than 5.1). [14]

This disk contained the new COPY program, and a program called "UPDATE 3.2.1", which worked just as "UPDATE 3.2" and "MASTER.CREATE" had previously. The update program was used to modify existing DOS 3.2 disks to the 3.2.1 version. As an bonus, Apple added some programs to this Master disk that were on the first DOS 3.2 disk. The included games and graphics demonstrations included "APPLE-TREK", "THE INFINITE NUMBER OF MONKEYS", "BRIAN'S THEME ", and "BRICK OUT". The "HELLO" program displayed this when the disk was booted:

```
MASTER DISKETTE. VERSION 3.2.1 STANDARD
                                       
                              1-JUNE-79
                                       
COPYRIGHT 1979       APPLE COMPUTER INC.
>█  
```

## Timeline

The start dates for Apple DOS 3.0 through 3.2.1, and the Apple II series of computers:

* DOS 3.0 - June 1978 
* DOS 3.1 - July 1978 
* DOS 3.2 - February 1979 
* DOS 3.2.1 - July 1979 
* DOS 3.3 - August 1980 (exact date Apple stopped supporting this version is unknown to me) 

## Notes

* [1] Deatherage, Matt. "The Operating System", The Apple II Guide, Fall 1990, pp. 117-125.
* [2] Wozniak, Stephen. (personal telephone call), Sep 5, 1991.
* [3] Don Worth and Pieter Lechner. Beneath Apple DOS (Quality Software, Reseda, CA, 1981) pp. 5.1-5.3, 6.4-6.8, 8.1-8.42.
* [4] Laughton, Paul. Personal e-mail, February 1996.
* [5] Laughton, Paul. "Apple Computer The Early Days A Personal Perspective", [Source](http://www.laughton.com/Apple/Apple.html).
* [6] Little, Gary. Exploring Apple GS/OS And ProDOS 8 (Addison-Wesley Publishing Company, Inc, Reading, MA, 1988) pp. 2-4.
* [7] Little, Gary. Inside The Apple //c (Brady Communications Co, Bowie, MD, 1985) pp. 1-7.
* [8] Auricchio, Rick. (personal telephone call), Sep 4, 1991.
* [9] Moritz, Michael. The Little Kingdom (William Morrow and Company, Inc, New York, 1984) p. 211.
* [10] Worth and Lechner. p. 1.2.
* [11] Bragner, Bob. "Open Discussion", Softalk, Nov 1983, pp. 51-52.
* [12] Vanderpool, Tom. GEnie, A2 Roundtable, Mar & Aug 1991, Category 2, Topic 16.
* [13] Thyng, Mike. "Apple Source", PEEKing At Call-A.P.P.L.E., VOL. 1,1978, pp. 7-8.
* [14] Worth and Lechner. pp. 2.1-2.3.
* [15] Screenshot of APPLE-TREK game. [Apple II History Mirror](https://www.duxburysystems.org/downloads/library/texas/apple/history/history/ah14.html).
* [16] Screenshot of COLOR DEMO. [Apple II History Mirror](https://www.duxburysystems.org/downloads/library/texas/apple/history/images/colordemo.gif).
* [17] Screenshot of BRICK OUT game. [Apple II History Mirror](https://www.duxburysystems.org/downloads/library/texas/apple/history/images/brickout.gif).
* [18] Screenshot of SPACE WAR game. [Apple II History Mirror](https://www.duxburysystems.org/downloads/library/texas/apple/history/images/spacewar.gif).
* [19] Screenshot of The Infinite Number of Monkeys. [Apple II History Mirror](https://www.duxburysystems.org/downloads/library/texas/apple/history/images/monkeys.gif).
* [20] Screenshot of SUPERMATH. [Apple II History Mirror](https://www.duxburysystems.org/downloads/library/texas/apple/history/images/supermath.gif).
* [21] Screenshot of APPLEVISION. [Apple II History Mirror](https://www.duxburysystems.org/downloads/library/texas/apple/history/images/applevision.gif).

