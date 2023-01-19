---
title: The Disk II
author: Steven Weyhrich
date: December 28 2001
version: v2.0
---

# Part 5: The Disk II

## Storage Needs

![Two Apple Disk II floppy drives [1]](images/disk-ii.jpg) 

By December 1977 the Apple II had been generally available for about six months. Most customers used their television as an inexpensive color monitor, and used a cassette recorder to store and retrieve their programs and data. Apple's major competitors were the Radio Shack TRS-80 and the Commodore PET. The products made by these two companies, together with Apple, could be considered as the second generation of microcomputers; they all came fully assembled and ready to use out of the box, with a keyboard and cassette interface. The TRS-80 and the PET even came with a monitors and cassette recorders. The strength of the Apple was expandability and graphics, while the strength of the others was cost (both the TRS-80 and the PET sold for around $600, half the price of the Apple II).

In the latter part of 1977, Apple had introduced some enhancements to the II, including their first version of a floating point BASIC (called "Applesoft") on cassette, and a printer interface card to plug into one of the slots on the motherboard. But the Apple II still needed something to make it more attractive to buyers, to stand out above the TRS-80 and the PET. One area that needed improvement was its program and data storage and retrieval system on cassette; it was a continued source of frustration for many users. The cassette system used on the TRS-80, though slower, was more sophisticated than that of the Apple II, allowing named files and easier storage of files and data on the same tape. On the Apple II it took "very" careful adjustment of the volume and tone controls on the cassette recorder to get programs or data to successfully load. The Apple cassette system also needed careful attention to the location on the tape where a program was stored, and was no more accurate than the number on the recorder's mechanical tape counter (if it had one).

Apple president Mike Markkula was one Apple II user that was dissatisfied with cassette tape storage. He had a favorite checkbook program, but it took two minutes to read in the program from the tape, and another two minutes to read in the check files. [2] Consequently, at the executive board meeting held in December 1977 he made a list of company goals. At the top of the list was "floppy disk". Although Wozniak didn't know much about how floppy disks worked, he had once looked through a manual from Shugart (a Silicon Valley disk drive manufacturer):

> As an experiment Woz had [earlier] conceived a circuit that would do much of what the Shugart manual said was needed to control a disk drive. Woz didn't know how computers actually controlled drives, but his method had seemed to him particularly simple and clever. When Markkula challenged him to put a disk drive on the Apple, he recalled that circuit and began considering its feasibility. He looked at the way other computer companies--including IBM--controlled drives. He also began to examine disk drives--particularly North Star's. After reading the North Star manual, Woz knew that his circuit would do what theirs did and more. He knew he really had a clever design. [3]

Other issues that Wozniak had to deal with involved a way to properly time the reading and writing of information to the disk. IBM used a complex hardware-based circuit to achieve this synchronization. Wozniak, after studying how IBM's drive worked, realized that if the data was written to the disk in a different fashion, all that circuitry was unneeded. Many floppy disks sold at that time were "hard sectored", meaning that they had a hole punched in the disk near the center ring. This hole was used by the disk drive hardware to identify what section of the disk was passing under the read/write head at any particular time. Wozniak's technique would allow the drive to do self-synchronization ("soft sectoring"), not have to deal with that little timing hole, and save on hardware.

Wozniak asked Randy Wigginton for help in writing some software to control the disk drive. During their week of Christmas vacation in 1977 they worked day and night creating a rudimentary disk operating system, working hard to get the drive ready to demonstrate at the Consumer Electronics Show in the first week of 1978. Their system was to allow entry of single letter commands to read files from fixed locations on the disk. However, even this simple system was not working when Wozniak and Wigginton left for the show.

When they got to Las Vegas they helped to set up the booth, and then returned to working on the disk drive. They stayed up all night, and by six in the morning they had a functioning demonstration disk. Randy suggested making a copy of the disk, so they would have a backup if something went wrong. They copied the disk, track by track. When they were done, they found that they had copied the blank disk on top of their working demo! By 7:30 am they had recovered the lost information and went on to display the new disk drive at the show. [4], [5]

Following the Consumer Electronics Show, Wozniak set out to complete the design of the Disk II. For two weeks, he worked late each night to make a satisfactory design. When he was finished, he found that if he moved a connector he could cut down on feedthroughs, making the board more reliable. To make that move, however, he had to start over in his design. This time it only took twenty hours. He then saw another feedthrough that could be eliminated, and again started over on his design. "The final design was generally recognized by computer engineers as brilliant and was by engineering aesthetics beautiful. Woz later said, 'It's something you can "only" do if you're the engineer and the PC board layout person yourself. That was an artistic layout. The board has virtually no feedthroughs.'" [6]

## Cost

The Disk II was finally available in July 1978 with the first full version of DOS, 3.1. It had an introductory price of $495 (including the controller card) if you ordered them before Apple had them in stock; otherwise, the price would be $595. Even at that price, however, it was the least expensive floppy disk drive ever sold by a computer company. Early production at Apple was handled by only two people, and they produced about thirty drives a day. [7], [8]

Apple bought the drives to sell with Woz's disk controller from Shugart, right there in Silicon Valley. To cut costs, however, they decided to go to Alps Electric Company of Japan and ask them to design a less expensive clone. According to Frank Rose, in his book "West Of Eden":

> The resulting product, the Disk II, was almost obscenely profitable: For about $140 in parts ($80 after the shift to Alps) [not counting labor costs], Apple could package a disk drive and a disk controller in a single box that sold at retail for upwards of $495. Better yet was the impact the Disk II had on computer sales, for it suddenly transformed the Apple II from a gadget only hard-core hobbyists would want to something all sorts of people could use. Few outsiders realized it, but in strategic terms, Woz's invention of the disk controller was as important to the company as his invention of the computer itself. [9]

## Notes

* [1] Photo: Two Apple Disk II floppy drives. [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Disk_II.jpg).
* [2] Williams, Gregg, and Rob Moore. "The Apple Story, Part 2: More History And The Apple III", Byte, Jan 1985: 167-168.
* [3] Freiberger, Paul, and Michael Swaine. "Fire In The Valley, Part Two (Book Excerpt)", A+ Magazine, Jan 1985: 45.
* [4] Williams and Moore. "Part II": 168.
* [5] Freiberger and Swaine. (Part Two): 45.
* [6] Freiberger and Swaine. (Part Two): 46.
* [7] "A.P.P.L.E. Co-op Celebrates A Decade of Service", Call-A.P.P.L.E., Feb 1988: 12-27.
* [8] "Apple and Apple II History", The Apple II Guide, Cupertino, CA, Apple Computer, Inc., Fall 1990: 9-16.
* [9] Rose, Frank. West Of Eden: The End Of Innocence At Apple Computer. New York, Penguin Books, 1989: 62.

