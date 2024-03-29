---
title: The Apple IIc
author: Steven Weyhrich
date: November 12 2001
version: v1.0
---

# Part 8: The Apple IIc

## Prelude: Steve Jobs and Macintosh

To discuss the smallest Apple II, the IIc, it is necessary to look at the environment and other events that were happening at Apple Computer, Inc. in the years preceding the release of this model.

![The Apple Lisa [1] ](images/apple-lisa.jpg)

Recall from "The Apple IIe" that it was shown how Apple's Lisa project was designated as the computer that was considered to be the future of Apple. From a series of parallel processors and a "bit slicing" architecture, to a focus on the Motorola 68000 microprocessor as the controller of this advanced computer, the project had been progressing very slowly. It was begun back in 1979 with the same focus as any other Apple product. Frank Rose, in his book "West Of Eden", explained the environment at Apple this way:

> "Both [Apple III and Lisa] had been conceived of as nifty pieces of hardware rather than as products to appeal to a specific market: At Apple you designed a box and people bought it because it was neat, not because any thought had been given to what it would do for them." [2]

![Apple Lisa badge [3] ](images/apple-lisa-badge.jpg)

However, a significant change occurred in 1979 when Xerox bought a large chunk of Apple stock. In return for being allowed this stock purchase, Xerox allowed some of their research ideas to be used in designing an office computer. Jef Raskin, one of Apple's early employees, had seen the work being done at Xerox's Palo Alto Research Center (PARC), and encouraged the Lisa design team to take Xerox up on its offer. Steve Jobs went on that visit to PARC, and was significantly impressed with the Xerox Star computer and its user-interface, with its icons, bit-mapped graphics-based text characters, overlapping windows, and a pointing device called a "mouse". At this point, the Lisa took on a distinct personality that made it possible to become the ultra-computer Apple needed. This was important, since by 1981 Apple executives were getting sweaty palms worrying about the future. The Apple III was clearly "not" taking the business world by storm.

Unfortunately for Jobs, who was excited about using the Xerox technology in designing a new computer, he was excluded from the Lisa project. After the problems associated with the introduction of the Apple III, a reorganization in 1980 moved the Apple II and III into one division, and the Lisa into another. Lisa was put under the control of John Couch, and Jobs was not allowed to participate. Since Lisa had been taken away, Jobs in 1981 began to look for something else that he could do at Apple. Raskin had previously begun his own design work on a computer that would be inexpensive and simple to use. He had named this computer "Macintosh", and during 1980 Raskin worked on guidelines to fulfill his dream of simplicity, and took some steps to begin design on the hardware. When Steve Jobs discovered the Macintosh project, he literally took it over, altering Raskin's ideas to have this computer run with the same Motorola 68000 processor used by the Lisa, and to use the same complex but easy-to-use interface as well. In essence, Jobs wanted to "out-Lisa the Lisa" by creating a smaller, less expensive computer that would do the same thing. [4]

![Apple Macintosh [5] ](images/macintosh-128k.jpg)

While the Macintosh developed as a pirate project with a smaller team and less money than Lisa, the concept of an "appliance" computer also emerged. Instead of those messy slots and a lid that popped off (which made the Apple II so popular with the hacker community), Jobs' team was sold on the idea that all necessary features should simply be built-in and the case sealed. It would be something that you just plugged in, turned on, and started using. With the Xerox Star mouse/icon/window interface it would not only be easy to set up and turn on, but also easy to use. [4]

## Apple IIc: Beginnings

![Apple IIc [6] ](images/apple-iic.jpg)

What was happening with the Apple II during this time? The efforts to make it less expensive to build were progressing, and the Apple IIe was in the formative stages. In the summer of 1981 someone proposed a portable Apple II, a book-sized computer. It wasn't until Steve Jobs became interested in it as engineering challenge, well after Macintosh was under way, that anything came of the idea:

