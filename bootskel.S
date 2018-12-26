.code16
.globl start
start:

    movb $0x0e, %ah
    movb $'U',%al
    int $0x10
    mov $0x0500,%bx
    movw $0xb800,%ax
    movw %ax,%es
    movb $'U',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'I',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'C',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $' ',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'R',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'o',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'c',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'k',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'s',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'!',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'.',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'.',%al
    movb %al,%es:(%bx)
    add $0x0002,%bx
    movb $'.',%al
    movb %al,%es:(%bx)    

pic:
    

stop:

    jmp stop

str:
    .string "Welcome to UIC"

.org 0x1fe
    .word 0xAA55
