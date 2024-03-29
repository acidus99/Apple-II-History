---
title: Languages (Continued)
author: Steven Weyhrich
date: January 22 1992
version: v1.0
---

# Languages (Continued)

## Apple Pascal

Applesoft was easy to use because it was interactive. You entered a command, and could immediately try it out. The disadvantage was a lack of more powerful commands, and it could be difficult to create large and complex programs. Efforts were begun within Apple to develop a more comprehensive language for the II, one that could be updated and modified if necessary. Since Applesoft was in ROM, it was more expensive and difficult for the end-user to install any upgrades to that language.

In 1979 Apple Pascal and the Language System was released. It sold for the steep price of $495, and came on four 5.25 floppy disks (all in the format of the Pascal disk system, of course). It also included the ROMs to change 13 sector disk controllers into 16 sector controllers, and the Language Card to plug into slot 0. As discussed previously, the Language Card was a 16K RAM card that made an Apple II into a full 64K RAM computer. Because of the extra available RAM, the Pascal system could load into memory without having to avoid the space used by the Applesoft (or Integer BASIC) interpreter. And with some complicated bank switching, even routines in the Monitor could be used if needed.

Apple chose to use the Pascal standard defined by the University of California at San Diego (UCSD). To make portability between various different computers possible, UCSD Pascal programs were compiled into a specialized code called "P-code". This "P-code" program could then be executed on any computer that had a proper interpreter. An Apple Pascal program could, then, run a little faster than an Applesoft program (since it "was" compiled), but not as fast as assembly language. The extra power it provided made it an attractive choice for some programmers.

The earliest version of Apple Pascal got complaints from users because it would not support lowercase (for those who had modified their Apple to display lowercase), and it was so large that it was quite awkward to use by those who owned only one disk drive.

Since the original UCSD Pascal language was designed to work with a full 80 columns of text, this was somewhat of a problem for the 40-column Apple II. For those Apple II's that did not have an 80-column card, Apple Pascal would display half of the screen at a time. In the Pascal Editor, entry of a line longer than 40 columns would cause the screen to scroll to the left. Using the arrow keys to move back to the left would scroll the screen back the other way. If needed, you could jump directly to the other half of the screen by pressing Ctrl-A. [1]

The limitation of Apple Pascal came from the need for a user to own the Language Card (or one of the later equivalent 16K RAM cards), and the fact that it was incompatible with the large library of DOS 3.2 programs and files that were already available. Eventually, with the proliferation of the 64K Apple IIe and 128K Apple IIc, a platform for Pascal applications was available. However, by that time the primary disk system being promoted by Apple for the II was ProDOS, and Apple never officially released a version of their original UCSD Pascal that would run under that operating system.

The Apple Pascal system has evolved up to version 1.3, which will support the more advanced features of the Apple IIe and IIc, but does not work as well with the IIGS as some would like. Instead, IIGS programmers now have versions of Pascal distributed by third party companies (like ORCA/Pascal from ByteWorks) created to take full advantage of that machine in 16-bit mode.

## Instant Pascal

This version of Pascal was written by Think Technologies, and Apple later bought the rights to sell it as a program for teaching Pascal. It would run only on The Apple IIc or on a 128K IIe because it used the double hi-res graphics mode, functioning much like a Macintosh "desktop" with multiple resizable windows. It had a mouse-based editor that checked program syntax as each line was entered (as did the older Integer BASIC) and automatically indented lines and boldfaced Pascal reserved words. Since it was intended for teaching, it also had a single-step trace function and the ability to modify the contents of variables while a program was running. Though good for learning the language, it was quite slow because of the overhead needed to display everything in graphics, and because it was an interpreted version of Pascal (instead of a compiled version).

Fans of the original Apple Pascal complained loudly after Apple introduced Instant Pascal. After this new Pascal came out, Apple didn't seem motivated to make any further upgrades to the older Pascal, which still used the original Pascal disk system format (Instant Pascal was made to run directly under ProDOS). [2]

## FORTRAN

Released by Apple in 1980, Apple ## Fortran ran under the Pascal operating system. It cost $200 (over and above the $495 needed to get the Language System). Programs written in ## Fortran for other computers could run with little modification under Apple ## Fortran (if a user needed that ability). As a compiled language, it ran faster than Applesoft, and probably also faster than Pascal, since ## Fortran wasn't translated into an intermediate "P-code". Apple's ## Fortran had many bugs in it, though, and since its introduction in 1980 it was never upgraded. By September 1986 it had disappeared from their product catalogs.

