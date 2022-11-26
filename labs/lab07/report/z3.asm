%include 'in_out.asm'
SECTION .data
div: DB 'y=(8x-6)/2',0
msg: DB 'Введите x: ',0
rem: DB 'Ваш результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax,div
call sprintLF
mov eax, msg
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`
mov ebx,8
mul ebx
sub eax,6
xor edx,edx
mov ebx,2
div ebx
mov edi,eax
mov eax,rem
call sprint
mov eax,edi
call iprintLF
call quit