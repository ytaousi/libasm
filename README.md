# libasm
some basic function's rewritten in assembly

RESOURCES FOR SYSTEM CALLS ID'S :
    https://opensource.apple.com/source/xnu/xnu-1504.3.12/bsd/kern/syscalls.master
    * We add 0x2000000 + syscall number

Initiation au langage d'assemblage :
    https://www.esaracco.fr/documentation/assembly/assembly/

rax is the 64-bit, "long" size register.  It was added in 2003. 
eax is the 32-bit, "int" size register.  It was added in 1985.
ax is the 16-bit, "short" size register.  It was added in 1979.
al and ah are the 8-bit, "char" size parts of the register.  al is the low 8 bits (like ax&0xff), ah is the high 8 bits (like ax>>8)

What do square brackets mean in assembly? :
    https://stackoverflow.com/questions/48608423/what-do-square-brackets-mean-in-x86-assembly


Learn assembly Intel Syntax 64 (français) :
    https://www.lacl.fr/tan/asm

errno in assembly :
    https://stackoverflow.com/c/42network/questions/1494
