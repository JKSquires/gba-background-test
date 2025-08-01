b start

@include header.asm

@include map.asm
@include tiles.asm

start

mov r0,0x04000000 ; DISPCNT

ldr r1,=%0000010000000001 ; BG2, BG Mode 1
str r1,[r0]

orr r1,r0,0x0C ; BG2CNT
ldr r2,=%0101110010000000 ; screen size 256x256 (rot/scal), screen base block VRAM offset 0x1C, 256 colors (1 pal)
str r2,[r1]

; load tile data (DMA)
orr r1,r0,0xD4 ; DMA3SAD
ldr r2,=tiles ; tiles defined in tiles.asm
str r2,[r1]

orr r2,r0,0xD8 ; DMA3DAD
mov r3,0x06000000
str r3,[r2]

orr r3,r0,0xDC ; DMA3CNT
ldr r4,=0x84002000 ; 32x32 img -> 1024 px * 32 bytes = 32768 8-bit chunks / 8 * 32 = 8192 32-bit chunks = 0x2000
str r4,[r3]

; load map data (DMA)
ldr r4,=map ; map defined in map.asm
str r4,[r1]

ldr r4,=(0x6000000|(0x1C*0x800)) ; screen base block VRAM offset 0x1C
str r4,[r2]

ldr r4,=0x84000200 ; 512 (0x200) 32-bit chunks
str r4,[r3]

; load pallete data (DMA)
ldr r4,=pallete ; pallete defined in tiles.asm
str r4,[r1]

mov r4,0x05000000
str r4,[r2]

ldr r4,=0x84000080 ; 128 (0x80) 32-bit chunks (256 16-bit chunks)
str r4,[r3]

loop
b loop
