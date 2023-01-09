---
title: The Apple-1
author: Steven Weyhrich
date: October 20 2001
version: v2.0
---

# Part 2: The Apple-1

## Development

![Apple-1 computer in a wooden case \[1\]](images/apple-1-front.jpg)

At the Homebrew Computer club in Palo Alto, California (in Silicon Valley), Steve Wozniak, a 26 year old employee of Hewlett-Packard and a long-time digital electronics hacker, had been wanting to build a computer of his own for a long time. For years he had designed many on paper, and even written FORTRAN compilers and BASIC interpreters for these theoretical machines, but a lack of money kept him from carrying out his desire. He looked at the Intel 8080 chip (the heart of the Altair), but at $179 decided he couldn't afford it. A decision to "not" use the 8080 was considered foolhardy by other members of the club. Consider this description of the microcomputer "world" as it was in the summer of 1975:

> That summer at the Homebrew Club the Intel 8080 formed the center of the universe. The Altair was built around the 8080 and its early popularity spawned a cottage industry of small companies that either made machines that would run programs written for the Altair or made attachments that would plug into the computer. The private peculiarities of microprocessors meant that a program or device designed for one would not work on another. The junction of these peripheral devices for the Altair was known as the S-100 bus because it used one hundred signal lines. Disciples of the 8080 formed religious attachments to the 8080 and S-100 even though they readily admitted that the latter was poorly designed. The people who wrote programs or built peripherals for 8080 computers thought that later, competing microprocessors were doomed. The sheer weight of the programs and the choice of peripherals, so the argument went, would make it more useful to more users and more profitable for more companies. The 8080, they liked to say, had critical mass which was sufficient to consign anything else to oblivion. [2]

Another chip, the Motorola 6800, interested Wozniak because it resembled his favorite minicomputers (such as the Data General Nova) more than the 8080. However, cost was still a problem for him until he and his friend Allen Baum discovered a chip that was almost identical to the 6800, while considerably cheaper. MOS Technology sold their 6502 chip for $25, as opposed to the $175 Motorola 6800. Wozniak decided to change his choice of processor to the 6502 and began writing a version of BASIC that would run on it. A friend over at Hewlett-Packard programmed a computer to simulate the function of the 6502, and Wozniak used it to test some of his early routines. When his BASIC interpreter was finished, he turned his attention to designing the computer he could run it on. Except for some small timing differences, he was able to use the hardware design he had earlier done on paper for the 6800. [3]

![MOS Technology 6502 Processor \[4\]](images/6502.jpg)

To make the computer easier to use, Wozniak favored a keyboard over the front panel switches that came on the Altair. He also made it simple to use a television for a video terminal. (Recall that at this time the most common mechanism used for input/output was a teletype, which consisted of a keyboard, typewriter, and if you were lucky, a paper tape reader/puncher). Functionally, it was a television terminal attached to a computer, all on one printed circuit board (another enhancement over the Altair). Wozniak used two 256 x 4 PROM (programmable read-only memory) chips to create a 256 byte program (called a "monitor") that looked at the keyboard when the computer was turned on. This monitor program could not do much more than allow entry of hex bytes, examine a range of memory, and run a program at a specific address. [5] The Altair needed these "bootstrapping" instructions to be entered by hand each time the computer was turned on.

![Apple-1 Test Output \[6\]](images/apple-1-output.gif) 

Because there were no cheap RAM chips available, Wozniak used shift registers to send text to the TV screen. Consequently, his video terminal was somewhat slow, displaying characters at about 60 characters per second, one character per scan of the TV screen. (This speed would be similar to watching a computer communicate via a modem at 1200 baud). It was slow by today's standards, but an advancement over the teletypes that could only type 10 characters per second. If the board was fully populated, it had 8K of dynamic RAM, allowing room to load BASIC into 4K of memory and have a little less than 4K left over for the user's programs. It had a video connector, but it was up to the owner to connect a monitor. Also, a keyboard was not included and so had to be purchased separately and then wired into a 16-pin DIP connector. The power supply had to be connected to two transformers to get 5 volts and 12 volts for the motherboard. There was no speaker, no graphics, and no color. There was a single peripheral slot, and when it was first released there was nothing available to plug into this slot. It was entirely contained on a single printed circuit board, only sixteen by twelve inches in size (most hobby computers of that time needed at least two boards), used only 30 or 40 chips, and because it could run BASIC programs it got people's attention. [7]

