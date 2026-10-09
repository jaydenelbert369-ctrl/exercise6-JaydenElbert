.data
out: .space 12
src: .word 10, 20, 30, 40
done: .asciiz "Program completed\n"

.text
.globl main
main:
    # TODO 1: Load src[1] and store it to out + 0. You can either use a fixed offset, or calculate the index



    # TODO 2: Load src[3] and store it to out + 4. You can either use a fixed offset, or calculate the index



    # TODO 3: Load src[2] and store it to out + 8. You can either use a fixed offset, or calculate the index



    # TODO 4: Reload out into t0, t1, t2



    # Print completion message
    la a1, done
    li a0, 4
    ecall

    # Exit
    li a0, 10
    ecall