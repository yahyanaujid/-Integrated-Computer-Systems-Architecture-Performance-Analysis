section .data
	; Design for Main Menu
	outline db "========================================", 10, 0
	outline_len equ $ - outline


	; Title of the System
	title db "   Welcome to Shape Drawing Program!   ", 10, 0
	title_len equ $ - title


	; Main Menu Prompt Message
	prompt_shape db "Select option: ", 0
	prompt_shape_len equ $ - prompt_shape

	; Line Prompt Message
	prompt_line db "Enter line length (2-10) (Enter '0' to exit): ", 0
	prompt_line_len equ $-prompt_line

	; Square Prompt Message
	prompt_square_size db "Enter the size of a square (2-9) (Enter '0' to exit): ", 0
	prompt_square_size_len equ $ - prompt_square_size

	; Triangle Prompt Message
	prompt_triangle	db "Enter triangle height (2-10) (Enter '0' to exit): ", 0
	prompt_triangle_len equ $ - prompt_triangle

	; Heart Prompt Message
	prompt_heart       db "Enter heart size (3-9) or 0 to exit: ", 0
	prompt_heart_len   equ $-prompt_heart

	; Rectangle Prompt Message
    	rectangle_width_msg   	db "Enter width (2-9, 0 or 1 to exit): ", 0	; Asks user for width
   	rectangle_height_msg  	db "Enter height (2-9, 0 or 1 to exit): ", 0 	; Asks user for height
	rectangle_height_len  	equ $ - rectangle_height_msg			; Set byte length of height_msg
	rectangle_width_len  	equ $ - rectangle_width_msg			; Set byte length of width_msg

	; Arrow Prompt Message
	arrow_prompt_width db "Enter the width of the triangle (odd, >3, <10, 0 to exit): ", 0
	arrow_prompt_width_len equ $- arrow_prompt_width
	arrow_prompt_shaft db "Enter the shaft height (>2, <10, 0 to exit): ", 0
	arrow_prompt_shaft_len equ $- arrow_prompt_shaft

	; Rhombus Prompt Message
    	rhombus_prompt       db "Enter rhombus size (2-9) or 0 to exit: ", 0
    	rhombus_prompt_len   equ $- rhombus_prompt

	; Trapezium Prompt Message
	trapezium_prompt_height db "Enter trapezium height (2-9, 0 to exit): ", 0
	trapezium_prompt_height_len equ $ - trapezium_prompt_height
	trapezium_prompt_half db "Enter half of first line length (2-9, 0 to exit): ", 0
	trapezium_prompt_half_len equ $ - trapezium_prompt_half

	; Parallelogram Prompt Message
	prompt_parallelogram_height db "Enter parallelogram height (2-9) (Enter 0 to exit): ", 0
	prompt_parallelogram_height_len equ $ - prompt_parallelogram_height
	prompt_parallelogram_width db "Enter parallelogram width (2-9) (Enter 0 to exit): ", 0
	prompt_parallelogram_width_len equ $ - prompt_parallelogram_width

	; Hourglass Prompt Message
	prompt_hourglass_size     db "Enter hourglass size (2-9) or 0 to exit: ", 0
	prompt_hourglass_size_len equ $-prompt_hourglass_size

	; Octagon Prompt Message
	octagon_prompt       db "Enter octagon size (2-9) or 0 to exit: ", 0
	octagon_prompt_len   equ $- octagon_prompt


	; 12 Different Shapes
	shape1 db " 1. Line", 10, 0
	shape1_len equ $ - shape1
	shape2 db " 2. Square", 10, 0
	shape2_len equ $ - shape2
	shape3 db " 3. Triangle", 10, 0
	shape3_len equ $ - shape3
	shape4 db " 4. Heart", 10, 0
	shape4_len equ $ - shape4
	shape5 db " 5. Rectangle", 10, 0
	shape5_len equ $ - shape5
	shape6 db " 6. Oval", 10, 0
	shape6_len equ $ - shape6
	shape7 db " 7. Arrow", 10, 0
	shape7_len equ $ - shape7
	shape8 db " 8. Rhombus", 10, 0
	shape8_len equ $ - shape8
	shape9 db " 9. Trapezium", 10, 0
	shape9_len equ $ - shape9
	shape10 db "10. Parallelogram", 10, 0
	shape10_len equ $ - shape10
	shape11 db "11. Hourglass", 10, 0
	shape11_len equ $ - shape11
	shape12 db "12. Octagon", 10, 0
	shape12_len equ $ - shape12


	; Define color for Line
	red_color db 27, '[', '3', '1', 'm'			; ANSI code: red text
	red_len equ $-red_color

	; Define color for Square
	cyan_color db 27, '[36m', 0				; ANSI escape code for cyan color
	cyan_color_len equ $ - cyan_color			; Length of ANSI escape code

	; Define color for Triangle
	blue_color db 27, '[', '3', '4', 'm'			; Blue text color
	blue_len equ $ - blue_color

	; Define color for Heart
	yellow_color       db 27, "[33m", 0

	; Define color for Rectangle
	light_blue_color db 0x1b, '[38;5;117m', 0		; ANSI sequence for light blue

	; Define color for Oval
	light_green_color  db 0x1b, '[38;5;157m', 0		; ANSI escape sequence for light green

	; Define color for Arrow
	light_cyan_color db 27, '[96m', 0
	light_cyan_color_len equ $ - light_cyan_color		; Length of ANSI escape code for light cyan

	; Define color for Rhombus
    	light_gray   db 0x1B, "[37m", 0 			; ANSI light gray

	; Define color for Trapezium
	green_color db 27, '[32m', 0
	green_color_len equ $ - green_color			; Length of ANSI escape code for green color

	; Define color for Parallelogram
	magenta_color db 27, '[35m', 0				; ANSI escape code for magenta color
	magenta_color_len equ $ - magenta_color			; Length of ANSI escape code

	; Define color for Hourglass
	brown_color       db 27, "[33m", 0

	; Define color for Octagon
	dark_gray    db 0x1B, "[90m", 0   			; ANSI dark gray color code

	; Reset Color
	reset_color db 27, '[0m', 0				; ANSI code to reset color
	reset_color_len equ $ - reset_color			; Length of ANSI escape code


	; Symbol for Line and Triangle
	dollar db "$"						; symbol to print for the line

	; Symbol for Square and Parallelogram
	hashtag db "#", 0					; Define a single hashtag

	; Symbol for Arrow and Trapezium
	plus db "+"						; Define plus character

	; Symbol for Rectangle and Oval
	star db 0x2A        					; '*'

	; Symbol for Rhombus and Octagon
	caret db "^", 0         	    			; caret character

	; Symbol for Heart and Hourglass
	percent db '%', 0


	; Others
	space db " "						; Define a space character
	spaces db "  ", 0					; Define 2 space characters
	newline db 10						; Define a newline character


	; Thank You Message
	thank db "Thank you for using our Shape Program", 10, 0
	thank_len equ $ - thank


	; Exit Message
	exit db " 0. Exit", 10, 0
	exit_len equ $ - exit
	exit_msg db "Thank you for using the program.", 10, 0
	exit_msg_len equ $ - exit_msg


	; Error Message
	error_msg db "Invalid input. Please enter again.", 10, 0
	error_msg_len equ $ - error_msg


section .bss
	; Main menu
	shape_choice resb 3					; Reserve 10 byte for user input

	; Line
	line_input resb 10					; reserve 10 bytes buffer for user input

	; Square
	square_size_input resb 10				; Reserve 10 bytes for user input

	; Triangle
	triangle_input resb 16					; Buffer to store user input (16 bytes)
	triangle_height resd 1					; Store the validated height (4 bytes)

	; Heart
	buf                resb 4
    	heart_size         resb 1

	; Rectangle
	rectangle_row_count   resb 1				; Reserve one byte for counting rows
	rectangle_col_count   resb 1				; Reserve one byte for counting columns
	rectangle_width_input resb 4				; Reserve 4 bytes for user input and subsequent line break
	rectangle_height_input resb 4				; Reserve 4 bytes for user input and subsequent line break
	rectangle_width_val   resb 4				; Reserve 4 byte for user input that was converted to integer
	rectangle_height_val  resb 4				; Reserve 4 byte for user input that was converted to integer

	; Oval
	oval_pointer resb 1					; Reserve 1 byte for a variable called oval_pointer
	oval_bottom  resb 1					; Reserve 1 byte for a flag called oval_bottom

	; Arrow
	arrow_buffer resb 128					; Buffer for building each line
	arrow_input resb 4					; Input buffer for user input
	arrow_triangle_width resb 1				; Store user input for triangle width
	arrow_shaft_height resb 1				; Store user input for shaft height

	; Rhombus
        rhombus_buf          resb 4   				; buffer for raw input
    	rhombus_size         resb 1   				; parsed size value

	; Trapezium
	trapezium_input resb 16					; Buffer to read input

	; Parallelogram
	parallelogram_input resb 16				; To get user input
	parallelogram_height resb 1				; Store final height
	parallelogram_width resb 1				; Store final width

	; Hourglass
	hourglass_input_buf     resb 4
    	hourglass_size_input    resb 1

	; Octagon
	octagon_buf resb 4					 ; read buffer for user input
        octagon_size resb 1  					 ; stores parsed integer size

section .text
	global _start
