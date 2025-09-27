.model small
.stack 100h
.data
msg_menu db 13,10,'Press A/a to toggle LED1, B/b to toggle LED2:',13,10,'$'
msg_on1 db 'LED1 is now ON',13,10,'$'
msg_off1 db 'LED1 is now OFF',13,10,'$'
msg_on2 db 'LED2 is now ON',13,10,'$'
msg_off2 db 'LED2 is now OFF',13,10,'$'
msg_invalid db 'Invalid input. Use A/a for LED1, B/b for LED2.',13,10,'$'

led1_state db 0
led2_state db 0

.code
main:
    mov ax, @data
    mov ds, ax

    ; Display menu once
    mov dx, offset msg_menu
    call PrintString

init_loop:
    call ReadChar

    ; Check input
    cmp al, 'A'
    je toggle_led1
    cmp al, 'a'
    je toggle_led1
    cmp al, 'B'
    je toggle_led2
    cmp al, 'b'
    je toggle_led2

    ; Invalid input
    mov dx, offset msg_invalid
    call PrintString
    jmp init_loop

toggle_led1:
    ; Toggle LED1 state
    mov al, led1_state
    xor al, 1
    mov led1_state, al

    cmp al, 1
    je show_on1
    mov dx, offset msg_off1
    call PrintString
    jmp init_loop

show_on1:
    mov dx, offset msg_on1
    call PrintString
    jmp init_loop

toggle_led2:
    ; Toggle LED2 state
    mov al, led2_state
    xor al, 1
    mov led2_state, al

    cmp al, 1
    je show_on2
    mov dx, offset msg_off2
    call PrintString
    jmp init_loop

show_on2:
    mov dx, offset msg_on2
    call PrintString
    jmp init_loop

; ----------------------------
; PrintString - prints string at DS:DX
PrintString:
    mov ah, 09h
    int 21h
    ret

; ----------------------------
; ReadChar - waits for serial char in AL
ReadChar:
    mov ah, 01h
    int 21h
    ret

end main
