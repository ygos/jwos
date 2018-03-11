data segment
        num db 12;需要显示的10进制数
data ends
code segment
        assume cs:code,ds:data
main proc far
start:
        mov ax,data
        mov ds,ax
        mov al,num
        mov ah,0
        div 10       ;12除以10
        mov dl,al    ;显示十位
        mov ah,02h
        int 21h
        mov dl,ah    ;显示个位
        mov ah,02h
        int 21h
        mov ah,4ch   ;结束程序
        int 21h
        ret
main endp
code ends
        end start