_start:
main_loop:
	; Print the Main Menu
	mov eax, 4
	mov ebx, 1
	mov ecx, reset_color
	mov edx, 4
	int 0x80

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, outline 				; Address of outline
	mov edx, outline_len				; Length of outline
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, title					; Address of title
	mov edx, title_len				; Length of title
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, outline				; Address of outline
	mov edx, outline_len				; Length of outline
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape1					; Address of 1st shape message
	mov edx, shape1_len				; Length of 1st shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape2					; Address of 2nd shape message
	mov edx, shape2_len				; Length of 2nd shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape3					; Address of 3rd shape message
	mov edx, shape3_len				; Length of 3rd shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape4					; Address of 4th shape message
	mov edx, shape4_len				; Length of 4th shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape5					; Address of 5th shape message
	mov edx, shape5_len				; Length of 5th shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape6					; Address of 6th shape message
	mov edx, shape6_len				; Length of 6th shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape7					; Address of 7th shape message
	mov edx, shape7_len				; Length of 7th shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape8					; Address of 8th shape message
	mov edx, shape8_len				; Length of 8th shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape9					; Address of 9th shape message
	mov edx, shape9_len				; Length of 9th shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape10				; Address of 10th shape message
	mov edx, shape10_len				; Length of 10th shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape11				; Address of 11th shape message
	mov edx, shape11_len				; Length of 11th shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, shape12				; Address of 12th shape message
	mov edx, shape12_len				; Length of 12th shape message
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, exit					; Address of exit option
	mov edx, exit_len				; Length of exit option
	int 0x80					; Execute the system call

	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, prompt_shape				; Address of prompt message
	mov edx, prompt_shape_len			; Length of prompt message
	int 0x80					; Execute the system call

	; Read user input for shape choice
	mov eax, 3					; Sys_read
	mov ebx, 0					; File descriptor for stdin
	mov ecx, shape_choice				; Memory address of shape_choice
	mov edx, 3					; Length of 10 byte
	int 0x80					; Execute the system call

	mov al, [shape_choice]				; Load first char

	; Check if user Enter without giving a valid input
	cmp al, 13					;13 is the ASCII value for ENTER
	je invalid_input

	; Check if user gives a negative value
	cmp al, '0'					; Compare with ASCII value of 0
	jb invalid_input

	; Check if user gives alphabet(s) instead of numbers
	cmp al, '9'					; Compare with ASCII value of 9
	ja invalid_input

	; Check if second character is a digit
	mov bl, [shape_choice + 1]
	cmp bl, '0'					; If less than '0', then it's not a digit
	jb single_digit_input				; Jump if less than '0'

	cmp bl, '9'					; If more than '9', then it's not a digit
	ja single_digit_input				; Jump if more than '9'

	; Jump if second character is not a number
	jmp check_2nd_digit


; When user enter value that is single digit
single_digit_input:
	mov bl, [shape_choice + 1]			; Load the second character
	cmp bl, 10					; Compare BL with newline character
	jne invalid_input				; Jump if not equals to newline character

	; Convert back to numeric
	sub al, '0'					; AL now contain numeric number
	jmp done_conversion				; Jump to done_conversion


; Check whether the 2nd digit is within the range of choices given
check_2nd_digit:
	; Check if first digit is 1
	cmp al, '1'
	jne invalid_input

	; Get second digit
	mov bl, [shape_choice + 1]

	; Check if second digit is 0 (actual value 10)
	cmp bl, '0'
	je value_10

	; Check if second digit is 1 (actual value 11)
	cmp bl, '1'
	je value_11

	; Check if second digit is 2 (actual value is 12)
	cmp bl, '2'
	je value_12

	; Jump if the value if larger than 12
	jmp invalid_input

; Value: 10
value_10:
	mov al, 10
	jmp done_conversion

; Value: 11
value_11:
	mov al, 11
	jmp done_conversion

; Value: 12
value_12:
	mov al, 12
	jmp done_conversion

; Done converting
done_conversion:
	; Compare value with 0 (exit program)
	cmp al, 0
	je exit_program

	; Compare value with 1 (shape: Line)
	cmp al, 1
	je first_shape

	; Compare value with 2 (shape: Square)
	cmp al, 2
	je second_shape

	; Compare value with 3 (shape: Triangle)
	cmp al, 3
	je third_shape

	; Compare value with 4 (shape: Heart)
	cmp al, 4
	je fourth_shape

	; Compare value with 5 (shape: Rectangle)
	cmp al, 5
	je fifth_shape

	; Compare value with 6 (shape: Oval)
	cmp al, 6
	je sixth_shape

	; Compare value with 7 (shape: Arrow)
	cmp al, 7
	je seventh_shape

	; Compare value with 8 (shape: Rhombus)
	cmp al, 8
	je eighth_shape

	; Compare value with 9 (shape: Trapezium)
	cmp al, 9
	je ninth_shape

	; Compare value with 10 (shape: Parallelogram)
	cmp al, 10
	je tenth_shape

	; Compare value with 11 (shape: Hourglass)
	cmp al, 11
	je eleventh_shape

	; Compare value with 12 (shape: Octagon)
	cmp al, 12
	je twelfth_shape


; 1st Shape (Line)
first_shape:
repeat_line_loop:
	;Display the prompt
	mov	eax, 4			;syscall number for sys_write
	mov	ebx, 1			;file descriptor 1 (stdout)
	mov	ecx, prompt_line	;memory address for prompt string
	mov	edx, prompt_line_len	;length of prompt string
	int 0x80			;call kernel

	;Read user input
	mov	eax, 3			;syscall number for sys_read
	mov	ebx, 0			;file descriptor 0 (stdin)
	mov	ecx, line_input		;memory address for input
	mov	edx, 10			;length of input (10 bytes)
	int 0x80			;call kernel

	;Check if input is empty
	mov	al, [line_input]	;Load the first byte of input
	cmp	al, 10			;Compare with ASCII newline
	je	invalid_input_line	;if user just ENTER, jumpto invalid_input

	;Convert ASCII input to integer
	mov	esi, line_input		;ESI points to start of input buffer
	xor	eax, eax		;clear EAX for result accumulator

convert_line_input:
	movzx	ebx, byte [esi]		;load one byte from input
	cmp	ebx, 10			;check for newline (ASCII 10)
	je	done_line_conversion	;if newline, jump to done_converting

	sub	ebx, '0'		;convert ASCII to integer (char to int)
	cmp	ebx, 9
	ja	invalid_input_line

	imul	eax, eax, 10		;multiply previous result by 10
	add	eax, ebx		;add current digit
	inc	esi			;move to next character
	jmp	convert_line_input	;repeat until newline

done_line_conversion:
	cmp	eax, 0
	je	end_print_line		;if input is 0, exit program

	;Check if number is < 2
	cmp	eax, 2			;compare input value in EAX with 2
	jl	invalid_input_line	;jump if less than 2

	;Check if number is > 10
	cmp	eax, 10			;compare input value in EAX with 10
	jg	invalid_input_line	;jump if greater than 10

	mov	edi, eax		;store valid input in EDI to use as loop counter

print_line_row:
	;Set red text color
	mov	eax, 4			;syscall:sys_write
	mov	ebx, 1			;file descriptor: stdout
	mov	ecx, red_color		;memory address of red color ANSI sequence
	mov	edx, red_len		;length of the ANSI sequence
	int	0x80			;call kernel

	;Print one dollar
	mov	eax, 4			;syscall:sys_write
	mov	ebx, 1			;file descriptor:stdout
	mov	ecx, dollar		;memory address of "$"
	mov	edx, 1			;length of "$"
	int	0x80			;call kernel

	;Reset text color
	mov	eax, 4			;syscall:sys_write
	mov	ebx, 1			;file descriptor: stdout
	mov	ecx, reset_color	;memory address of reset color ANSI sequence
	mov	edx, reset_color_len	;length of the reset ANSI sequence
	int	0x80			;call kernel

	dec	edi			;decrease the line length counter
	jnz	print_line_row		;if not zero, jump back to print another $

	;Print newline
	mov	eax, 4			;sys_write
	mov	ebx, 1			;stdout
	mov	ecx, newline		;memory address of newline character
	mov	edx, 1			;length of newline character
	int	0x80			;call kernel

	jmp repeat_line_loop		;go back to ask for next input

invalid_input_line:
	mov	eax, 4			;sys_write
	mov	ebx, 1			;stdout
	mov	ecx, error_msg		;memory addresses of error message
	mov	edx, error_msg_len	;length of error message
	int	0x80			;call kernel

	jmp	repeat_line_loop	;go back to ask for next input

; Go back to main menu
end_print_line:
	jmp main_loop


; 2nd Shape (Square)
second_shape:
repeat_square_loop:
	; Print the prompt
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, prompt_square_size				; Address of prompt string
	mov edx, prompt_square_size_len				; Length of prompt string
	int 0x80						; Execute the system call

	; Read user input
	mov eax, 3						; Sys_read
	mov ebx, 0						; File descriptor for stdin
	mov ecx, square_size_input				; Address where user input will be stored
	mov edx, 10						; Maximum number of bytes to read
	int 0x80						; Execute the system call

	; Check if input is empty
	mov al, [square_size_input]				; Load the first byte of input
	cmp al, 10						; Compare with ASCII newline
	je square_invalid_input					; If user just ENTER, jump to invalid_input

	mov esi, square_size_input				; Load user input to (esi)
	xor eax, eax						; Set (eax) to 0

convert_square_input:
	; Convert user input (string) to integer
	movzx ebx, byte [esi]					; Load byte pointed to by (esi) into (ebx)
	cmp ebx, 10						; Compare the byte with newline character (10)
	je done_square_conversion				; If it's a newline character, jump

	sub ebx, '0'						; Convert (ASCII) digit to number
	imul eax, eax, 10					; Multiply (eax) by 10
	add eax, ebx						; Add current digit to (eax)
	inc esi							; Move to next character in the user input
	jmp convert_square_input				; Repeat until a newline character is found

done_square_conversion:
	mov ecx, eax						; Store final converted value to (ecx) to control row loops
	mov edi, eax						; Store in (edi) to reset column counter

	cmp eax, 0						; Compare (eax) with 0
	je end_print_square					; If equals to 0, jump

	cmp eax, 2						; Compare (eax) with 2
	jl square_invalid_input					; If lesser than 2, jump

	cmp eax, 9						; Compare (eax) with 9
	jg square_invalid_input					; If greater than 9, jump

	jmp square_row_loop					; Begin printing the square shape

square_row_loop:
	push ecx						; Save row counter
	mov edx, edi						; Set (edx) to square size
	push edx						; Save column counter

