# gba-background-test
![screenshot](screenshot.png)

**Note: unless a proper header is added, these programs will not work on real hardware (nor some emulators).**
I do not include the bitmap of the Nintendo logo in the header in order to avoid copyright infringement.
If you want to run this program on an emulator, I'd recommend [No$gba](https://problemkaputt.de/gba.htm).

**Note: there are problems with how I had done DMA transfers when I wrote this program.** This causes problems with what is transfered into VRAM on real hardware and accurate emulators. (see my [dma practice program](https://github.com/JKSquires/practicing-gba-programming/tree/main/dma) for how DMA transfers should properly be done.)

Assemble with the [Goldroad 1.7](https://www.gbadev.org/tools.php?showinfo=192) assembler:
```sh
goldroad.exe background.asm
```