> ...one day late in '82, Paul Dali showed him [Jobs] a photograph of a Toshiba portable and they started fooling around with the idea of an Apple II that would look like the Toshiba but come with a built-in disk drive. They took out a IIe circuit board and a disk drive and a keyboard and played with them until they arrived at a promising configuration--keyboard in front, disk drive in back, circuit board in between. What got Jobs excited about this idea was the engineering difficulty of squeezing it all into a package not much bigger than a notebook. And a machine so small wouldn't have the expandability that characterized all the other II's. Like Macintosh, it could be taken out of the box, plugged in, and put to work--no extra parts to buy, no cables to figure out. It was the II reinvented as an appliance. [7

As with all Apple projects, the IIc went by various code names during its development, for the sake of internal communications and to keep outsiders from knowing what was going on. The various names used included VLC (Very Low Cost), Yoda, ET, IIb (for "Book"), and Teddy (which stood for "Testing Every Day"). Also, following a long standing tradition at Apple, some of the code names assigned to the project at various times were names of children of people at Apple: Chels, Jason, Lolly, Sherry, and Zelda. These names persist in the source code for the firmware for the IIc as later printed in the technical reference manual; the serial port driver is called a "Lolly" driver. [8]

During the time the IIc was under development, Apple was working on a change in the look of their products. They planned a more European styling, and a color scheme called "Snow White". The IIc would be the first product with the new appearance and color.

## Hardware

As mentioned above, the IIc had its origins while the IIe project was going on. When Steve Jobs became involved, he felt they should continue with the open IIe as they had planned, but do this other Apple II as a product "focused" to a specific group of customers, primarily new users. Originally he had planned a closed Apple II that had a built-in mouse port, one serial port, and some other features. What they ended up with at that point was just a computer and a keyboard. Walt Broedner, the engineer who pushed for the Apple IIe to be produced, used some of their previous work with custom IC's for the disk controller and combined both projects together to make the IIc. [9]

Although he was told it was not be possible, Jobs strongly pushed for the mouse in this closed Apple II to be compatible with the Macintosh mouse--and they managed to make it work. [7] Regarding the plans for a single serial port, however, Apple's marketing people pointed out to Jobs that many people were going to want both a printer "and" a modem, so they added a second port to the original design. They decided to use serial ports on the IIc instead of parallel ports for a couple of reasons. First, the socket for a serial port is smaller than a parallel port, and it would fit better onto a small box like the IIc. Also, Apple's general direction at the time was to get consistency in its hardware, and they had decided to make everything they made use a serial interface. [9]

They began work on the Apple IIc in earnest right after the IIe was finished. Because they were trying to squeeze an Apple IIe with 128K, 80 column routines, two serial cards, disk controller, and a mouse card into an 11 by 12-inch case, the design challenges were greater than with the IIe (recall that this was what appealed to Steve Jobs). The size of the case was determined by the decision to make it able to fit into a standard-sized briefcase. [9]

![Side View of an Apple IIc [10] ](images/apple-iic-side.jpg)

Apple also had the international market in mind when they designed the IIc. A special chip containing the keyboard map could easily be changed depending on the country where the computer would be sold, to make it consistent with regional keyboard differences. The external pushbutton would switch between the two different keyboards, between a UK and German layout, for example. In the U.S. version of the IIc it switched from a standard Sholes keyboard (also known as "QWERTY") to a Dvorak keyboard (which allows faster touch typing). The decision for the foreign keyboards came first; the added bonus for American versions of getting Dvorak came as an extra bonus, to save having two different cases (one for US and one for foreign versions). [9]