print_square_row:
	; Set cyan color
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, cyan_color					; Pointer to the ANSI escape sequence string for cyan color
	mov edx, cyan_color_len					; Length of the escape code
	int 0x80						; Execute the system call

	; Print hashtag
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, hashtag					; Address of hashtag
	mov edx, 1						; Length of hashtag
	int 0x80						; Execute the system call

	; Reset color
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, reset_color					; Pointer to ANSI escape sequence string for resetting color
	mov edx, reset_color_len				; Length of escape code
	int 0x80						; Execute the system call

	; Print 2 spaces (  )
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, spaces						; Address of spaces string
	mov edx, 2						; Length of spaces string
	int 0x80						; Execute the system call

	pop edx							; Get the current column count
	dec edx							; Decrease the column count by 1
	push edx						; Save the updated value for next iteration
	cmp edx, 0						; Compare column count with 0
	jne print_square_row					; If not 0, jump back and print another hashtag (#)

	; Go to new line
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, newline					; Address of newline character
	mov edx, 1						; Length of newline character
	int 0x80						; Execute the system call

	pop edx							; Restore the saved counter
	pop ecx							; Restore the saved counter
	dec ecx							; Decrease the row count by 1
	jnz square_row_loop					; If not 0, repeat the row loop

	jmp repeat_square_loop					; Prompt user for another size or to exit program

; Show error message if the user gives an invalid input
square_invalid_input:
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, error_msg					; Address of error message
	mov edx, error_msg_len					; Length of error message
	int 0x80						; Execute the system call

	jmp repeat_square_loop					; Jump back to prompt user again

; Go back to main menu
end_print_square:
	jmp main_loop


; 3rd Shape (Triangle)
third_shape:
;Main program loop - handles user interaction
repeat_triangle_loop:
	;Print the prompt message
	mov	eax, 4			;syscall: sys_write
	mov	ebx, 1			;file descriptor: stdout
	mov	ecx, prompt_triangle	;memory address for prompt string
	mov	edx, prompt_triangle_len	;length of prompt string
	int	0x80			;call kernel

	;Read user input
	mov	eax, 3			;syscall: sys_read
	mov	ebx, 0			;file descriptor: stdin
	mov	ecx, triangle_input		;buffer to store input
	mov	edx, 16			;maximum bytes to read
	int	0x80			;call kernel

	;Check if input is empty
	mov	al, [triangle_input]	;Load the first byte of input
	cmp	al, 10			;Compare with ASCII newline
	je	invalid_input_triangle	;If user just enter, jmp to invalid_input

	;Convert ASCII input to integer
	xor	eax, eax		;Clear EAX (will store our number)
	mov	esi, triangle_input	;Point ESI to input buffer

convert_triangle_input:
	movzx	ebx, byte [esi]		;Load next byte (zero-extend to EBX)
	cmp	bl, 10			;Check for newline (end of input)
	je	done_triangle_conversion	;If newline, conversion complete
	cmp	bl, '0'			;Validate digit is >= '0'
	jl	invalid_input_triangle	;Jump if invalid
	cmp	bl, '9'			;Validate digit is <= '9'
	jg	invalid_input_triangle	;Jump if invalid
	sub	bl, '0'			;Convert ASCII to number (0-9)
	imul	eax, 10			;Multiply current total by 10
	add	eax, ebx		;Add new digit
	inc	esi			;Move to next character
	jmp	convert_triangle_input	;Repeat for next digit

done_triangle_conversion:
	;Check if user entered 0 (exit condition)
	cmp	eax, 0
	je	end_print_triangle	;If 0, exit program

	;Validate input is within range (2-10)
	cmp	eax, 2
	jl	invalid_input_triangle	;Jump if less than 2
	cmp	eax, 10
	jg	invalid_input_triangle	;Jump if greater than 10

	;Store valid height in memory
	mov	[triangle_height], eax

	;Set row counter (ECX)
	mov	ecx, 1			;Start with row 1

;Outer loop - handles each row of the triangle
triangle_row_loop:
	cmp	ecx, [triangle_height]		;Compare current row with height
	jg	repeat_triangle_loop	;If done all rows, get new input

	push	ecx			;Save row number

	;Print leading spaces: height - row
	mov	eax, [triangle_height]
	sub	eax, ecx
	mov	edx, eax

;Print spaces before dollar signs
print_spaces:
	cmp	edx, 0			;Check if all required spaces printed
	je	print_dollar_setup	;If no more spaces, proceed to print $
	push	edx			;Save space counter

	mov	eax, 4			;syscall: sys_write
	mov	ebx, 1			;file descriptor: stdout
	mov	ecx, space		;memory address of space character
	mov	edx, 1			;length of space character
	int	0x80			;call kernel

	pop	edx			;restore space count
	dec	edx			;decrease space count by 1
	jmp	print_spaces		;repeat until all spaces printed

print_dollar_setup:
	;Set blue color
	mov	eax, 4			;syscall: sys_write
	mov	ebx, 1			;file descriptor: stdout
	mov	ecx, blue_color		;memory address of ANSI code for blue
	mov	edx, blue_len		;length of the ANSI code
	int	0x80			;call kernel

	pop	ecx			;restore row number from stack
	push	ecx			;save it again for later use
	mov	edx, ecx		;edx = number of $ to print for this row

;Inner loop - prints the "$" for current row
dollar_loop:
	cmp	edx, 0			;Check if done printing dollar
	je	end_dollar_loop		;If done, move to next row

	;Print one dollar ($)
	push	edx			;Save dollar counter
	mov	eax, 4			;syscall: sys_write
	mov	ebx, 1			;file descriptor: stdout
	mov	ecx, dollar		;memory address for dollar
	mov	edx, 1			;length of dollar
	int	0x80			;call kernel
	pop	edx			;restore dollar counter

	dec	edx			;decrement dollar counter
	jmp	dollar_loop		;repeat for next dollar

end_dollar_loop:
	;Print newline after each row
	mov	eax, 4			;syscall: sys_write
	mov	ebx, 1			;file descriptor: stdout
	mov	ecx, newline		;memory address for newline
	mov	edx, 1			;length of newline
	int	0x80			;call kernel

	;Reset color
	mov	eax, 4			;syscall: sys_write
	mov	ebx, 1			;file descriptor: stdout
	mov	ecx, reset_color	;memory address of ANSI reset code
	mov	edx, reset_color_len		;length of reset code
	int	0x80			;call kernel

	;Move to next row
	pop	ecx			;restore row number
	inc	ecx			;go to next row
	jmp	triangle_row_loop	;repeat for next row

;Handle invalid input
invalid_input_triangle:
	;Print error message
	mov	eax, 4			;syscall: sys_write
	mov	ebx, 1			;file descriptor: stdout
	mov	ecx, error_msg		;memory address for error message
	mov	edx, error_msg_len		;length of error message
	int	0x80			;call kernel
	jmp	repeat_triangle_loop	;return to main loop for new input

; Go back to main menu
end_print_triangle:
	jmp main_loop


; 4th Shape (Heart)
fourth_shape:
prompt_heart_loop:
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt_heart
    mov edx, prompt_heart_len
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, buf
    mov edx, 4
    int 0x80

    movzx eax, byte [buf]
    sub   al, '0'
    cmp   al, 0
    je    end_print_heart
    cmp   al, 3
    jl    invalid_input_heart
    cmp   al, 9
    jg    invalid_input_heart
    mov   [heart_size], al
    movzx esi, al        ; ESI = size

    ; ==== TOP HALF ====
    mov ebx, 1           ; <-- Start from row 1 (rounded top)
heart_top_half:
    cmp ebx, esi
    jge heart_bottom_half

    mov  eax, esi
    sub  eax, ebx
    mov  ecx, eax
    call heart_print_spaces

    lea  edi, [ebx*2 + 1]
    call heart_print_percents

    mov  eax, esi
    sub  eax, ebx
    shl  eax, 1
    mov  ecx, eax
    call heart_print_spaces

    lea  edi, [ebx*2 + 1]
    call heart_print_percents

    call heart_print_newline
    inc  ebx
    jmp  heart_top_half

; ==== BOTTOM HALF ====
heart_bottom_half:
    mov  eax, esi
    shl  eax, 2
    add  eax, 1
    mov  ebx, eax
    mov  edi, eax

heart_bottom_loop:
    cmp  edi, 1
    jl   prompt_heart_loop

    mov  eax, ebx
    sub  eax, edi
    shr  eax, 1
    mov  ecx, eax
    call heart_print_spaces

    mov  ecx, edi
    call heart_print_percents

    call heart_print_newline

    sub  edi, 2
    jmp  heart_bottom_loop

invalid_input_heart:
    mov eax, 4
    mov ebx, 1
    mov ecx, error_msg
    mov edx, error_msg_len
    int 0x80
    jmp prompt_heart_loop

; Go back to main menu
end_print_heart:
    jmp main_loop

; ===== SUBROUTINES =====

heart_print_spaces:
    pusha
.sp_loop:
    cmp  ecx, 0
    jle  .sp_done
    push ecx
    mov  eax, 4
    mov  ebx, 1
    mov  ecx, space
    mov  edx, 1
    int 0x80
    pop  ecx
    dec  ecx
    jmp  .sp_loop
.sp_done:
    popa
    ret

heart_print_percents:
    pusha
    mov  eax, 4
    mov  ebx, 1
    mov  ecx, yellow_color
    mov  edx, 5
    int 0x80

    mov  ecx, edi
.pp_loop:
    cmp  ecx, 0
    jle  .pp_done
    push ecx
    mov  eax, 4
    mov  ebx, 1
    mov  ecx, percent
    mov  edx, 1
    int 0x80
    pop  ecx
    dec  ecx
    jmp  .pp_loop
.pp_done:
    mov  eax, 4
    mov  ebx, 1
    mov  ecx, reset_color
    mov  edx, 4
    int 0x80
    popa
    ret

heart_print_newline:
    pusha
    mov  eax, 4
    mov  ebx, 1
    mov  ecx, newline
    mov  edx, 1
    int 0x80
    popa
    ret


; 5th Shape (Rectangle)
fifth_shape:
; Sets text color to normal color
rectangle_get_width:
	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, reset_color						; Set to print the sequence for default color
	MOV EDX, 4									; Length of default_color is 4 bytes
	INT 0x80									; syscall

	; Prompt for width
    MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
    MOV ECX, rectangle_width_msg				; Print prompt asking user for width input.
    MOV EDX, 35									; Width prompt is 35 bytes long.
    INT 0x80									; syscall

    ; Read width input
    MOV EAX, 3									; Set sys_call to read mode
    MOV EBX, 0									; Set stdin as read location
    MOV ECX, rectangle_width_input				; Store the input in width_input
    MOV EDX, 4									; Set number of bytes to read to 4 bytes
    INT 0x80									; syscall

	; Check if input larger than 9
	CMP byte [rectangle_width_input + 1], 0xA	; Compare value of second character in the input to a newline character
	JNE fifth_shape									; If not, ask user for width again.

	; Convert to integer
    MOV AL, [rectangle_width_input]				; Moves width_input to accumulator
    SUB AL, '0'									; Substracts the numerical value of character '0' from the accumulator
    MOV [rectangle_width_val], AL				; Moves the value in the accumulator to width_val

	; Check if input is 0
	MOVZX ECX, byte [rectangle_width_val]		; Moves value in width_val to the ECX register
	CMP ECX, 2									; Checks if the value in the ECX is lesser than 2
	JB end_print_rectangle								; If yes, jump to end of program
	CMP ECX, 9									; Check if the value in the ECX is between 2 and 9
	JA rectangle_get_width									; If not, ask user for input again.

rectangle_get_height:
    ; Prompt for height
    MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
    MOV ECX, rectangle_height_msg				; Print prompt asking user for height input
    MOV EDX, 36									; Set number of bytes to print to 36
    INT 0x80									; syscall

    ; Read height input
    MOV EAX, 3									; Set sys_call to read mode
    MOV EBX, 0									; Set stdin as read location
    MOV ECX, rectangle_height_input				; Store the input in height_input
    MOV EDX, 4									; Set number of bytes to read to 4
    INT 0x80									; syscall

	; Check if input larger than 9
	CMP byte [rectangle_height_input + 1], 0xA	; Compare value of second character in the input to a newline character
	JNE rectangle_get_height								; If not, ask user again.

	; Convert to integer
    MOV AL, [rectangle_height_input]						; Moves height_input to accumulator
    SUB AL, '0'									; Substracts the numerical value of character '0' from the accumulator
    MOV [rectangle_height_val], AL						; Moves the value in the accumulator to height_val

    MOV byte [rectangle_row_count], 0			; Initialize row_count to 0

	; Check if input is 0
	MOVZX ECX, byte [rectangle_height_val]		; Moves value in width_val to the ECX register
	CMP ECX, 2									; Checks if the value in the ECX is less than 2.
	JB end_print_rectangle								; If yes, jump to end of program
	CMP ECX, 9									; Check if the value in the ECX is between 2 and 9
	JA rectangle_get_height								; If not, ask user again.

	; Check if input larger than 9
	MOVZX ECX, byte [rectangle_height_val + 1]	; Moves value in the memory address next to width_val to the ECX register
	CMP ECX, 0xA								; Compare value in ECX to a newline character
	JE rectangle_get_height								; If not, ask user again.

rectangle_print_row:
    MOVZX ECX, byte [rectangle_row_count]		; Zero-extend and move row_count to ECX register
    MOVZX EDX, byte [rectangle_height_val]		; Zero-extend and move height_val to EDX register
    CMP ECX, EDX								; Compare the value of ECX and EDX registers
    JGE fifth_shape									; If ECX = EDX, start from beginning again.

    MOV byte [rectangle_col_count], 0			; Initialize col_count to 0

rectangle_print_star:
    MOVZX ECX, byte [rectangle_col_count]		; Zero-extend and move col_count to ECX register
    MOVZX EDX, byte [rectangle_width_val]		; Zero-extend and move width_val to EDX register
    CMP ECX, EDX								; Compare the value of ECX and EDX registers
    JGE rectangle_print_newline							; If ECX = EDX, go to rectangle_print_newline

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, light_blue_color					; Set to print the sequence for light blue
	MOV EDX, 11									; Length of light_blue is 11
	INT 0x80									; syscall

    MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
    MOV ECX, star								; Set string to be printed
    MOV EDX, 1									; Set number of bytes to print
    INT 0x80									; syscall

    INC byte [rectangle_col_count]				; Increment value of col_count by 1
    JMP rectangle_print_star								; Go to rectangle_print_star

rectangle_print_newline:
    MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
    MOV ECX, newline							; Set string to be printed
    MOV EDX, 1									; Set number of bytes to print
    INT 0x80									; syscall

    INC byte [rectangle_row_count]				; INCrement value of row_count by 1
    JMP rectangle_print_row								; Go to rectangle_print_row

; Go back to main menu
end_print_rectangle:
    JMP main_loop


; 6th Shape (Oval)
sixth_shape:
PUSH EBP
	MOV EBP, ESP
	; Sets text color to light green color
	MOV EAX, 4									; Set sys_call to write mode
	MOV EBX, 1									; Set write output location to stdout
	MOV ECX, light_green_color					; Set to print the sequence for light green
	MOV EDX, 11									; Length of light_green_color is 11 bytes
	INT 0x80									; syscall

	MOV byte[oval_bottom], 0					; Set bottom flag to 0
	JMP oval_line1_start						; Jump to line1_start

oval_line1_start:
	; Print new line and resets pointer to 0
	MOV EAX, 4									; Set sys_call to write mode
	MOV EBX, 1									; Set write output location to stdout
	MOV ECX, newline							; Set newline character to be printed
	MOV EDX, 1									; Length of the newline character is 1 byte
	INT 0x80									; syscall

	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_line1_space						; Jump to line1_space

oval_line1_space:
	; Prints empty spaces in the shape
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 10									; Check if ECX = 10
	JE oval_line1_middle						; If yes, jump to line1_middle

	MOV EAX, 4									; Set sys_call to write mode
	MOV EBX, 1									; Set write output location to stdout
	MOV ECX, space								; Set space character to be printed
	MOV EDX, 1									; Length of the space character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_line1_space						; Jump to line1_space

oval_line1_middle:
	; Reset pointer to 0
	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_line1_star							; Jump to line1_star

oval_line1_star:
	; Print main part of shape using asterisk
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 22									; Check if ECX = 22
	JE oval_line1_end							; If yes, jump to line1_end

	MOV EAX, 4									; Set sys_call to write mode
	MOV EBX, 1									; Set write output location to stdout
	MOV ECX, star								; Set asterisk character to be printed
	MOV EDX, 1									; Length of the asterisk character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_line1_star							; Jump to line1_star

oval_line1_end:
	; Check which line to print next
	MOVZX ECX, byte[oval_bottom]				; Zero-extends and moves value in bottom to ECX register
	CMP ECX, 0									; Check if ECX = 0
	JE oval_line2_start							; If yes, jump to line2_start
	CALL end_program							; Else, jump to end_program

oval_line2_start:
	; Print new line and resets pointer to 0
	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, newline							; Set newline character to be printed
	MOV EDX, 1									; Length of the newline character is 1 byte
	INT 0x80									; syscall

	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_line2_space						; Jump to line2_space

oval_line2_space:
	; Prints empty spaces in the shape
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 7									; Check if ECX = 7
	JE oval_line2_middle						; If yes, jump to line2_middle

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, space								; Set space character to be printed
	MOV EDX, 1									; Length of the space character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_line2_space						; Jump to line2_space

oval_line2_middle:
	; Reset pointer to 0
	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_line2_star							; Jump to line2_star

oval_line2_star:
	; Print main part of shape using asterisk
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 28									; Check if ECX = 28
	JE oval_line2_end							; If yes, jump to line2_end

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, star								; Set asterisk character to be printed
	MOV EDX, 1									; Length of the asterisk character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_line2_star							; Jump to line2_star

oval_line2_end:
	; Check which line to print next
	MOVZX ECX, byte[oval_bottom]				; Zero-extends and moves value in bottom to ECX register
	CMP ECX, 0									; Check if ECX = 0
	JE oval_line3_start							; If yes, jump to line3_start
	CALL oval_line1_start						; Else, jump to end_program

oval_line3_start:
	; Print new line and resets pointer to 0
	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, newline							; Set newline character to be printed
	MOV EDX, 1									; Length of the newline character is 1 byte
	INT 0x80									; syscall

	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_line3_space						; Jump to line3_space

oval_line3_space:
	; Prints empty spaces in the shape
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 5									; Check if ECX = 5
	JE oval_line3_middle						; If yes, jump to line1_middle

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, space								; Set space character to be printed
	MOV EDX, 1									; Length of the space character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_line3_space						; Jump to line3_space

oval_line3_middle:
	; Reset pointer to 0
	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_line3_star							; Jump to line3_star

oval_line3_star:
	; Print main part of shape using asterisk
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 32									; Check if ECX = 32
	JE oval_line3_end							; If yes, jump to line3_end

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, star								; Set asterisk character to be printed
	MOV EDX, 1									; Length of the asterisk character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_line3_star							; Jump to line3_star

oval_line3_end:
	; Check which line to print next
	MOVZX ECX, byte[oval_bottom]				; Zero-extends and moves value in bottom to ECX register
	CMP ECX, 0									; Check if ECX = 0
	JE oval_line4_start							; If yes, jump to line4_start
	CALL oval_line2_start						; Else, jump to line2_start

oval_line4_start:
	; Print new line and resets pointer to 0
	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, newline							; Set newline character to be printed
	MOV EDX, 1									; Length of the newline character is 1 byte
	INT 0x80									; syscall

	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_line4_space						; Jump to line4_space

oval_line4_space:
	; Prints empty spaces in the shape
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 4									; Check if ECX = 4
	JE oval_line4_middle						; If yes, jump to line4_middle

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, space								; Set space character to be printed
	MOV EDX, 1									; Length of the space character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_line4_space						; Jump to line4_space

oval_line4_middle:
	; Reset pointer to 0
	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_line4_star							; Jump to line4_star

oval_line4_star:
	; Print main part of shape using asterisk
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 34									; Check if ECX = 34
	JE oval_line4_end							; If yes, jump to line4_end

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, star								; Set asterisk character to be printed
	MOV EDX, 1									; Length of the asterisk character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_line4_star							; Jump to line4_star

oval_line4_end:
	; Check which line to print next
	MOVZX ECX, byte[oval_bottom]				; Zero-extends and moves value in bottom to ECX register
	CMP ECX, 0									; Check if ECX = 0
	JE oval_line5_start							; If yes, jump to line5_start
	CALL oval_line3_start						; Else, jump to line3_start

oval_line5_start:
	; Print new line and resets pointer to 0
	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, newline							; Set newline character to be printed
	MOV EDX, 1									; Length of the newline character is 1 byte
	INT 0x80									; syscall

	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_line5_space						; Jump to line5_space

oval_line5_space:
	; Prints empty spaces in the shape
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 3									; Check if ECX = 3
	JE oval_line5_middle						; If yes, jump to line5_middle

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, space								; Set space character to be printed
	MOV EDX, 1									; Length of the space character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_line5_space						; Jump to line5_space


oval_line5_middle:
	; Reset pointer to 0
	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_line5_star							; Jump to line1_star

oval_line5_star:
	; Print main part of shape using asterisk
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 36									; Check if ECX = 36
	JE oval_line5_end							; If yes, jump to line5_end

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, star								; Set asterisk character to be printed
	MOV EDX, 1									; Length of the asterisk character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_line5_star							; Jump to line5_star


oval_line5_end:
	; Check which line to print next
	MOVZX ECX, byte[oval_bottom]				; Zero-extends and moves value in bottom to ECX register
	CMP ECX, 0									; Check if ECX = 0
	JE oval_main_start							; If yes, jump to main_start
	CALL oval_line4_start						; Else, jump to line4_start

oval_main_start:
	; Print new line and resets pointer to 0
	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, newline							; Set newline character to be printed
	MOV EDX, 1									; Length of the newline character is 1 byte
	INT 0x80									; syscall

	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_main_space							; Jump to main_space

oval_main_space:
	; Prints empty spaces in the shape
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 2									; Check if ECX = 2
	JE oval_main_middle							; If yes, jump to main_middle

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, space								; Set space character to be printed
	MOV EDX, 1									; Length of the space character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_main_space							; Jump to main_space


oval_main_middle:
	; Reset pointer to 0
	MOV byte[oval_pointer], 0					; Set value of pointer to 0
	JMP oval_main_star							; Jump to main_star

oval_main_star:
	; Print main part of shape using asterisk
	MOVZX ECX, byte[oval_pointer]				; Zero-extends and moves value in pointer to ECX register
	CMP ECX, 38									; Check if ECX = 38
	JE oval_bottom_start						; If yes, jump to bottom_start

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, star								; Set asterisk character to be printed
	MOV EDX, 1									; Length of the asterisk character is 1 byte
	INT 0x80									; syscall

	INC byte[oval_pointer]						; Increment value of pointer by 1
	JMP oval_main_star							; Jump to main_star


oval_bottom_start:
	MOV byte[oval_bottom], 1					; Sets value of bottom to 1
	JMP oval_line5_start						; Jumps to line5_start

end_program:
	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, newline							; Set newline character to be printed
	MOV EDX, 1									; Length of the newline character is 1 byte
	INT 0x80									; syscall

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, newline							; Set newline character to be printed
	MOV EDX, 1									; Length of the newline character is 1 byte
	INT 0x80									; syscall

	MOV EAX, 4									; Set sys_call to write mode
    MOV EBX, 1									; Set write output location to stdout
	MOV ECX, reset_color						; Set to print the sequence for default color
	MOV EDX, 4									; Length of default_color is 4 bytes
	INT 0x80									; syscall

	; Go back to main menu
	JMP main_loop


; 7th Shape (Arrow)
seventh_shape:
arrow_main_loop:
; Prompt user for triangle width
arrow_prompt_triangle_width:
	mov eax, 4											; Sys_write
	mov ebx, 1											; File descriptor for stdout
	mov ecx, arrow_prompt_width									; Address of prompt message (width)
	mov edx, arrow_prompt_width_len									; Length of prompt message
	int 0x80											; Call kernel

	mov eax, 3											; Sys_read
	mov ebx, 0											; File descriptor for stdin
	mov ecx, arrow_input										; Buffer to store input
	mov edx, 4											; Read up to 4 bytes
	int 0x80											; Call kernel

	; Check if user just ENTER
	mov al, [arrow_input]										; Get first character

	cmp al, 10											; Compare AL with newline character
	je invalid_arrow_width										; Jump if it's a newline character

	; Check if user input a digit
	cmp al, '0'											; Compare AL with 0
	jl invalid_arrow_width										; Jump if input is lesser than 0

	cmp al, '9'											; Compare AL with 9
	jg invalid_arrow_width										; Jump if input is greater than 9

	; Check if second character is a newline character to ensure it's a single digit input
	cmp byte [arrow_input+1], 10									; Compare second character with newline character
	jne invalid_arrow_width										; Jump if second character is not equals to newline character

	; Convert ASCII to integer
	movzx eax, byte [arrow_input]									; Zero-extend the first byte of input into EAX
	sub eax, '0'											; Subtract ASCII value of 0 to get actual integer

	; Check if user wants to exit the program
	cmp eax, 0											; Compare EAX with 0
	je arrow_exit_program										; Jump if EAX equals to 0

	mov [arrow_triangle_width], al									; Store width into (triangle_width)

	; Check if user input is an odd number and is within the given range
	mov al, [arrow_triangle_width]									; Retrieve the user_provided width from memory into AL for validation

	test al, 1											; Check if the input is an odd number
	jz invalid_arrow_width										; If zero (even number), jump to invalid_width

	cmp al, 4											; Compare AL with 4
	jl invalid_arrow_width										; Jump if AL is lesser than 4

	cmp al, 10											; Compare AL with 10
	jge invalid_arrow_width										; Jump if greater or equals to 10

	jmp arrow_prompt_shaft_height									; Jump to prompt_shaft

; Print error message
invalid_arrow_width:
	mov eax, 4											; Sys_write
	mov ebx, 1											; File descriptor for stdout
	mov ecx, error_msg										; Address of error message
	mov edx, error_msg_len										; Length of error message
	int 0x80											; Call kernel

	jmp arrow_prompt_triangle_width									; Prompt user again for the triangle width

; Prompt user for shaft height
arrow_prompt_shaft_height:
	mov eax, 4											; Sys_write
	mov ebx, 1											; File descriptor for stdout
	mov ecx, arrow_prompt_shaft									; Address of prompt message (shaft)
	mov edx, arrow_prompt_shaft_len									; Length of prompt message
	int 0x80											; Call kernel

	mov eax, 3											; Sys_read
	mov ebx, 0											; File descriptor for stdin
	mov ecx, arrow_input										; Address of the buffer to store user input
	mov edx, 4											; Read up to 4 bytes
	int 0x80											; Call kernel

	; Check if user just ENTER
	mov al, [arrow_input]										; Get first character

	; Check if user wants to exit the program
	cmp al, '0'											; Compare AL with 0
	je arrow_exit_program										; Jump if equals to 0

	cmp al, 10											; Compare AL with newline character
	je invalid_arrow_shaft										; Jump if it's a newline character

	; Check if user input a digit
	cmp al, '0'											; Compare AL with 0
	jl invalid_arrow_shaft										; Jump if input is lesser than 0

	cmp al, '9'											; Compare AL with 9
	jg invalid_arrow_shaft										; Jump if input is greater than 9

	; Check if second character is a newline character to ensure it's a single digit input
	cmp byte [arrow_input+1], 10									; Compare second character with newline character
	jne invalid_arrow_shaft										; Jump if second character is not equals to newline character

	; Convert ASCII to integer
	movzx eax, byte [arrow_input]									; Zero-extend the first byte of input into EAX
	sub eax, '0'											; Subtract ASCII value of 0

	mov [arrow_shaft_height], al									; Store height into (shaft_height)

	cmp al, 3											; Compare AL with 3
	jl invalid_arrow_shaft										; Jump if AL is lesser than 3

	jmp arrow_draw_triangle										; Jump to draw_triangle

; Print error message
invalid_arrow_shaft:
	mov eax, 4											; Sys_write
	mov ebx, 1											; File descriptor for stdout
	mov ecx, error_msg										; Address of error message
	mov edx, error_msg_len										; Length of error message
	int 0x80

	jmp arrow_prompt_shaft_height									; Prompt user again for shaft height

; Draw Triangle
arrow_draw_triangle:
	movzx edi, byte [arrow_triangle_width]								; Load triangle width into EDI
	mov esi, 1											; Start with 1 plus symbol

arrow_triangle_loop:
	cmp esi, edi											; Compare current plus count with final width
	jg arrow_draw_shaft										; If current > width, triangle is complete, continue to draw shaft

	; Set color to light cyan
	mov eax, 4											; Sys_write
	mov ebx, 1											; File descriptor for stdout
	mov ecx, light_cyan_color									; Address of ANSI escape code for light cyan
	mov edx, light_cyan_color_len									; Length of ANSI escape code for light cyan
	int 0x80											; Call kernel

	mov eax, edi											; Assign width into EAX
	sub eax, esi											; Subtract current plus count
	shr eax, 1											; Divide by 2 to get number of leading spaces
	mov ecx, eax											; Set ECX as space counter

	mov ebx, arrow_buffer										; Point EBX to the start of the line buffer
	mov al, ' '											; Assign space character to AL

arrow_print_spaces:
	cmp ecx, 0											; Compare ECX with 0
	je arrow_print_plus										; Jump to print_plus if ECX equals to 0

	mov [ebx], al											; Store a space in buffer
	inc ebx												; Move buffer pointer forward
	dec ecx												; Decrease space counter

	jmp arrow_print_spaces										; Jump to print_spaces after all spaces are printed

arrow_print_plus:
	mov ecx, esi											; Set ECX to current plus count
	mov al, '+'											; Set plus character into AL to print

arrow_plus_loop:
	cmp ecx, 0											; Compare ECX with 0
	je arrow_triangle_newline									; Jump if ECX equals to 0

	mov [ebx], al											; Store plus symbol in buffer
	inc ebx												; Move buffer pointer forward
	dec ecx												; Decrease plus counter

	jmp arrow_plus_loop										; Jump to plus_loop after all plus symbol are printed

arrow_triangle_newline:
	mov byte [ebx], 10										; Add newline character at the end
	inc ebx												; Move pointer past newline
	sub ebx, arrow_buffer										; Calculate length of the line
	mov edx, ebx											; Store line length in EDX

	mov eax, 4											; Sys_write
	mov ebx, 1											; File descriptor for stdout
	mov ecx, arrow_buffer										; Address of the built line
	int 0x80											; Call kernel

	; Reset color
	mov eax, 4											; Sys_write
	mov ebx, 1											; File descriptor for stdout
	mov ecx, reset_color										; Address of ANSI escape code to reset color
	mov edx, reset_color_len									; Length of ANSI escape code for resetting color
	int 0x80											; Call kernel

	add esi, 2											; Increase ESI by 2
	jmp arrow_triangle_loop										; Jump to triangle_loop to print next triangle row

; Draw Shaft
arrow_draw_shaft:
	movzx ecx, byte [arrow_shaft_height]								; Load shaft height into ECX as loop counter

arrow_shaft_loop:
	cmp ecx, 0											; Compare ECX to 0
	je arrow_main_loop										; If done, loop back to the beginning

	; Set color to light cyan
	mov eax, 4											; Sys_write
	mov ebx, 1											; File descriptor for stdout
	mov ecx, light_cyan_color									; Address of light cyan's ANSI escape code
	mov edx, light_cyan_color_len									; Length of ANSI escape code
	int 0x80											; Call kernel

	movzx edi, byte [arrow_triangle_width]								; Get triangle width to calculate center
	sub edi, 3											; Subtract 3 from EDI
	shr edi, 1											; Divide by 2 to get leading space
	mov ebx, arrow_buffer										; Point to buffer to build the shaft line
	mov al, ' '											; Assign space character to AL

arrow_pad_loop:
	cmp edi, 0											; Check if all spaces are printed
	je arrow_shaft_plus										; If done, proceed to print plus symbol

	mov [ebx], al											; Store space into EBX
	inc ebx												; Move buffer pointer forward
	dec edi												; Decrease space counter by 1

	jmp arrow_pad_loop										; Jump to pad_loop to repeat for next space

arrow_shaft_plus:
	mov esi, 3											; Set number of plus symbol to print
	mov al, '+'											; Assign plus character to AL

arrow_shaft_plus_loop:
	cmp esi, 0											; Compare ESI with 0
	je arrow_shaft_newline										; Jump to shaft_newline if done

	mov [ebx], al											; Store plus symbol to EBX
	inc ebx												; Advance buffer
	dec esi												; Decrease plus counter by 1

	jmp arrow_shaft_plus_loop									; Jump to print next plus symbol

arrow_shaft_newline:
	mov byte [ebx], 10										; Add newline character at the end
	inc ebx												; Move buffer pointer past newline
	sub ebx, arrow_buffer										; Get the length of the line
	mov edx, ebx											; Store line length in EDX

	mov eax, 4											; Sys_write
	mov ebx, 1											; File descriptor for stdout
	mov ecx, arrow_buffer										; Address of buffer
	int 0x80											; Call kernel

	; Reset color
	mov eax, 4											; Sys_write
	mov ebx, 1											; File descriptor for stdout
	mov ecx, reset_color										; Address of ANSI escape code to reset color
	mov edx, reset_color_len									; Length of ANSI escape code
	int 0x80											; Call kernel

	dec byte [arrow_shaft_height]									; Decrease remaining shaft height
	movzx ecx, byte [arrow_shaft_height]								; Load updated height

	jmp arrow_shaft_loop										; Jump to shaft_loop to continue drawing next shaft line

; Go back to main menu
arrow_exit_program:
	jmp main_loop


; 8th Shape (Rhombus)
eighth_shape:
rhombus.loop:
    ;–– Prompt user ––
    mov   eax, 4            ; sys_write
    mov   ebx, 1            ; stdout
    mov   ecx, rhombus_prompt
    mov   edx, rhombus_prompt_len
    int   0x80

    ;–– Read up to 4 bytes ––
    mov   eax, 3            ; sys_read
    mov   ebx, 0            ; stdin
    mov   ecx, rhombus_buf
    mov   edx, 4
    int   0x80

    ;–– Convert ASCII digit → integer ––
    movzx eax, byte [rhombus_buf]
    sub   eax, '0'

    ;–– Exit on 0 ––
    cmp   eax, 0
    je    rhombus.exit_prog

    ;–– Validate input 2–9 ––
    cmp   eax, 2
    jl    rhombus.invalid
    cmp   eax, 9
    jg    rhombus.invalid

    ;–– Save valid size and draw ––
    mov   [rhombus_size], al        ; store size
    movzx ecx, byte [rhombus_size]  ; ECX = n

    ;── Upper half: i = 0 to n-1 ───────────────────────────
    xor   edx, edx          ; EDX = i = 0
rhombus.upper:
    cmp   edx, ecx
    je    rhombus.lower            ; done upper → lower half
    mov   edi, ecx
    dec   edi               ; edi = n-1
    sub   edi, edx          ; spaces = (n-1) - i
    call  rhombus_print_spaces
    mov   eax, edx
    shl   eax, 1
    inc   eax               ; carets = 2*i + 1
    call  rhombus_print_carets
    call  rhombus_print_nl
    inc   edx
    jmp   rhombus.upper

    ;── Lower half: i = n-2 down to 0 ───────────────────────
rhombus.lower:
    mov   edx, ecx
    sub   edx, 2            ; start at i = n-2
rhombus.lower_loop:
    cmp   edx, 0
    jl    rhombus.done_draw        ; when i < 0, finished
    mov   edi, ecx
    dec   edi               ; edi = n-1
    sub   edi, edx          ; spaces = (n-1) - i
    call  rhombus_print_spaces
    mov   eax, edx
    shl   eax, 1
    inc   eax               ; carets = 2*i + 1
    call  rhombus_print_carets
    call  rhombus_print_nl
    dec   edx
    jmp   rhombus.lower_loop

rhombus.done_draw:
    jmp   rhombus.loop             ; ask again

rhombus.invalid:
    ;–– Print error and retry ––
    mov   eax, 4
    mov   ebx, 1
    mov   ecx, error_msg
    mov   edx, error_msg_len
    int   0x80
    jmp   rhombus.loop

; Go back to main menu
rhombus.exit_prog:
    jmp main_loop

;────────────────────────────────────────────────────────────────
; Helper: rhombus_print_spaces
; Prints EDI spaces. Preserves ECX, EDX, EBX.
rhombus_print_spaces:
    push  edx
    push  ecx
    push  ebx

rhombus.sp_loop:
    test  edi, edi
    jz    rhombus.sp_done
    mov   eax, 4            ; sys_write
    mov   ebx, 1
    mov   ecx, space
    mov   edx, 1
    int   0x80
    dec   edi
    jmp   rhombus.sp_loop
rhombus.sp_done:

    pop   ebx
    pop   ecx
    pop   edx
    ret

;────────────────────────────────────────────────────────────────
; Helper: rhombus_print_carets
; Prints EAX carets (^) in light gray. Preserves ECX, EDX, EBX.
rhombus_print_carets:
    push  edx
    push  ecx
    push  ebx

    mov   edi, eax          ; loop counter

    ; set light-gray color
    mov   eax, 4
    mov   ebx, 1
    mov   ecx, light_gray
    mov   edx, 5
    int   0x80

rhombus.pc_loop:
    cmp   edi, 0
    je    rhombus.pc_done
    mov   eax, 4            ; sys_write
    mov   ebx, 1
    mov   ecx, caret
    mov   edx, 1
    int   0x80
    dec   edi
    jmp   rhombus.pc_loop

rhombus.pc_done:
    ; reset to default color
    mov   eax, 4
    mov   ebx, 1
    mov   ecx, reset_color
    mov   edx, 4
    int   0x80

    pop   ebx
    pop   ecx
    pop   edx
    ret

;────────────────────────────────────────────────────────────────
; Helper: rhombus_print_nl
; Emits one newline. Preserves ECX, EDX, EBX.
rhombus_print_nl:
    push  edx
    push  ecx
    push  ebx

    mov   eax, 4            ; sys_write
    mov   ebx, 1
    mov   ecx, newline
    mov   edx, 1
    int   0x80

    pop   ebx
    pop   ecx
    pop   edx
    ret


; 9th Shape (Trapezium)
ninth_shape:
trapezium_main_loop:
; Prompt user for height
prompt_trapezium_height:
	mov eax, 4								; Sys_write
	mov ebx, 1								; File descriptor for stdout
	mov ecx, trapezium_prompt_height					; Address of prompt message (height)
	mov edx, trapezium_prompt_height_len					; Length of prompt message
	int 0x80								; Call kernel

	mov eax, 3								; Sys_read
	mov ebx, 0								; File descriptor for stdin
	mov ecx, trapezium_input						; Pointer to trapezium_input to store input
	mov edx, 16								; Read up to 16 bytes
	int 0x80

	; Check if user just ENTER
	mov al, [trapezium_input]						; Load first byte of input

	cmp al, 10								; Compare AL with 10
	je invalid_trapezium_height						; Jump to invalid_trapezium_height if AL equals to 10

	cmp al, 0								; Compare AL with 0
	je invalid_trapezium_height						; Jump to invalid_trapezium_height if AL equals to 0

	; Convert ASCII to integer
	mov esi, trapezium_input						; Point ESI to the trapezium_input
	call trapezium_safe_str_to_int						; Convert string to integer in EAX

	; Check for conversion error
	cmp eax, -1								; Check if the input is invalid
	je invalid_trapezium_height                                             ; Jump if invalid

	cmp eax, 0								; Compare EAX with 0
	je end_print_trapezium							; Jump to end_print_trapezium if EAX equals to 0

	cmp eax, 2								; Compare EAX with 2
	jl invalid_trapezium_height						; Jump to invalid_trapezium_height if EAX is lesser than 2

	cmp eax, 9								; Compare EAX with 9
	jg invalid_trapezium_height						; Jump to invalid_trapezium_height if EAX is greater than 9

	mov ebp, eax								; store valid height for later use
	jmp prompt_half_trapezium_length					; Proceed to prompt user for half of the starting line

invalid_trapezium_height:
	; Print invalid input message
	mov eax, 4								; Sys_write
	mov ebx, 1								; File descriptor for stdout
	mov ecx, error_msg							; Address of error message
	mov edx, error_msg_len							; Length of error message
	int 0x80								; Call kernel

	jmp prompt_trapezium_height						; Prompt user again

prompt_half_trapezium_length:
trapezium_half_input:
	; Prompt for half of starting line length
	mov eax, 4								; Sys_write
	mov ebx, 1								; File descriptor for stdout
	mov ecx, trapezium_prompt_half						; Address of prompt message (half of starting line)
	mov edx, trapezium_prompt_half_len					; Length of prompt message
	int 0x80								; Call kernel

	; Read input into trapezium_input
	mov eax, 3								; Sys_read
	mov ebx, 0								; File descriptor for stdin
	mov ecx, trapezium_input						; Pointer to trapezium_input to store user input
	mov edx, 16								; Read up to 16 bytes
	int 0x80								; Call kernel

	; Check if user just ENTER
	mov al, [trapezium_input]						; Load first byte of input

	cmp al, 10								; Compare AL with newline character
	je invalid_trapezium_half_length					; Jump to invalid_trapezium_half_length if it's a newline character

	cmp al, 0								; Compare AL with null value
	je invalid_trapezium_half_length					; Jump to invalid_trapezium_half_length if it's null

	; Convert ASCII to integer
	mov esi, trapezium_input						; Move trapezium_input pionter to ESI
	call trapezium_safe_str_to_int						; Convert input string to integer

	; Validate and store
	cmp eax, -1								; Compare EAX with -1
	je invalid_trapezium_half_length					; Jump to invalid_trapezium_half_length if EAX equals to -1

	cmp eax, 0								; Compare EAX with 0
	je end_print_trapezium							; Jump to end_print_trapezium if EAX equals to 0

	cmp eax, 2								; Compare EAX with 2
	jl invalid_trapezium_half_length					; Jump to invalid_trapezium_half_length if EAX is lesser than 2

	cmp eax, 9								; Compare EAX with 9
	jg invalid_trapezium_half_length					; Jump to invalid_trapezium_half_length if EAX is greater than 9

	mov esi, eax								; store valid half_line length
	mov edi, ebp								; Assign height into EDI
	sub edi, 1								; subtract 1 for space padding on top line

	mov ecx, ebp								; set loop counter to height

        jmp trapezium_print_rows

invalid_trapezium_half_length:
	; Print invalid input message
	mov eax, 4								; Sys_write
	mov ebx, 1								; File descriptor for stdout
	mov ecx, error_msg							; Address of error message
	mov edx, error_msg_len							; Length of error message
	int 0x80								; Call kernel

	jmp prompt_half_trapezium_length					; Prompt user again


trapezium_print_rows:
	push ecx								; Save ECX onto the stack (loop counter)
	push esi								; Save ESI onto the stack (current plus count)
	push edi								; Save EDI onto the stack (current space count)

	; Print spaces
	mov ecx, edi								; Move current space count into ECX
	call trapezium_print_spaces						; Call function to print spaces

	; Print plus symbol
	pop edi									; Restore EDI from stack (spaces)
	pop esi									; Restore ESI from stack (half of plus count)
	mov ecx, esi								; Move half_length into ECX
	shl ecx, 1								; Multiply by 2 (full line length of plus symbol)
	call trapezium_print_plus						; Call function to print plus symbol

	; Newline
	call trapezium_print_newline						; Call function to print newline

	pop ecx									; Restore ECX from stack (loop counter)
	inc esi									; Incrrease half_length by 1
	dec edi									; Decrease space count by 1
	dec ecx									; Decrease loop counter by 1 (one row done)

	cmp ecx, 0								; Compare ECX with 0
	jne trapezium_print_rows						; Jump to print_rows if ECX not equals to 0

	jmp trapezium_main_loop							; After successful print, loop again

; Go back to main menu
end_print_trapezium:
	jmp main_loop

; Print spaces
trapezium_print_spaces:
	push ecx								; Save ECX onto the stack to preserve original space count

trapezium_loop_spaces:
	cmp ecx, 0								; Compare ECX with 0
	je trapezium_done_spaces						; Jump to done_space if ECX is 0

	mov eax, 4								; Sys_write
	mov ebx, 1								; File descriptor for stdout
	mov ecx, space								; Address of space character
	mov edx, 1								; Length of space character
	int 0x80								; Call kernel

	pop ecx									; Restore ECX (remaining count)
	dec ecx									; Decrease space count by 1
	push ecx								; Save updated count onto stack

	jmp trapezium_loop_spaces						; Repeat loop until ECX reaches 0

trapezium_done_spaces:
	pop ecx									; Clean up stack
	ret									; Return to caller

; Print plus symbols
trapezium_print_plus:
	push ecx								; Save ECX onto stack to preserve original plus count

	; Set color to green color
	mov eax, 4								; Sys_write
	mov ebx, 1								; File descriptor for stdout
	mov ecx, green_color							; Address of ANSI escape code for green color
	mov edx, green_color_len						; Length of ANSI escape code for green color
        int 0x80								; Call kernel

trapezium_loop_plus:
	cmp ecx, 0								; Compare ECX with 0
	je trapezium_done_plus							; Jump to done_plus if ECX equals to 0

	mov eax, 4								; Sys_write
	mov ebx, 1								; File descriptor for stdout
	mov ecx, plus								; Address of plus symbol
	mov edx, 1								; Length of plus symbol
	int 0x80								; Call kernel

	pop ecx									; Restore ECX value (remaining count)
	dec ecx									; Decrease plus counter by 1
	push ecx								; Save updated count back to stack

	jmp trapezium_loop_plus							; Repeat loop until ECX reaches 0

trapezium_done_plus:
	pop ecx									; Clean up stack

	; Reset color
	mov eax, 4								; Sys_write
	mov ebx, 1								; File descriptor for stdout
	mov ecx, reset_color							; Address of ANSI escape code to reset color
	mov edx, reset_color_len						; Length of ANSI escape code for resetting color
	int 0x80								; Call kernel

	ret									; Return to caller

; Print newline
trapezium_print_newline:
	mov eax, 4								; Sys_write
	mov ebx, 1								; File descriptor for stdout
	mov ecx, newline							; Address of newline character
	mov edx, 1								; Length of newline character
	int 0x80								; Call kernel

	ret									; Return to caller

; Convert ASCII to integer
trapezium_safe_str_to_int:
	xor eax, eax								; clear eax to store final result
	mov ecx, 0								; Initialize character count

trapezium_next_char:
	mov bl, [esi]								; Load current chracter from ESI into BL

	cmp bl, 10								; Compare BL with newline character
	je trapezium_done							; Jump to done if BL is a newline character

	cmp bl, 0								; Compare BL with null value
	je trapezium_done							; Jump to done if BL is a null value

	cmp bl, '0'								; Compare BL with 0
	jl trapezium_invalid							; Jump to invalid if BL is lesser than 0

	cmp bl, '9'								; Compare BL with 9
	jg trapezium_invalid							; Jump to invalid if BL is greater than 9

	sub bl, '0'								; convert ASCII to number
	imul eax, eax, 10							; Multiply result so far by 10
	add eax, ebx								; Add current digit into EAX

	inc esi									; Increase ESI by 1 (move to next character)
	inc ecx									; Increase ECX by 1 (increase valid character count)

	cmp ecx, 2								; Compare ECX with 2
	jg trapezium_invalid							; Jump to invalid if ECX is greater than 2 (more than 2 character)

	jmp trapezium_next_char							; Repeat the loop

trapezium_invalid:
	mov eax, -1								; Set return value to -1 to indicate invalid input
trapezium_done:
	ret


; 10th Shape (Parallelogram)
tenth_shape:
parallelogram_height_loop:
	; Print prompt message
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, prompt_parallelogram_height			; Address of prompt message
	mov edx, prompt_parallelogram_height_len		; Length of prompt message
	int 0x80						; Execute the system call

	; Read user input
	mov eax, 3						; Sys_read
	mov ebx, 0						; File descriptor for stdin
	mov ecx, parallelogram_input				; Buffer to store user input
	mov edx, 16						; Length of the buffer that store user input
	int 0x80						; Execute the system call

	mov esi, parallelogram_input				; Load address of user input into ESI for conversion

	call convert_parallelogram_input			; Call the function to convert string to integer

	; Checks if user gives an invalid input
	cmp eax, -1
	je invalid_parallelogram_height

	; Checks if the user entered 0
	cmp eax, 0
	je end_print_parallelogram

	; Checks if the value is less than 2
	cmp eax, 2
	jl invalid_parallelogram_height

	; Checks if the value is greater than 2
	cmp eax, 9
	jg invalid_parallelogram_height

	mov [parallelogram_height], al				; Store validate height into variable for later use

; Prompt for width
parallelogram_width_loop:
	; Print prompt message
	mov eax, 4						; Sys_write
	mov ebx, 1						; File desciptor for stdout
	mov ecx, prompt_parallelogram_width			; Address of prompt message
	mov edx, prompt_parallelogram_width_len			; Length of prompt message
	int 0x80						; Execute the system call

	; Read user input
	mov eax, 3						; Sys_read
	mov ebx, 0						; File descriptor for stdin
	mov ecx, parallelogram_input				; Buffer to store user input
	mov edx, 16						; Length of the buffer that store user input
	int 0x80						; Execute the system call

	mov esi, parallelogram_input				; Load user input into ESI for conversion

	call convert_parallelogram_input			; Call the function to convert string to integer

	; Checks if the user gives an invalid input
	cmp eax, -1
	je invalid_parallelogram_width

	; Checks if the user entered 0
	cmp eax, 0
	je end_print_parallelogram

	; Checks if value is less than 2
	cmp eax, 2
	jl invalid_parallelogram_width

	; Checks if value is greater than 9
	cmp eax, 9
	jg invalid_parallelogram_width

	mov [parallelogram_width], al				; Store validate width into variable

	xor edi, edi						; Clear EDI for spacing counter
	movzx ecx, byte [parallelogram_height]			; Load height as counter into ECX

print_parallelogram_row:
	push ecx						; Save height counter
	push edi						; Save space counter
	mov ecx, edi						; Assign EDI to ECX for space printing
	call print_parallelogram_spaces				; Call space printing function

	; Set magenta color
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, magenta_color					; Pointer to the ANSI escape sequence string for magenta color
	mov edx, magenta_color_len				; Length of the escape code
	int 0x80						; Execute the system call

	; Print hashtag
	movzx ecx, byte [parallelogram_width]			; Load width as counter into ECX
	call print_parallelogram_hashtags			; Call print hashtags function

	; Reset color
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, reset_color					; Pointer to ANSI escape sequence string for resetting color
	mov edx, reset_color_len				; Length of escape code
	int 0x80						; Execute the system call

	call print_parallelogram_newline			; Call print newline function

	pop edi							; Restore spacing counter
	inc edi							; Increase spacing counter by 1
	pop ecx							; Restore height counter
	dec ecx							; Decrease row count
	jnz print_parallelogram_row				; Loop if more rows to print

	jmp parallelogram_height_loop				; Jump to prompt user for height again

; Print spaces
print_parallelogram_spaces:
	push ecx						; Save current space count

parallelogram_spaces_loop:
	; Exit loop when all spaces are printed
	cmp ecx, 0
	je done_parallelogram_spaces

	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, space						; Address of space character
	mov edx, 1						; Length of space character
	int 0x80						; Execute the system call

	pop ecx							; Restore current space counter
	dec ecx							; Decrease space count
	push ecx						; Save updated space count

	jmp parallelogram_spaces_loop				; Continue to loop until all spaces are printed

done_parallelogram_spaces:
	pop ecx							; Restore ECX after loop
	ret							; Return to caller

; Print hashtags
print_parallelogram_hashtags:
	push ecx						; Save current hashtag count

parallelogram_hashtags_loop:
	; Exit when all hashtags are printed
	cmp ecx, 0
	je done_parallelogram_hashtags

	mov eax, 4						; Sys_write
	mov ebx, 1						; file descriptor for stdout
	mov ecx, hashtag					; Address of hashtag character
	mov edx, 1						; Length of hashtag character
	int 0x80						; Execute the system call

	pop ecx							; Restore current hashtag count
	dec ecx							; Decrease hashtag count
	push ecx						; Save updated count

	jmp parallelogram_hashtags_loop				; Continue to print until all hashtag are printed

done_parallelogram_hashtags:
	pop ecx							; Restore ECX after loop
	ret							; Return to caller

print_parallelogram_newline:
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, newline					; Address of newline character
	mov edx, 1						; Length of newline character
	int 0x80						; Execute the system call

	ret							; Return to caller

; Convert ASCII value to integer
convert_parallelogram_input:
	mov al, [esi]						; Load first character

	; Checks if it's a newline character
	cmp al, 10
	je invalid_parallelogram_input

	xor eax, eax						; Clear EAX to build integer result
	xor ecx, ecx						; ECX counts number of digits

parallelogram_conversion_loop:
	mov bl, [esi]						; Load next character from input

	; Checks if it's a newline character
	cmp bl, 10
	je parallelogram_done_converting

	; Check if it's a null terminator
	cmp bl, 0
	je parallelogram_done_converting

	; Checks if value is lesser then 0
	cmp bl, '0'
	jl invalid_parallelogram_input

	; Checks if value is greater than 9
	cmp bl, '9'
	jg invalid_parallelogram_input

	sub bl, '0'						; Convert ASCII to numeric form
	imul eax, eax, 10					; Multiply result by 10
	add eax, ebx						; Add current digit to result
	inc esi							; Move to next character
	inc ecx							; Increase digit count

	; Checks if input is more than 2 digit
	cmp ecx, 2
	jg invalid_parallelogram_input

	jmp parallelogram_conversion_loop			; Loop back and process next character

invalid_parallelogram_input:
	mov eax, -1						; Set return value to -1 if invalid input

parallelogram_done_converting:
	ret							; Return to caller

invalid_parallelogram_height:
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, error_msg					; Address of error message
	mov edx, error_msg_len					; Length of error message
	int 0x80						; Execute the system call

	jmp parallelogram_height_loop				; Prompt user again for another height

invalid_parallelogram_width:
	mov eax, 4						; Sys_write
	mov ebx, 1						; File descriptor for stdout
	mov ecx, error_msg					; Address of error message
	mov edx, error_msg_len					; Length of error message
	int 0x80						; Execute the system call

	jmp parallelogram_width_loop				; Prompt user again for another width

; Go back to main menu
end_print_parallelogram:
	jmp main_loop


; 11th Shape (Hourglass)
eleventh_shape:
prompt_hourglass_loop:
    ; Prompt user
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt_hourglass_size
    mov edx, prompt_hourglass_size_len
    int 0x80

    ; Read input
    mov eax, 3
    mov ebx, 0
    mov ecx, hourglass_input_buf
    mov edx, 4
    int 0x80

    ; Convert char to number
    movzx eax, byte [hourglass_input_buf]
    sub eax, '0'
    cmp eax, 0
    je end_print_hourglass
    cmp eax, 2
    jl invalid_input_hourglass
    cmp eax, 9
    jg invalid_input_hourglass
    mov [hourglass_size_input], al
    movzx esi, al

    ; Top Half
    xor ebx, ebx
hourglass_top_loop:
    cmp ebx, esi
    jge hourglass_bottom_loop
    mov ecx, ebx
    call print_hourglass_spaces
    mov eax, esi
    sub eax, ebx
    shl eax, 1
    dec eax
    mov edi, eax
    call print_percents
    call print_newline
    inc ebx
    jmp hourglass_top_loop

hourglass_bottom_loop:
    mov ebx, esi
    sub ebx, 2
hourglass_bottom_loop_iter:
    cmp ebx, 0
    jl prompt_hourglass_loop
    mov ecx, ebx
    call print_hourglass_spaces
    mov eax, esi
    sub eax, ebx
    shl eax, 1
    dec eax
    mov edi, eax
    call print_percents
    call print_newline
    dec ebx
    jmp hourglass_bottom_loop_iter

invalid_input_hourglass:
    mov eax, 4
    mov ebx, 1
    mov ecx, error_msg
    mov edx, error_msg_len
    int 0x80
    jmp prompt_hourglass_loop

; Go back to main menu
end_print_hourglass:
    jmp main_loop

; === Subroutines ===

print_hourglass_spaces:
    pusha
.space_loop:
    cmp ecx, 0
    jle .done
    push ecx
    mov eax, 4
    mov ebx, 1
    mov ecx, space
    mov edx, 1
    int 0x80
    pop ecx
    dec ecx
    jmp .space_loop
.done:
    popa
    ret

print_percents:
    pusha
    ; Color on
    mov eax, 4
    mov ebx, 1
    mov ecx, brown_color
    mov edx, 5
    int 0x80

    mov ecx, edi
.percent_loop:
    cmp ecx, 0
    jle .color_reset
    push ecx
    mov eax, 4
    mov ebx, 1
    mov ecx, percent
    mov edx, 1
    int 0x80
    pop ecx
    dec ecx
    jmp .percent_loop

.color_reset:
    mov eax, 4
    mov ebx, 1
    mov ecx, reset_color
    mov edx, 4
    int 0x80
    popa
    ret

print_newline:
    pusha
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80
    popa
    ret


; 12th Shape (Octagon)
twelfth_shape:
octagon.loop:
    ;–– Print prompt to stdout ––
    mov   eax, 4            ; sys_write
    mov   ebx, 1            ; file descriptor: stdout
    mov   ecx, octagon_prompt       ; address of prompt message
    mov   edx, octagon_prompt_len   ; length of prompt
    int   0x80

    ;–– Read up to 4 bytes from stdin into buf ––
    mov   eax, 3            ; sys_read
    mov   ebx, 0            ; file descriptor: stdin
    mov   ecx, octagon_buf          ; buffer address
    mov   edx, 4            ; max bytes to read
    int   0x80

    ;–– Convert ASCII digit to integer in EAX ––
    movzx eax, byte [octagon_buf]   ; load first byte
    sub   eax, '0'          ; convert ASCII '0'–'9' to 0–9

    ;–– Exit if user entered 0 ––
    cmp   eax, 0
    je    octagon.exit_prog

    ;–– Validate range 2–9 ––
    cmp   eax, 2
    jl    octagon.invalid
    cmp   eax, 9
    jg    octagon.invalid

    ;–– Store valid size and draw octagon ––
    mov   [octagon_size], al        ; save size (0–255)
    movzx ecx, byte [octagon_size]  ; ECX = n

    ;── Top trapezoid: for i = 0 to n-1 ────────────────────
    xor   edx, edx          ; EDX = i = 0
octagon.top:
    cmp   edx, ecx
    je    octagon.rect             ; if i == n, skip to middle
    mov   edi, ecx
    sub   edi, edx          ; spaces = n - i
    call  octagon_print_spaces
    mov   eax, ecx
    add   eax, edx
    add   eax, edx          ; carets = n + 2*i
    call  octagon_print_carets
    call  octagon_print_nl
    inc   edx               ; i++
    jmp   octagon.top

    ;── Middle vertical sides: repeat n times ─────────────
octagon.rect:
    mov   edx, ecx          ; repeat count = n
octagon.middle:
    mov   edi, 1            ; one leading space
    call  octagon_print_spaces
    mov   eax, ecx
    add   eax, ecx
    add   eax, ecx
    sub   eax, 2            ; carets = 3*n - 2
    call  octagon_print_carets
    call  octagon_print_nl
    dec   edx               ; count--
    jnz   octagon.middle

    ;── Bottom trapezoid: for i = n-1 down to 0 ──────────
    mov   edx, ecx
    dec   edx               ; start at n-1
octagon.bottom:
    cmp   edx, -1
    je    octagon.done_draw        ; if i < 0, done
    mov   edi, ecx
    sub   edi, edx          ; spaces = n - i
    call  octagon_print_spaces
    mov   eax, ecx
    add   eax, edx
    add   eax, edx          ; carets = n + 2*i
    call  octagon_print_carets
    call  octagon_print_nl
    dec   edx               ; i--
    jmp   octagon.bottom

octagon.done_draw:
    jmp   octagon.loop             ; prompt again

octagon.invalid:
    ;–– Print invalid message and retry ––
    mov   eax, 4
    mov   ebx, 1
    mov   ecx, error_msg
    mov   edx, error_msg_len
    int   0x80
    jmp   octagon.loop

; Go back to main menu
octagon.exit_prog:
	jmp main_loop
;────────────────────────────────────────────────────────────────
; Helper: octagon_print_spaces
; Prints EDI spaces. Preserves ECX, EDX, EBX.
octagon_print_spaces:
    push  edx
    push  ecx
    push  ebx

octagon.sp_loop:
    test  edi, edi
    jz    octagon.sp_done
    mov   eax, 4            ; sys_write
    mov   ebx, 1            ; stdout
    mov   ecx, space
    mov   edx, 1
    int   0x80
    dec   edi
    jmp   octagon.sp_loop
octagon.sp_done:

    pop   ebx
    pop   ecx
    pop   edx
    ret

;────────────────────────────────────────────────────────────────
; Helper: octagon_print_carets
; Prints EAX carets (^) in dark gray. Preserves ECX, EDX, EBX.
octagon_print_carets:
    push  edx
    push  ecx
    push  ebx

    mov   edi, eax          ; EDI = loop counter

    ; set dark-gray color
    mov   eax, 4
    mov   ebx, 1
    mov   ecx, dark_gray
    mov   edx, 5
    int   0x80

octagon.pc_loop:
    cmp   edi, 0
    je    octagon.pc_done
    mov   eax, 4            ; sys_write
    mov   ebx, 1
    mov   ecx, caret
    mov   edx, 1
    int   0x80
    dec   edi
    jmp   octagon.pc_loop

octagon.pc_done:
    ; reset to default color
    mov   eax, 4
    mov   ebx, 1
    mov   ecx, reset_color
    mov   edx, 4
    int   0x80

    pop   ebx
    pop   ecx
    pop   edx
    ret

;────────────────────────────────────────────────────────────────
; Helper: octagon_print_nl
; Emits one newline. Preserves ECX, EDX, EBX.
octagon_print_nl:
    push  edx
    push  ecx
    push  ebx

    mov   eax, 4            ; sys_write
    mov   ebx, 1            ; stdout
    mov   ecx, newline
    mov   edx, 1
    int   0x80

    pop   ebx
    pop   ecx
    pop   edx
    ret


; Invalid input
invalid_input:
	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, error_msg				; Address of error message
	mov edx, error_msg_len				; Length of error msg
	int 0x80					; Execute the system call

	; Go back to main menu
	jmp main_loop


; Exit Program
exit_program:
	mov eax, 4					; Sys_write
	mov ebx, 1					; File descriptor for stdout
	mov ecx, thank					; Address of thank you message
	mov edx, thank_len				; Length of thank you message
	int 0x80					; Execute the sustem call

	mov eax, 1					; Sys_exit
	xor ebx, ebx					; return code 0
	int 0x80					; Execute the system call
