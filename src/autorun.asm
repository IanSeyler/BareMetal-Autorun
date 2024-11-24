; =============================================================================
; BareMetal Autorun
; Copyright (C) 2008-2024 Return Infinity -- see LICENSE.TXT
; =============================================================================


BITS 64
ORG 0x001E0000
BINARYSIZE equ 8192			; Pad binary to this length

%include 'api/libBareMetal.asm'

start:
	mov rsi, teststring		; Memory address of string
	mov rcx, 26			; Number of characters to output
	call [b_output]			; Output to the serial port
	
	mov rcx, SHUTDOWN		; Shutdown function ID
	call [b_system]			; Call system API
	jmp $				; This command should never be executed

; Strings

teststring:		db 10, 10, 'This is an autorun app!', 10

times BINARYSIZE-($-$$) db 0x90	; Set the compiled binary to at least this size in bytes
; =============================================================================
; EOF
