.data
out: .space 12
src: .word 10, 20, 30, 40
done: .asciiz "Program completed\n"

.text
.globl main
main:
    # TODO 1: Load src[1] and store it to out + 0. You can either use a fixed offset, or calculate the index
    
    #get address of src
    la t3, src
    #load src[1] (offset 4)
    lw t3, 4(t3)
    #get address of out
    la t4, out
    #store at out+0
    sw t3, 0(t4)


    # TODO 2: Load src[3] and store it to out + 4. You can either use a fixed offset, or calculate the index
    
    #get address of src
    la t3, src
    #load src[3] (offset 12)
    lw t3, 12(t3)
    #get address of out
    la t4, out
    #store at out+4
    sw t3, 4(t4)



    # TODO 3: Load src[2] and store it to out + 8. You can either use a fixed offset, or calculate the index
    
    #get address of src
    la t3, src
    #load src[2] (offset 8)
    lw t3, 8(t3)
    #get address of out
    la t4, out
    #store at out+8
    sw t3, 8(t4)


    # TODO 4: Reload out into t0, t1, t2
    
    #get address of out
    la t4, out
    #reload first value
    lw t0, 0(t4)
    #reload second value
    lw t1, 4(t4)
    #reload third value
    lw t2, 8(t4)


    # Print completion message
    la a1, done
    li a0, 4
    ecall

    # Exit
    li a0, 10
    ecall
