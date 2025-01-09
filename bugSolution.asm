mov ecx, [some_buffer_size]
mov edx, ecx
sub edx, 1 ;Check if ecx is within bounds
jc overflow_error ; jump to error handling if ecx is negative
mov eax, [ebx+ecx*4] ; potential buffer overflow if ecx is too large.  However, the error is checked before this instruction

; Repeat the bounds check for the second example
mov ecx, [some_buffer_size]
mov edx, ecx
sub edx, 1 ;Check if ecx is within bounds
jc overflow_error ; jump to error handling if ecx is negative
mov eax, [ebx+ecx*8] ; potential buffer overflow if ecx is too large. However, the error is checked before this instruction

; ...rest of code...

; Error handling routine
overflow_error:
; Handle the error appropriately (e.g., return an error code, terminate the program, etc.)
mov eax, -1; Or some other error code
ret