Another way for an Apple II user to get ## Fortran was to buy the Microsoft Z-80 Softcard for $345 and Microsoft ## Fortran for $200. This version of ## Fortran was more full-featured than Apple's, and offered some advantages in usability. It did "not" require changing to the 16 sector disk controller ROMs (if you didn't want to). Also, standard Microsoft BASIC (which was more advanced than Applesoft) was included in the Softcard package. [3]

In June of 1987 Pecan Software released ## Fortran for the IIGS. It ran under ProDOS 16 (GS/OS), but still used the UCSD format for its ## Fortran by creating a ProDOS file that acted as a UCSD Volume. [3]

## Other languages

### PILOT
Designed primarily for creating tutorial modules, this language allowed educators to design interactive programs to instruct students and test them on their responses during the process. One early version was written in Applesoft and was text-based. Apple later released their own version that ran under the Pascal system for $125. [4]

### FORTH
This was an interesting language described as "extensible". It had a number of built-in commands, and new ones could be added as easily as typing its definition. These added commands could then be used in larger programs. Two versions sold in the late 1970's were "Apple Forth 1.6" (Cap'n Software) and "6502 Forth 1.2" (Programma International). Apple Forth 1.6 was a good package, but it used a unique disk system that was not compatible with DOS 3.2. Programma's Forth was more extensive, but also more complicated. [5], [6]

### Logo
Developed from LISP (LISt Processing) language to be an aid for learning, Logo has been popular over the years in the school environment. Apple's first version of Logo (which operated under the Pascal system) could run on any 64K Apple II, while Apple Logo II (released in July 1984 for $100) ran under ProDOS on Apple II's with 128K memory. [7]

### COBOL
This language has had limited availability for the Apple II. The only version I am aware of was from Microsoft. It sold for $599 and ran under theCP/M system with the Microsoft Z-80 Softcard. [8]

### C
A language that is currently popular among "power" programmers. It has some of the structure of Pascal, but also some of the low-level power of assembly language.

## Assemblers

A large variety of Apple II assemblers have been available over the years. The earliest one, of course, was the mini-assembler that came with every Integer BASIC Apple II. The one was only good for immediate entry of assembly code; if changes were needed, much of the code would likely have to be re-entered from the beginning. Some other assemblers available in the early days include:

### TED/ASM
Developed at Apple and smuggled out the doors around May 1978, this assembler had memory conflicts with DOS, so they couldn't be used together. The text editor module was written by Randy Wigginton, and the assembler was written by Gary Shannon. In the early days, it was the only assembler they had available that would run on an Apple II. [9]