One problem in creating such a compact computer was dealing with heat production. Apple engineers wanted it to be able to function in environmental temperatures up to 40 degrees Celsius (about 104 degrees Fahrenheit). One article published at the time of its introduction mentioned jokingly that the designers wanted to make the IIc capable of doing a long disk sort (sorting data in a disk file) while on the beach in Florida in the summer! Their major obstacle was the heat generated by the internal 5.25 disk drive. They tried some special low power drives (which would have been much more expensive), but they didn't overcome the heat problem even with them. Eventually they tried a complicated venting scheme that was designed by drilling holes into a case and putting it into an oven to let them measure internal temperatures. The engineers were surprised when they found that the normal power disk drive worked and generated less overall heat within the case than the special low power drive did. The only explanation they could come up with was that the normal power drive generated enough heat to cause it to rise, which pulled cool air in through the vents by convection. [9]

## Fireware

Since they used the newer 65c02 chip, which ran cooler and had 27 additional commands that could be used by assembly language programs, Apple's programmers had some new power to use in firmware design. Such power was needed to squeeze in all the firmware code for the IIe, plus code for the disk controller, serial cards, mouse card, and 80 column card into 16K of ROM space.

The firmware for the IIc was written by Ernie Beernink, Rich Williams, and James Huston. They designed it to look (to a software application program) exactly like a IIe with an Apple Super Serial Card in slots 1 and 2, an 80-column card in slot 3, a mouse in slot 4, and a Disk II in slot 6 (though there were "no" slots in hardware). Since these first IIc's had nothing emulated in slot 5, the firmware authors immortalized themselves by making a "ghost" peripheral appear to be present in that slot. Entering this Applesoft program:

```
]100 IN# 5: INPUT A$: PRINT A$
```

and running it would print the names of the authors. (They used a decoding scheme to extract the names, character by character, so a simple ASCII scan of the ROM would not show their little trick). This "feature" had to be removed in later revisions of the IIc ROM, because an actual disk device was added then to slot 5. [9], [11]

What about the unassigned slot 7? Here they put a small piece of code to allow booting from the external 5.25 drive by typing "PR#7" from Applesoft.

The programmers fixed some known bugs in the IIe ROMs, and added 32 graphics characters they called MouseText. To make MouseText fit they removed the ability to use flashing characters (when in 80 column mode) and replaced those characters with MouseText. Apple veteran Bruce Tognazzini designed the MouseText characters, which included a picture of a running man (perhaps to suggest "running" a program). He later sent a letter to Call-A.P.P.L.E. magazine to warn programmers that the Running Man characters (assigned to "F" and "G") had been determined to be unnecessary and would probably be replaced eventually. (This did eventually happen, but not with the IIc).

![MouseText graphical characters [12] ](images/mousetext.png)

