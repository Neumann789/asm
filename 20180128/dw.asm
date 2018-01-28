assume cs:codesg
codesg segment
	dw 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h
	start:
		mov bx,0
		mov ax,0
		mov cx,8
		s:	add ax,cs:[bx] ;cs:[bx] 可以用来取dw定义的数据
	   		add bx,2
	   	loop s
	   	
	   	;退出程序
	   	mov ax,4c00h
	   	int 21h
	   	
codesg ends
end start