### Randy's Weekend Assembler
Also written by Randy Wigginton, this one slipped out of Apple in September 1978. The text editor was written mostly in SWEET-16 (Wozniak's 16-bit emulator in the Integer BASIC ROM), and was therefore slow. Unfortunately, it had its own set of bugs. [9]

### Microproducts Assembler
The first commercially available assembler for the Apple II, this was a "four character assembler", meaning that labels (a designation identifying a line or variable) could only be four characters long. Later it was expanded to work with six character labels. Despite some annoying bugs, it was inexpensive at only $39.95. [10]

### SC-Assembler II
Probably the second Apple II assembler that was commercially distributed. Externally it was similar to the Microproducts assembler, but was better supported and regularly upgraded. It was very compact, and achieved that goal by making heavy use of SWEET-16 code. Consequently, it was slow when assembling. The author, Bob Sander-Cederlof, later started a popular newsletter called "Apple Assembly Lines" to both support his product and to be an information center for 6502 assembly language tips and techniques. [10]

### Big Mac / Merlin
Sold originally by A.P.P.L.E. as "Big Mac", and later under the name "Merlin" by Southwestern Data Systems (later known as Roger Wagner Publishing). This assembler has been well supported over the years and has been extensively upgraded. It is one of the few remaining assemblers that have moved on to the 65816 GS/OS world, while retaining full compatibility with the previous 8-bit 6502 versions. Currently it is sold as Merlin 816 (including an 8-bit version) and Merlin 16+. The author, Glen Bredon, has also done many other programs and utilities for the Apple II.

### ORCA/M
Sold by the ByteWorks, the current version was chosen by Apple Computer as the official assembler of the APW (Apple Programmer's Workshop) programming environment on the IIGS. ByteWorks has since expanded its product line to include versions of Pascal, C, BASIC, and other IIGS languages.

### Apple EDASM
This was Apple's original "official" assembler for the II Plus and later 8-bit Apple II's. Though no longer actively supported (ORCA/M having supplanted it in the APW environment), the early versions for DOS 3.3 were included on the Apple Toolkit disk, which also had a hi-res character generator that could be interfaced into Applesoft programs. The early ProDOS versions of EDASM were sold with a 65c02 debugger called Bugbyter.

### UCSD Pascal Assembler
Part of the Apple Pascal package, it was popular because it had macro capability, could do conditional assembly and create relocatable code, and had a good text editor. However, programs created with it could not be run on a standard (non-Language card) Apple, because there was no utility available early on to transfer the files to DOS 3.2. (Later, A.P.P.L.E. published transfer utilities called "HUFFIN" and "PUFFIN" for movement to and from DOS 3.3, named affectionately after Apple's "MUFFIN" utility for DOS 3.2 to 3.3 file transfers).

### Miscellaneous Others
Assemblers: ASM/65, sold by Programma; "EAT" (Edit and Assemble Text) sold by Software Concepts, and written in Integer BASIC; and L.I.S.A., sold by Laser Systems. [10]

## Macros vs. Scripts

With the increase in complexity of applications programs has also come a secondary level of programming. This extension has been called a "macro", meaning that a single step would accomplish several separate ones that would ordinarily take more effort. Early examples of this were available in some DOS 3.3 utilities, where pressing Ctrl-C from the keyboard (for example) might cause the word "CATALOG" to appear on the command line. In this example, a macro was used to save keystrokes and speed up repetitive activities. Similar macros were available for BASIC programmers, making a control key sequence print many of the common BASIC keywords, speeding program entry. (This type of macro was different from macros used in some assemblers, such as Big Mac/Merlin and the Pascal assembler. Here a "macro" was a new command that was defined to represent several standard assembly operation codes. This did not shorten the final resulting program, but made it possible to more easily enter repeated sequences of assembly codes).

Application programs began to take this concept and include a macro capability (either offered with the program or as a third-party add-on product). With time, some of these macro features have become so complex that they have become programming languages in their own right. In fact, many of them are being referred to as "scripting" languages, since they "direct" the function of a program, as a director uses a script to film a movie. This has been most popular with telecommunications programs, where the process of logging on to a remote computer, downloading new messages, and uploading replies is automated with a script that analyzes the responses from the other computer and takes the appropriate action. It has also been popular in programs like Apple Writer (WPL, Word Processing Language) and AppleWorks (UltraMacros), where each has had its own method of automating repetitive tasks.

## A leap in complexity

The environment for writing, compiling, and debugging programs has evolved along with the applications created by those programs. Originally, the Apple II and other computers of the day were used in a "command-line interface" environment. This means that each command was typed one at a time, and sometimes "batched" together to simplify a repetitive process (as with EXEC files under Apple DOS). An example of this command-line interface can be found by starting up Applesoft (or by using MS-DOS on an IBM). Anything that is to be done with this language has to be started by typing the proper command from the keyboard. Misspell the word "LOAD", and an error message is printed and it will stubbornly refuse to do what you wanted. The same command line is used for entering the lines of a BASIC program, or RUNning the program. This method was used because it was what programmers of the day were accustomed to. Nearly every computer prior to the microcomputer reVolution worked in the same way, even if it was done using punched cards instead of being typed at a keyboard.

Minor differences were used from time to time in different computer languages, but none really took effect and changed the way in which people used computers until the release of the Macintosh in 1984. Macintosh used a radically different method of operating a computer. Instead of typing each command, the user would point to something on the screen and "click" on it using the mouse pointing device. And Macintosh programmers extended this concept to every application released with it. This different environment has been called a "graphic user interface" (GUI), and uses the concept of objects rather than typed commands. To delete a file, you don't type "DELETE PROGRAM", but point to the picture (icon) representing the file and drag it onto a picture of a trash can. This "desktop" includes more complex commands chosen from menus that appear in boxes called "windows" that pull down like a window shade from command category names on a "menu bar".

As the command line disappeared, so did traditional methods of handling program data. Words were still typed into a document on a word processing program, but many of the features that set up margins, tabs, and page breaks were translated into graphic icons selected with the mouse. Eventually this progressed into the world of the programmer. The text of computer program was entered much like any word processor text, and the command to compile it into an executable program was now selected from the menu bar at the top of the screen.

A step further along this path is the concept of "object-oriented programming" (OOP). In this method, the details of windows, menu bars, buttons, and other GUI standards are used to create other programs that use a consistent interface. Instead of having to laboriously define at the byte level how to create a window box, the computer already knows how to do this; the programmer just has to tell the computer how big it should be and where to place it on the screen. OOP programming allows smaller modules (called "objects") to be used to build a more complex final product. A language that works in an OOP environment is finally available on an Apple II, but before we get to it, a little more introduction is necessary.

## Hypertext

The term "hypertext" was created by _Computer Lib_ author Ted Nelson, and refers to a method of allowing a user to move from one concept to another in a text by linking the two concepts together. [11] The first type of program that used "hypertext" was a simple text based one. Certain words in the text of a document being viewed were marked to indicate that other information about that word was available elsewhere. Moving a cursor to that word and pressing a key would jump to the additional facts. For example, in an article about the history of music, the word "sonata" might be highlighted. Selecting this word could jump to another article that discusses sonatas in greater detail. When finished, the user could jump back over this link to the place where he left off in the original article.

Tutor-Tech was the first comprehensive hypertext system available for the Apple II series. It worked on 8-bit Apple II's, and was designed primarily for use in a classroom setting. Entirely graphics-based, it defined certain parts of the screen as "buttons", and moving the pointer to that area could allow the program to move to a different screen or cause something else to happen. As with any graphic interface, icons that represented certain functions were used to designate commands (i.e., to exit the program, you point to a picture of door labelled "EXIT").

In 1986 a remarkable program became available on the Macintosh that was, for a time, included with each Mac sold. HyperCard was a comprehensive system that used the idea of hypertext, plus added a programming language that consisted of words and phrases as close to English as anything else previously available on a microcomputer. The HyperCard system took care of the details of how to draw boxes and buttons, and left it to the user to define where to put them and how to label them. And because of the language (which Apple called "HyperTalk"), user actions could do more than just move to a different picture (called a "card" by the program). It was possible to design simple databases, games, and much more using this system. Because it called a single part of an application a "card", a collection of cards comprising an entire HyperCard application was called a "stack".

With the release of the IIGS, the power was finally available in the Apple II world to create a similar product. But it didn't come first from Apple Computer; instead, Roger Wagner Publishing introduced a product called HyperStudio in May of 1989. This program used the super hi-res graphics modes accessible on the IIGS to create its own type of stacks. Like HyperCard on the Macintosh, HyperStudio used buttons and objects on the screen to direct movement through a stack application. It also included a hardware card that made it possible to easily digitize sounds to use in stacks. Though more extensive than Tutor-Tech, it was not quite as flexible as HyperCard, since it lacked a true programming language.

In January 1991, Apple released HyperCard IIGS, a conversion of the Macintosh product. This finally made a fully programmable hypermedia environment possible on the IIGS. Later in the year Roger Wagner Publishing responded with an updated version of HyperStudio that also included a programming language similar to HyperText that afforded more control over that stacks that were created. Although neither of these products gives the user power over details of the computer system itself (as does "C" or assembly), it does make it possible for a beginner to create programs that have outstanding graphics and sound without having to know exactly how the hardware produces these effects. This, along with the flexibility possible with these products, has led Dennis Doms in an A2-Central feature article to suggest that HyperCard IIGS (and now also possibly HyperStudio) will become the "Applesoft" of the 1990's; that is, an Apple IIGS user with HyperCard IIGS can create programs as easily as the Applesoft programmer of 1980 could do, but with far more attractive results. [11]

## Notes

* [1] Walls, Keith S. "The Fantastic New World Of Apple Pascal", PEEKing At Call-A.P.P.L.E., Vol 3, 1980, p. 237.
* [2] Howerton, Christopher, and Purvis, Lee. "The Apple IIGS Pascal Revue", Call-A.P.P.L.E., Apr 1988, pp. 12-17.
* [3] Winston, Alan B. "The Multi Lingual Apple", PEEKing At Call-A.P.P.L.E., Vol 3, 1980, pp. 222-224.
* [4] Vanderpool, Tom. GEnie, A2 Roundtable, Mar & Aug 1991, Category 2, Topic 16.
* [5] Winston, Alan B. "The Multi-Lingual Apple: Languages", PEEKing At Call-A.P.P.L.E., Vol 2, 1979, pp. 183-190.
* [6] Cap'n Software's version was written by John Draper, the legendary phone phreaker "Cap'n Crunch" who had worked at Apple in its early days. During his time at Apple he had designed one of the first peripheral cards for the Apple II: A telephone controlling device that also just happened to be capable of hacking into long distance telephone switching systems, and was therefore quite illegal.
* [7] -----. Apple Computer, Inc, Apple IIc Memory Expansion Card Owner's Guide, Singapore, 1986, pp. 2-4.
* [8] -----. (ads), Call-A.P.P.L.E. In Depth #1, 1981, p. 106.
* [9] Hertzfeld, Andy. "A Consumer's Guide To Apple II Assemblers", PEEKing At Call-A.P.P.L.E., Vol 2, 1979, pp. 164-166.
* [10] Hyde, Randall. "Assembler Maxi-Reviews", PEEKing At Call-A.P.P.L.E., Vol 3, 1980, pp. 240-246.
* [11] Doms, Dennis. "An Applesoft for the 1990's", A2-Central, Mar 1991, p. 7.09-7.13.

