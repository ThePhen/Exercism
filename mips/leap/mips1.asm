    ## Registers

    # | Register | Usage     | Type    | Description                                      |
    # | -------- | --------- | ------- | ------------------------------------------------ |
    # | `$a0`    | input     | integer | year to check                                    |
    # | `$v0`    | output    | boolean | input is leap year (`0` = `false`, `1` = `true`) |
    # | `$t0-9`  | temporary | any     | used for temporary storage                       |

    .globl is_leap_year

is_leap_year:
    li $v0, 999
    
    #save orig input
    move  $t0, $a0

    #    throw out odd numbers
    andi $t0, $t0, 0x1
    li   $v0, 3
    bnez $t0, ohno

    #    throw out not /4 (nor /2)
    srl  $t0, $t0, 2
    andi $t0, $t0, 0x1
    li   $v0, 4
    bnez $t0, ohno

    #    keep /400 (note: $t0 is divisble by 4, so
    #    check that $a0 is now cleanly divisible by 100)
    #    toss /400's
    li   $t0,                                   100
    div  $t0,                                   $a0
    # mfhi $v0
    mflo $v0
    jr   $ra
    li   $v0,                                   400
    bnez $t3,                                   check_cents
    j    ohno

check_cents:
    # throw out /100


ohno:
    #  li $v0, 0
    jr $ra

    # -- kill odd numbers
