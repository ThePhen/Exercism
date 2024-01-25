default rel

section .data
msg db "One for you, one for me.", 0

section .text
    global two_fer

two_fer:
    ; Provide your implementation here
    ; two args will be on the stack
    ; a pointer to the string of the name. this could be NULL.
    ; a pointer to the output string buffer (length is 256 chars)
;    push [msg]
    lea rsi, [msg]
    ret
