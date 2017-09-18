# Galaforce
Galaforce for the BBC Micro by Kevin Edwards

Galaforce is a fixed shooter video game for the BBC Micro and Acorn Electron, written by Kevin Edwards and published by Superior Software in 1986.

Read more about the game on Wikipedia here [Galaforce](https://en.wikipedia.org/wiki/Galaforce)

## 30th Anniversary

In July 2016, to mark 30 years since the original release Kevin Edwards posted a disk image of his original source code.

See the thread on [Stardot forums](http://stardot.org.uk/forums/viewtopic.php?f=1&t=11368) for more information.

It's been a long time since I did any assembler and wanted to get to know BeebASM by Rich Talbot-Watkins. This seemed like a relatively easy starting point seeing as I had Kevin's original source code. 

## Build Process

Kevin's original build process used the BBC Micro's built in assembler. There is a BASIC program called `$.MASTER` that assembles each file, into memory, multi-pass to work out references across include files and then writes the memory to disk. This is the file I used to compare my beebasm output. 

`$.GAME CRC32 a2b41e0e`

To build open a command prompt, navigate to the directory and run `make.bat`

Just like the Kevin's original process, some code is prebuilt into binary files and then included in the master build.

The make batch file checks the output CRC matches the original version and if correct will then output a BBC DFS disk image.

If successful you should have a `Galaforce.ssd` file in your directory that you can load into an emulator.

## Notes

### Special build of BeebASM
The original version of Galaforce disk image has a BASIC loader that sets sound ENVELOPES and a loading screen. Beebasm can create !BOOT options on disk images but only \*RUN for machine code, The BASIC loader needed a CHAIN"".

I've upped the version number onto 1.08b, though I'm not sure on versioning convention.

My fork is [here](https://github.com/crumbgit/beebasm)

### Other stuff on the disk
On the disk image I also found some interesting bits.
A BASIC program for testing the music and unused sprites that don't make it to the final build.

![unused sprite1](http://stardot.org.uk/forums/download/file.php?id=31543)
![unused sprite2](http://stardot.org.uk/forums/download/file.php?id=31544)
![unused sprite3](http://stardot.org.uk/forums/download/file.php?id=31545)


## Thanks to

* Kevin Edwards for writing the game and releasing the source code 30 years later.
* Rich Talbot-Watkins for creating BeebASM
* Kieran HJ Connell for hints and pointers getting a CRC match
* D.C.Devenport's disassembly of Galaforce, so helpful in checking my beebasm conversion was on the right track
* Stardot community and the admins