(Notice how the MouseText characters could be combined together to create pictures, or even a text-screen version of a graphic user interface. The "FG" characters represented the Running Man; the "XY" was a file folder (sort of); and a line of "\" characters could be a scroll bar, with a "P" as an arrow within that scroll bar, and the "^" as the right hand termination of the scroll bar.)

Beernick, Williams, and Huston also made some minor changes to the Applesoft part of the ROM. They fixed things so Applesoft commands could be entered in lowercase (and translated into uppercase). They removed the Applesoft commands that were specific to the obsolete cassette interface (which was absent in the IIc) and made Applesoft more compatible with 80 columns. [9], [13] They did "not" go so far as to make any major changes in Applesoft to use the newer 65c02 commands and therefore fix known bugs or add features to this seven year old language. Their reluctance stemmed from the fact that historically many BASIC programs had made use of undocumented assembly language entry points in Applesoft, and any changes they would make here made it more likely that older programs would crash unexpectedly. [9]

## Product Introduction

Apple's introduction of the new IIc came at an "event" at the Moscone Center in downtown San Francisco on April 24th, 1984. It was entitled "Apple II Forever", and was described as "part revival meeting, part sermon, part roundtable discussion, part pagan rite, and part county fair". Apple's objectives here were to introduce The Apple IIc, describe how it fit into the company's marketing strategy, show off new software that was made to work with the new computer, and emphasize that Apple was still firmly behind the Apple II line of computers. (Steve Jobs also took some of the time to report on the sales of the Macintosh in its first 100 days). [14]

![Apple employees holding up Apple IIc computers for the computer dealers to examine [15] ](images/apple-ii-forever.jpg)

One of the interesting things they did at the "Apple II Forever" event was the actual introduction of the IIc. Giant video screens were used to show previews of Apple's TV commercials for the IIc, as well as slides and images of the speakers, including Wozniak, Jobs, and Apple's new president, John Sculley. Sculley spoke of "sharing power", and then demonstrated that in a unique way: "After holding up the tiny IIc for everyone to see and eliciting a response that they'd like to see it better, Sculley ordered the house lights on. As the light burst forth, nearly every fifth person in the audience stood up, waving high a IIc. As startled dealers cheered uproariously, the Apple plants passed the IIcs to them. Within seconds of its introduction, more than a thousand Apple dealers had a production-line IIc in their hands." [14]

When Jobs gave his report on the Mac, it revealed some interesting statistics. He told them that the first industry standard was the Apple II, which sold fifty thousand machines in two and a half years. The second standard was the IBM PC, which sold the same amount in eight months. Macintosh had done sold its fifty thousand machines only 74 days after its introduction. Although sales would not be nearly as good, Apple took orders that day for fifty thousand Apple IIc's in just over seven "hours".

At the "Apple II Forever" event, they also had a general software exhibition and a setup called the Apple II Museum. This contained Apple memorabilia, and included Woz's original Apple I, and a reproduction of Steve Jobs' garage where it was built. Although not on the schedule, "Apple II Forever" included an early-afternoon earthquake centered south of San Jose that measured 6.2 on the Richter scale.

## Success?

Their original goal had been to sell the IIc for $995. As productions costs turned out, they found that they couldn't hit that price, so they came up with $1,295, balancing the decision with the number of people who were predicted to buy the optional Monitor IIc or an external Disk IIc drive.

![Back of an Apple IIc [16] ](images/apple-iic-back.jpg)

The only problem was that although the IIc was a technological breakthrough in miniaturization, customers at that time didn't value smallness. They viewed something that was too small as also being cheap and lacking power. Although The Apple IIc was equivalent to a IIe loaded with extra memory, a disk drive, two serial cards, and a mouse card, most customers seemed to want the more expandable IIe. Apple marketing went to much effort to make the IIc attractive, but it didn't sell as well as the IIe. Just as IBM overestimated the market when producing its PCjr (which eventually failed and was discontinued), so did Apple when producing the IIc (and the original Macintosh). [14]

## Overcoming Limitations

Although the IIc did not have any slots for plugging in peripheral cards that had traditionally been used in the Apple II, the ports that were built-in had the capability to do much of what the slots had often been used for. The serial ports were compatible with any serial device; this included common ones such as printers and modems, and uncommon ones like security controllers, clocks, and speech synthesizers. Some third party companies also supplied serial-to-parallel converters for IIc owners who wanted to use parallel printers made by Epson, Okidata, and C. Itoh that were popular elsewhere in the computer world.

There was, of course, the AppleMouse IIc sold by Apple. It plugged into the game port on the IIc. Also available were two types of touch tablets: The Power Pad (Chalkboard) and Koala Pad (Koala Technologies), though the latter sold best. The Koala pad would appear to a program to be the same as a joystick, but could not emulate the mouse. [17]

The disk port on the original IIc was only designed to control an external 5.25 disk drive. Apple sold the Disk IIc for $329, and other companies later sold similar drives for less. Despite this firmware limitation, Quark Engineering released a 10 MB Winchester hard drive called the QC10 that would work with this disk port, and was the first hard disk available for the IIc. [17]

The video port worked with a standard monitor, but had access to all video signals. Included with the original IIc was an RF modulator that allowed it to be connected to a standard television (for color games). An RGB adapter box attached to the video port would allow a true RGB monitor to be attached, giving color and sharp, readable 80 column text on the same monitor. Apple also sold a flat-panel liquid crystal display for the IIc that attached to this video port. It was capable of 80 columns by 24 lines, as well as double hi-res graphics. Apple's price was about $600, but it looked somewhat "squashed" vertically, and did not sell well. Another company marketed a better flat panel liquid crystal display called the C-Vue.

![Apple IIc with LCD screeen [18] ](images/apple-iic-lcd.jpg)

With a battery attached to the 12V input, and a liquid crystal display, the IIc could be made into a truly portable computer. [17]

## Enhancements

The earliest change made available for the IIc was a motherboard swap that fixed a hardware bug causing some non-Apple modems to fail if used at 1200 baud. This modification was made only if the owner could show they needed the change (that is, they owned a 1200 baud modem that wouldn't work).

The first significant upgrade available for Apple IIc owners was also available as a free upgrade for previous owners. Changes were made to the disk port firmware to accommodate the new 800K UniDisk 3.5. Using Apple's Protocol Converter scheme (later called "Smartport"), this new IIc could handle four 3.5 disk drives, or three 3.5 disk drives and one 5.25 drive.

With the UniDisk 3.5 upgrade, the internal 16K ROM was increased in size to a 32K ROM that was bank-switched to make space for the extra code necessary to implement the Smartport. Also added were additional serial port commands to improve compatibility with the older Super Serial Card. The Mini-Assembler, absent from the Apple II ROMs since the days of the original Integer BASIC Apple II, was added back in, with support for the extra commands provided by the newer 65c02 processor (the disassembler had always supported those new commands). The STEP and TRACE Monitor commands made a comeback, having also been a casualty of the 1979 Autostart ROM for the Apple II Plus. Rudimentary firmware was also included to allowing the IIc to be attached to an AppleTalk network (a message that said "AppleTalk Offline" would appear if you typed "PR#7" from BASIC), but it was never completed, and did not appear in future revisions of the IIc ROMs. Lastly, the new IIc ROMs included a built-in diagnostic program to do limited testing of the computer for internal failures, and had improved handling of interrupts. [19]

The next Apple IIc upgrade was known as the Memory Expansion Apple IIc. This came as a response to requests for the ability to add extra memory to the IIc. Applied Engineering had already produced a Z-80 coprocessor for the IIc (to allow access to CP/M software), and an expanded memory card, up to 1 MB, which would either act as a RAMdisk for ordinary ProDOS applications, or as extra memory for the AppleWorks desktop (through a special patching program). Seeing the popularity of this, Apple released this third version of the IIc ROMs and motherboard, this time with a RAM expansion slot included. The Apple IIc Memory Expansion Card could take up to 1 MB of RAM, in 256K increments. The firmware in the new ROMs made it work as a RAMdisk automatically recognized by ProDOS and following the Smartport protocol that had been designed for the UniDisk 3.5. Apple even included code in the new ROM to patch DOS 3.3 so it could be used as a RAMdisk with that system (400K maximum size), and did the same with Pascal v1.3. Also, because this firmware was in the motherboard ROM, "any" company could make memory cards to attach to this version of the IIc.

![ Apple IIc Memory Expansion Card [20] ](images/card-apple-iic-memory-expansion.jpg)

Other changes made in this version of the IIc ROM included moving the mouse firmware from slot 4 to slot 7, and putting the RAMdisk firmware into slot 4. Also fixed was a bug that caused a write-protected 3.5 disk to be incorrectly identified with early versions of the UniDisk 3.5. [19], [21]

Since code as complex as ROM firmware rarely makes it out the door without at least one bug, Apple had to make one final improvement to the IIc ROM. The Revised Memory Expansion Apple IIc (ROM version 4) included changes which made it easier to identify if no RAM chips had been installed on the memory card. A problem with keyboard buffering was also fixed. Lastly, this version of the ROM resolved an obscure bug in the slot 2 firmware that was supposed to allow the IIc to function as a simple terminal (with a modem attached to that port). The previous version of the IIc ROM had been assembled with a couple of wrong addresses in the code, and the terminal mode produced garbage. Few people used this feature, so it was not noticeable to most users, and the corrected ROM chip was therefore not as quickly available as the original Memory Expansion upgrade.
Apple II Documentation Project

## Timeline

The start and end dates for each model of the Apple IIc, Lisa, and early Macintosh:

* Apple IIc - April 1984 - October 1985 
* Apple IIc (UniDisk 3.5) - November 1985 - August 1986 
* Apple IIc (Mem Exp) - September 1986 - December 1987 
* Apple IIc (Rev Mem Exp) - January 1988 - August 1988 
* Lisa - January 1983 - December 1983 
* Lisa 2 - January 1984 - December 1984 
* Macintosh XL - January 1985 - April 1985 
* Macintosh - January 1984 - August 1984 
* Macintosh 512 - September 1984 - December 1985 
* Macintosh Plus - January 1986 - March 1987 

## Notes

* [1] Photo: The Apple Lisa. [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Apple_Lisa_Computer.jpg).
* [2] Rose, Frank. West Of Eden: The End Of Innocence At Apple Computer. New York, Penguin Books, 1989: 48.
* [3] Photo: Lisa logo. [Source](https://blog.fluidui.com/prototyping-and-success-why-apple-have-lost-their-way/)
* [4] Levy, Steven. Insanely Great (2nd edition). New York, Penguin Books, 2000: 107-111.
* [5] Photo: Original Macintosh (128K). [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Macintosh,_Google_NY_office_computer_museum.jpg).
* [6] Photo: Apple IIc system. [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Apple_II_IMG_1107.jpg).
* [7 Rose, Frank. ibid: 110-112.
* [8] Hogan, Thom. "Apple: The First Ten Years", A+ Magazine, Jan 1987: 45.
* [9] Williams, Gregg. "'C' Is For Crunch", Byte, Dec 1984: A75-A78, A121.
* [10] Photo: Side view of Apple IIc & Monitor IIc. [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Apple_IIc_Retrocomputing_on_the_green_(4736452189).jpg). Its unusual appearance gave the IIc monitor the nickname "E.T.", after the alien in that movie with the long neck.
* [11] Little, Gary. Inside The Apple IIc. Bowie, Maryland, Brady Communications Company, Inc.,1985: 1-7.
* [12] Photo: MouseText Characters. [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Mousetext-original.png).
* [13] Weishaar, Tom. "Miscellanea", Open-Apple, Aug 1985: 1.61.
* [14] Durkee, David. "Marketalk", Softalk, Jun 1984: 54-55.
* [15] Photo: "Apple II Forever" event at the Moscone Center. From Softalk June 1984 issue page 55. [Internet Archive](https://archive.org/details/softalkv4n10jun1984)
* [16] Photo: Apple IIc rear panel. [Apple II Documentation Project](https://mirrors.apple2.org.za/Apple%20II%20Documentation%20Project/Computers/Apple%20II/Apple%20IIc/Photos/Apple%20IIc%20-%20Back.jpg).
* [17] Baum, Peter. "Expanding The Unexpandable IIc", Softalk, Jun 1984: 95-97.
* [18] Photo: Apple IIc with LCD display. [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Apple_IIc_with_LCD_display.jpg).
* [19] -----. "Preface: The Apple IIc Family", Apple IIc Technical Reference Manual. Reading, Massachusetts, Addison-Wesley Publishing Company, Inc., 1984, 1986: xxiii-xxv.
* [20] Photo: Apple IIc memory expansion card. [Apple II Documentation Project](https://mirrors.apple2.org.za/Apple%20II%20Documentation%20Project/Interface%20Cards/Apple%20IIc/Apple%20IIc%20Memory%20Expansion%20Card/Photos/Apple%20IIc%20Memory%20Expansion%20Card%20-%20Front.jpg).
* [21] -----. Apple IIc Memory Expansion Card Owner's Guide. Cupertino, California, Apple Computer, Inc.,1986: 2-4.
