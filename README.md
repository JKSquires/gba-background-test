# gba-background-test
![screenshot](screenshot.png)

**Note: unless a proper header is added, these programs will not work on real hardware (nor some emulators).**
I do not include the bitmap of the Nintendo logo in the header in order to avoid copyright infringement.
If you want to run this program on an emulator, I'd recommend [No$gba](https://problemkaputt.de/gba.htm).

**Note: there are problems with how I had written this program.** This causes problems with what is transfered into VRAM and displayed on the screen on real hardware and accurate emulators.

Assemble with the [Goldroad 1.7](https://www.gbadev.org/tools.php?showinfo=192) assembler:
```sh
goldroad.exe background.asm
```
