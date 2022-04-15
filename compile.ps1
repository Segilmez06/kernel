./tools/bin/i686-elf-as.exe boot.s -o boot.o
./tools/bin/i686-elf-gcc.exe -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
./tools/bin/i686-elf-gcc.exe -T linker.ld -o os.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
& "C:\Program Files\qemu\qemu-system-i386.exe" -kernel .\os.bin