## Marketing

By early 1976, Steve Wozniak had completed his 6502-based computer and would display enhancements or modifications at the bi-weekly Homebrew Computer Club meetings. Steve Jobs was a 21 year old friend of Wozniak's and also a visitor at the Homebrew club. He had worked with Wozniak in the past (together they designed the arcade game "Breakout" for Atari) and was very interested in his computer. During the design process Jobs made suggestions that helped shape the final product, such as the use of the newer dynamic RAMs instead of older, more expensive static RAMs. He suggested to Wozniak that they get some printed circuit boards made for the computer and sell it at the club for people to assemble themselves. They pooled their financial resources together to have PC boards made, and on April 1st, 1976 they officially formed the Apple Computer Company. Jobs had recently worked at an organic apple orchard, and liked the name because "he thought of the apple as the perfect fruit--it has a high nutritional content, it comes in a nice package, it doesn't damage easily--and he wanted Apple to be the perfect company. Besides, they couldn't come up with a better name." [8]

![Apple's original logo \[9\]](images/apple-logo-newton.jpg)

Jobs approached the owner of a new computer store in the bay area called "The Byte Shop." This businessman, Paul Terrell, expressed an interest in the Apple Computer (to be known later as the "Apple I" on their price lists, and "Apple-1" in the computer's manuals), but wanted only fully assembled computers to sell. If they could provide this, Terrell told them he would order fifty Apples, and pay cash on delivery. Suddenly, the cost of making (and selling) this computer was considerably more than they expected. Jobs and Wozniak managed to get the parts on "net 30 days" (30 days credit without interest), and set themselves up in Job's garage for assembly and testing of the Apple-1. After marathon sessions of stuffing and soldering PC boards, Jobs delivered the computers to the Byte Shop. Although these "fully assembled" computers lacked a power supply, keyboard, or monitor, Terrell bought them as promised. In July of 1976 the Apple-1 was released and sold for $666.66, which was about twice the cost of the parts plus a 33% dealer markup. [10] Two hundred Apple-1 computers were manufactured, and all except twenty-five of them sold over a period of ten months. [11]

![Apple-1 Magazine Advertisement \[12\]](images/apple-1-ad-1976.jpg)

Although the Apple-1 was easier to begin using than the Altair (thanks to its built-in ROM code), it was still a time consuming process to set it up to do something useful. Steve Wozniak would have to type in about 3K of hexadecimal bytes before BASIC was ready to use. He could do it in about 20 to 30 minutes, but he almost knew the code by heart. The typical user was more limited in ability to use BASIC on the Apple-1. To broaden the appeal of the Apple-1 (and at the insistence of Paul Terrell), Wozniak designed a cassette interface. It was mounted on a small two-inch-high printed circuit board and plugged into the single slot on the motherboard. The card sold for $75 and a cassette tape of Woz's BASIC was included with it. The advertisement Apple included with the card stated, "Our philosophy is to provide software for our machines free or at minimal cost." The interface worked, but it was tricky to get volume and tone on the cassette player properly adjusted to successfully load from cassettes. However, it ran at 1200 baud (most microcomputer cassette interfaces in 1976 and 1977 ran at only 300 baud) and was more consistently successful at getting a good load into memory when compared to other computers of the day. To further try to enhance sales, the Byte Shop stores found a local cabinetmaker that made some koa-wood cases for the Apple computer (so it would no longer be just a "naked" circuit board). [13], [18]

![Apple-1 Cassette interface card \[14\]](images/apple-1-cassette-interface.jpg)

Although most of the design and construction action in the micro world was going on in Silicon Valley, news of the Apple-1 made its way east. In 1976, Stan Veit opened The Computer Mart in New York City, and had the east coast's first computer store. Operating first out of a part of Polk's Hobby Department Store in midtown Manhattan, and moving later to a larger store on Madison Avenue, he sold the IMSAI 8080, the Sphere and Southwest Technical Products M6800 (both Motorola 6800-based computers), and others. Paul Terrell of the Byte Shop referred Steve Jobs to Veit, and after a phone call with fast-talking Jobs on the phone, a $500 C.O.D. package appeared on the doorstep of The Computer Mart. Veit showed it to one of his techs, who didn't believe that something that small (sixteen by twelve inches) could be a computer. Nevertheless, after attaching a power supply and keyboard (they had to call Jobs about the keyboard, and he gladly sent one out, also C.O.D.) they had a working computer that was more compact and used fewer chips on the motherboard than every other microcomputer they had yet seen. Along with the keyboard Jobs had included their cassette interface, and a tape of the Game Of Life program.

![Apple-1 Logo \[15\]](images/apple-1-logo.jpg)

Impressed with this compact computer, Veit had his techs install the Apple-1 in an attache' case, and along with a 9-inch monitor and keyboard, he and his wife attended a dinner meeting of the New York Chapter of the Association for Computing Machinery. [23] Most of those attending were involved with large computers (mainframes or minicomputers) but the ACM had invited computer dealers in the area to attend and show their products. Veit set up the Apple-1 and started the Game Of Life, so that during the meeting it was visible to the speaker at the podium. When the speaker interrupted himself to ask Veit what was running on the monitor, he did not believe that there could actually be a computer in that briefcase. Some of those attending were sure that the machine was just a portable terminal, attached by a hidden phone line to a mainframe somewhere![16] Later, during the product demonstration part of the meeting, the Apple-1 caused quite a lot of excitement amongst the other dealers present.

Veit later traveled to California and met Jobs and Wozniak in their garage operation. Wozniak demonstrated a prototype of the Apple II with his color Breakout game running, and Veit felt that it clearly had better graphics than the Cromemco Dazzler (a popular add-on for S-100 bus on the Altair and IMSAI computers). Jobs told him that they were dropping the Apple-1 in favor of the better Apple II, but Veit strongly urged him to fulfill the commitment they had made to their customers (and the dealers who purchased Apple-1 boards to sell) in delivering a finished BASIC. He felt that this would be vital to their reputation and any future success the company might have.

They were offered space at PC '76, a national computer show to be held in Atlantic City, New Jersey on August 28, 1976, and so the two Steves packed up demonstration models of the Apple-1 and flew out to join Stan Veit's display booth. Using the hotel television, Wozniak put the finishing touches on his Apple BASIC interpreter to make it ready for its official introduction. With several Apple-1 computers in operation at the show, the small size and speed of its cassette interface attracted quite a bit of attention, in spite of the fact that there were two other 6502-based computers on display at the show (the KIM-1 and the Baby computer). [24] However, what it did "not" generate were orders for the Apple-1, much to Steve Jobs' disappointment. [18]

## Hardware / Firmware

The Apple-1 motherboard was designed in such a way as to make it possible for the hobbyist to remove the 6502 processor and use a Motorola 6800 as the CPU instead. This was not a trivial operation, as the 6502 and the 6800 were not pin-compatible (the earlier 6501 WAS pin-compatible, but was withdrawn after Motorola sued MOS Technology). However, some other hardware would need to be added, and the software needed to operate it would be completely different.

The least expensive Apple-1 motherboard was sold with 4K of RAM. This was only one sixteenth of the total RAM space that the 6502 processor could address, but recall that memory in 1976 was "very" expensive. Since the 6502 processor "must" have at least the bottom 512 bytes of memory accessible for its operations (the "zero page" and "stack"), this 4K covered memory locations $0000-$0FFF (0-4095 decimal; the "$" was commonly used in 6502 systems to refer to hexadecimal numbers). An 8K system would run from $0000-$1FFF (0-8191 decimal). However, if Apple BASIC was to be used, a hardware modification had to be made to the motherboard in order to move (logically) the 2nd 4K bank of RAM up to $E000-$EFFF (which was where BASIC was designed to operate).

![Apple-1 BASIC Manual \[19\]](images/apple-1-basic-guide.jpg)

According to the Apple-1 Cassette Interface Manual, it was necessary to make another change to the motherboard in order to use the interface. Besides removing the jumper that relocated the 2nd 4K of RAM, another jumper had to be "added" to the motherboard in one place. Then, after the interface was properly installed, an assembly language program would be available at $C100. This program allowed operation of the cassette load and save routines. To load Apple BASIC, the user would type "C100R" and press "RETURN" on the keyboard (this instructed the Apple-1 Monitor program to run an assembly language program at the address $C100).

The Monitor program was designed to allow the user to examine and change RAM locations and to run programs at a specific address. To enter the Monitor it was necessary to press the "RESET" key on the keyboard; this caused the 6502 processor to jump to the location on the PROM where the Monitor program started. Displaying and entering hex digits was quite similar to the use of the Monitor that later appeared in the Apple II computer. In fact, many of the subroutines used in the Monitor had the same names as were later used on the Apple II ("GETLINE" to get a line of text from the keyboard, "PRBYTE" to print a byte in hexadecimal, "PRHEX" to print a digit (half a byte) in hex, and so on).

A memory map of an Apple-1 system would be as follows:

```Table
+--------------------+--------------------+--------------------+
|$0000-$00FF:        |Zero page: location of single or double  |
|                    |byte values used by programs             |
+--------------------+--------------------+--------------------+
|$0024-$002B:        |Zero page locations used by the Monitor  |
+--------------------+--------------------+--------------------+
|$0100-$01FF:        |Stack: used by the 6502 processor as a   |
|                    |temporary holding place for addresses or |
|                    |data                                     |
+--------------------+--------------------+--------------------+
|$0200-$027F:        |Keyboard input buffer storage used by    |
|                    |the Monitor                              |
+--------------------+--------------------+--------------------+
|$0280-$0FFF:        |RAM space available for a program in a   |
|                    |4K system                                |
+--------------------+--------------------+--------------------+
|$1000-$1FFF:        |RAM space available for a program in an  |
|                    |8K system not using cassette BASIC       |
+--------------------+--------------------+--------------------+
|$C028:              |Port for output to cassette              |
+--------------------+--------------------+--------------------+
|$C100-$C1FF:        |ROM program used to operate the cassette |
|                    |interface                                |
+--------------------+--------------------+--------------------+
|$D010:              |Port where a byte of keyboard input      |
|                    |appears                                  |
+--------------------+--------------------+--------------------+
|$D011:              |Port to indicate that "return" key on    |
|                    |keyboard was pressed                     |
+--------------------+--------------------+--------------------+
|$D012:              |Port to output a byte character to the   |
|                    |display monitor                          |
+--------------------+--------------------+--------------------+
|$D013:              |Port to cause display to skip down to    |
|                    |the next line                            |
+--------------------+--------------------+--------------------+
|$E000-$EFFF:        |RAM space available for a program in an  |
|                    |8K system modified to use cassette BASIC |
+--------------------+--------------------+--------------------+
|$F000-$FFFF:        |PROM (programmable read-only memory)     |
|                    |used by the Apple Monitor program        |
+--------------------+--------------------+--------------------+
```

## Experiences of Users

One of the pioneers who took a chance, bought one of the original Apple-1 boards, and dealt with the trials and tribulations of making it a workable computer was Joe Torzewski. As documented on the Apple-1 Owner's Club web site (click on the link for the full story with pictures), he purchased his Apple-1 system in August 1977 for $430. The motherboard itself was sold to him for only $200, truly a bargain over the original asking price of $666; this probably represented the wishes of the seller to clear out his inventory of a computer that just was not selling well. For his $430, Torzewski received the Apple-1 board with a full 8K of RAM, plus a keyboard, two power transformers (one for needed each voltage), and cassette interface. And just as many computer buyers today have discovered, soon after he bought his Apple-1 he received notice from Apple Computer that a new and better model was coming out (the Apple II), and that they were dropping support for his Apple-1. He did not view this as an obstacle; instead, he decided to start an Apple-1 user group, and (at his request) Apple eventually forwarded nearly all of the support requests that they received to his group.

With the help of five other Apple-1 owners who formed the core of this user group, Joe states: "We developed the hardware and software which included such things as interfacing a graphic board, memory expansion, and writing a chess game. We converted the Focal language for the Apple 1 computer and had it in use. We were also working on the expansion slot hoping to put in a better monitor and other various programs. "[17] All this they accomplished with a more primitive ROM than was supplied later with the Apple II, and with only 4K or 8K of RAM (although some users upgraded to as much as 20K).

By April 1977, Apple Computer had reduced the official list price of the Apple-1 from $666 to $475 for a computer with 4K of RAM or, or $575 for 8K. There were also several program cassettes available to purchase (assuming that you had the cassette interface). These included Wozniak's BASIC (which took about 30 seconds to load), a disassembler, an extended monitor, and games such as "Star Trek" (mini and 16K versions), "Mastermind", "Lunar Lander", "Blackjack", and "Hamurabi", all selling for $5.00, and some of which appeared later in revised forms to run on the Apple II.

![Apple BASIC cassette \[20\]](images/apple-1-basic-cassette.jpg)

One of the members of the Apple-1 club, Larry Nelson, used his Apple-1 for a simple payroll and accounts payable program that he wrote in BASIC for his business. He also spent some time with Apple's "DisAssembler" program and examine the BASIC interpreter to see how it worked. He was interested to find keywords for graphics commands that did nothing on the Apple-1, commands that later found their way to functionality on the Apple II. He found that he could include a statement such as "COLOR=12" in a line of a BASIC program, and although it would not generate an error, it also did not do anything on the Apple-1. He also modified a KIM-1 6502 chess-playing program to run on his Apple-1, and then used that computer to challenge the Micro-Chess program on his Radio Shack TRS-80. (As he recalls, the contest was a draw.)[22]

![Apple-1 Motherboard \[21\]](images/apple-1-motherboard.jpg)

The Apple-1 club also disseminated information to its members about hardware enhancements, such as a monochrome graphics board (recall that the Apple-1 was built as a text-only computer), how to interface a 40-column printer (the SWTPC PR-40), and how to connect a teletype.

As time passed, some of the users of the Apple-1 faded away as they graduated to newer and more powerful machines; however, Torzewski's Apple-1 user group never completely disbanded. It still exists and communicates via its website, Apple-1 Owner's Club. [17]

## Timeline

The start and end dates for the Apple-1 and Apple II:

* Apple-1 - April 1976 - Mar 1977
* Apple II - April 1977 - May 1979

## Notes

* [1] Photo: Apple-1 computer in a wooden case. [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Museum-Enter-Apple-1-6094652-CleanBackround.jpg).
* [2] Moritz, Michael. The Little Kingdom. New York, William Morrow and Company, Inc, 1984: 123.
* [3] Moritz: 124-127.
* [4] Photo: MOS Technology 6502 Processor. [Wikimedia](https://commons.wikimedia.org/wiki/File:MOS_6502AD_4585_top.jpg).
* [5] Williams, Gregg and Rob Moore. "The Apple Story, Part 1: Early History." Byte Dec 1984: A69.
* [6] Photo: Apple-1 Test Output. [Source](https://www.duxburysystems.org/downloads/library/texas/apple/history/images/apple1display.gif).
* [7] Williams & Moore: A68-A69.
* [8] Rose, Frank. West Of Eden: The End Of Innocence At Apple Computer. New York, Penguin Books, 1989: 33.
* [9] Photo: Apple's original logo. [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Apple_first_logo.png).
* [10] Moritz: 138-144.
* [11] Williams & Moore: A69.
* [12] Photo: Apple-1 Magazine Advertisement. [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Apple_1_Advertisement_Oct_1976.jpg).
* [13] Moritz: 147-149.
* [14] Photo: Apple-1 Cassette interface card. [Apple Fandom Wiki](https://apple.fandom.com/wiki/Apple-1_Cassette_Interface?file=Apple-1_Cassette_Interface.png).
* [15] Photo: Apple-1 Logo. [Apple II History Mirror](https://www.duxburysystems.org/downloads/library/texas/apple/history/images/apple1logobig.jpg).
* [16] Chien, Philip, "Apple's First Decade: A Look Back." The Apple II Review Fall/Winter 1986: 12.
* [17] Apple-1 Owner's Club (20 Oct 2001).
* [18] Veit, Stan. Stan Veit's History Of The Personal Computer. Asheville, North Carolina, Worldcom, 1993: 89-98.
* [19] Photo: Apple BASIC User's Manual. [eBay listing, via Pinterest](https://www.pinterest.com/pin/apple-computer-vintage--294774738092083346/).
* [20] Photo: Apple BASIC cassette [Apple II History Mirror](https://www.duxburysystems.org/downloads/library/texas/apple/history/images/apple1cassette.gif).
* [21] Photo: Apple-1 Motherboard [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:CopsonApple1_2k_cropped.jpg).
* [22] Nelson, Larry. Email Oct 2001.
* [23] Coile, Brantley. Email, January 26, 2004. The original line here read "Association of Computer Machinery", which does not exist. The Association for Computing Machinery, on the other hand, does exist, and their web site is at http://www.acm.org. Furthermore, this was confirmed by Stan Veit in an e-mail 12 August 2005, in which he stated this was a typographical error in the book.
* [24] Dilks, John. Email, May 14, 2004. As Show Manager for PC '76, he pointed out to me that my original statement here that there were "no other 6502 computers on display at the show" was incorrect. John still owns one of the Baby computers that was demonstrated at the show, and the KIM-1 was around for a while as well.
