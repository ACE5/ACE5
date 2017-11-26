opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 6 "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	dw 0x3FFA & 0x3FF7 & 0x3FEF & 0x3FFF & 0x3FFF & 0x3FFF & 0x3CFF & 0x3BFF & 0x37FF & 0x2FFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay_ms
	FNCALL	_main,_BH1750_write
	FNCALL	_main,_xu_ly_lux
	FNCALL	_main,_nhiet_do
	FNCALL	_main,_send_nhietdo
	FNCALL	_main,_send_lux
	FNCALL	_main,_send_error
	FNCALL	_main,_receive_pid
	FNCALL	_xu_ly_lux,_lcd_gotoxy
	FNCALL	_xu_ly_lux,_lcd_puts
	FNCALL	_xu_ly_lux,_lcd_putc
	FNCALL	_xu_ly_lux,_delay_ms
	FNCALL	_xu_ly_lux,___ftdiv
	FNCALL	_xu_ly_lux,___fttol
	FNCALL	_xu_ly_lux,___awdiv
	FNCALL	_xu_ly_lux,___awmod
	FNCALL	_xu_ly_lux,___awtoft
	FNCALL	_xu_ly_lux,___ftneg
	FNCALL	_xu_ly_lux,___ftadd
	FNCALL	_xu_ly_lux,___ftmul
	FNCALL	_nhiet_do,_delay_ms
	FNCALL	_nhiet_do,___wmul
	FNCALL	_nhiet_do,___awtoft
	FNCALL	_nhiet_do,___ftdiv
	FNCALL	_nhiet_do,___fttol
	FNCALL	_nhiet_do,___awdiv
	FNCALL	_nhiet_do,___awmod
	FNCALL	_nhiet_do,_lcd_gotoxy
	FNCALL	_nhiet_do,_lcd_puts
	FNCALL	_nhiet_do,_lcd_putc
	FNCALL	_nhiet_do,___ftneg
	FNCALL	_nhiet_do,___ftadd
	FNCALL	_nhiet_do,___ftmul
	FNCALL	_lcd_puts,_lcd_putc
	FNCALL	_lcd_putc,_lcd_put_byte
	FNCALL	_lcd_putc,_lcd_busy
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_isprint
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	_send_error,___ftge
	FNCALL	_send_error,___awtoft
	FNCALL	_send_error,___ftneg
	FNCALL	_send_error,___ftadd
	FNCALL	_send_error,___ftmul
	FNCALL	_send_error,___fttol
	FNCALL	_send_error,___awdiv
	FNCALL	_send_error,___awmod
	FNCALL	_send_error,_uart_tx
	FNCALL	_send_error,_delay_ms
	FNCALL	_receive_pid,___lbtoft
	FNCALL	_receive_pid,___ftdiv
	FNCALL	_receive_pid,___wmul
	FNCALL	_receive_pid,_delay_ms
	FNCALL	_send_lux,___ftmul
	FNCALL	_send_lux,___fttol
	FNCALL	_send_lux,___awdiv
	FNCALL	_send_lux,___awmod
	FNCALL	_send_lux,_uart_tx
	FNCALL	_send_lux,_delay_ms
	FNCALL	_send_nhietdo,___ftmul
	FNCALL	_send_nhietdo,___fttol
	FNCALL	_send_nhietdo,___awdiv
	FNCALL	_send_nhietdo,___awmod
	FNCALL	_send_nhietdo,_uart_tx
	FNCALL	_send_nhietdo,_delay_ms
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_BH1750_write,_I2C_start
	FNCALL	_BH1750_write,_I2C_write
	FNCALL	_BH1750_write,_I2C_stop
	FNCALL	___awtoft,___ftpack
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_I2C_write,_i2c_dly
	FNCALL	_I2C_stop,_i2c_dly
	FNCALL	_I2C_start,_i2c_dly
	FNROOT	_main
	FNCALL	_uart_isr,_BH1750_read
	FNCALL	_uart_isr,_pid
	FNCALL	_pid,i1___ftneg
	FNCALL	_pid,i1___awtoft
	FNCALL	_pid,i1___ftadd
	FNCALL	_pid,i1___ftmul
	FNCALL	_pid,i1___fttol
	FNCALL	_pid,i1___ftdiv
	FNCALL	_BH1750_read,i1_I2C_start
	FNCALL	_BH1750_read,i1_I2C_write
	FNCALL	_BH1750_read,_I2C_read
	FNCALL	_BH1750_read,i1_I2C_stop
	FNCALL	_BH1750_read,i1___awtoft
	FNCALL	_BH1750_read,i1___ftdiv
	FNCALL	i1___awtoft,i1___ftpack
	FNCALL	i1___ftmul,i1___ftpack
	FNCALL	i1___ftdiv,i1___ftpack
	FNCALL	i1___ftadd,i1___ftpack
	FNCALL	i1_I2C_write,i1_i2c_dly
	FNCALL	i1_I2C_stop,i1_i2c_dly
	FNCALL	i1_I2C_start,i1_i2c_dly
	FNCALL	_I2C_read,i1_i2c_dly
	FNCALL	intlevel1,_uart_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_err
	global	_chuclux
	global	_dvilux
	global	_nghinlux
	global	_save
	global	_tramlux
	global	I2C_write@b
	global	_check
	global	_dosang
	global	_kd1
	global	_ki1
	global	_kp1
	global	_nhietdo
	global	_flux2
	global	_fnt1
	global	_fnt2
	global	_k
	global	_kp5
	global	_kq2
	global	_kqkd
	global	_kqki
	global	_kqkp
	global	_lux_set
	global	_m
	global	_n
	global	_nhietdo1
	global	_output
	global	_pre_err
	global	_temp
	global	_value
	global	_value3
	global	_c
	global	_check1
	global	_chuc
	global	_chuc1
	global	_chuc2
	global	_dosang1
	global	_dvi
	global	_dvi2
	global	_nghin
	global	_nghin1
	global	_nt1
	global	_nt2
	global	_tram
	global	_tram1
	global	_value1
	global	_flux1
	global	_value2
	global	_biennt1
	global	_biennt2
	global	_dvi1
	global	_kq
	global	_ADRESH
psect	text1100,local,class=CODE,delta=2
global __ptext1100
__ptext1100:
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_PORTC
_PORTC	set	7
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T2CON
_T2CON	set	18
	global	_TMR0
_TMR0	set	1
	global	_TXREG
_TXREG	set	25
	global	_ADCS0
_ADCS0	set	254
	global	_ADCS1
_ADCS1	set	255
	global	_ADON
_ADON	set	248
	global	_CHS0
_CHS0	set	250
	global	_CHS1
_CHS1	set	251
	global	_CHS2
_CHS2	set	252
	global	_CHS3
_CHS3	set	253
	global	_GIE
_GIE	set	95
	global	_GODONE
_GODONE	set	249
	global	_PEIE
_PEIE	set	94
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RCIF
_RCIF	set	101
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_TMR2ON
_TMR2ON	set	146
	global	_TXIF
_TXIF	set	100
	global	_ADRESL
_ADRESL	set	158
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
	global	_TXSTA
_TXSTA	set	152
	global	_ADFM
_ADFM	set	1279
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_T0CS
_T0CS	set	1037
	global	_T0SE
_T0SE	set	1036
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISD1
_TRISD1	set	1089
	global	_TRISD2
_TRISD2	set	1090
	global	_TRISD3
_TRISD3	set	1091
	global	_TRISD4
_TRISD4	set	1092
	global	_TRISD5
_TRISD5	set	1093
	global	_TRISD6
_TRISD6	set	1094
	global	_TRISD7
_TRISD7	set	1095
	global	_VCFG0
_VCFG0	set	1276
	global	_VCFG1
_VCFG1	set	1277
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_ANS2
_ANS2	set	3138
	global	_BRG16
_BRG16	set	3131
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	110	;'n'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	120	;'x'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"led1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssBANK0,class=BANK0,bit,space=1
global __pbitbssBANK0
__pbitbssBANK0:
I2C_write@b:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_err:
       ds      3

_chuclux:
       ds      1

_dvilux:
       ds      1

_nghinlux:
       ds      1

_save:
       ds      1

_tramlux:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_value1:
       ds      3

_flux1:
       ds      2

_value2:
       ds      2

_biennt1:
       ds      1

_biennt2:
       ds      1

_dvi1:
       ds      1

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_check:
       ds      10

_dosang:
       ds      3

_kd1:
       ds      3

_ki1:
       ds      3

_kp1:
       ds      3

_nhietdo:
       ds      3

_flux2:
       ds      2

_fnt1:
       ds      2

_fnt2:
       ds      2

_k:
       ds      2

_kp5:
       ds      2

_kq2:
       ds      2

_kqkd:
       ds      2

_kqki:
       ds      2

_kqkp:
       ds      2

_lux_set:
       ds      2

_m:
       ds      2

_n:
       ds      2

_nhietdo1:
       ds      2

_output:
       ds      2

_pre_err:
       ds      2

_temp:
       ds      2

_value:
       ds      2

_value3:
       ds      2

_c:
       ds      1

_check1:
       ds      1

_chuc:
       ds      1

_chuc1:
       ds      1

_chuc2:
       ds      1

_dosang1:
       ds      1

_dvi:
       ds      1

_dvi2:
       ds      1

_nghin:
       ds      1

_nghin1:
       ds      1

_nt1:
       ds      1

_nt2:
       ds      1

_tram:
       ds      1

_tram1:
       ds      1

_kq:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssBANK0/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+08h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+0Ah)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+04Dh)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x0
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x0
	global	??_isprint
??_isprint:	; 0 bytes @ 0x0
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x0
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x0
	global	??_i2c_dly
??_i2c_dly:	; 0 bytes @ 0x0
	global	??_I2C_start
??_I2C_start:	; 0 bytes @ 0x0
	global	??_I2C_stop
??_I2C_stop:	; 0 bytes @ 0x0
	global	??_I2C_write
??_I2C_write:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	uart_tx@data
uart_tx@data:	; 1 bytes @ 0x0
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x0
	global	_isprint$1091
_isprint$1091:	; 1 bytes @ 0x0
	global	delay_ms@x
delay_ms@x:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x1
	global	I2C_write@d
I2C_write@d:	; 1 bytes @ 0x1
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x1
	global	isprint@c
isprint@c:	; 1 bytes @ 0x1
	ds	1
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x2
	global	I2C_write@x
I2C_write@x:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	?_BH1750_write
?_BH1750_write:	; 0 bytes @ 0x3
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??_BH1750_write
??_BH1750_write:	; 0 bytes @ 0x5
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x5
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x8
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x8
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x8
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x8
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x9
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	ds	1
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0xA
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0xB
	global	??___lbtoft
??___lbtoft:	; 0 bytes @ 0xB
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xB
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0xB
	global	?___fttol
?___fttol:	; 4 bytes @ 0xB
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0xB
	ds	1
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0xC
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xC
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xD
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xE
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0xF
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0xF
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x13
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x14
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x18
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x19
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x19
	ds	3
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x1C
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x1E
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1F
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1F
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1F
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1F
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x22
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x22
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x25
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x25
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x29
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x29
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2A
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x2A
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2B
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x2C
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x2C
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x2D
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x2E
	ds	1
	global	??_receive_pid
??_receive_pid:	; 0 bytes @ 0x2F
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x2F
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x32
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x36
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x37
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x3A
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x3B
	ds	1
	global	??_nhiet_do
??_nhiet_do:	; 0 bytes @ 0x3C
	global	??_xu_ly_lux
??_xu_ly_lux:	; 0 bytes @ 0x3C
	global	??_send_nhietdo
??_send_nhietdo:	; 0 bytes @ 0x3C
	global	??_send_lux
??_send_lux:	; 0 bytes @ 0x3C
	global	??_send_error
??_send_error:	; 0 bytes @ 0x3C
	ds	1
	global	_xu_ly_lux$1515
_xu_ly_lux$1515:	; 2 bytes @ 0x3D
	global	_send_lux$1516
_send_lux$1516:	; 2 bytes @ 0x3D
	global	_send_error$1517
_send_error$1517:	; 2 bytes @ 0x3D
	ds	2
	global	send_error@nghiner
send_error@nghiner:	; 1 bytes @ 0x3F
	ds	1
	global	send_error@tramer
send_error@tramer:	; 1 bytes @ 0x40
	ds	1
	global	send_error@chucer
send_error@chucer:	; 1 bytes @ 0x41
	ds	1
	global	send_error@dvier
send_error@dvier:	; 1 bytes @ 0x42
	ds	1
	global	send_error@berr
send_error@berr:	; 2 bytes @ 0x43
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x45
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_pid
?_pid:	; 0 bytes @ 0x0
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x0
	global	?_lcd_putc
?_lcd_putc:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_isprint
?_isprint:	; 1 bit 
	global	?_uart_tx
?_uart_tx:	; 0 bytes @ 0x0
	global	?_uart_isr
?_uart_isr:	; 0 bytes @ 0x0
	global	?_i2c_dly
?_i2c_dly:	; 0 bytes @ 0x0
	global	?_I2C_start
?_I2C_start:	; 0 bytes @ 0x0
	global	?_I2C_stop
?_I2C_stop:	; 0 bytes @ 0x0
	global	??_I2C_read
??_I2C_read:	; 0 bytes @ 0x0
	global	?_I2C_write
?_I2C_write:	; 1 bit 
	global	?_nhiet_do
?_nhiet_do:	; 0 bytes @ 0x0
	global	?_xu_ly_lux
?_xu_ly_lux:	; 0 bytes @ 0x0
	global	?_send_nhietdo
?_send_nhietdo:	; 0 bytes @ 0x0
	global	?_send_lux
?_send_lux:	; 0 bytes @ 0x0
	global	?_receive_pid
?_receive_pid:	; 0 bytes @ 0x0
	global	?_send_error
?_send_error:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?i1_i2c_dly
?i1_i2c_dly:	; 0 bytes @ 0x0
	global	??i1_i2c_dly
??i1_i2c_dly:	; 0 bytes @ 0x0
	global	?i1_I2C_start
?i1_I2C_start:	; 0 bytes @ 0x0
	global	??i1_I2C_start
??i1_I2C_start:	; 0 bytes @ 0x0
	global	?i1_I2C_stop
?i1_I2C_stop:	; 0 bytes @ 0x0
	global	??i1_I2C_stop
??i1_I2C_stop:	; 0 bytes @ 0x0
	global	?i1_I2C_write
?i1_I2C_write:	; 1 bit 
	global	??i1_I2C_write
??i1_I2C_write:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	global	?_I2C_read
?_I2C_read:	; 1 bytes @ 0x0
	global	?i1___ftpack
?i1___ftpack:	; 3 bytes @ 0x0
	global	?_BH1750_read
?_BH1750_read:	; 4 bytes @ 0x0
	global	i1___ftpack@arg
i1___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	I2C_read@ack
I2C_read@ack:	; 1 bytes @ 0x1
	global	i1I2C_write@d
i1I2C_write@d:	; 1 bytes @ 0x1
	ds	1
	global	I2C_read@d
I2C_read@d:	; 1 bytes @ 0x2
	global	i1I2C_write@x
i1I2C_write@x:	; 1 bytes @ 0x2
	ds	1
	global	I2C_read@x
I2C_read@x:	; 1 bytes @ 0x3
	global	i1___ftpack@exp
i1___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	i1___ftpack@sign
i1___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??i1___ftpack
??i1___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	?i1___ftneg
?i1___ftneg:	; 3 bytes @ 0x8
	global	i1___ftneg@f1
i1___ftneg@f1:	; 3 bytes @ 0x8
	ds	3
	global	??i1___awtoft
??i1___awtoft:	; 0 bytes @ 0xB
	global	??i1___ftneg
??i1___ftneg:	; 0 bytes @ 0xB
	ds	2
	global	i1___awtoft@sign
i1___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?i1___fttol
?i1___fttol:	; 4 bytes @ 0x0
	global	i1___fttol@f1
i1___fttol@f1:	; 3 bytes @ 0x0
	ds	4
	global	??i1___fttol
??i1___fttol:	; 0 bytes @ 0x4
	ds	4
	global	i1___fttol@sign1
i1___fttol@sign1:	; 1 bytes @ 0x8
	ds	1
	global	i1___fttol@lval
i1___fttol@lval:	; 4 bytes @ 0x9
	ds	4
	global	i1___fttol@exp1
i1___fttol@exp1:	; 1 bytes @ 0xD
	ds	1
	global	?i1___awtoft
?i1___awtoft:	; 3 bytes @ 0xE
	global	i1___awtoft@c
i1___awtoft@c:	; 2 bytes @ 0xE
	ds	3
	global	?i1___ftadd
?i1___ftadd:	; 3 bytes @ 0x11
	global	i1___ftadd@f1
i1___ftadd@f1:	; 3 bytes @ 0x11
	ds	3
	global	i1___ftadd@f2
i1___ftadd@f2:	; 3 bytes @ 0x14
	ds	3
	global	??i1___ftadd
??i1___ftadd:	; 0 bytes @ 0x17
	ds	4
	global	i1___ftadd@sign
i1___ftadd@sign:	; 1 bytes @ 0x1B
	ds	1
	global	i1___ftadd@exp2
i1___ftadd@exp2:	; 1 bytes @ 0x1C
	ds	1
	global	i1___ftadd@exp1
i1___ftadd@exp1:	; 1 bytes @ 0x1D
	ds	1
	global	?i1___ftmul
?i1___ftmul:	; 3 bytes @ 0x1E
	global	i1___ftmul@f1
i1___ftmul@f1:	; 3 bytes @ 0x1E
	ds	3
	global	i1___ftmul@f2
i1___ftmul@f2:	; 3 bytes @ 0x21
	ds	3
	global	??i1___ftmul
??i1___ftmul:	; 0 bytes @ 0x24
	ds	4
	global	i1___ftmul@exp
i1___ftmul@exp:	; 1 bytes @ 0x28
	ds	1
	global	i1___ftmul@f3_as_product
i1___ftmul@f3_as_product:	; 3 bytes @ 0x29
	ds	3
	global	i1___ftmul@cntr
i1___ftmul@cntr:	; 1 bytes @ 0x2C
	ds	1
	global	i1___ftmul@sign
i1___ftmul@sign:	; 1 bytes @ 0x2D
	ds	1
	global	?i1___ftdiv
?i1___ftdiv:	; 3 bytes @ 0x2E
	global	i1___ftdiv@f2
i1___ftdiv@f2:	; 3 bytes @ 0x2E
	ds	3
	global	i1___ftdiv@f1
i1___ftdiv@f1:	; 3 bytes @ 0x31
	ds	3
	global	??i1___ftdiv
??i1___ftdiv:	; 0 bytes @ 0x34
	ds	4
	global	i1___ftdiv@cntr
i1___ftdiv@cntr:	; 1 bytes @ 0x38
	ds	1
	global	i1___ftdiv@f3
i1___ftdiv@f3:	; 3 bytes @ 0x39
	ds	3
	global	i1___ftdiv@exp
i1___ftdiv@exp:	; 1 bytes @ 0x3C
	ds	1
	global	i1___ftdiv@sign
i1___ftdiv@sign:	; 1 bytes @ 0x3D
	ds	1
	global	??_BH1750_read
??_BH1750_read:	; 0 bytes @ 0x3E
	global	??_pid
??_pid:	; 0 bytes @ 0x3E
	ds	2
	global	BH1750_read@lb
BH1750_read@lb:	; 1 bytes @ 0x40
	ds	1
	global	BH1750_read@hb
BH1750_read@hb:	; 1 bytes @ 0x41
	ds	1
	global	??_uart_isr
??_uart_isr:	; 0 bytes @ 0x42
	ds	5
;;Data sizes: Strings 16, constant 0, data 0, bss 95, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     71      80
;; BANK1           80     70      80
;; BANK3           96      0      77
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___ftpack	float  size(1) Largest target is 2
;;		 -> kq(BANK3[2]), 
;;
;; ?i1___fttol	long  size(1) Largest target is 0
;;
;; ?i1___ftmul	float  size(1) Largest target is 0
;;
;; ?i1___ftadd	float  size(1) Largest target is 2
;;		 -> kq(BANK3[2]), 
;;
;; ?i1___ftneg	float  size(1) Largest target is 0
;;
;; ?i1___ftdiv	float  size(1) Largest target is 0
;;
;; ?i1___awtoft	float  size(1) Largest target is 0
;;
;; ?___lbtoft	float  size(1) Largest target is 0
;;
;; ?___ftpack	float  size(1) Largest target is 2
;;		 -> kq(BANK3[2]), 
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 2
;;		 -> kq(BANK3[2]), 
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 2
;;		 -> kq(BANK3[2]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_2(CODE[6]), STR_1(CODE[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _uart_isr in COMMON
;;
;;   _pid->i1___awtoft
;;   _BH1750_read->i1___awtoft
;;   i1___awtoft->i1___ftneg
;;   i1___ftmul->i1___awtoft
;;   i1___ftdiv->i1___awtoft
;;   i1___ftadd->i1___awtoft
;;   i1___ftneg->i1___ftpack
;;   i1___fttol->i1___ftneg
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _uart_isr in BANK0
;;
;;   _uart_isr->_BH1750_read
;;   _pid->i1___ftdiv
;;   _BH1750_read->i1___ftdiv
;;   i1___awtoft->i1___fttol
;;   i1___ftmul->i1___ftadd
;;   i1___ftdiv->i1___ftmul
;;   i1___ftadd->i1___awtoft
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_send_error
;;   _xu_ly_lux->___ftmul
;;   _nhiet_do->___ftmul
;;   _lcd_puts->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _lcd_init->_lcd_put_byte
;;   _send_error->___ftmul
;;   _receive_pid->___ftdiv
;;   _send_lux->___ftmul
;;   _send_nhietdo->___ftmul
;;   _lcd_gotoxy->_lcd_put_byte
;;   _BH1750_write->_I2C_write
;;   ___awtoft->___fttol
;;   ___lbtoft->___ftpack
;;   ___ftmul->___ftadd
;;   ___ftdiv->___awtoft
;;   ___ftadd->___awtoft
;;   ___ftneg->___ftpack
;;   ___awdiv->___awmod
;;   ___fttol->___ftneg
;;
;; Critical Paths under _uart_isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _uart_isr in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _uart_isr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0   17524
;;                                             69 BANK1      1     1      0
;;                           _lcd_init
;;                           _delay_ms
;;                       _BH1750_write
;;                          _xu_ly_lux
;;                           _nhiet_do
;;                       _send_nhietdo
;;                           _send_lux
;;                         _send_error
;;                        _receive_pid
;; ---------------------------------------------------------------------------------
;; (1) _xu_ly_lux                                            3     3      0    5075
;;                                             60 BANK1      3     3      0
;;                         _lcd_gotoxy
;;                           _lcd_puts
;;                           _lcd_putc
;;                           _delay_ms
;;                            ___ftdiv
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                           ___awtoft
;;                            ___ftneg
;;                            ___ftadd
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (1) _nhiet_do                                             2     2      0    5144
;;                                             60 BANK1      2     2      0
;;                           _delay_ms
;;                             ___wmul
;;                           ___awtoft
;;                            ___ftdiv
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                         _lcd_gotoxy
;;                           _lcd_puts
;;                           _lcd_putc
;;                            ___ftneg
;;                            ___ftadd
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (2) _lcd_puts                                             2     2      0     736
;;                                             11 BANK1      2     2      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (2) _lcd_putc                                             2     2      0     691
;;                                              9 BANK1      2     2      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     244
;;                                              5 BANK1      2     2      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _send_error                                           9     9      0    3185
;;                                             60 BANK1      9     9      0
;;                             ___ftge
;;                           ___awtoft
;;                            ___ftneg
;;                            ___ftadd
;;                            ___ftmul
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                            _uart_tx
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _receive_pid                                         64    64      0     858
;;                                             47 BANK1     12    12      0
;;                           ___lbtoft
;;                            ___ftdiv
;;                             ___wmul
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _send_lux                                             3     3      0    1474
;;                                             60 BANK1      3     3      0
;;                            ___ftmul
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                            _uart_tx
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _send_nhietdo                                         1     1      0    1451
;;                                             60 BANK1      1     1      0
;;                            ___ftmul
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                            _uart_tx
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (3) _lcd_gotoxy                                           4     3      1     313
;;                                              5 BANK1      4     3      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _BH1750_write                                         2     0      2      47
;;                                              3 BANK1      2     0      2
;;                          _I2C_start
;;                          _I2C_write
;;                           _I2C_stop
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                             25 BANK1      6     3      3
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                            ___fttol (ARG)
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lbtoft                                             8     5      3     231
;;                                              8 BANK1      8     5      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                             44 BANK1     16    10      6
;;                           ___ftpack
;;                            ___ftadd (ARG)
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             16    10      6     489
;;                                             31 BANK1     16    10      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                           ___awtoft (ARG)
;;                             ___wmul (ARG)
;;                           ___lbtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             13     7      6    1049
;;                                             31 BANK1     13     7      6
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _lcd_busy                                             2     2      0      23
;;                                              0 BANK1      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _lcd_put_byte                                         5     4      1     221
;;                                              0 BANK1      5     4      1
;; ---------------------------------------------------------------------------------
;; (2) _I2C_write                                            3     3      0      47
;;                                              0 BANK1      3     3      0
;;                            _i2c_dly
;; ---------------------------------------------------------------------------------
;; (2) _I2C_stop                                             0     0      0       0
;;                            _i2c_dly
;; ---------------------------------------------------------------------------------
;; (2) _I2C_start                                            0     0      0       0
;;                            _i2c_dly
;; ---------------------------------------------------------------------------------
;; (2) _delay_ms                                             5     3      2      46
;;                                              0 BANK1      5     3      2
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 BANK1      7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                              12     6      6     136
;;                                              0 BANK1     12     6      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      45
;;                                              8 BANK1      3     0      3
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              7 BANK1      9     5      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             14    10      4     252
;;                                             11 BANK1     14    10      4
;;                           ___ftpack (ARG)
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 BANK1      8     3      5
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 BANK1      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) _isprint                                              2     2      0      68
;;                                              0 BANK1      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _i2c_dly                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _uart_tx                                              1     1      0      22
;;                                              0 BANK1      1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _uart_isr                                             5     5      0   11561
;;                                             66 BANK0      5     5      0
;;                        _BH1750_read
;;                                _pid
;; ---------------------------------------------------------------------------------
;; (7) _pid                                                  2     2      0    8704
;;                                             62 BANK0      2     2      0
;;                          i1___ftneg
;;                         i1___awtoft
;;                          i1___ftadd
;;                          i1___ftmul
;;                          i1___fttol
;;                          i1___ftdiv
;; ---------------------------------------------------------------------------------
;; (7) _BH1750_read                                          4     4      0    2857
;;                                             62 BANK0      4     4      0
;;                        i1_I2C_start
;;                        i1_I2C_write
;;                           _I2C_read
;;                         i1_I2C_stop
;;                         i1___awtoft
;;                          i1___ftdiv
;; ---------------------------------------------------------------------------------
;; (8) i1___awtoft                                           6     3      3     977
;;                                             11 COMMON     3     3      0
;;                                             14 BANK0      3     0      3
;;                         i1___ftpack
;;                          i1___ftneg (ARG)
;;                          i1___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (8) i1___ftmul                                           16    10      6    1737
;;                                             30 BANK0     16    10      6
;;                         i1___ftpack
;;                          i1___fttol (ARG)
;;                          i1___ftadd (ARG)
;;                          i1___ftneg (ARG)
;;                         i1___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (8) i1___ftdiv                                           16    10      6    1587
;;                                             46 BANK0     16    10      6
;;                         i1___ftpack
;;                          i1___ftmul (ARG)
;;                          i1___fttol (ARG)
;;                         i1___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (8) i1___ftadd                                           13     7      6    3432
;;                                             17 BANK0     13     7      6
;;                         i1___ftpack
;;                          i1___ftneg (ARG)
;;                         i1___awtoft (ARG)
;;                          i1___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (8) i1_I2C_write                                          3     3      0     152
;;                                              0 COMMON     3     3      0
;;                          i1_i2c_dly
;; ---------------------------------------------------------------------------------
;; (8) i1_I2C_stop                                           0     0      0       0
;;                          i1_i2c_dly
;; ---------------------------------------------------------------------------------
;; (8) i1_I2C_start                                          0     0      0       0
;;                          i1_i2c_dly
;; ---------------------------------------------------------------------------------
;; (8) _I2C_read                                             4     4      0      93
;;                                              0 COMMON     4     4      0
;;                          i1_i2c_dly
;; ---------------------------------------------------------------------------------
;; (9) i1___ftpack                                           8     3      5     679
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (8) i1___ftneg                                            3     0      3     148
;;                                              8 COMMON     3     0      3
;;                         i1___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (8) i1___fttol                                           14    10      4     823
;;                                              0 BANK0     14    10      4
;;                         i1___ftpack (ARG)
;;                          i1___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (9) i1_i2c_dly                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 9
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_init
;;     _lcd_put_byte
;;     _lcd_busy
;;   _delay_ms
;;   _BH1750_write
;;     _I2C_start
;;       _i2c_dly
;;     _I2C_write
;;       _i2c_dly
;;     _I2C_stop
;;       _i2c_dly
;;   _xu_ly_lux
;;     _lcd_gotoxy
;;       _lcd_put_byte
;;       _lcd_busy
;;     _lcd_puts
;;       _lcd_putc
;;         _lcd_put_byte
;;         _lcd_busy
;;         _lcd_gotoxy
;;           _lcd_put_byte
;;           _lcd_busy
;;         _isprint
;;     _lcd_putc
;;       _lcd_put_byte
;;       _lcd_busy
;;       _lcd_gotoxy
;;         _lcd_put_byte
;;         _lcd_busy
;;       _isprint
;;     _delay_ms
;;     ___ftdiv
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___wmul (ARG)
;;       ___lbtoft (ARG)
;;         ___ftpack
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___awdiv
;;       ___awmod (ARG)
;;     ___awmod
;;     ___awtoft
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___wmul (ARG)
;;     ___ftneg
;;       ___ftpack (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;           ___wmul (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;   _nhiet_do
;;     _delay_ms
;;     ___wmul
;;     ___awtoft
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___wmul (ARG)
;;     ___ftdiv
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___wmul (ARG)
;;       ___lbtoft (ARG)
;;         ___ftpack
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___awdiv
;;       ___awmod (ARG)
;;     ___awmod
;;     _lcd_gotoxy
;;       _lcd_put_byte
;;       _lcd_busy
;;     _lcd_puts
;;       _lcd_putc
;;         _lcd_put_byte
;;         _lcd_busy
;;         _lcd_gotoxy
;;           _lcd_put_byte
;;           _lcd_busy
;;         _isprint
;;     _lcd_putc
;;       _lcd_put_byte
;;       _lcd_busy
;;       _lcd_gotoxy
;;         _lcd_put_byte
;;         _lcd_busy
;;       _isprint
;;     ___ftneg
;;       ___ftpack (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;           ___wmul (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;   _send_nhietdo
;;     ___ftmul
;;       ___ftpack
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;           ___wmul (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___awdiv
;;       ___awmod (ARG)
;;     ___awmod
;;     _uart_tx
;;     _delay_ms
;;   _send_lux
;;     ___ftmul
;;       ___ftpack
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;           ___wmul (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___awdiv
;;       ___awmod (ARG)
;;     ___awmod
;;     _uart_tx
;;     _delay_ms
;;   _send_error
;;     ___ftge
;;     ___awtoft
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___wmul (ARG)
;;     ___ftneg
;;       ___ftpack (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;           ___wmul (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___awdiv
;;       ___awmod (ARG)
;;     ___awmod
;;     _uart_tx
;;     _delay_ms
;;   _receive_pid
;;     ___lbtoft
;;       ___ftpack
;;     ___ftdiv
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___wmul (ARG)
;;       ___wmul (ARG)
;;       ___lbtoft (ARG)
;;         ___ftpack
;;     ___wmul
;;     _delay_ms
;;
;; _uart_isr (ROOT)
;;   _BH1750_read
;;     i1_I2C_start
;;       i1_i2c_dly
;;     i1_I2C_write
;;       i1_i2c_dly
;;     _I2C_read
;;       i1_i2c_dly
;;     i1_I2C_stop
;;       i1_i2c_dly
;;     i1___awtoft
;;       i1___ftpack
;;       i1___ftneg (ARG)
;;         i1___ftpack (ARG)
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;     i1___ftdiv
;;       i1___ftpack
;;       i1___ftmul (ARG)
;;         i1___ftpack
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;         i1___ftadd (ARG)
;;           i1___ftpack
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;           i1___awtoft (ARG)
;;             i1___ftpack
;;             i1___ftneg (ARG)
;;               i1___ftpack (ARG)
;;             i1___fttol (ARG)
;;               i1___ftpack (ARG)
;;               i1___ftneg (ARG)
;;                 i1___ftpack (ARG)
;;           i1___fttol (ARG)
;;             i1___ftpack (ARG)
;;             i1___ftneg (ARG)
;;               i1___ftpack (ARG)
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;         i1___awtoft (ARG)
;;           i1___ftpack
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;           i1___fttol (ARG)
;;             i1___ftpack (ARG)
;;             i1___ftneg (ARG)
;;               i1___ftpack (ARG)
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;       i1___awtoft (ARG)
;;         i1___ftpack
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;   _pid
;;     i1___ftneg
;;       i1___ftpack (ARG)
;;     i1___awtoft
;;       i1___ftpack
;;       i1___ftneg (ARG)
;;         i1___ftpack (ARG)
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;     i1___ftadd
;;       i1___ftpack
;;       i1___ftneg (ARG)
;;         i1___ftpack (ARG)
;;       i1___awtoft (ARG)
;;         i1___ftpack
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;     i1___ftmul
;;       i1___ftpack
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;       i1___ftadd (ARG)
;;         i1___ftpack
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;         i1___awtoft (ARG)
;;           i1___ftpack
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;           i1___fttol (ARG)
;;             i1___ftpack (ARG)
;;             i1___ftneg (ARG)
;;               i1___ftpack (ARG)
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;       i1___ftneg (ARG)
;;         i1___ftpack (ARG)
;;       i1___awtoft (ARG)
;;         i1___ftpack
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;     i1___fttol
;;       i1___ftpack (ARG)
;;       i1___ftneg (ARG)
;;         i1___ftpack (ARG)
;;     i1___ftdiv
;;       i1___ftpack
;;       i1___ftmul (ARG)
;;         i1___ftpack
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;         i1___ftadd (ARG)
;;           i1___ftpack
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;           i1___awtoft (ARG)
;;             i1___ftpack
;;             i1___ftneg (ARG)
;;               i1___ftpack (ARG)
;;             i1___fttol (ARG)
;;               i1___ftpack (ARG)
;;               i1___ftneg (ARG)
;;                 i1___ftpack (ARG)
;;           i1___fttol (ARG)
;;             i1___ftpack (ARG)
;;             i1___ftneg (ARG)
;;               i1___ftpack (ARG)
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;         i1___awtoft (ARG)
;;           i1___ftpack
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;           i1___fttol (ARG)
;;             i1___ftpack (ARG)
;;             i1___ftneg (ARG)
;;               i1___ftpack (ARG)
;;       i1___fttol (ARG)
;;         i1___ftpack (ARG)
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;       i1___awtoft (ARG)
;;         i1___ftpack
;;         i1___ftneg (ARG)
;;           i1___ftpack (ARG)
;;         i1___fttol (ARG)
;;           i1___ftpack (ARG)
;;           i1___ftneg (ARG)
;;             i1___ftpack (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       D       2        0.0%
;;ABS                  0      0      FB       3        0.0%
;;BITBANK0            50      0       1       4        1.3%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     47      50       5      100.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     46      50       7      100.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0      4D       9       80.2%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0     108      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 357 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_lcd_init
;;		_delay_ms
;;		_BH1750_write
;;		_xu_ly_lux
;;		_nhiet_do
;;		_send_nhietdo
;;		_send_lux
;;		_send_error
;;		_receive_pid
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	357
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	359
	
l6957:	
;main.c: 359: ANSEL=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	360
;main.c: 360: ANSELH=0;
	clrf	(393)^0180h	;volatile
	line	361
	
l6959:	
;main.c: 361: lcd_init();
	fcall	_lcd_init
	line	363
	
l6961:	
;main.c: 363: SPBRGH=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(154)^080h	;volatile
	line	364
	
l6963:	
;main.c: 364: BRG16=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	365
	
l6965:	
;main.c: 365: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	366
	
l6967:	
;main.c: 366: TXSTA=0x20;
	movlw	(020h)
	movwf	(152)^080h	;volatile
	line	367
	
l6969:	
;main.c: 367: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	368
	
l6971:	
;main.c: 368: SYNC=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	369
	
l6973:	
;main.c: 369: c=RCREG;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_c)^0180h
	line	370
	
l6975:	
;main.c: 370: RCIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	371
	
l6977:	
;main.c: 371: PEIE=1;
	bsf	(94/8),(94)&7
	line	372
	
l6979:	
;main.c: 372: GIE=1;
	bsf	(95/8),(95)&7
	line	374
	
l6981:	
;main.c: 374: PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	375
	
l6983:	
;main.c: 375: TRISC1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	376
	
l6985:	
;main.c: 376: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	377
	
l6987:	
;main.c: 377: CCP1CON=0X0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	378
	
l6989:	
;main.c: 378: T2CON=0X01;
	movlw	(01h)
	movwf	(18)	;volatile
	line	379
	
l6991:	
;main.c: 379: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	380
	
l6993:	
;main.c: 380: PR2=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	382
	
l6995:	
;main.c: 382: ANS2=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3138/8)^0180h,(3138)&7
	line	383
	
l6997:	
;main.c: 383: VCFG0=VCFG1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1277/8)^080h,(1277)&7
	bcf	(1276/8)^080h,(1276)&7
	line	384
	
l6999:	
;main.c: 384: ADCS0=ADCS1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	btfsc	(255/8),(255)&7
	goto	u6541
	goto	u6540
	
u6541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(254/8),(254)&7
	goto	u6554
u6540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(254/8),(254)&7
u6554:
	line	385
	
l7001:	
;main.c: 385: ADFM=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1279/8)^080h,(1279)&7
	line	386
	
l7003:	
;main.c: 386: CHS3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	387
	
l7005:	
;main.c: 387: CHS2=0;
	bcf	(252/8),(252)&7
	line	388
	
l7007:	
;main.c: 388: CHS1=1;
	bsf	(251/8),(251)&7
	line	389
	
l7009:	
;main.c: 389: CHS0=0;
	bcf	(250/8),(250)&7
	line	390
	
l7011:	
;main.c: 390: ADON=1;
	bsf	(248/8),(248)&7
	line	392
	
l7013:	
;main.c: 392: T0CS=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	393
	
l7015:	
;main.c: 393: PSA=0;
	bcf	(1035/8)^080h,(1035)&7
	line	394
	
l7017:	
;main.c: 394: T0SE=1;
	bsf	(1036/8)^080h,(1036)&7
	line	395
	
l7019:	
;main.c: 395: PS0=PS2=0;
	bcf	(1034/8)^080h,(1034)&7
	bcf	(1032/8)^080h,(1032)&7
	line	396
	
l7021:	
;main.c: 396: PS1=1;
	bsf	(1033/8)^080h,(1033)&7
	line	397
	
l7023:	
;main.c: 397: TMR0=131;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	398
	
l7025:	
;main.c: 398: T0IE=1;
	bsf	(93/8),(93)&7
	line	399
	
l7027:	
;main.c: 399: delay_ms(1000);
	movlw	low(03E8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_delay_ms)^080h
	movlw	high(03E8h)
	movwf	((?_delay_ms)^080h)+1
	fcall	_delay_ms
	line	400
	
l7029:	
;main.c: 400: BH1750_write();
	fcall	_BH1750_write
	goto	l7031
	line	402
;main.c: 402: while(1)
	
l1044:	
	line	406
	
l7031:	
;main.c: 403: {
;main.c: 406: xu_ly_lux();
	fcall	_xu_ly_lux
	line	408
	
l7033:	
;main.c: 408: nhiet_do();
	fcall	_nhiet_do
	line	409
	
l7035:	
;main.c: 409: send_nhietdo();
	fcall	_send_nhietdo
	line	411
	
l7037:	
;main.c: 411: send_lux();
	fcall	_send_lux
	line	413
	
l7039:	
;main.c: 413: send_error();
	fcall	_send_error
	line	414
	
l7041:	
;main.c: 414: receive_pid();
	fcall	_receive_pid
	goto	l7031
	line	416
	
l1045:	
	line	402
	goto	l7031
	
l1046:	
	line	417
	
l1047:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_xu_ly_lux
psect	text1101,local,class=CODE,delta=2
global __ptext1101
__ptext1101:

;; *************** function _xu_ly_lux *****************
;; Defined at:
;;		line 245 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_puts
;;		_lcd_putc
;;		_delay_ms
;;		___ftdiv
;;		___fttol
;;		___awdiv
;;		___awmod
;;		___awtoft
;;		___ftneg
;;		___ftadd
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1101
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	245
	global	__size_of_xu_ly_lux
	__size_of_xu_ly_lux	equ	__end_of_xu_ly_lux-_xu_ly_lux
	
_xu_ly_lux:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _xu_ly_lux: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	246
	
l6925:	
;main.c: 246: lcd_gotoxy(0, 1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_lcd_gotoxy)^080h
	bsf	status,0
	rlf	(?_lcd_gotoxy)^080h,f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	247
	
l6927:	
;main.c: 247: lcd_puts("lux: ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_puts
	line	248
	
l6929:	
;main.c: 248: lcd_gotoxy(6, 1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_lcd_gotoxy)^080h
	bsf	status,0
	rlf	(?_lcd_gotoxy)^080h,f
	movlw	(06h)
	fcall	_lcd_gotoxy
	line	249
;main.c: 249: lcd_putc(nghin);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nghin)^0180h,w
	fcall	_lcd_putc
	line	250
;main.c: 250: lcd_putc(tram);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_tram)^0180h,w
	fcall	_lcd_putc
	line	251
;main.c: 251: lcd_putc(chuc);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_chuc)^0180h,w
	fcall	_lcd_putc
	line	252
;main.c: 252: lcd_putc(dvi);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_dvi)^0180h,w
	fcall	_lcd_putc
	line	253
;main.c: 253: lcd_putc('.');
	movlw	(02Eh)
	fcall	_lcd_putc
	line	254
;main.c: 254: lcd_putc(chuc1);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_chuc1)^0180h,w
	fcall	_lcd_putc
	line	255
;main.c: 255: lcd_putc(dvi1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dvi1)^080h,w
	fcall	_lcd_putc
	line	256
;main.c: 256: lcd_putc(dvi1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dvi1)^080h,w
	fcall	_lcd_putc
	line	257
	
l6931:	
;main.c: 257: delay_ms(300);
	movlw	low(012Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_delay_ms)^080h
	movlw	high(012Ch)
	movwf	((?_delay_ms)^080h)+1
	fcall	_delay_ms
	line	258
	
l6933:	
;main.c: 258: flux1=value1/1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1)^080h,w
	movwf	0+(?___ftdiv)^080h+03h
	movf	(_value1+1)^080h,w
	movwf	1+(?___ftdiv)^080h+03h
	movf	(_value1+2)^080h,w
	movwf	2+(?___ftdiv)^080h+03h
	movlw	0x0
	movwf	(?___ftdiv)^080h
	movlw	0x80
	movwf	(?___ftdiv+1)^080h
	movlw	0x3f
	movwf	(?___ftdiv+2)^080h
	fcall	___ftdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftdiv))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?___ftdiv))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?___ftdiv))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	clrf	(_flux1+1)^080h
	addwf	(_flux1+1)^080h
	movf	0+(((0+(?___fttol))^080h)),w
	clrf	(_flux1)^080h
	addwf	(_flux1)^080h

	line	259
	
l6935:	
;main.c: 259: nghin=(flux1/1000)+48;
	movlw	low(03E8h)
	movwf	(?___awdiv)^080h
	movlw	high(03E8h)
	movwf	((?___awdiv)^080h)+1
	movf	(_flux1+1)^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(_flux1)^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	030h
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_nghin)^0180h
	line	260
	
l6937:	
;main.c: 260: tram=((flux1%1000)/100)+48;
	movlw	low(064h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(064h)
	movwf	((?___awdiv)^080h)+1
	movf	(_flux1+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(_flux1)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(03E8h)
	movwf	(?___awmod)^080h
	movlw	high(03E8h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	030h
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_tram)^0180h
	line	261
	
l6939:	
;main.c: 261: chuc=(((flux1%1000)%100)/10)+48;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(_flux1+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(_flux1)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(03E8h)
	movwf	(?___awmod)^080h
	movlw	high(03E8h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(064h)
	movwf	(?___awmod)^080h
	movlw	high(064h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	030h
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_chuc)^0180h
	line	262
	
l6941:	
;main.c: 262: dvi=(((flux1%1000)%100)%10)+48;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_flux1+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(_flux1)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(03E8h)
	movwf	(?___awmod)^080h
	movlw	high(03E8h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(064h)
	movwf	(?___awmod)^080h
	movlw	high(064h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	(_xu_ly_lux$1515+1)^080h
	addwf	(_xu_ly_lux$1515+1)^080h
	movf	(0+(?___awmod))^080h,w
	clrf	(_xu_ly_lux$1515)^080h
	addwf	(_xu_ly_lux$1515)^080h

	
l6943:	
;main.c: 262: dvi=(((flux1%1000)%100)%10)+48;
	movlw	low(0Ah)
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	movf	(_xu_ly_lux$1515+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(_xu_ly_lux$1515)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	addlw	030h
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_dvi)^0180h
	line	263
	
l6945:	
;main.c: 263: for(m=0;m<2;m++)
	movlw	low(0)
	movwf	(_m)^0180h
	movlw	high(0)
	movwf	((_m)^0180h)+1
	
l6947:	
	movf	(_m+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6525
	movlw	low(02h)
	subwf	(_m)^0180h,w
u6525:

	skipc
	goto	u6521
	goto	u6520
u6521:
	goto	l6951
u6520:
	goto	l1020
	
l6949:	
	goto	l1020
	line	264
	
l1018:	
	line	265
	
l6951:	
;main.c: 264: {
;main.c: 265: flux2=(value1-flux1)*10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_flux1+1)^080h,w
	clrf	(?___awtoft+1)^080h
	addwf	(?___awtoft+1)^080h
	movf	(_flux1)^080h,w
	clrf	(?___awtoft)^080h
	addwf	(?___awtoft)^080h

	fcall	___awtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awtoft))^080h,w
	movwf	(?___ftneg)^080h
	movf	(1+(?___awtoft))^080h,w
	movwf	(?___ftneg+1)^080h
	movf	(2+(?___awtoft))^080h,w
	movwf	(?___ftneg+2)^080h
	fcall	___ftneg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftneg))^080h,w
	movwf	0+(?___ftadd)^080h+03h
	movf	(1+(?___ftneg))^080h,w
	movwf	1+(?___ftadd)^080h+03h
	movf	(2+(?___ftneg))^080h,w
	movwf	2+(?___ftadd)^080h+03h
	movf	(_value1)^080h,w
	movwf	(?___ftadd)^080h
	movf	(_value1+1)^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(_value1+2)^080h,w
	movwf	(?___ftadd+2)^080h
	fcall	___ftadd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftadd))^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(1+(?___ftadd))^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(2+(?___ftadd))^080h,w
	movwf	2+(?___ftmul)^080h+03h
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x20
	movwf	(?___ftmul+1)^080h
	movlw	0x41
	movwf	(?___ftmul+2)^080h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_flux2+1)^0180h
	addwf	(_flux2+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_flux2)^0180h
	addwf	(_flux2)^0180h

	line	266
;main.c: 266: chuc1=(flux2%10)+48;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_flux2+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_flux2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	addlw	030h
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_chuc1)^0180h
	line	267
;main.c: 267: dvi1=(flux2/10)+48;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_flux2+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_flux2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	030h
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	movwf	(_dvi1)^080h
	line	263
	
l6953:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(_m)^0180h,f
	skipnc
	incf	(_m+1)^0180h,f
	movlw	high(01h)
	addwf	(_m+1)^0180h,f
	
l6955:	
	movf	(_m+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6535
	movlw	low(02h)
	subwf	(_m)^0180h,w
u6535:

	skipc
	goto	u6531
	goto	u6530
u6531:
	goto	l6951
u6530:
	goto	l1020
	
l1019:	
	line	269
	
l1020:	
	return
	opt stack 0
GLOBAL	__end_of_xu_ly_lux
	__end_of_xu_ly_lux:
;; =============== function _xu_ly_lux ends ============

	signat	_xu_ly_lux,88
	global	_nhiet_do
psect	text1102,local,class=CODE,delta=2
global __ptext1102
__ptext1102:

;; *************** function _nhiet_do *****************
;; Defined at:
;;		line 216 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_delay_ms
;;		___wmul
;;		___awtoft
;;		___ftdiv
;;		___fttol
;;		___awdiv
;;		___awmod
;;		_lcd_gotoxy
;;		_lcd_puts
;;		_lcd_putc
;;		___ftneg
;;		___ftadd
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1102
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	216
	global	__size_of_nhiet_do
	__size_of_nhiet_do	equ	__end_of_nhiet_do-_nhiet_do
	
_nhiet_do:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _nhiet_do: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	217
	
l6899:	
;main.c: 217: GODONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	218
;main.c: 218: while(GODONE);
	goto	l1010
	
l1011:	
	
l1010:	
	btfsc	(249/8),(249)&7
	goto	u6481
	goto	u6480
u6481:
	goto	l1010
u6480:
	goto	l6901
	
l1012:	
	line	219
	
l6901:	
;main.c: 219: kq=ADRESH;
	movf	(30),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_nhiet_do+0)^080h+0
	clrf	(??_nhiet_do+0)^080h+0+1
	movf	0+(??_nhiet_do+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_kq)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_nhiet_do+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_kq+1)^0180h
	line	220
;main.c: 220: kq<<=8;
	movlw	08h
	
u6495:
	clrc
	rlf	(_kq)^0180h,f
	rlf	(_kq+1)^0180h,f
	addlw	-1
	skipz
	goto	u6495
	line	221
	
l6903:	
;main.c: 221: delay_ms(200);
	movlw	low(0C8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_delay_ms)^080h
	movlw	high(0C8h)
	movwf	((?_delay_ms)^080h)+1
	fcall	_delay_ms
	line	222
	
l6905:	
;main.c: 222: kq=kq+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(_kq)^0180h,w
	movwf	(_kq)^0180h
	movf	(_kq+1)^0180h,w
	skipnc
	incf	(_kq+1)^0180h,w
	movwf	((_kq)^0180h)+1
	line	223
;main.c: 223: nhietdo=((float)(500*kq)/1023.0);
	movlw	0xc0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	movlw	0x7f
	movwf	(?___ftdiv+1)^080h
	movlw	0x44
	movwf	(?___ftdiv+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_kq+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___wmul+1)^080h
	addwf	(?___wmul+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_kq)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___wmul)^080h
	addwf	(?___wmul)^080h

	movlw	low(01F4h)
	movwf	0+(?___wmul)^080h+02h
	movlw	high(01F4h)
	movwf	(0+(?___wmul)^080h+02h)+1
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___wmul))^080h,w
	clrf	(?___awtoft+1)^080h
	addwf	(?___awtoft+1)^080h
	movf	(0+(?___wmul))^080h,w
	clrf	(?___awtoft)^080h
	addwf	(?___awtoft)^080h

	fcall	___awtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awtoft))^080h,w
	movwf	0+(?___ftdiv)^080h+03h
	movf	(1+(?___awtoft))^080h,w
	movwf	1+(?___ftdiv)^080h+03h
	movf	(2+(?___awtoft))^080h,w
	movwf	2+(?___ftdiv)^080h+03h
	fcall	___ftdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_nhietdo)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_nhietdo+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_nhietdo+2)^0180h
	line	225
;main.c: 225: fnt1=(nhietdo/1);
	movf	(_nhietdo)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftdiv)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___ftdiv)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?___ftdiv)^080h+03h
	movlw	0x0
	movwf	(?___ftdiv)^080h
	movlw	0x80
	movwf	(?___ftdiv+1)^080h
	movlw	0x3f
	movwf	(?___ftdiv+2)^080h
	fcall	___ftdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftdiv))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?___ftdiv))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?___ftdiv))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_fnt1+1)^0180h
	addwf	(_fnt1+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_fnt1)^0180h
	addwf	(_fnt1)^0180h

	line	226
;main.c: 226: nt1=(fnt1/10)+48;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fnt1+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fnt1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	030h
	movwf	(??_nhiet_do+0)^080h+0
	movf	(??_nhiet_do+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_nt1)^0180h
	line	227
;main.c: 227: nt2=(fnt1%10)+48;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fnt1+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fnt1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	addlw	030h
	movwf	(??_nhiet_do+0)^080h+0
	movf	(??_nhiet_do+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_nt2)^0180h
	line	228
;main.c: 228: lcd_gotoxy(0, 0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_lcd_gotoxy)^080h
	movlw	(0)
	fcall	_lcd_gotoxy
	line	229
	
l6907:	
;main.c: 229: lcd_puts("nhietdo: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_puts
	line	230
	
l6909:	
;main.c: 230: lcd_gotoxy(8,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_lcd_gotoxy)^080h
	movlw	(08h)
	fcall	_lcd_gotoxy
	line	231
;main.c: 231: lcd_putc(nt1);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nt1)^0180h,w
	fcall	_lcd_putc
	line	232
;main.c: 232: lcd_putc(nt2);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nt2)^0180h,w
	fcall	_lcd_putc
	line	233
;main.c: 233: lcd_putc('.');
	movlw	(02Eh)
	fcall	_lcd_putc
	line	235
	
l6911:	
;main.c: 235: for(n=0;n<2;n++)
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_n)^0180h
	movlw	high(0)
	movwf	((_n)^0180h)+1
	
l6913:	
	movf	(_n+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6505
	movlw	low(02h)
	subwf	(_n)^0180h,w
u6505:

	skipc
	goto	u6501
	goto	u6500
u6501:
	goto	l6917
u6500:
	goto	l6923
	
l6915:	
	goto	l6923
	line	236
	
l1013:	
	line	237
	
l6917:	
;main.c: 236: {
;main.c: 237: fnt2=(nhietdo-fnt1)*10;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fnt1+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___awtoft+1)^080h
	addwf	(?___awtoft+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fnt1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___awtoft)^080h
	addwf	(?___awtoft)^080h

	fcall	___awtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awtoft))^080h,w
	movwf	(?___ftneg)^080h
	movf	(1+(?___awtoft))^080h,w
	movwf	(?___ftneg+1)^080h
	movf	(2+(?___awtoft))^080h,w
	movwf	(?___ftneg+2)^080h
	fcall	___ftneg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftneg))^080h,w
	movwf	0+(?___ftadd)^080h+03h
	movf	(1+(?___ftneg))^080h,w
	movwf	1+(?___ftadd)^080h+03h
	movf	(2+(?___ftneg))^080h,w
	movwf	2+(?___ftadd)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd+2)^080h
	fcall	___ftadd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftadd))^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(1+(?___ftadd))^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(2+(?___ftadd))^080h,w
	movwf	2+(?___ftmul)^080h+03h
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x20
	movwf	(?___ftmul+1)^080h
	movlw	0x41
	movwf	(?___ftmul+2)^080h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_fnt2+1)^0180h
	addwf	(_fnt2+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_fnt2)^0180h
	addwf	(_fnt2)^0180h

	line	238
;main.c: 238: chuc2=fnt2/10+48;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fnt2+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fnt2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	addlw	030h
	movwf	(??_nhiet_do+0)^080h+0
	movf	(??_nhiet_do+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_chuc2)^0180h
	line	239
;main.c: 239: dvi2=fnt2%10+48;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fnt2+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fnt2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	addlw	030h
	movwf	(??_nhiet_do+0)^080h+0
	movf	(??_nhiet_do+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_dvi2)^0180h
	line	235
	
l6919:	
	movlw	low(01h)
	addwf	(_n)^0180h,f
	skipnc
	incf	(_n+1)^0180h,f
	movlw	high(01h)
	addwf	(_n+1)^0180h,f
	
l6921:	
	movf	(_n+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6515
	movlw	low(02h)
	subwf	(_n)^0180h,w
u6515:

	skipc
	goto	u6511
	goto	u6510
u6511:
	goto	l6917
u6510:
	goto	l6923
	
l1014:	
	line	241
	
l6923:	
;main.c: 240: }
;main.c: 241: lcd_putc(chuc2);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_chuc2)^0180h,w
	fcall	_lcd_putc
	line	242
;main.c: 242: lcd_putc(dvi2);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_dvi2)^0180h,w
	fcall	_lcd_putc
	line	243
	
l1015:	
	return
	opt stack 0
GLOBAL	__end_of_nhiet_do
	__end_of_nhiet_do:
;; =============== function _nhiet_do ends ============

	signat	_nhiet_do,88
	global	_lcd_puts
psect	text1103,local,class=CODE,delta=2
global __ptext1103
__ptext1103:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 175 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_2(6), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  s               1   12[BANK1 ] PTR const unsigned char 
;;		 -> STR_2(6), STR_1(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;; This function uses a non-reentrant model
;;
psect	text1103
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
	line	175
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_puts@s)^080h
	line	176
	
l6891:	
;lcd.c: 176: while(*s){
	goto	l6897
	
l1951:	
	line	177
	
l6893:	
;lcd.c: 177: lcd_putc(*s++);
	movf	(lcd_puts@s)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_putc
	
l6895:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_puts+0)^080h+0
	movf	(??_lcd_puts+0)^080h+0,w
	addwf	(lcd_puts@s)^080h,f
	goto	l6897
	line	178
	
l1950:	
	line	176
	
l6897:	
	movf	(lcd_puts@s)^080h,w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u6471
	goto	u6470
u6471:
	goto	l6893
u6470:
	goto	l1953
	
l1952:	
	line	179
	
l1953:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_putc
psect	text1104,local,class=CODE,delta=2
global __ptext1104
__ptext1104:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   10[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;;		_lcd_gotoxy
;;		_isprint
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_lcd_puts
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text1104
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 0
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_putc@c)^080h
	line	144
	
l6873:	
;lcd.c: 144: switch(c){
	goto	l6889
	line	145
;lcd.c: 145: case '\f':
	
l1928:	
	line	146
	
l6875:	
;lcd.c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)^080h
	bsf	status,0
	rlf	(?_lcd_put_byte)^080h,f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd.c: 147: while(lcd_busy());
	goto	l6877
	
l1930:	
	goto	l6877
	
l1929:	
	
l6877:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6441
	goto	u6440
u6441:
	goto	l6877
u6440:
	goto	l1939
	
l1931:	
	line	148
;lcd.c: 148: break;
	goto	l1939
	line	149
;lcd.c: 149: case '\n':
	
l1933:	
	line	150
	
l6879:	
;lcd.c: 150: lcd_gotoxy(0, 1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_lcd_gotoxy)^080h
	bsf	status,0
	rlf	(?_lcd_gotoxy)^080h,f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd.c: 151: break;
	goto	l1939
	line	152
;lcd.c: 152: default:
	
l1934:	
	line	153
	
l6881:	
;lcd.c: 153: if(isprint(c)){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_putc@c)^080h,w
	fcall	_isprint
	btfss	status,0
	goto	u6451
	goto	u6450
u6451:
	goto	l1939
u6450:
	line	154
	
l6883:	
;lcd.c: 154: lcd_put_byte(1, c);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_putc@c)^080h,w
	movwf	(??_lcd_putc+0)^080h+0
	movf	(??_lcd_putc+0)^080h+0,w
	movwf	(?_lcd_put_byte)^080h
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd.c: 155: while(lcd_busy());
	goto	l6885
	
l1937:	
	goto	l6885
	
l1936:	
	
l6885:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6461
	goto	u6460
u6461:
	goto	l6885
u6460:
	goto	l1939
	
l1938:	
	goto	l1939
	line	156
	
l1935:	
	line	157
;lcd.c: 156: }
;lcd.c: 157: break;
	goto	l1939
	line	158
	
l6887:	
;lcd.c: 158: }
	goto	l1939
	line	144
	
l1927:	
	
l6889:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_putc@c)^080h,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 10 to 12
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     7     4 (average)
; direct_byte    31    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	10^0	; case 10
	skipnz
	goto	l6879
	xorlw	12^10	; case 12
	skipnz
	goto	l6875
	goto	l6881

	line	158
	
l1932:	
	line	159
	
l1939:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_init
psect	text1105,local,class=CODE,delta=2
global __ptext1105
__ptext1105:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 5 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1105
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 2
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l6835:	
;lcd.c: 6: unsigned char i;
;lcd.c: 7: TRISD3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1091/8)^080h,(1091)&7
	line	8
;lcd.c: 8: TRISD1 = 0;
	bcf	(1089/8)^080h,(1089)&7
	line	9
;lcd.c: 9: TRISD2 = 0;
	bcf	(1090/8)^080h,(1090)&7
	line	10
;lcd.c: 10: TRISD4 = 0;
	bcf	(1092/8)^080h,(1092)&7
	line	11
;lcd.c: 11: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	12
;lcd.c: 12: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	13
;lcd.c: 13: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	14
;lcd.c: 14: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	15
;lcd.c: 15: RD1 = 0;
	bcf	(65/8),(65)&7
	line	16
;lcd.c: 16: RD2 = 0;
	bcf	(66/8),(66)&7
	line	18
	
l6837:	
;lcd.c: 18: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_lcd_init+0)^080h+0+1),f
	movlw	221
movwf	((??_lcd_init+0)^080h+0),f
u6567:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6567
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6567
	nop2
opt asmopt_on

	line	21
	
l6839:	
;lcd.c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	movwf	(?_lcd_put_byte)^080h
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l6841:	
;lcd.c: 22: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_lcd_init+0)^080h+0+1),f
	movlw	238
movwf	((??_lcd_init+0)^080h+0),f
u6577:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6577
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6577
	clrwdt
opt asmopt_on

	line	23
;lcd.c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	movwf	(?_lcd_put_byte)^080h
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l6843:	
;lcd.c: 24: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_lcd_init+0)^080h+0+1),f
	movlw	238
movwf	((??_lcd_init+0)^080h+0),f
u6587:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6587
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6587
	clrwdt
opt asmopt_on

	line	25
	
l6845:	
;lcd.c: 25: lcd_put_byte(0,0x32);
	movlw	(032h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	movwf	(?_lcd_put_byte)^080h
	movlw	(0)
	fcall	_lcd_put_byte
	line	26
;lcd.c: 26: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_lcd_init+0)^080h+0+1),f
	movlw	221
movwf	((??_lcd_init+0)^080h+0),f
u6597:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6597
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6597
	nop2
opt asmopt_on

	line	27
;lcd.c: 27: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_lcd_init+0)^080h+0+1),f
	movlw	221
movwf	((??_lcd_init+0)^080h+0),f
u6607:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6607
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6607
	nop2
opt asmopt_on

	line	28
;lcd.c: 28: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_lcd_init+0)^080h+0+1),f
	movlw	221
movwf	((??_lcd_init+0)^080h+0),f
u6617:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6617
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6617
	nop2
opt asmopt_on

	line	30
;lcd.c: 30: while(lcd_busy());
	goto	l6847
	
l1893:	
	goto	l6847
	
l1892:	
	
l6847:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6371
	goto	u6370
u6371:
	goto	l6847
u6370:
	goto	l6849
	
l1894:	
	line	31
	
l6849:	
;lcd.c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	movwf	(?_lcd_put_byte)^080h
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd.c: 32: while(lcd_busy());
	goto	l6851
	
l1896:	
	goto	l6851
	
l1895:	
	
l6851:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6381
	goto	u6380
u6381:
	goto	l6851
u6380:
	goto	l6853
	
l1897:	
	line	34
	
l6853:	
;lcd.c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	movwf	(?_lcd_put_byte)^080h
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd.c: 35: while(lcd_busy());
	goto	l6855
	
l1899:	
	goto	l6855
	
l1898:	
	
l6855:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6391
	goto	u6390
u6391:
	goto	l6855
u6390:
	goto	l6857
	
l1900:	
	line	36
	
l6857:	
;lcd.c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	movwf	(?_lcd_put_byte)^080h
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd.c: 37: while(lcd_busy());
	goto	l6859
	
l1902:	
	goto	l6859
	
l1901:	
	
l6859:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6401
	goto	u6400
u6401:
	goto	l6859
u6400:
	goto	l6861
	
l1903:	
	line	39
	
l6861:	
;lcd.c: 39: lcd_put_byte(0,0x01);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_lcd_put_byte)^080h
	bsf	status,0
	rlf	(?_lcd_put_byte)^080h,f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd.c: 40: while(lcd_busy());
	goto	l6863
	
l1905:	
	goto	l6863
	
l1904:	
	
l6863:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6411
	goto	u6410
u6411:
	goto	l6863
u6410:
	goto	l6865
	
l1906:	
	line	41
	
l6865:	
;lcd.c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	movwf	(?_lcd_put_byte)^080h
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd.c: 42: while(lcd_busy());
	goto	l6867
	
l1908:	
	goto	l6867
	
l1907:	
	
l6867:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6421
	goto	u6420
u6421:
	goto	l6867
u6420:
	goto	l6869
	
l1909:	
	line	43
	
l6869:	
;lcd.c: 43: lcd_put_byte(0,0x01);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_lcd_put_byte)^080h
	bsf	status,0
	rlf	(?_lcd_put_byte)^080h,f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd.c: 44: while(lcd_busy());
	goto	l6871
	
l1911:	
	goto	l6871
	
l1910:	
	
l6871:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6431
	goto	u6430
u6431:
	goto	l6871
u6430:
	goto	l1913
	
l1912:	
	line	45
	
l1913:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_send_error
psect	text1106,local,class=CODE,delta=2
global __ptext1106
__ptext1106:

;; *************** function _send_error *****************
;; Defined at:
;;		line 329 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  berr            2   67[BANK1 ] int 
;;  dvier           1   66[BANK1 ] unsigned char 
;;  chucer          1   65[BANK1 ] unsigned char 
;;  tramer          1   64[BANK1 ] unsigned char 
;;  nghiner         1   63[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       8       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftge
;;		___awtoft
;;		___ftneg
;;		___ftadd
;;		___ftmul
;;		___fttol
;;		___awdiv
;;		___awmod
;;		_uart_tx
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1106
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	329
	global	__size_of_send_error
	__size_of_send_error	equ	__end_of_send_error-_send_error
	
_send_error:	
	opt	stack 1
; Regs used in _send_error: [wreg+status,2+status,0+pclath+cstack]
	line	333
	
l6831:	
;main.c: 330: char nghiner,tramer,chucer,dvier;
;main.c: 331: int berr;
;main.c: 333: if(err<0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_err),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_err+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_err+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftge+2)^080h
	movlw	0x0
	movwf	0+(?___ftge)^080h+03h
	movlw	0x0
	movwf	1+(?___ftge)^080h+03h
	movlw	0x0
	movwf	2+(?___ftge)^080h+03h
	fcall	___ftge
	btfsc	status,0
	goto	u6361
	goto	u6360
u6361:
	goto	l1037
u6360:
	line	335
	
l6833:	
;main.c: 334: {
;main.c: 335: err=(value1-lux_set);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1)^080h,w
	movwf	(?___ftadd)^080h
	movf	(_value1+1)^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(_value1+2)^080h,w
	movwf	(?___ftadd+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_lux_set+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___awtoft+1)^080h
	addwf	(?___awtoft+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_lux_set)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___awtoft)^080h
	addwf	(?___awtoft)^080h

	fcall	___awtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awtoft))^080h,w
	movwf	(?___ftneg)^080h
	movf	(1+(?___awtoft))^080h,w
	movwf	(?___ftneg+1)^080h
	movf	(2+(?___awtoft))^080h,w
	movwf	(?___ftneg+2)^080h
	fcall	___ftneg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftneg))^080h,w
	movwf	0+(?___ftadd)^080h+03h
	movf	(1+(?___ftneg))^080h,w
	movwf	1+(?___ftadd)^080h+03h
	movf	(2+(?___ftneg))^080h,w
	movwf	2+(?___ftadd)^080h+03h
	fcall	___ftadd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftadd))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_err)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftadd))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_err+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftadd))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_err+2)
	line	336
	
l1037:	
	line	337
;main.c: 336: }
;main.c: 337: berr=err*10;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_err),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftmul)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_err+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___ftmul)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_err+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?___ftmul)^080h+03h
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x20
	movwf	(?___ftmul+1)^080h
	movlw	0x41
	movwf	(?___ftmul+2)^080h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	clrf	(send_error@berr+1)^080h
	addwf	(send_error@berr+1)^080h
	movf	0+(((0+(?___fttol))^080h)),w
	clrf	(send_error@berr)^080h
	addwf	(send_error@berr)^080h

	line	338
;main.c: 338: nghiner=(berr/1000);
	movlw	low(03E8h)
	movwf	(?___awdiv)^080h
	movlw	high(03E8h)
	movwf	((?___awdiv)^080h)+1
	movf	(send_error@berr+1)^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(send_error@berr)^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	movwf	(??_send_error+0)^080h+0
	movf	(??_send_error+0)^080h+0,w
	movwf	(send_error@nghiner)^080h
	line	339
;main.c: 339: tramer=((berr%1000)/100);
	movlw	low(064h)
	movwf	(?___awdiv)^080h
	movlw	high(064h)
	movwf	((?___awdiv)^080h)+1
	movf	(send_error@berr+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(send_error@berr)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(03E8h)
	movwf	(?___awmod)^080h
	movlw	high(03E8h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	movwf	(??_send_error+0)^080h+0
	movf	(??_send_error+0)^080h+0,w
	movwf	(send_error@tramer)^080h
	line	340
;main.c: 340: chucer=(((berr%1000)%100)/10);
	movlw	low(0Ah)
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(send_error@berr+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(send_error@berr)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(03E8h)
	movwf	(?___awmod)^080h
	movlw	high(03E8h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(064h)
	movwf	(?___awmod)^080h
	movlw	high(064h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	movwf	(??_send_error+0)^080h+0
	movf	(??_send_error+0)^080h+0,w
	movwf	(send_error@chucer)^080h
	line	341
;main.c: 341: dvier=(((berr%1000)%100)%10);
	movf	(send_error@berr+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(send_error@berr)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(03E8h)
	movwf	(?___awmod)^080h
	movlw	high(03E8h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(064h)
	movwf	(?___awmod)^080h
	movlw	high(064h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	(_send_error$1517+1)^080h
	addwf	(_send_error$1517+1)^080h
	movf	(0+(?___awmod))^080h,w
	clrf	(_send_error$1517)^080h
	addwf	(_send_error$1517)^080h

;main.c: 341: dvier=(((berr%1000)%100)%10);
	movlw	low(0Ah)
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	movf	(_send_error$1517+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(_send_error$1517)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	movwf	(??_send_error+0)^080h+0
	movf	(??_send_error+0)^080h+0,w
	movwf	(send_error@dvier)^080h
	line	342
;main.c: 342: uart_tx(nghiner);
	movf	(send_error@nghiner)^080h,w
	fcall	_uart_tx
	line	343
;main.c: 343: uart_tx(tramer);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(send_error@tramer)^080h,w
	fcall	_uart_tx
	line	344
;main.c: 344: uart_tx(chucer);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(send_error@chucer)^080h,w
	fcall	_uart_tx
	line	345
;main.c: 345: uart_tx(dvier);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(send_error@dvier)^080h,w
	fcall	_uart_tx
	line	346
;main.c: 346: delay_ms(200);
	movlw	low(0C8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_delay_ms)^080h
	movlw	high(0C8h)
	movwf	((?_delay_ms)^080h)+1
	fcall	_delay_ms
	line	347
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_send_error
	__end_of_send_error:
;; =============== function _send_error ends ============

	signat	_send_error,88
	global	_receive_pid
psect	text1107,local,class=CODE,delta=2
global __ptext1107
__ptext1107:

;; *************** function _receive_pid *****************
;; Defined at:
;;		line 295 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  fkd             2    0        int 
;;  fki             2    0        int 
;;  fkp             2    0        int 
;;  dviout          2    0        int 
;;  chucout         2    0        int 
;;  tramout         2    0        int 
;;  nghinout        2    0        int 
;;  dvikd           2    0        int 
;;  chuckd          2    0        int 
;;  tramkd          2    0        int 
;;  dviki           2    0        int 
;;  chucki          2    0        int 
;;  tramki          2    0        int 
;;  dvikp           2    0        int 
;;  tramkp          2    0        int 
;;  nghinkp         2    0        int 
;;  d               2    0        int 
;;  i               2    0        int 
;;  p               2    0        int 
;;  bienkd2         2    0        int 
;;  bienkd1         2    0        int 
;;  bienki2         2    0        int 
;;  bienki1         2    0        int 
;;  bienkp2         2    0        int 
;;  bienkp1         2    0        int 
;;  chuckp          2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0      12       0       0
;;      Totals:         0       0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___lbtoft
;;		___ftdiv
;;		___wmul
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1107
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	295
	global	__size_of_receive_pid
	__size_of_receive_pid	equ	__end_of_receive_pid-_receive_pid
	
_receive_pid:	
	opt	stack 1
; Regs used in _receive_pid: [wreg+status,2+status,0+pclath+cstack]
	line	300
	
l6829:	
;main.c: 296: int chuckp, bienkp1, bienkp2,bienki1,bienki2,bienkd1,bienkd2,p,i,d;
;main.c: 297: int nghinkp,tramkp,chuckp,dvikp,tramki,chucki,dviki,tramkd,chuckd,dvikd;
;main.c: 298: int nghinout,tramout,chucout,dviout;
;main.c: 299: int fkp,fki,fkd;
;main.c: 300: kp1=((check[0])/10.0);
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	movlw	0x20
	movwf	(?___ftdiv+1)^080h
	movlw	0x41
	movwf	(?___ftdiv+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_check)^0180h,w
	fcall	___lbtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___lbtoft))^080h,w
	movwf	0+(?___ftdiv)^080h+03h
	movf	(1+(?___lbtoft))^080h,w
	movwf	1+(?___ftdiv)^080h+03h
	movf	(2+(?___lbtoft))^080h,w
	movwf	2+(?___ftdiv)^080h+03h
	fcall	___ftdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_kp1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_kp1+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_kp1+2)^0180h
	line	301
;main.c: 301: ki1=((check[1])/10.0);
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	movlw	0x20
	movwf	(?___ftdiv+1)^080h
	movlw	0x41
	movwf	(?___ftdiv+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_check)^0180h+01h,w
	fcall	___lbtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___lbtoft))^080h,w
	movwf	0+(?___ftdiv)^080h+03h
	movf	(1+(?___lbtoft))^080h,w
	movwf	1+(?___ftdiv)^080h+03h
	movf	(2+(?___lbtoft))^080h,w
	movwf	2+(?___ftdiv)^080h+03h
	fcall	___ftdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_ki1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_ki1+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_ki1+2)^0180h
	line	302
;main.c: 302: kd1=((check[2])/10.0);
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	movlw	0x20
	movwf	(?___ftdiv+1)^080h
	movlw	0x41
	movwf	(?___ftdiv+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_check)^0180h+02h,w
	fcall	___lbtoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___lbtoft))^080h,w
	movwf	0+(?___ftdiv)^080h+03h
	movf	(1+(?___lbtoft))^080h,w
	movwf	1+(?___ftdiv)^080h+03h
	movf	(2+(?___lbtoft))^080h,w
	movwf	2+(?___ftdiv)^080h+03h
	fcall	___ftdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_kd1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_kd1+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftdiv))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_kd1+2)^0180h
	line	303
;main.c: 303: lux_set=check[3]*1000+check[4]*100+check[5]*10+check[6];
	movf	0+(_check)^0180h+03h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_receive_pid+0)^080h+0
	clrf	(??_receive_pid+0)^080h+0+1
	movf	0+(??_receive_pid+0)^080h+0,w
	movwf	(?___wmul)^080h
	movf	1+(??_receive_pid+0)^080h+0,w
	movwf	(?___wmul+1)^080h
	movlw	low(03E8h)
	movwf	0+(?___wmul)^080h+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)^080h+02h)+1
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+?___wmul)^080h,w
	movwf	(??_receive_pid+2)^080h+0
	movf	(1+?___wmul)^080h,w
	movwf	((??_receive_pid+2)^080h+0+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_check)^0180h+04h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_receive_pid+4)^080h+0
	clrf	(??_receive_pid+4)^080h+0+1
	movf	0+(??_receive_pid+4)^080h+0,w
	movwf	(?___wmul)^080h
	movf	1+(??_receive_pid+4)^080h+0,w
	movwf	(?___wmul+1)^080h
	movlw	low(064h)
	movwf	0+(?___wmul)^080h+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)^080h+02h)+1
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___wmul))^080h,w
	addwf	0+(??_receive_pid+2)^080h+0,w
	movwf	(??_receive_pid+6)^080h+0
	movf	(1+(?___wmul))^080h,w
	skipnc
	incf	(1+(?___wmul))^080h,w
	addwf	1+(??_receive_pid+2)^080h+0,w
	movwf	1+(??_receive_pid+6)^080h+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_check)^0180h+05h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_receive_pid+8)^080h+0
	clrf	(??_receive_pid+8)^080h+0+1
	movf	0+(??_receive_pid+8)^080h+0,w
	movwf	(?___wmul)^080h
	movf	1+(??_receive_pid+8)^080h+0,w
	movwf	(?___wmul+1)^080h
	movlw	low(0Ah)
	movwf	0+(?___wmul)^080h+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)^080h+02h)+1
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___wmul))^080h,w
	addwf	0+(??_receive_pid+6)^080h+0,w
	movwf	(??_receive_pid+10)^080h+0
	movf	(1+(?___wmul))^080h,w
	skipnc
	incf	(1+(?___wmul))^080h,w
	addwf	1+(??_receive_pid+6)^080h+0,w
	movwf	1+(??_receive_pid+10)^080h+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(_check)^0180h+06h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(??_receive_pid+10)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_lux_set)^0180h
	movlw	0
	skipnc
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	1+(??_receive_pid+10)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(_lux_set)^0180h
	line	304
;main.c: 304: delay_ms(50);
	movlw	low(032h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_delay_ms)^080h
	movlw	high(032h)
	movwf	((?_delay_ms)^080h)+1
	fcall	_delay_ms
	line	305
	
l1029:	
	return
	opt stack 0
GLOBAL	__end_of_receive_pid
	__end_of_receive_pid:
;; =============== function _receive_pid ends ============

	signat	_receive_pid,88
	global	_send_lux
psect	text1108,local,class=CODE,delta=2
global __ptext1108
__ptext1108:

;; *************** function _send_lux *****************
;; Defined at:
;;		line 281 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftmul
;;		___fttol
;;		___awdiv
;;		___awmod
;;		_uart_tx
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1108
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	281
	global	__size_of_send_lux
	__size_of_send_lux	equ	__end_of_send_lux-_send_lux
	
_send_lux:	
	opt	stack 1
; Regs used in _send_lux: [wreg+status,2+status,0+pclath+cstack]
	line	282
	
l6827:	
;main.c: 282: value2=value1*10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1)^080h,w
	movwf	0+(?___ftmul)^080h+03h
	movf	(_value1+1)^080h,w
	movwf	1+(?___ftmul)^080h+03h
	movf	(_value1+2)^080h,w
	movwf	2+(?___ftmul)^080h+03h
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x20
	movwf	(?___ftmul+1)^080h
	movlw	0x41
	movwf	(?___ftmul+2)^080h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	clrf	(_value2+1)^080h
	addwf	(_value2+1)^080h
	movf	0+(((0+(?___fttol))^080h)),w
	clrf	(_value2)^080h
	addwf	(_value2)^080h

	line	283
;main.c: 283: nghinlux=(value2/1000);
	movlw	low(03E8h)
	movwf	(?___awdiv)^080h
	movlw	high(03E8h)
	movwf	((?___awdiv)^080h)+1
	movf	(_value2+1)^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(_value2)^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	movwf	(??_send_lux+0)^080h+0
	movf	(??_send_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_nghinlux)
	line	284
;main.c: 284: tramlux=((value2%1000)/100);
	movlw	low(064h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(064h)
	movwf	((?___awdiv)^080h)+1
	movf	(_value2+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(_value2)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(03E8h)
	movwf	(?___awmod)^080h
	movlw	high(03E8h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	movwf	(??_send_lux+0)^080h+0
	movf	(??_send_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_tramlux)
	line	285
;main.c: 285: chuclux=(((value2%1000)%100)/10);
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(_value2+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(_value2)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(03E8h)
	movwf	(?___awmod)^080h
	movlw	high(03E8h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(064h)
	movwf	(?___awmod)^080h
	movlw	high(064h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	movwf	(??_send_lux+0)^080h+0
	movf	(??_send_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_chuclux)
	line	286
;main.c: 286: dvilux=(((value2%1000)%100)%10);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value2+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(_value2)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(03E8h)
	movwf	(?___awmod)^080h
	movlw	high(03E8h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(0+(?___awmod))^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	movlw	low(064h)
	movwf	(?___awmod)^080h
	movlw	high(064h)
	movwf	((?___awmod)^080h)+1
	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___awmod))^080h,w
	clrf	(_send_lux$1516+1)^080h
	addwf	(_send_lux$1516+1)^080h
	movf	(0+(?___awmod))^080h,w
	clrf	(_send_lux$1516)^080h
	addwf	(_send_lux$1516)^080h

;main.c: 286: dvilux=(((value2%1000)%100)%10);
	movlw	low(0Ah)
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	movf	(_send_lux$1516+1)^080h,w
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	movf	(_send_lux$1516)^080h,w
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	movwf	(??_send_lux+0)^080h+0
	movf	(??_send_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dvilux)
	line	288
;main.c: 288: uart_tx(nghinlux);
	movf	(_nghinlux),w
	fcall	_uart_tx
	line	289
;main.c: 289: uart_tx(tramlux);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tramlux),w
	fcall	_uart_tx
	line	290
;main.c: 290: uart_tx(chuclux);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_chuclux),w
	fcall	_uart_tx
	line	291
;main.c: 291: uart_tx(dvilux);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dvilux),w
	fcall	_uart_tx
	line	292
;main.c: 292: delay_ms(200);
	movlw	low(0C8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_delay_ms)^080h
	movlw	high(0C8h)
	movwf	((?_delay_ms)^080h)+1
	fcall	_delay_ms
	line	293
	
l1026:	
	return
	opt stack 0
GLOBAL	__end_of_send_lux
	__end_of_send_lux:
;; =============== function _send_lux ends ============

	signat	_send_lux,88
	global	_send_nhietdo
psect	text1109,local,class=CODE,delta=2
global __ptext1109
__ptext1109:

;; *************** function _send_nhietdo *****************
;; Defined at:
;;		line 271 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftmul
;;		___fttol
;;		___awdiv
;;		___awmod
;;		_uart_tx
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1109
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	271
	global	__size_of_send_nhietdo
	__size_of_send_nhietdo	equ	__end_of_send_nhietdo-_send_nhietdo
	
_send_nhietdo:	
	opt	stack 1
; Regs used in _send_nhietdo: [wreg+status,2+status,0+pclath+cstack]
	line	272
	
l6825:	
;main.c: 272: nhietdo1=nhietdo*10;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftmul)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___ftmul)^080h+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?___ftmul)^080h+03h
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x20
	movwf	(?___ftmul+1)^080h
	movlw	0x41
	movwf	(?___ftmul+2)^080h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftmul))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?___ftmul))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?___ftmul))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_nhietdo1+1)^0180h
	addwf	(_nhietdo1+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fttol))^080h)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_nhietdo1)^0180h
	addwf	(_nhietdo1)^0180h

	line	273
;main.c: 273: biennt1=(nhietdo1/10);
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo1+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	movwf	(??_send_nhietdo+0)^080h+0
	movf	(??_send_nhietdo+0)^080h+0,w
	movwf	(_biennt1)^080h
	line	274
;main.c: 274: biennt2=(nhietdo1%10);
	movlw	low(0Ah)
	movwf	(?___awmod)^080h
	movlw	high(0Ah)
	movwf	((?___awmod)^080h)+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo1+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awmod)^080h+02h
	addwf	1+(?___awmod)^080h+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_nhietdo1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awmod)^080h+02h
	addwf	0+(?___awmod)^080h+02h

	fcall	___awmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awmod))^080h,w
	movwf	(??_send_nhietdo+0)^080h+0
	movf	(??_send_nhietdo+0)^080h+0,w
	movwf	(_biennt2)^080h
	line	276
;main.c: 276: uart_tx(biennt1);
	movf	(_biennt1)^080h,w
	fcall	_uart_tx
	line	277
;main.c: 277: uart_tx(biennt2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_biennt2)^080h,w
	fcall	_uart_tx
	line	278
;main.c: 278: delay_ms(200);
	movlw	low(0C8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_delay_ms)^080h
	movlw	high(0C8h)
	movwf	((?_delay_ms)^080h)+1
	fcall	_delay_ms
	line	279
	
l1023:	
	return
	opt stack 0
GLOBAL	__end_of_send_nhietdo
	__end_of_send_nhietdo:
;; =============== function _send_nhietdo ends ============

	signat	_send_nhietdo,88
	global	_lcd_gotoxy
psect	text1110,local,class=CODE,delta=2
global __ptext1110
__ptext1110:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    5[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    7[BANK1 ] unsigned char 
;;  address         1    8[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       1       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text1110
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 0
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_gotoxy@col)^080h
	
l6815:	
;lcd.c: 163: unsigned char address;
;lcd.c: 165: if(row!=0)
	movf	(lcd_gotoxy@row)^080h,w
	skipz
	goto	u6340
	goto	l6819
u6340:
	line	166
	
l6817:	
;lcd.c: 166: address=0x40;
	movlw	(040h)
	movwf	(??_lcd_gotoxy+0)^080h+0
	movf	(??_lcd_gotoxy+0)^080h+0,w
	movwf	(lcd_gotoxy@address)^080h
	goto	l1943
	line	167
	
l1942:	
	line	168
	
l6819:	
;lcd.c: 167: else
;lcd.c: 168: address=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(lcd_gotoxy@address)^080h
	
l1943:	
	line	170
;lcd.c: 170: address += col;
	movf	(lcd_gotoxy@col)^080h,w
	movwf	(??_lcd_gotoxy+0)^080h+0
	movf	(??_lcd_gotoxy+0)^080h+0,w
	addwf	(lcd_gotoxy@address)^080h,f
	line	171
	
l6821:	
;lcd.c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address)^080h,w
	iorlw	080h
	movwf	(??_lcd_gotoxy+0)^080h+0
	movf	(??_lcd_gotoxy+0)^080h+0,w
	movwf	(?_lcd_put_byte)^080h
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd.c: 172: while(lcd_busy());
	goto	l6823
	
l1945:	
	goto	l6823
	
l1944:	
	
l6823:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6351
	goto	u6350
u6351:
	goto	l6823
u6350:
	goto	l1947
	
l1946:	
	line	173
	
l1947:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_BH1750_write
psect	text1111,local,class=CODE,delta=2
global __ptext1111
__ptext1111:

;; *************** function _BH1750_write *****************
;; Defined at:
;;		line 193 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_I2C_start
;;		_I2C_write
;;		_I2C_stop
;; This function is called by:
;;		_main
;;		_BH1750_init
;; This function uses a non-reentrant model
;;
psect	text1111
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	193
	global	__size_of_BH1750_write
	__size_of_BH1750_write	equ	__end_of_BH1750_write-_BH1750_write
	
_BH1750_write:	
	opt	stack 1
; Regs used in _BH1750_write: [wreg+status,2+status,0+pclath+cstack]
	line	194
	
l6809:	
;main.c: 194: I2C_start();
	fcall	_I2C_start
	line	195
	
l6811:	
;main.c: 195: I2C_write(0x46);
	movlw	(046h)
	fcall	_I2C_write
	line	196
	
l6813:	
;main.c: 196: I2C_write(0x10);
	movlw	(010h)
	fcall	_I2C_write
	line	197
;main.c: 197: I2C_stop();
	fcall	_I2C_stop
	line	198
	
l1004:	
	return
	opt stack 0
GLOBAL	__end_of_BH1750_write
	__end_of_BH1750_write:
;; =============== function _BH1750_write ends ============

	signat	_BH1750_write,88
	global	___awtoft
psect	text1112,local,class=CODE,delta=2
global __ptext1112
__ptext1112:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   25[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   30[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   25[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_error
;; This function uses a non-reentrant model
;;
psect	text1112
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 1
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l6799:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___awtoft@sign)^080h
	line	37
	
l6801:	
	btfss	(___awtoft@c+1)^080h,7
	goto	u6331
	goto	u6330
u6331:
	goto	l6805
u6330:
	line	38
	
l6803:	
	comf	(___awtoft@c)^080h,f
	comf	(___awtoft@c+1)^080h,f
	incf	(___awtoft@c)^080h,f
	skipnz
	incf	(___awtoft@c+1)^080h,f
	line	39
	clrf	(___awtoft@sign)^080h
	bsf	status,0
	rlf	(___awtoft@sign)^080h,f
	goto	l6805
	line	40
	
l2103:	
	line	41
	
l6805:	
	movf	(___awtoft@c)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___awtoft@c+1)^080h,w
	movwf	(?___ftpack+1)^080h
	clrf	(?___ftpack+2)^080h
	movlw	(08Eh)
	movwf	(??___awtoft+0)^080h+0
	movf	(??___awtoft+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	movf	(___awtoft@sign)^080h,w
	movwf	(??___awtoft+1)^080h+0
	movf	(??___awtoft+1)^080h+0,w
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___awtoft)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___awtoft+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___awtoft+2)^080h
	goto	l2104
	
l6807:	
	line	42
	
l2104:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___lbtoft
psect	text1113,local,class=CODE,delta=2
global __ptext1113
__ptext1113:

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   15[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_receive_pid
;; This function uses a non-reentrant model
;;
psect	text1113
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbtoft.c"
	line	28
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:	
	opt	stack 1
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
;___lbtoft@c stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___lbtoft@c)^080h
	line	29
	
l6795:	
	movf	(___lbtoft@c)^080h,w
	movwf	((??___lbtoft+0)^080h+0)
	clrf	((??___lbtoft+0)^080h+0+1)
	clrf	((??___lbtoft+0)^080h+0+2)
	movf	0+(??___lbtoft+0)^080h+0,w
	movwf	(?___ftpack)^080h
	movf	1+(??___lbtoft+0)^080h+0,w
	movwf	(?___ftpack+1)^080h
	movf	2+(??___lbtoft+0)^080h+0,w
	movwf	(?___ftpack+2)^080h
	movlw	(08Eh)
	movwf	(??___lbtoft+3)^080h+0
	movf	(??___lbtoft+3)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___lbtoft)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___lbtoft+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___lbtoft+2)^080h
	goto	l2092
	
l6797:	
	line	30
	
l2092:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
;; =============== function ___lbtoft ends ============

	signat	___lbtoft,4219
	global	___ftmul
psect	text1114,local,class=CODE,delta=2
global __ptext1114
__ptext1114:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   44[BANK1 ] float 
;;  f2              3   47[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   55[BANK1 ] unsigned um
;;  sign            1   59[BANK1 ] unsigned char 
;;  cntr            1   58[BANK1 ] unsigned char 
;;  exp             1   54[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   44[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      16       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_nhietdo
;;		_send_lux
;;		_send_error
;; This function uses a non-reentrant model
;;
psect	text1114
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 1
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l6745:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftmul@f1)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f1+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f1+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	clrc
	rlf	(??___ftmul+0)^080h+1,w
	rlf	(??___ftmul+0)^080h+2,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	movwf	(___ftmul@exp)^080h
	movf	((___ftmul@exp)^080h),f
	skipz
	goto	u6191
	goto	u6190
u6191:
	goto	l6751
u6190:
	line	57
	
l6747:	
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x0
	movwf	(?___ftmul+1)^080h
	movlw	0x0
	movwf	(?___ftmul+2)^080h
	goto	l2066
	
l6749:	
	goto	l2066
	
l2065:	
	line	58
	
l6751:	
	movf	(___ftmul@f2)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f2+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f2+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	clrc
	rlf	(??___ftmul+0)^080h+1,w
	rlf	(??___ftmul+0)^080h+2,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	movwf	(___ftmul@sign)^080h
	movf	((___ftmul@sign)^080h),f
	skipz
	goto	u6201
	goto	u6200
u6201:
	goto	l6757
u6200:
	line	59
	
l6753:	
	movlw	0x0
	movwf	(?___ftmul)^080h
	movlw	0x0
	movwf	(?___ftmul+1)^080h
	movlw	0x0
	movwf	(?___ftmul+2)^080h
	goto	l2066
	
l6755:	
	goto	l2066
	
l2067:	
	line	60
	
l6757:	
	movf	(___ftmul@sign)^080h,w
	addlw	07Bh
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	addwf	(___ftmul@exp)^080h,f
	line	61
	movf	(___ftmul@f1)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f1+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f1+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	movlw	010h
u6215:
	clrc
	rrf	(??___ftmul+0)^080h+2,f
	rrf	(??___ftmul+0)^080h+1,f
	rrf	(??___ftmul+0)^080h+0,f
u6210:
	addlw	-1
	skipz
	goto	u6215
	movf	0+(??___ftmul+0)^080h+0,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	movwf	(___ftmul@sign)^080h
	line	62
	movf	(___ftmul@f2)^080h,w
	movwf	((??___ftmul+0)^080h+0)
	movf	(___ftmul@f2+1)^080h,w
	movwf	((??___ftmul+0)^080h+0+1)
	movf	(___ftmul@f2+2)^080h,w
	movwf	((??___ftmul+0)^080h+0+2)
	movlw	010h
u6225:
	clrc
	rrf	(??___ftmul+0)^080h+2,f
	rrf	(??___ftmul+0)^080h+1,f
	rrf	(??___ftmul+0)^080h+0,f
u6220:
	addlw	-1
	skipz
	goto	u6225
	movf	0+(??___ftmul+0)^080h+0,w
	movwf	(??___ftmul+3)^080h+0
	movf	(??___ftmul+3)^080h+0,w
	xorwf	(___ftmul@sign)^080h,f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	andwf	(___ftmul@sign)^080h,f
	line	64
	
l6759:	
	bsf	(___ftmul@f1)^080h+(15/8),(15)&7
	line	66
	
l6761:	
	bsf	(___ftmul@f2)^080h+(15/8),(15)&7
	line	67
	
l6763:	
	movlw	0FFh
	andwf	(___ftmul@f2)^080h,f
	movlw	0FFh
	andwf	(___ftmul@f2+1)^080h,f
	movlw	0
	andwf	(___ftmul@f2+2)^080h,f
	line	68
	
l6765:	
	movlw	0
	movwf	(___ftmul@f3_as_product)^080h
	movlw	0
	movwf	(___ftmul@f3_as_product+1)^080h
	movlw	0
	movwf	(___ftmul@f3_as_product+2)^080h
	line	69
	
l6767:	
	movlw	(07h)
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	movwf	(___ftmul@cntr)^080h
	goto	l6769
	line	70
	
l2068:	
	line	71
	
l6769:	
	btfss	(___ftmul@f1)^080h,(0)&7
	goto	u6231
	goto	u6230
u6231:
	goto	l6773
u6230:
	line	72
	
l6771:	
	movf	(___ftmul@f2)^080h,w
	addwf	(___ftmul@f3_as_product)^080h,f
	movf	(___ftmul@f2+1)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+1)^080h,w
	skipnz
	goto	u6241
	addwf	(___ftmul@f3_as_product+1)^080h,f
u6241:
	movf	(___ftmul@f2+2)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+2)^080h,w
	skipnz
	goto	u6242
	addwf	(___ftmul@f3_as_product+2)^080h,f
u6242:

	goto	l6773
	
l2069:	
	line	73
	
l6773:	
	movlw	01h
u6255:
	clrc
	rrf	(___ftmul@f1+2)^080h,f
	rrf	(___ftmul@f1+1)^080h,f
	rrf	(___ftmul@f1)^080h,f
	addlw	-1
	skipz
	goto	u6255

	line	74
	
l6775:	
	movlw	01h
u6265:
	clrc
	rlf	(___ftmul@f2)^080h,f
	rlf	(___ftmul@f2+1)^080h,f
	rlf	(___ftmul@f2+2)^080h,f
	addlw	-1
	skipz
	goto	u6265
	line	75
	
l6777:	
	movlw	low(01h)
	subwf	(___ftmul@cntr)^080h,f
	btfss	status,2
	goto	u6271
	goto	u6270
u6271:
	goto	l6769
u6270:
	goto	l6779
	
l2070:	
	line	76
	
l6779:	
	movlw	(09h)
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	movwf	(___ftmul@cntr)^080h
	goto	l6781
	line	77
	
l2071:	
	line	78
	
l6781:	
	btfss	(___ftmul@f1)^080h,(0)&7
	goto	u6281
	goto	u6280
u6281:
	goto	l6785
u6280:
	line	79
	
l6783:	
	movf	(___ftmul@f2)^080h,w
	addwf	(___ftmul@f3_as_product)^080h,f
	movf	(___ftmul@f2+1)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+1)^080h,w
	skipnz
	goto	u6291
	addwf	(___ftmul@f3_as_product+1)^080h,f
u6291:
	movf	(___ftmul@f2+2)^080h,w
	clrz
	skipnc
	incf	(___ftmul@f2+2)^080h,w
	skipnz
	goto	u6292
	addwf	(___ftmul@f3_as_product+2)^080h,f
u6292:

	goto	l6785
	
l2072:	
	line	80
	
l6785:	
	movlw	01h
u6305:
	clrc
	rrf	(___ftmul@f1+2)^080h,f
	rrf	(___ftmul@f1+1)^080h,f
	rrf	(___ftmul@f1)^080h,f
	addlw	-1
	skipz
	goto	u6305

	line	81
	
l6787:	
	movlw	01h
u6315:
	clrc
	rrf	(___ftmul@f3_as_product+2)^080h,f
	rrf	(___ftmul@f3_as_product+1)^080h,f
	rrf	(___ftmul@f3_as_product)^080h,f
	addlw	-1
	skipz
	goto	u6315

	line	82
	
l6789:	
	movlw	low(01h)
	subwf	(___ftmul@cntr)^080h,f
	btfss	status,2
	goto	u6321
	goto	u6320
u6321:
	goto	l6781
u6320:
	goto	l6791
	
l2073:	
	line	83
	
l6791:	
	movf	(___ftmul@f3_as_product)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___ftmul@f3_as_product+1)^080h,w
	movwf	(?___ftpack+1)^080h
	movf	(___ftmul@f3_as_product+2)^080h,w
	movwf	(?___ftpack+2)^080h
	movf	(___ftmul@exp)^080h,w
	movwf	(??___ftmul+0)^080h+0
	movf	(??___ftmul+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	movf	(___ftmul@sign)^080h,w
	movwf	(??___ftmul+1)^080h+0
	movf	(??___ftmul+1)^080h+0,w
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___ftmul)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___ftmul+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___ftmul+2)^080h
	goto	l2066
	
l6793:	
	line	84
	
l2066:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text1115,local,class=CODE,delta=2
global __ptext1115
__ptext1115:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   31[BANK1 ] float 
;;  f1              3   34[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   42[BANK1 ] float 
;;  sign            1   46[BANK1 ] unsigned char 
;;  exp             1   45[BANK1 ] unsigned char 
;;  cntr            1   41[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   31[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      16       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_receive_pid
;; This function uses a non-reentrant model
;;
psect	text1115
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 1
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l6703:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1)^080h,w
	movwf	((??___ftdiv+0)^080h+0)
	movf	(___ftdiv@f1+1)^080h,w
	movwf	((??___ftdiv+0)^080h+0+1)
	movf	(___ftdiv@f1+2)^080h,w
	movwf	((??___ftdiv+0)^080h+0+2)
	clrc
	rlf	(??___ftdiv+0)^080h+1,w
	rlf	(??___ftdiv+0)^080h+2,w
	movwf	(??___ftdiv+3)^080h+0
	movf	(??___ftdiv+3)^080h+0,w
	movwf	(___ftdiv@exp)^080h
	movf	((___ftdiv@exp)^080h),f
	skipz
	goto	u6111
	goto	u6110
u6111:
	goto	l6709
u6110:
	line	56
	
l6705:	
	movlw	0x0
	movwf	(?___ftdiv)^080h
	movlw	0x0
	movwf	(?___ftdiv+1)^080h
	movlw	0x0
	movwf	(?___ftdiv+2)^080h
	goto	l2056
	
l6707:	
	goto	l2056
	
l2055:	
	line	57
	
l6709:	
	movf	(___ftdiv@f2)^080h,w
	movwf	((??___ftdiv+0)^080h+0)
	movf	(___ftdiv@f2+1)^080h,w
	movwf	((??___ftdiv+0)^080h+0+1)
	movf	(___ftdiv@f2+2)^080h,w
	movwf	((??___ftdiv+0)^080h+0+2)
	clrc
	rlf	(??___ftdiv+0)^080h+1,w
	rlf	(??___ftdiv+0)^080h+2,w
	movwf	(??___ftdiv+3)^080h+0
	movf	(??___ftdiv+3)^080h+0,w
	movwf	(___ftdiv@sign)^080h
	movf	((___ftdiv@sign)^080h),f
	skipz
	goto	u6121
	goto	u6120
u6121:
	goto	l6715
u6120:
	line	58
	
l6711:	
	movlw	0x0
	movwf	(?___ftdiv)^080h
	movlw	0x0
	movwf	(?___ftdiv+1)^080h
	movlw	0x0
	movwf	(?___ftdiv+2)^080h
	goto	l2056
	
l6713:	
	goto	l2056
	
l2057:	
	line	59
	
l6715:	
	movlw	0
	movwf	(___ftdiv@f3)^080h
	movlw	0
	movwf	(___ftdiv@f3+1)^080h
	movlw	0
	movwf	(___ftdiv@f3+2)^080h
	line	60
	
l6717:	
	movlw	(089h)
	addwf	(___ftdiv@sign)^080h,w
	movwf	(??___ftdiv+0)^080h+0
	movf	0+(??___ftdiv+0)^080h+0,w
	subwf	(___ftdiv@exp)^080h,f
	line	61
	
l6719:	
	movf	(___ftdiv@f1)^080h,w
	movwf	((??___ftdiv+0)^080h+0)
	movf	(___ftdiv@f1+1)^080h,w
	movwf	((??___ftdiv+0)^080h+0+1)
	movf	(___ftdiv@f1+2)^080h,w
	movwf	((??___ftdiv+0)^080h+0+2)
	movlw	010h
u6135:
	clrc
	rrf	(??___ftdiv+0)^080h+2,f
	rrf	(??___ftdiv+0)^080h+1,f
	rrf	(??___ftdiv+0)^080h+0,f
u6130:
	addlw	-1
	skipz
	goto	u6135
	movf	0+(??___ftdiv+0)^080h+0,w
	movwf	(??___ftdiv+3)^080h+0
	movf	(??___ftdiv+3)^080h+0,w
	movwf	(___ftdiv@sign)^080h
	line	62
	
l6721:	
	movf	(___ftdiv@f2)^080h,w
	movwf	((??___ftdiv+0)^080h+0)
	movf	(___ftdiv@f2+1)^080h,w
	movwf	((??___ftdiv+0)^080h+0+1)
	movf	(___ftdiv@f2+2)^080h,w
	movwf	((??___ftdiv+0)^080h+0+2)
	movlw	010h
u6145:
	clrc
	rrf	(??___ftdiv+0)^080h+2,f
	rrf	(??___ftdiv+0)^080h+1,f
	rrf	(??___ftdiv+0)^080h+0,f
u6140:
	addlw	-1
	skipz
	goto	u6145
	movf	0+(??___ftdiv+0)^080h+0,w
	movwf	(??___ftdiv+3)^080h+0
	movf	(??___ftdiv+3)^080h+0,w
	xorwf	(___ftdiv@sign)^080h,f
	line	63
	
l6723:	
	movlw	(080h)
	movwf	(??___ftdiv+0)^080h+0
	movf	(??___ftdiv+0)^080h+0,w
	andwf	(___ftdiv@sign)^080h,f
	line	64
	
l6725:	
	bsf	(___ftdiv@f1)^080h+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1)^080h,f
	movlw	0FFh
	andwf	(___ftdiv@f1+1)^080h,f
	movlw	0
	andwf	(___ftdiv@f1+2)^080h,f
	line	66
	
l6727:	
	bsf	(___ftdiv@f2)^080h+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2)^080h,f
	movlw	0FFh
	andwf	(___ftdiv@f2+1)^080h,f
	movlw	0
	andwf	(___ftdiv@f2+2)^080h,f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)^080h+0
	movf	(??___ftdiv+0)^080h+0,w
	movwf	(___ftdiv@cntr)^080h
	goto	l6729
	line	69
	
l2058:	
	line	70
	
l6729:	
	movlw	01h
u6155:
	clrc
	rlf	(___ftdiv@f3)^080h,f
	rlf	(___ftdiv@f3+1)^080h,f
	rlf	(___ftdiv@f3+2)^080h,f
	addlw	-1
	skipz
	goto	u6155
	line	71
	
l6731:	
	movf	(___ftdiv@f2+2)^080h,w
	subwf	(___ftdiv@f1+2)^080h,w
	skipz
	goto	u6165
	movf	(___ftdiv@f2+1)^080h,w
	subwf	(___ftdiv@f1+1)^080h,w
	skipz
	goto	u6165
	movf	(___ftdiv@f2)^080h,w
	subwf	(___ftdiv@f1)^080h,w
u6165:
	skipc
	goto	u6161
	goto	u6160
u6161:
	goto	l6737
u6160:
	line	72
	
l6733:	
	movf	(___ftdiv@f2)^080h,w
	subwf	(___ftdiv@f1)^080h,f
	movf	(___ftdiv@f2+1)^080h,w
	skipc
	incfsz	(___ftdiv@f2+1)^080h,w
	subwf	(___ftdiv@f1+1)^080h,f
	movf	(___ftdiv@f2+2)^080h,w
	skipc
	incf	(___ftdiv@f2+2)^080h,w
	subwf	(___ftdiv@f1+2)^080h,f
	line	73
	
l6735:	
	bsf	(___ftdiv@f3)^080h+(0/8),(0)&7
	goto	l6737
	line	74
	
l2059:	
	line	75
	
l6737:	
	movlw	01h
u6175:
	clrc
	rlf	(___ftdiv@f1)^080h,f
	rlf	(___ftdiv@f1+1)^080h,f
	rlf	(___ftdiv@f1+2)^080h,f
	addlw	-1
	skipz
	goto	u6175
	line	76
	
l6739:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr)^080h,f
	btfss	status,2
	goto	u6181
	goto	u6180
u6181:
	goto	l6729
u6180:
	goto	l6741
	
l2060:	
	line	77
	
l6741:	
	movf	(___ftdiv@f3)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___ftdiv@f3+1)^080h,w
	movwf	(?___ftpack+1)^080h
	movf	(___ftdiv@f3+2)^080h,w
	movwf	(?___ftpack+2)^080h
	movf	(___ftdiv@exp)^080h,w
	movwf	(??___ftdiv+0)^080h+0
	movf	(??___ftdiv+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	movf	(___ftdiv@sign)^080h,w
	movwf	(??___ftdiv+1)^080h+0
	movf	(??___ftdiv+1)^080h+0,w
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___ftdiv)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___ftdiv+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___ftdiv+2)^080h
	goto	l2056
	
l6743:	
	line	78
	
l2056:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text1116,local,class=CODE,delta=2
global __ptext1116
__ptext1116:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   31[BANK1 ] float 
;;  f2              3   34[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   43[BANK1 ] unsigned char 
;;  exp2            1   42[BANK1 ] unsigned char 
;;  sign            1   41[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   31[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_error
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text1116
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6631:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1)^080h,w
	movwf	((??___ftadd+0)^080h+0)
	movf	(___ftadd@f1+1)^080h,w
	movwf	((??___ftadd+0)^080h+0+1)
	movf	(___ftadd@f1+2)^080h,w
	movwf	((??___ftadd+0)^080h+0+2)
	clrc
	rlf	(??___ftadd+0)^080h+1,w
	rlf	(??___ftadd+0)^080h+2,w
	movwf	(??___ftadd+3)^080h+0
	movf	(??___ftadd+3)^080h+0,w
	movwf	(___ftadd@exp1)^080h
	line	91
	movf	(___ftadd@f2)^080h,w
	movwf	((??___ftadd+0)^080h+0)
	movf	(___ftadd@f2+1)^080h,w
	movwf	((??___ftadd+0)^080h+0+1)
	movf	(___ftadd@f2+2)^080h,w
	movwf	((??___ftadd+0)^080h+0+2)
	clrc
	rlf	(??___ftadd+0)^080h+1,w
	rlf	(??___ftadd+0)^080h+2,w
	movwf	(??___ftadd+3)^080h+0
	movf	(??___ftadd+3)^080h+0,w
	movwf	(___ftadd@exp2)^080h
	line	92
	
l6633:	
	movf	(___ftadd@exp1)^080h,w
	skipz
	goto	u5870
	goto	l6639
u5870:
	
l6635:	
	movf	(___ftadd@exp2)^080h,w
	subwf	(___ftadd@exp1)^080h,w
	skipnc
	goto	u5881
	goto	u5880
u5881:
	goto	l6643
u5880:
	
l6637:	
	decf	(___ftadd@exp1)^080h,w
	xorlw	0ffh
	addwf	(___ftadd@exp2)^080h,w
	movwf	(??___ftadd+0)^080h+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)^080h+0,w
	skipc
	goto	u5891
	goto	u5890
u5891:
	goto	l6643
u5890:
	goto	l6639
	
l2013:	
	line	93
	
l6639:	
	movf	(___ftadd@f2)^080h,w
	movwf	(?___ftadd)^080h
	movf	(___ftadd@f2+1)^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(___ftadd@f2+2)^080h,w
	movwf	(?___ftadd+2)^080h
	goto	l2014
	
l6641:	
	goto	l2014
	
l2011:	
	line	94
	
l6643:	
	movf	(___ftadd@exp2)^080h,w
	skipz
	goto	u5900
	goto	l2017
u5900:
	
l6645:	
	movf	(___ftadd@exp1)^080h,w
	subwf	(___ftadd@exp2)^080h,w
	skipnc
	goto	u5911
	goto	u5910
u5911:
	goto	l6649
u5910:
	
l6647:	
	decf	(___ftadd@exp2)^080h,w
	xorlw	0ffh
	addwf	(___ftadd@exp1)^080h,w
	movwf	(??___ftadd+0)^080h+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)^080h+0,w
	skipc
	goto	u5921
	goto	u5920
u5921:
	goto	l6649
u5920:
	
l2017:	
	line	95
	goto	l2014
	
l2015:	
	line	96
	
l6649:	
	movlw	(06h)
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	movwf	(___ftadd@sign)^080h
	line	97
	
l6651:	
	btfss	(___ftadd@f1+2)^080h,(23)&7
	goto	u5931
	goto	u5930
u5931:
	goto	l2018
u5930:
	line	98
	
l6653:	
	bsf	(___ftadd@sign)^080h+(7/8),(7)&7
	
l2018:	
	line	99
	btfss	(___ftadd@f2+2)^080h,(23)&7
	goto	u5941
	goto	u5940
u5941:
	goto	l2019
u5940:
	line	100
	
l6655:	
	bsf	(___ftadd@sign)^080h+(6/8),(6)&7
	
l2019:	
	line	101
	bsf	(___ftadd@f1)^080h+(15/8),(15)&7
	line	102
	
l6657:	
	movlw	0FFh
	andwf	(___ftadd@f1)^080h,f
	movlw	0FFh
	andwf	(___ftadd@f1+1)^080h,f
	movlw	0
	andwf	(___ftadd@f1+2)^080h,f
	line	103
	
l6659:	
	bsf	(___ftadd@f2)^080h+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	andwf	(___ftadd@f2+1)^080h,f
	movlw	0
	andwf	(___ftadd@f2+2)^080h,f
	line	106
	movf	(___ftadd@exp2)^080h,w
	subwf	(___ftadd@exp1)^080h,w
	skipnc
	goto	u5951
	goto	u5950
u5951:
	goto	l6671
u5950:
	goto	l6661
	line	109
	
l2021:	
	line	110
	
l6661:	
	movlw	01h
u5965:
	clrc
	rlf	(___ftadd@f2)^080h,f
	rlf	(___ftadd@f2+1)^080h,f
	rlf	(___ftadd@f2+2)^080h,f
	addlw	-1
	skipz
	goto	u5965
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2)^080h,f
	line	112
	
l6663:	
	movf	(___ftadd@exp2)^080h,w
	xorwf	(___ftadd@exp1)^080h,w
	skipnz
	goto	u5971
	goto	u5970
u5971:
	goto	l6669
u5970:
	
l6665:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^080h,f
	movf	((___ftadd@sign)^080h),w
	andlw	07h
	btfss	status,2
	goto	u5981
	goto	u5980
u5981:
	goto	l6661
u5980:
	goto	l6669
	
l2023:	
	goto	l6669
	
l2024:	
	line	113
	goto	l6669
	
l2026:	
	line	114
	
l6667:	
	movlw	01h
u5995:
	clrc
	rrf	(___ftadd@f1+2)^080h,f
	rrf	(___ftadd@f1+1)^080h,f
	rrf	(___ftadd@f1)^080h,f
	addlw	-1
	skipz
	goto	u5995

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	addwf	(___ftadd@exp1)^080h,f
	goto	l6669
	line	116
	
l2025:	
	line	113
	
l6669:	
	movf	(___ftadd@exp1)^080h,w
	xorwf	(___ftadd@exp2)^080h,w
	skipz
	goto	u6001
	goto	u6000
u6001:
	goto	l6667
u6000:
	goto	l2028
	
l2027:	
	line	117
	goto	l2028
	
l2020:	
	
l6671:	
	movf	(___ftadd@exp1)^080h,w
	subwf	(___ftadd@exp2)^080h,w
	skipnc
	goto	u6011
	goto	u6010
u6011:
	goto	l2028
u6010:
	goto	l6673
	line	120
	
l2030:	
	line	121
	
l6673:	
	movlw	01h
u6025:
	clrc
	rlf	(___ftadd@f1)^080h,f
	rlf	(___ftadd@f1+1)^080h,f
	rlf	(___ftadd@f1+2)^080h,f
	addlw	-1
	skipz
	goto	u6025
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1)^080h,f
	line	123
	
l6675:	
	movf	(___ftadd@exp2)^080h,w
	xorwf	(___ftadd@exp1)^080h,w
	skipnz
	goto	u6031
	goto	u6030
u6031:
	goto	l6681
u6030:
	
l6677:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^080h,f
	movf	((___ftadd@sign)^080h),w
	andlw	07h
	btfss	status,2
	goto	u6041
	goto	u6040
u6041:
	goto	l6673
u6040:
	goto	l6681
	
l2032:	
	goto	l6681
	
l2033:	
	line	124
	goto	l6681
	
l2035:	
	line	125
	
l6679:	
	movlw	01h
u6055:
	clrc
	rrf	(___ftadd@f2+2)^080h,f
	rrf	(___ftadd@f2+1)^080h,f
	rrf	(___ftadd@f2)^080h,f
	addlw	-1
	skipz
	goto	u6055

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	addwf	(___ftadd@exp2)^080h,f
	goto	l6681
	line	127
	
l2034:	
	line	124
	
l6681:	
	movf	(___ftadd@exp1)^080h,w
	xorwf	(___ftadd@exp2)^080h,w
	skipz
	goto	u6061
	goto	u6060
u6061:
	goto	l6679
u6060:
	goto	l2028
	
l2036:	
	goto	l2028
	line	128
	
l2029:	
	line	129
	
l2028:	
	btfss	(___ftadd@sign)^080h,(7)&7
	goto	u6071
	goto	u6070
u6071:
	goto	l6685
u6070:
	line	131
	
l6683:	
	movlw	0FFh
	xorwf	(___ftadd@f1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f1+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f1+2)^080h,f
	line	132
	movlw	01h
	addwf	(___ftadd@f1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2)^080h,f
	goto	l6685
	line	133
	
l2037:	
	line	134
	
l6685:	
	btfss	(___ftadd@sign)^080h,(6)&7
	goto	u6081
	goto	u6080
u6081:
	goto	l6689
u6080:
	line	136
	
l6687:	
	movlw	0FFh
	xorwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+2)^080h,f
	line	137
	movlw	01h
	addwf	(___ftadd@f2)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2)^080h,f
	goto	l6689
	line	138
	
l2038:	
	line	139
	
l6689:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)^080h
	line	140
	
l6691:	
	movf	(___ftadd@f1)^080h,w
	addwf	(___ftadd@f2)^080h,f
	movf	(___ftadd@f1+1)^080h,w
	clrz
	skipnc
	incf	(___ftadd@f1+1)^080h,w
	skipnz
	goto	u6091
	addwf	(___ftadd@f2+1)^080h,f
u6091:
	movf	(___ftadd@f1+2)^080h,w
	clrz
	skipnc
	incf	(___ftadd@f1+2)^080h,w
	skipnz
	goto	u6092
	addwf	(___ftadd@f2+2)^080h,f
u6092:

	line	141
	
l6693:	
	btfss	(___ftadd@f2+2)^080h,(23)&7
	goto	u6101
	goto	u6100
u6101:
	goto	l6699
u6100:
	line	142
	
l6695:	
	movlw	0FFh
	xorwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+2)^080h,f
	line	143
	movlw	01h
	addwf	(___ftadd@f2)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2)^080h,f
	line	144
	
l6697:	
	clrf	(___ftadd@sign)^080h
	bsf	status,0
	rlf	(___ftadd@sign)^080h,f
	goto	l6699
	line	145
	
l2039:	
	line	146
	
l6699:	
	movf	(___ftadd@f2)^080h,w
	movwf	(?___ftpack)^080h
	movf	(___ftadd@f2+1)^080h,w
	movwf	(?___ftpack+1)^080h
	movf	(___ftadd@f2+2)^080h,w
	movwf	(?___ftpack+2)^080h
	movf	(___ftadd@exp1)^080h,w
	movwf	(??___ftadd+0)^080h+0
	movf	(??___ftadd+0)^080h+0,w
	movwf	0+(?___ftpack)^080h+03h
	movf	(___ftadd@sign)^080h,w
	movwf	(??___ftadd+1)^080h+0
	movf	(??___ftadd+1)^080h+0,w
	movwf	0+(?___ftpack)^080h+04h
	fcall	___ftpack
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftpack))^080h,w
	movwf	(?___ftadd)^080h
	movf	(1+(?___ftpack))^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(2+(?___ftpack))^080h,w
	movwf	(?___ftadd+2)^080h
	goto	l2014
	
l6701:	
	line	148
	
l2014:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_lcd_busy
psect	text1117,local,class=CODE,delta=2
global __ptext1117
__ptext1117:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1    1[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text1117
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 0
; Regs used in _lcd_busy: [wreg]
	line	50
	
l6617:	
;lcd.c: 48: unsigned char busy;
;lcd.c: 50: TRISD4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1092/8)^080h,(1092)&7
	line	51
;lcd.c: 51: TRISD5 = 1;
	bsf	(1093/8)^080h,(1093)&7
	line	52
;lcd.c: 52: TRISD6 = 1;
	bsf	(1094/8)^080h,(1094)&7
	line	53
;lcd.c: 53: TRISD7 = 1;
	bsf	(1095/8)^080h,(1095)&7
	line	55
;lcd.c: 55: RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	56
;lcd.c: 56: RD1 = 0;
	bcf	(65/8),(65)&7
	line	57
	
l6619:	
;lcd.c: 57: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_lcd_busy+0)^080h+0,f
u6627:
decfsz	(??_lcd_busy+0)^080h+0,f
	goto	u6627
	clrwdt
opt asmopt_on

	line	58
	
l6621:	
;lcd.c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd.c: 59: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_lcd_busy+0)^080h+0,f
u6637:
decfsz	(??_lcd_busy+0)^080h+0,f
	goto	u6637
	clrwdt
opt asmopt_on

	line	61
;lcd.c: 61: busy = RD7;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_busy+0)^080h+0
	movf	(??_lcd_busy+0)^080h+0,w
	movwf	(lcd_busy@busy)^080h
	line	63
	
l6623:	
;lcd.c: 63: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	64
;lcd.c: 64: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_lcd_busy+0)^080h+0,f
u6647:
decfsz	(??_lcd_busy+0)^080h+0,f
	goto	u6647
	clrwdt
opt asmopt_on

	line	65
	
l6625:	
;lcd.c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd.c: 66: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_lcd_busy+0)^080h+0,f
u6657:
decfsz	(??_lcd_busy+0)^080h+0,f
	goto	u6657
	clrwdt
opt asmopt_on

	line	67
	
l6627:	
;lcd.c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd.c: 70: return busy;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_busy@busy)^080h,w
	goto	l1916
	
l6629:	
	line	71
	
l1916:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text1118,local,class=CODE,delta=2
global __ptext1118
__ptext1118:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1    0[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    3[BANK1 ] unsigned char 
;;  temp            1    4[BANK1 ] struct _BYTE_VAL
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       1       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text1118
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\lcd.c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 0
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(lcd_put_byte@rs)^080h
	
l6581:	
;lcd.c: 107: BYTE_VAL temp;
;lcd.c: 109: TRISD4 = 0;
	bcf	(1092/8)^080h,(1092)&7
	line	110
;lcd.c: 110: TRISD5 = 0;
	bcf	(1093/8)^080h,(1093)&7
	line	111
;lcd.c: 111: TRISD6 = 0;
	bcf	(1094/8)^080h,(1094)&7
	line	112
;lcd.c: 112: TRISD7 = 0;
	bcf	(1095/8)^080h,(1095)&7
	line	114
;lcd.c: 114: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	115
	
l6583:	
;lcd.c: 115: if(rs) RD1 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_put_byte@rs)^080h,w
	skipz
	goto	u5700
	goto	l6587
u5700:
	
l6585:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	goto	l6587
	
l1923:	
	line	117
	
l6587:	
;lcd.c: 117: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_lcd_put_byte+0)^080h+0,f
u6667:
decfsz	(??_lcd_put_byte+0)^080h+0,f
	goto	u6667
	clrwdt
opt asmopt_on

	line	118
	
l6589:	
;lcd.c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd.c: 119: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_lcd_put_byte+0)^080h+0,f
u6677:
decfsz	(??_lcd_put_byte+0)^080h+0,f
	goto	u6677
	clrwdt
opt asmopt_on

	line	120
	
l6591:	
;lcd.c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd.c: 122: temp.Val = b;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_put_byte@b)^080h,w
	movwf	(??_lcd_put_byte+0)^080h+0
	movf	(??_lcd_put_byte+0)^080h+0,w
	movwf	(lcd_put_byte@temp)^080h
	line	125
	
l6593:	
;lcd.c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp)^080h,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)^080h+0
	rrf	(??_lcd_put_byte+0)^080h+0,w
	btfsc	status,0
	goto	u5711
	goto	u5710
	
u5711:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u5724
u5710:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u5724:
	line	126
	
l6595:	
;lcd.c: 126: RD5 = temp.bits.b5;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	swapf	(lcd_put_byte@temp)^080h,w
	movwf	(??_lcd_put_byte+0)^080h+0
	rrf	(??_lcd_put_byte+0)^080h+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)^080h+0
	rrf	(??_lcd_put_byte+1)^080h+0,w
	btfsc	status,0
	goto	u5731
	goto	u5730
	
u5731:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u5744
u5730:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u5744:
	line	127
	
l6597:	
;lcd.c: 127: RD6 = temp.bits.b6;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	swapf	(lcd_put_byte@temp)^080h,w
	movwf	(??_lcd_put_byte+0)^080h+0
	rrf	(??_lcd_put_byte+0)^080h+0,f
	rrf	(??_lcd_put_byte+0)^080h+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)^080h+0
	rrf	(??_lcd_put_byte+1)^080h+0,w
	btfsc	status,0
	goto	u5751
	goto	u5750
	
u5751:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u5764
u5750:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u5764:
	line	128
	
l6599:	
;lcd.c: 128: RD7 = temp.bits.b7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rlf	(lcd_put_byte@temp)^080h,w
	rlf	(lcd_put_byte@temp)^080h,w
	andlw	1
	movwf	(??_lcd_put_byte+0)^080h+0
	rrf	(??_lcd_put_byte+0)^080h+0,w
	btfsc	status,0
	goto	u5771
	goto	u5770
	
u5771:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u5784
u5770:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u5784:
	line	129
;lcd.c: 129: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_lcd_put_byte+0)^080h+0,f
u6687:
decfsz	(??_lcd_put_byte+0)^080h+0,f
	goto	u6687
	clrwdt
opt asmopt_on

	line	130
	
l6601:	
;lcd.c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd.c: 131: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_lcd_put_byte+0)^080h+0,f
u6697:
decfsz	(??_lcd_put_byte+0)^080h+0,f
	goto	u6697
	clrwdt
opt asmopt_on

	line	132
	
l6603:	
;lcd.c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l6605:	
;lcd.c: 134: RD4 = temp.bits.b0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_put_byte@temp)^080h,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)^080h+0
	rrf	(??_lcd_put_byte+0)^080h+0,w
	btfsc	status,0
	goto	u5791
	goto	u5790
	
u5791:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u5804
u5790:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u5804:
	line	135
	
l6607:	
;lcd.c: 135: RD5 = temp.bits.b1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rrf	(lcd_put_byte@temp)^080h,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)^080h+0
	rrf	(??_lcd_put_byte+0)^080h+0,w
	btfsc	status,0
	goto	u5811
	goto	u5810
	
u5811:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u5824
u5810:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u5824:
	line	136
	
l6609:	
;lcd.c: 136: RD6 = temp.bits.b2;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rrf	(lcd_put_byte@temp)^080h,w
	movwf	(??_lcd_put_byte+0)^080h+0
	rrf	(??_lcd_put_byte+0)^080h+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)^080h+0
	rrf	(??_lcd_put_byte+1)^080h+0,w
	btfsc	status,0
	goto	u5831
	goto	u5830
	
u5831:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u5844
u5830:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u5844:
	line	137
	
l6611:	
;lcd.c: 137: RD7 = temp.bits.b3;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rrf	(lcd_put_byte@temp)^080h,w
	movwf	(??_lcd_put_byte+0)^080h+0
	rrf	(??_lcd_put_byte+0)^080h+0,f
	rrf	(??_lcd_put_byte+0)^080h+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)^080h+0
	rrf	(??_lcd_put_byte+1)^080h+0,w
	btfsc	status,0
	goto	u5851
	goto	u5850
	
u5851:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u5864
u5850:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u5864:
	line	138
;lcd.c: 138: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_lcd_put_byte+0)^080h+0,f
u6707:
decfsz	(??_lcd_put_byte+0)^080h+0,f
	goto	u6707
	clrwdt
opt asmopt_on

	line	139
	
l6613:	
;lcd.c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd.c: 140: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_lcd_put_byte+0)^080h+0,f
u6717:
decfsz	(??_lcd_put_byte+0)^080h+0,f
	goto	u6717
	clrwdt
opt asmopt_on

	line	141
	
l6615:	
;lcd.c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l1924:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	_I2C_write
psect	text1119,local,class=CODE,delta=2
global __ptext1119
__ptext1119:

;; *************** function _I2C_write *****************
;; Defined at:
;;		line 163 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;  d               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  d               1    1[BANK1 ] unsigned char 
;;  x               1    2[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_i2c_dly
;; This function is called by:
;;		_BH1750_write
;; This function uses a non-reentrant model
;;
psect	text1119
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	163
	global	__size_of_I2C_write
	__size_of_I2C_write	equ	__end_of_I2C_write-_I2C_write
	
_I2C_write:	
	opt	stack 1
; Regs used in _I2C_write: [wreg+status,2+status,0+pclath+cstack]
;I2C_write@d stored from wreg
	line	165
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(I2C_write@d)^080h
	line	166
	
l6563:	
;main.c: 164: char x;
;main.c: 165: static bit b;
;main.c: 166: for(x=8; x; x--) {
	movlw	(08h)
	movwf	(??_I2C_write+0)^080h+0
	movf	(??_I2C_write+0)^080h+0,w
	movwf	(I2C_write@x)^080h
	goto	l993
	
l994:	
	line	167
;main.c: 167: if(d&0x80) TRISC4 = 1;
	btfss	(I2C_write@d)^080h,(7)&7
	goto	u5671
	goto	u5670
u5671:
	goto	l995
u5670:
	
l6565:	
	bsf	(1084/8)^080h,(1084)&7
	goto	l996
	line	168
	
l995:	
;main.c: 168: else TRISC4 = 0;
	bcf	(1084/8)^080h,(1084)&7
	
l996:	
	line	169
;main.c: 169: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	170
	
l6567:	
;main.c: 170: d <<= 1;
	clrc
	rlf	(I2C_write@d)^080h,f

	line	171
	
l6569:	
;main.c: 171: TRISC3 = 0;
	bcf	(1083/8)^080h,(1083)&7
	line	166
	
l6571:	
	movlw	low(01h)
	subwf	(I2C_write@x)^080h,f
	
l993:	
	movf	(I2C_write@x)^080h,f
	skipz
	goto	u5681
	goto	u5680
u5681:
	goto	l994
u5680:
	
l997:	
	line	173
;main.c: 172: }
;main.c: 173: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	line	174
;main.c: 174: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	175
	
l6573:	
;main.c: 175: i2c_dly();
	fcall	_i2c_dly
	line	176
	
l6575:	
;main.c: 176: b = RC4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(I2C_write@b/8),(I2C_write@b)&7
	btfss	(60/8),(60)&7
	goto	u5695
	bsf	(I2C_write@b/8),(I2C_write@b)&7
u5695:

	line	178
	
l6577:	
;main.c: 178: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	goto	l998
	line	179
	
l6579:	
	line	180
;main.c: 179: return b;
;	Return value of _I2C_write is never used
	
l998:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_write
	__end_of_I2C_write:
;; =============== function _I2C_write ends ============

	signat	_I2C_write,4216
	global	_I2C_stop
psect	text1120,local,class=CODE,delta=2
global __ptext1120
__ptext1120:

;; *************** function _I2C_stop *****************
;; Defined at:
;;		line 129 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_i2c_dly
;; This function is called by:
;;		_BH1750_write
;; This function uses a non-reentrant model
;;
psect	text1120
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	129
	global	__size_of_I2C_stop
	__size_of_I2C_stop	equ	__end_of_I2C_stop-_I2C_stop
	
_I2C_stop:	
	opt	stack 1
; Regs used in _I2C_stop: [status,2+status,0+pclath+cstack]
	line	130
	
l6555:	
;main.c: 130: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	131
	
l6557:	
;main.c: 131: i2c_dly();
	fcall	_i2c_dly
	line	132
	
l6559:	
;main.c: 132: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	133
;main.c: 133: i2c_dly();
	fcall	_i2c_dly
	line	134
	
l6561:	
;main.c: 134: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	135
;main.c: 135: i2c_dly();
	fcall	_i2c_dly
	line	136
	
l978:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_stop
	__end_of_I2C_stop:
;; =============== function _I2C_stop ends ============

	signat	_I2C_stop,88
	global	_I2C_start
psect	text1121,local,class=CODE,delta=2
global __ptext1121
__ptext1121:

;; *************** function _I2C_start *****************
;; Defined at:
;;		line 117 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_i2c_dly
;; This function is called by:
;;		_BH1750_write
;; This function uses a non-reentrant model
;;
psect	text1121
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	117
	global	__size_of_I2C_start
	__size_of_I2C_start	equ	__end_of_I2C_start-_I2C_start
	
_I2C_start:	
	opt	stack 1
; Regs used in _I2C_start: [status,2+status,0+pclath+cstack]
	line	118
	
l6545:	
;main.c: 118: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	119
	
l6547:	
;main.c: 119: i2c_dly();
	fcall	_i2c_dly
	line	120
	
l6549:	
;main.c: 120: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	121
;main.c: 121: i2c_dly();
	fcall	_i2c_dly
	line	122
	
l6551:	
;main.c: 122: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	123
;main.c: 123: i2c_dly();
	fcall	_i2c_dly
	line	124
	
l6553:	
;main.c: 124: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	125
;main.c: 125: i2c_dly();
	fcall	_i2c_dly
	line	126
	
l975:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_start
	__end_of_I2C_start:
;; =============== function _I2C_start ends ============

	signat	_I2C_start,88
	global	_delay_ms
psect	text1122,local,class=CODE,delta=2
global __ptext1122
__ptext1122:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 103 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2    3[BANK1 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_nhietdo
;;		_send_lux
;;		_receive_pid
;;		_send_error
;;		_main
;;		_BH1750_init
;; This function uses a non-reentrant model
;;
psect	text1122
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	103
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 2
; Regs used in _delay_ms: [wreg]
	line	104
	
l6541:	
;main.c: 104: int i=0;
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(delay_ms@i)^080h
	movlw	high(0)
	movwf	((delay_ms@i)^080h)+1
	line	105
;main.c: 105: for(;i<x;i++)
	goto	l966
	line	106
	
l967:	
	line	107
	
l6543:	
;main.c: 106: {
;main.c: 107: _delay(1000);
	opt asmopt_off
movlw	249
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_delay_ms+0)^080h+0,f
u6727:
	clrwdt
decfsz	(??_delay_ms+0)^080h+0,f
	goto	u6727
	nop2	;nop
	clrwdt
opt asmopt_on

	line	105
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(delay_ms@i)^080h,f
	skipnc
	incf	(delay_ms@i+1)^080h,f
	movlw	high(01h)
	addwf	(delay_ms@i+1)^080h,f
	
l966:	
	movf	(delay_ms@i+1)^080h,w
	xorlw	80h
	movwf	(??_delay_ms+0)^080h+0
	movf	(delay_ms@x+1)^080h,w
	xorlw	80h
	subwf	(??_delay_ms+0)^080h+0,w
	skipz
	goto	u5665
	movf	(delay_ms@x)^080h,w
	subwf	(delay_ms@i)^080h,w
u5665:

	skipc
	goto	u5661
	goto	u5660
u5661:
	goto	l6543
u5660:
	goto	l969
	
l968:	
	line	109
	
l969:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	___awmod
psect	text1123,local,class=CODE,delta=2
global __ptext1123
__ptext1123:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK1 ] int 
;;  dividend        2    2[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK1 ] unsigned char 
;;  counter         1    5[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_nhietdo
;;		_send_lux
;;		_send_error
;; This function uses a non-reentrant model
;;
psect	text1123
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 2
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6165:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___awmod@sign)^080h
	line	9
	
l6167:	
	btfss	(___awmod@dividend+1)^080h,7
	goto	u4791
	goto	u4790
u4791:
	goto	l6171
u4790:
	line	10
	
l6169:	
	comf	(___awmod@dividend)^080h,f
	comf	(___awmod@dividend+1)^080h,f
	incf	(___awmod@dividend)^080h,f
	skipnz
	incf	(___awmod@dividend+1)^080h,f
	line	11
	clrf	(___awmod@sign)^080h
	bsf	status,0
	rlf	(___awmod@sign)^080h,f
	goto	l6171
	line	12
	
l2175:	
	line	13
	
l6171:	
	btfss	(___awmod@divisor+1)^080h,7
	goto	u4801
	goto	u4800
u4801:
	goto	l6175
u4800:
	line	14
	
l6173:	
	comf	(___awmod@divisor)^080h,f
	comf	(___awmod@divisor+1)^080h,f
	incf	(___awmod@divisor)^080h,f
	skipnz
	incf	(___awmod@divisor+1)^080h,f
	goto	l6175
	
l2176:	
	line	15
	
l6175:	
	movf	(___awmod@divisor+1)^080h,w
	iorwf	(___awmod@divisor)^080h,w
	skipnz
	goto	u4811
	goto	u4810
u4811:
	goto	l6193
u4810:
	line	16
	
l6177:	
	clrf	(___awmod@counter)^080h
	bsf	status,0
	rlf	(___awmod@counter)^080h,f
	line	17
	goto	l6183
	
l2179:	
	line	18
	
l6179:	
	movlw	01h
	
u4825:
	clrc
	rlf	(___awmod@divisor)^080h,f
	rlf	(___awmod@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u4825
	line	19
	
l6181:	
	movlw	(01h)
	movwf	(??___awmod+0)^080h+0
	movf	(??___awmod+0)^080h+0,w
	addwf	(___awmod@counter)^080h,f
	goto	l6183
	line	20
	
l2178:	
	line	17
	
l6183:	
	btfss	(___awmod@divisor+1)^080h,(15)&7
	goto	u4831
	goto	u4830
u4831:
	goto	l6179
u4830:
	goto	l6185
	
l2180:	
	goto	l6185
	line	21
	
l2181:	
	line	22
	
l6185:	
	movf	(___awmod@divisor+1)^080h,w
	subwf	(___awmod@dividend+1)^080h,w
	skipz
	goto	u4845
	movf	(___awmod@divisor)^080h,w
	subwf	(___awmod@dividend)^080h,w
u4845:
	skipc
	goto	u4841
	goto	u4840
u4841:
	goto	l6189
u4840:
	line	23
	
l6187:	
	movf	(___awmod@divisor)^080h,w
	subwf	(___awmod@dividend)^080h,f
	movf	(___awmod@divisor+1)^080h,w
	skipc
	decf	(___awmod@dividend+1)^080h,f
	subwf	(___awmod@dividend+1)^080h,f
	goto	l6189
	
l2182:	
	line	24
	
l6189:	
	movlw	01h
	
u4855:
	clrc
	rrf	(___awmod@divisor+1)^080h,f
	rrf	(___awmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u4855
	line	25
	
l6191:	
	movlw	low(01h)
	subwf	(___awmod@counter)^080h,f
	btfss	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l6185
u4860:
	goto	l6193
	
l2183:	
	goto	l6193
	line	26
	
l2177:	
	line	27
	
l6193:	
	movf	(___awmod@sign)^080h,w
	skipz
	goto	u4870
	goto	l6197
u4870:
	line	28
	
l6195:	
	comf	(___awmod@dividend)^080h,f
	comf	(___awmod@dividend+1)^080h,f
	incf	(___awmod@dividend)^080h,f
	skipnz
	incf	(___awmod@dividend+1)^080h,f
	goto	l6197
	
l2184:	
	line	29
	
l6197:	
	movf	(___awmod@dividend+1)^080h,w
	clrf	(?___awmod+1)^080h
	addwf	(?___awmod+1)^080h
	movf	(___awmod@dividend)^080h,w
	clrf	(?___awmod)^080h
	addwf	(?___awmod)^080h

	goto	l2185
	
l6199:	
	line	30
	
l2185:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___ftge
psect	text1124,local,class=CODE,delta=2
global __ptext1124
__ptext1124:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK1 ] float 
;;  ff2             3    3[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       6       0       0
;;      Totals:         0       0      12       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_error
;; This function uses a non-reentrant model
;;
psect	text1124
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 2
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l6145:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(___ftge@ff1+2)^080h,(23)&7
	goto	u4741
	goto	u4740
u4741:
	goto	l6149
u4740:
	line	7
	
l6147:	
	movlw	0
	movwf	((??___ftge+0)^080h+0)
	movlw	0
	movwf	((??___ftge+0)^080h+0+1)
	movlw	080h
	movwf	((??___ftge+0)^080h+0+2)
	comf	(___ftge@ff1)^080h,w
	movwf	(??___ftge+3)^080h+0
	comf	(___ftge@ff1+1)^080h,w
	movwf	((??___ftge+3)^080h+0+1)
	comf	(___ftge@ff1+2)^080h,w
	movwf	((??___ftge+3)^080h+0+2)
	incf	(??___ftge+3)^080h+0,f
	skipnz
	incf	((??___ftge+3)^080h+0+1),f
	skipnz
	incf	((??___ftge+3)^080h+0+2),f
	movf	0+(??___ftge+3)^080h+0,w
	addwf	(??___ftge+0)^080h+0,f
	movf	1+(??___ftge+3)^080h+0,w
	skipnc
	incfsz	1+(??___ftge+3)^080h+0,w
	goto	u4751
	goto	u4752
u4751:
	addwf	(??___ftge+0)^080h+1,f
	
u4752:
	movf	2+(??___ftge+3)^080h+0,w
	skipnc
	incfsz	2+(??___ftge+3)^080h+0,w
	goto	u4753
	goto	u4754
u4753:
	addwf	(??___ftge+0)^080h+2,f
	
u4754:
	movf	0+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff1)^080h
	movf	1+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff1+1)^080h
	movf	2+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff1+2)^080h
	goto	l6149
	
l2134:	
	line	8
	
l6149:	
	btfss	(___ftge@ff2+2)^080h,(23)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l6153
u4760:
	line	9
	
l6151:	
	movlw	0
	movwf	((??___ftge+0)^080h+0)
	movlw	0
	movwf	((??___ftge+0)^080h+0+1)
	movlw	080h
	movwf	((??___ftge+0)^080h+0+2)
	comf	(___ftge@ff2)^080h,w
	movwf	(??___ftge+3)^080h+0
	comf	(___ftge@ff2+1)^080h,w
	movwf	((??___ftge+3)^080h+0+1)
	comf	(___ftge@ff2+2)^080h,w
	movwf	((??___ftge+3)^080h+0+2)
	incf	(??___ftge+3)^080h+0,f
	skipnz
	incf	((??___ftge+3)^080h+0+1),f
	skipnz
	incf	((??___ftge+3)^080h+0+2),f
	movf	0+(??___ftge+3)^080h+0,w
	addwf	(??___ftge+0)^080h+0,f
	movf	1+(??___ftge+3)^080h+0,w
	skipnc
	incfsz	1+(??___ftge+3)^080h+0,w
	goto	u4771
	goto	u4772
u4771:
	addwf	(??___ftge+0)^080h+1,f
	
u4772:
	movf	2+(??___ftge+3)^080h+0,w
	skipnc
	incfsz	2+(??___ftge+3)^080h+0,w
	goto	u4773
	goto	u4774
u4773:
	addwf	(??___ftge+0)^080h+2,f
	
u4774:
	movf	0+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff2)^080h
	movf	1+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff2+1)^080h
	movf	2+(??___ftge+0)^080h+0,w
	movwf	(___ftge@ff2+2)^080h
	goto	l6153
	
l2135:	
	line	10
	
l6153:	
	movlw	080h
	xorwf	(___ftge@ff1+2)^080h,f
	line	11
	
l6155:	
	movlw	080h
	xorwf	(___ftge@ff2+2)^080h,f
	line	12
	
l6157:	
	movf	(___ftge@ff2+2)^080h,w
	subwf	(___ftge@ff1+2)^080h,w
	skipz
	goto	u4785
	movf	(___ftge@ff2+1)^080h,w
	subwf	(___ftge@ff1+1)^080h,w
	skipz
	goto	u4785
	movf	(___ftge@ff2)^080h,w
	subwf	(___ftge@ff1)^080h,w
u4785:
	skipnc
	goto	u4781
	goto	u4780
u4781:
	goto	l6161
u4780:
	
l6159:	
	clrc
	
	goto	l2136
	
l5879:	
	
l6161:	
	setc
	
	goto	l2136
	
l5881:	
	goto	l2136
	
l6163:	
	line	13
	
l2136:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text1125,local,class=CODE,delta=2
global __ptext1125
__ptext1125:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK1 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_error
;; This function uses a non-reentrant model
;;
psect	text1125
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
l6137:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftneg@f1+2)^080h,w
	iorwf	(___ftneg@f1+1)^080h,w
	iorwf	(___ftneg@f1)^080h,w
	skipnz
	goto	u4731
	goto	u4730
u4731:
	goto	l6141
u4730:
	line	18
	
l6139:	
	movlw	080h
	xorwf	(___ftneg@f1+2)^080h,f
	goto	l6141
	
l2130:	
	line	19
	
l6141:	
	goto	l2131
	
l6143:	
	line	20
	
l2131:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___awdiv
psect	text1126,local,class=CODE,delta=2
global __ptext1126
__ptext1126:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK1 ] int 
;;  dividend        2    9[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   14[BANK1 ] int 
;;  sign            1   13[BANK1 ] unsigned char 
;;  counter         1   12[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK1 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_nhietdo
;;		_send_lux
;;		_send_error
;; This function uses a non-reentrant model
;;
psect	text1126
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6099:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___awdiv@sign)^080h
	line	10
	
l6101:	
	btfss	(___awdiv@divisor+1)^080h,7
	goto	u4631
	goto	u4630
u4631:
	goto	l6105
u4630:
	line	11
	
l6103:	
	comf	(___awdiv@divisor)^080h,f
	comf	(___awdiv@divisor+1)^080h,f
	incf	(___awdiv@divisor)^080h,f
	skipnz
	incf	(___awdiv@divisor+1)^080h,f
	line	12
	clrf	(___awdiv@sign)^080h
	bsf	status,0
	rlf	(___awdiv@sign)^080h,f
	goto	l6105
	line	13
	
l2107:	
	line	14
	
l6105:	
	btfss	(___awdiv@dividend+1)^080h,7
	goto	u4641
	goto	u4640
u4641:
	goto	l2108
u4640:
	line	15
	
l6107:	
	comf	(___awdiv@dividend)^080h,f
	comf	(___awdiv@dividend+1)^080h,f
	incf	(___awdiv@dividend)^080h,f
	skipnz
	incf	(___awdiv@dividend+1)^080h,f
	line	16
	
l6109:	
	movlw	(01h)
	movwf	(??___awdiv+0)^080h+0
	movf	(??___awdiv+0)^080h+0,w
	xorwf	(___awdiv@sign)^080h,f
	line	17
	
l2108:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)^080h
	movlw	high(0)
	movwf	((___awdiv@quotient)^080h)+1
	line	19
	movf	(___awdiv@divisor+1)^080h,w
	iorwf	(___awdiv@divisor)^080h,w
	skipnz
	goto	u4651
	goto	u4650
u4651:
	goto	l6129
u4650:
	line	20
	
l6111:	
	clrf	(___awdiv@counter)^080h
	bsf	status,0
	rlf	(___awdiv@counter)^080h,f
	line	21
	goto	l6117
	
l2111:	
	line	22
	
l6113:	
	movlw	01h
	
u4665:
	clrc
	rlf	(___awdiv@divisor)^080h,f
	rlf	(___awdiv@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u4665
	line	23
	
l6115:	
	movlw	(01h)
	movwf	(??___awdiv+0)^080h+0
	movf	(??___awdiv+0)^080h+0,w
	addwf	(___awdiv@counter)^080h,f
	goto	l6117
	line	24
	
l2110:	
	line	21
	
l6117:	
	btfss	(___awdiv@divisor+1)^080h,(15)&7
	goto	u4671
	goto	u4670
u4671:
	goto	l6113
u4670:
	goto	l6119
	
l2112:	
	goto	l6119
	line	25
	
l2113:	
	line	26
	
l6119:	
	movlw	01h
	
u4685:
	clrc
	rlf	(___awdiv@quotient)^080h,f
	rlf	(___awdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u4685
	line	27
	movf	(___awdiv@divisor+1)^080h,w
	subwf	(___awdiv@dividend+1)^080h,w
	skipz
	goto	u4695
	movf	(___awdiv@divisor)^080h,w
	subwf	(___awdiv@dividend)^080h,w
u4695:
	skipc
	goto	u4691
	goto	u4690
u4691:
	goto	l6125
u4690:
	line	28
	
l6121:	
	movf	(___awdiv@divisor)^080h,w
	subwf	(___awdiv@dividend)^080h,f
	movf	(___awdiv@divisor+1)^080h,w
	skipc
	decf	(___awdiv@dividend+1)^080h,f
	subwf	(___awdiv@dividend+1)^080h,f
	line	29
	
l6123:	
	bsf	(___awdiv@quotient)^080h+(0/8),(0)&7
	goto	l6125
	line	30
	
l2114:	
	line	31
	
l6125:	
	movlw	01h
	
u4705:
	clrc
	rrf	(___awdiv@divisor+1)^080h,f
	rrf	(___awdiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u4705
	line	32
	
l6127:	
	movlw	low(01h)
	subwf	(___awdiv@counter)^080h,f
	btfss	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l6119
u4710:
	goto	l6129
	
l2115:	
	goto	l6129
	line	33
	
l2109:	
	line	34
	
l6129:	
	movf	(___awdiv@sign)^080h,w
	skipz
	goto	u4720
	goto	l6133
u4720:
	line	35
	
l6131:	
	comf	(___awdiv@quotient)^080h,f
	comf	(___awdiv@quotient+1)^080h,f
	incf	(___awdiv@quotient)^080h,f
	skipnz
	incf	(___awdiv@quotient+1)^080h,f
	goto	l6133
	
l2116:	
	line	36
	
l6133:	
	movf	(___awdiv@quotient+1)^080h,w
	clrf	(?___awdiv+1)^080h
	addwf	(?___awdiv+1)^080h
	movf	(___awdiv@quotient)^080h,w
	clrf	(?___awdiv)^080h
	addwf	(?___awdiv)^080h

	goto	l2117
	
l6135:	
	line	37
	
l2117:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text1127,local,class=CODE,delta=2
global __ptext1127
__ptext1127:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   11[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   20[BANK1 ] unsigned long 
;;  exp1            1   24[BANK1 ] unsigned char 
;;  sign1           1   19[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   11[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      14       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_nhietdo
;;		_send_lux
;;		_send_error
;; This function uses a non-reentrant model
;;
psect	text1127
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 2
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6045:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1)^080h,w
	movwf	((??___fttol+0)^080h+0)
	movf	(___fttol@f1+1)^080h,w
	movwf	((??___fttol+0)^080h+0+1)
	movf	(___fttol@f1+2)^080h,w
	movwf	((??___fttol+0)^080h+0+2)
	clrc
	rlf	(??___fttol+0)^080h+1,w
	rlf	(??___fttol+0)^080h+2,w
	movwf	(??___fttol+3)^080h+0
	movf	(??___fttol+3)^080h+0,w
	movwf	(___fttol@exp1)^080h
	movf	((___fttol@exp1)^080h),f
	skipz
	goto	u4521
	goto	u4520
u4521:
	goto	l6051
u4520:
	line	50
	
l6047:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l2077
	
l6049:	
	goto	l2077
	
l2076:	
	line	51
	
l6051:	
	movf	(___fttol@f1)^080h,w
	movwf	((??___fttol+0)^080h+0)
	movf	(___fttol@f1+1)^080h,w
	movwf	((??___fttol+0)^080h+0+1)
	movf	(___fttol@f1+2)^080h,w
	movwf	((??___fttol+0)^080h+0+2)
	movlw	017h
u4535:
	clrc
	rrf	(??___fttol+0)^080h+2,f
	rrf	(??___fttol+0)^080h+1,f
	rrf	(??___fttol+0)^080h+0,f
u4530:
	addlw	-1
	skipz
	goto	u4535
	movf	0+(??___fttol+0)^080h+0,w
	movwf	(??___fttol+3)^080h+0
	movf	(??___fttol+3)^080h+0,w
	movwf	(___fttol@sign1)^080h
	line	52
	
l6053:	
	bsf	(___fttol@f1)^080h+(15/8),(15)&7
	line	53
	
l6055:	
	movlw	0FFh
	andwf	(___fttol@f1)^080h,f
	movlw	0FFh
	andwf	(___fttol@f1+1)^080h,f
	movlw	0
	andwf	(___fttol@f1+2)^080h,f
	line	54
	
l6057:	
	movf	(___fttol@f1)^080h,w
	movwf	(___fttol@lval)^080h
	movf	(___fttol@f1+1)^080h,w
	movwf	((___fttol@lval)^080h)+1
	movf	(___fttol@f1+2)^080h,w
	movwf	((___fttol@lval)^080h)+2
	clrf	((___fttol@lval)^080h)+3
	line	55
	
l6059:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1)^080h,f
	line	56
	
l6061:	
	btfss	(___fttol@exp1)^080h,7
	goto	u4541
	goto	u4540
u4541:
	goto	l6071
u4540:
	line	57
	
l6063:	
	movf	(___fttol@exp1)^080h,w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4551
	goto	u4550
u4551:
	goto	l6069
u4550:
	line	58
	
l6065:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l2077
	
l6067:	
	goto	l2077
	
l2079:	
	goto	l6069
	line	59
	
l2080:	
	line	60
	
l6069:	
	movlw	01h
u4565:
	clrc
	rrf	(___fttol@lval+3)^080h,f
	rrf	(___fttol@lval+2)^080h,f
	rrf	(___fttol@lval+1)^080h,f
	rrf	(___fttol@lval)^080h,f
	addlw	-1
	skipz
	goto	u4565

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)^080h+0
	movf	(??___fttol+0)^080h+0,w
	addwf	(___fttol@exp1)^080h,f
	btfss	status,2
	goto	u4571
	goto	u4570
u4571:
	goto	l6069
u4570:
	goto	l6081
	
l2081:	
	line	62
	goto	l6081
	
l2078:	
	line	63
	
l6071:	
	movlw	(018h)
	subwf	(___fttol@exp1)^080h,w
	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l6079
u4580:
	line	64
	
l6073:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l2077
	
l6075:	
	goto	l2077
	
l2083:	
	line	65
	goto	l6079
	
l2085:	
	line	66
	
l6077:	
	movlw	01h
	movwf	(??___fttol+0)^080h+0
u4595:
	clrc
	rlf	(___fttol@lval)^080h,f
	rlf	(___fttol@lval+1)^080h,f
	rlf	(___fttol@lval+2)^080h,f
	rlf	(___fttol@lval+3)^080h,f
	decfsz	(??___fttol+0)^080h+0
	goto	u4595
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1)^080h,f
	goto	l6079
	line	68
	
l2084:	
	line	65
	
l6079:	
	movf	(___fttol@exp1)^080h,f
	skipz
	goto	u4601
	goto	u4600
u4601:
	goto	l6077
u4600:
	goto	l6081
	
l2086:	
	goto	l6081
	line	69
	
l2082:	
	line	70
	
l6081:	
	movf	(___fttol@sign1)^080h,w
	skipz
	goto	u4610
	goto	l6085
u4610:
	line	71
	
l6083:	
	comf	(___fttol@lval)^080h,f
	comf	(___fttol@lval+1)^080h,f
	comf	(___fttol@lval+2)^080h,f
	comf	(___fttol@lval+3)^080h,f
	incf	(___fttol@lval)^080h,f
	skipnz
	incf	(___fttol@lval+1)^080h,f
	skipnz
	incf	(___fttol@lval+2)^080h,f
	skipnz
	incf	(___fttol@lval+3)^080h,f
	goto	l6085
	
l2087:	
	line	72
	
l6085:	
	movf	(___fttol@lval+3)^080h,w
	movwf	(?___fttol+3)^080h
	movf	(___fttol@lval+2)^080h,w
	movwf	(?___fttol+2)^080h
	movf	(___fttol@lval+1)^080h,w
	movwf	(?___fttol+1)^080h
	movf	(___fttol@lval)^080h,w
	movwf	(?___fttol)^080h

	goto	l2077
	
l6087:	
	line	73
	
l2077:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text1128,local,class=CODE,delta=2
global __ptext1128
__ptext1128:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK1 ] unsigned um
;;  exp             1    3[BANK1 ] unsigned char 
;;  sign            1    4[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       5       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___awtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text1128
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6009:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftpack@exp)^080h,w
	skipz
	goto	u4410
	goto	l6013
u4410:
	
l6011:	
	movf	(___ftpack@arg+2)^080h,w
	iorwf	(___ftpack@arg+1)^080h,w
	iorwf	(___ftpack@arg)^080h,w
	skipz
	goto	u4421
	goto	u4420
u4421:
	goto	l6019
u4420:
	goto	l6013
	
l2301:	
	line	65
	
l6013:	
	movlw	0x0
	movwf	(?___ftpack)^080h
	movlw	0x0
	movwf	(?___ftpack+1)^080h
	movlw	0x0
	movwf	(?___ftpack+2)^080h
	goto	l2302
	
l6015:	
	goto	l2302
	
l2299:	
	line	66
	goto	l6019
	
l2304:	
	line	67
	
l6017:	
	movlw	(01h)
	movwf	(??___ftpack+0)^080h+0
	movf	(??___ftpack+0)^080h+0,w
	addwf	(___ftpack@exp)^080h,f
	line	68
	movlw	01h
u4435:
	clrc
	rrf	(___ftpack@arg+2)^080h,f
	rrf	(___ftpack@arg+1)^080h,f
	rrf	(___ftpack@arg)^080h,f
	addlw	-1
	skipz
	goto	u4435

	goto	l6019
	line	69
	
l2303:	
	line	66
	
l6019:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2)^080h,w
	btfss	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l6017
u4440:
	goto	l2306
	
l2305:	
	line	70
	goto	l2306
	
l2307:	
	line	71
	
l6021:	
	movlw	(01h)
	movwf	(??___ftpack+0)^080h+0
	movf	(??___ftpack+0)^080h+0,w
	addwf	(___ftpack@exp)^080h,f
	line	72
	
l6023:	
	movlw	01h
	addwf	(___ftpack@arg)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1)^080h,f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2)^080h,f
	line	73
	
l6025:	
	movlw	01h
u4455:
	clrc
	rrf	(___ftpack@arg+2)^080h,f
	rrf	(___ftpack@arg+1)^080h,f
	rrf	(___ftpack@arg)^080h,f
	addlw	-1
	skipz
	goto	u4455

	line	74
	
l2306:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2)^080h,w
	btfss	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l6021
u4460:
	goto	l6029
	
l2308:	
	line	75
	goto	l6029
	
l2310:	
	line	76
	
l6027:	
	movlw	low(01h)
	subwf	(___ftpack@exp)^080h,f
	line	77
	movlw	01h
u4475:
	clrc
	rlf	(___ftpack@arg)^080h,f
	rlf	(___ftpack@arg+1)^080h,f
	rlf	(___ftpack@arg+2)^080h,f
	addlw	-1
	skipz
	goto	u4475
	goto	l6029
	line	78
	
l2309:	
	line	75
	
l6029:	
	btfss	(___ftpack@arg+1)^080h,(15)&7
	goto	u4481
	goto	u4480
u4481:
	goto	l6027
u4480:
	
l2311:	
	line	79
	btfsc	(___ftpack@exp)^080h,(0)&7
	goto	u4491
	goto	u4490
u4491:
	goto	l2312
u4490:
	line	80
	
l6031:	
	movlw	0FFh
	andwf	(___ftpack@arg)^080h,f
	movlw	07Fh
	andwf	(___ftpack@arg+1)^080h,f
	movlw	0FFh
	andwf	(___ftpack@arg+2)^080h,f
	
l2312:	
	line	81
	clrc
	rrf	(___ftpack@exp)^080h,f

	line	82
	
l6033:	
	movf	(___ftpack@exp)^080h,w
	movwf	((??___ftpack+0)^080h+0)
	clrf	((??___ftpack+0)^080h+0+1)
	clrf	((??___ftpack+0)^080h+0+2)
	movlw	010h
u4505:
	clrc
	rlf	(??___ftpack+0)^080h+0,f
	rlf	(??___ftpack+0)^080h+1,f
	rlf	(??___ftpack+0)^080h+2,f
u4500:
	addlw	-1
	skipz
	goto	u4505
	movf	0+(??___ftpack+0)^080h+0,w
	iorwf	(___ftpack@arg)^080h,f
	movf	1+(??___ftpack+0)^080h+0,w
	iorwf	(___ftpack@arg+1)^080h,f
	movf	2+(??___ftpack+0)^080h+0,w
	iorwf	(___ftpack@arg+2)^080h,f
	line	83
	
l6035:	
	movf	(___ftpack@sign)^080h,w
	skipz
	goto	u4510
	goto	l2313
u4510:
	line	84
	
l6037:	
	bsf	(___ftpack@arg)^080h+(23/8),(23)&7
	
l2313:	
	line	85
	line	86
	
l2302:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text1129,local,class=CODE,delta=2
global __ptext1129
__ptext1129:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK1 ] unsigned int 
;;  multiplicand    2    2[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_nhiet_do
;;		_receive_pid
;; This function uses a non-reentrant model
;;
psect	text1129
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5997:	
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___wmul@product)^080h
	movlw	high(0)
	movwf	((___wmul@product)^080h)+1
	goto	l5999
	line	6
	
l1967:	
	line	7
	
l5999:	
	btfss	(___wmul@multiplier)^080h,(0)&7
	goto	u4371
	goto	u4370
u4371:
	goto	l1968
u4370:
	line	8
	
l6001:	
	movf	(___wmul@multiplicand)^080h,w
	addwf	(___wmul@product)^080h,f
	skipnc
	incf	(___wmul@product+1)^080h,f
	movf	(___wmul@multiplicand+1)^080h,w
	addwf	(___wmul@product+1)^080h,f
	
l1968:	
	line	9
	movlw	01h
	
u4385:
	clrc
	rlf	(___wmul@multiplicand)^080h,f
	rlf	(___wmul@multiplicand+1)^080h,f
	addlw	-1
	skipz
	goto	u4385
	line	10
	
l6003:	
	movlw	01h
	
u4395:
	clrc
	rrf	(___wmul@multiplier+1)^080h,f
	rrf	(___wmul@multiplier)^080h,f
	addlw	-1
	skipz
	goto	u4395
	line	11
	movf	((___wmul@multiplier+1)^080h),w
	iorwf	((___wmul@multiplier)^080h),w
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l5999
u4400:
	goto	l6005
	
l1969:	
	line	12
	
l6005:	
	movf	(___wmul@product+1)^080h,w
	clrf	(?___wmul+1)^080h
	addwf	(?___wmul+1)^080h
	movf	(___wmul@product)^080h,w
	clrf	(?___wmul)^080h
	addwf	(?___wmul)^080h

	goto	l1970
	
l6007:	
	line	13
	
l1970:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isprint
psect	text1130,local,class=CODE,delta=2
global __ptext1130
__ptext1130:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "../../common/isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text1130
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\isprint.c"
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 1
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(isprint@c)^080h
	line	14
	
l5985:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_isprint$1091)^080h
	
l5987:	
	movlw	(07Fh)
	subwf	(isprint@c)^080h,w
	skipnc
	goto	u4351
	goto	u4350
u4351:
	goto	l5993
u4350:
	
l5989:	
	movlw	(020h)
	subwf	(isprint@c)^080h,w
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l5993
u4360:
	
l5991:	
	clrf	(_isprint$1091)^080h
	bsf	status,0
	rlf	(_isprint$1091)^080h,f
	goto	l5993
	
l1957:	
	
l5993:	
	rrf	(_isprint$1091)^080h,w
	
	goto	l1958
	
l5995:	
	line	15
	
l1958:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_i2c_dly
psect	text1131,local,class=CODE,delta=2
global __ptext1131
__ptext1131:

;; *************** function _i2c_dly *****************
;; Defined at:
;;		line 113 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_start
;;		_I2C_stop
;;		_I2C_write
;; This function uses a non-reentrant model
;;
psect	text1131
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	113
	global	__size_of_i2c_dly
	__size_of_i2c_dly	equ	__end_of_i2c_dly-_i2c_dly
	
_i2c_dly:	
	opt	stack 1
; Regs used in _i2c_dly: []
	line	115
	
l972:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_dly
	__end_of_i2c_dly:
;; =============== function _i2c_dly ends ============

	signat	_i2c_dly,88
	global	_uart_tx
psect	text1132,local,class=CODE,delta=2
global __ptext1132
__ptext1132:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 66 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_nhietdo
;;		_send_lux
;;		_send_error
;; This function uses a non-reentrant model
;;
psect	text1132
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	66
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 2
; Regs used in _uart_tx: [wreg]
;uart_tx@data stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(uart_tx@data)^080h
	line	67
	
l5883:	
;main.c: 67: TXREG =data;
	movf	(uart_tx@data)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	68
;main.c: 68: while(TXIF==0);
	goto	l953
	
l954:	
	
l953:	
	btfss	(100/8),(100)&7
	goto	u4201
	goto	u4200
u4201:
	goto	l953
u4200:
	goto	l956
	
l955:	
	line	70
	
l956:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_uart_isr
psect	text1133,local,class=CODE,delta=2
global __ptext1133
__ptext1133:

;; *************** function _uart_isr *****************
;; Defined at:
;;		line 72 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BH1750_read
;;		_pid
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1133
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	72
	global	__size_of_uart_isr
	__size_of_uart_isr	equ	__end_of_uart_isr-_uart_isr
	
_uart_isr:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _uart_isr: [allreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_uart_isr+1)
	movf	fsr0,w
	movwf	(??_uart_isr+2)
	movf	pclath,w
	movwf	(??_uart_isr+3)
	movf	btemp+1,w
	movwf	(??_uart_isr+4)
	ljmp	_uart_isr
psect	text1133
	line	73
	
i1l5885:	
;main.c: 73: if(RCIE && RCIF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u421_21
	goto	u421_20
u421_21:
	goto	i1l5897
u421_20:
	
i1l5887:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u422_21
	goto	u422_20
u422_21:
	goto	i1l5897
u422_20:
	line	75
	
i1l5889:	
;main.c: 74: {
;main.c: 75: check[save]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_uart_isr+0)+0
	movf	(_save),w
	addlw	_check&0ffh
	movwf	fsr0
	movf	(??_uart_isr+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	76
	
i1l5891:	
;main.c: 76: save++;
	movlw	(01h)
	movwf	(??_uart_isr+0)+0
	movf	(??_uart_isr+0)+0,w
	addwf	(_save),f
	line	77
	
i1l5893:	
;main.c: 77: if(save==7)
	movf	(_save),w
	xorlw	07h
	skipz
	goto	u423_21
	goto	u423_20
u423_21:
	goto	i1l5897
u423_20:
	line	79
	
i1l5895:	
;main.c: 78: {
;main.c: 79: save=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_save)
	goto	i1l5897
	line	81
	
i1l960:	
	goto	i1l5897
	line	82
	
i1l959:	
	line	83
	
i1l5897:	
;main.c: 81: }
;main.c: 82: }
;main.c: 83: if(T0IF && T0IE)
	btfss	(90/8),(90)&7
	goto	u424_21
	goto	u424_20
u424_21:
	goto	i1l963
u424_20:
	
i1l5899:	
	btfss	(93/8),(93)&7
	goto	u425_21
	goto	u425_20
u425_21:
	goto	i1l963
u425_20:
	line	85
	
i1l5901:	
;main.c: 84: {
;main.c: 85: T0IF=0;
	bcf	(90/8),(90)&7
	line	86
	
i1l5903:	
;main.c: 86: TMR0=131;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	87
;main.c: 87: k++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(_k)^0180h,f
	skipnc
	incf	(_k+1)^0180h,f
	movlw	high(01h)
	addwf	(_k+1)^0180h,f
	line	88
;main.c: 88: if(k==250)
	movlw	0FAh
	xorwf	(_k)^0180h,w
	iorwf	(_k+1)^0180h,w
	skipz
	goto	u426_21
	goto	u426_20
u426_21:
	goto	i1l963
u426_20:
	line	90
	
i1l5905:	
;main.c: 89: {
;main.c: 90: BH1750_read();
	fcall	_BH1750_read
	line	91
	
i1l5907:	
;main.c: 91: pid();
	fcall	_pid
	line	93
	
i1l5909:	
;main.c: 93: k=0;
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_k)^0180h
	movlw	high(0)
	movwf	((_k)^0180h)+1
	goto	i1l963
	line	96
	
i1l962:	
	goto	i1l963
	line	98
	
i1l961:	
	line	99
	
i1l963:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_uart_isr+4),w
	movwf	btemp+1
	movf	(??_uart_isr+3),w
	movwf	pclath
	movf	(??_uart_isr+2),w
	movwf	fsr0
	movf	(??_uart_isr+1),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_uart_isr
	__end_of_uart_isr:
;; =============== function _uart_isr ends ============

	signat	_uart_isr,88
	global	_pid
psect	text1134,local,class=CODE,delta=2
global __ptext1134
__ptext1134:

;; *************** function _pid *****************
;; Defined at:
;;		line 307 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1___ftneg
;;		i1___awtoft
;;		i1___ftadd
;;		i1___ftmul
;;		i1___fttol
;;		i1___ftdiv
;; This function is called by:
;;		_uart_isr
;; This function uses a non-reentrant model
;;
psect	text1134
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	307
	global	__size_of_pid
	__size_of_pid	equ	__end_of_pid-_pid
	
_pid:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _pid: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	309
	
i1l5927:	
;main.c: 309: err=(lux_set-value1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1)^080h,w
	movwf	(?i1___ftneg)
	movf	(_value1+1)^080h,w
	movwf	(?i1___ftneg+1)
	movf	(_value1+2)^080h,w
	movwf	(?i1___ftneg+2)
	fcall	i1___ftneg
	movf	(0+(?i1___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftadd)
	movf	(1+(?i1___ftneg)),w
	movwf	(?i1___ftadd+1)
	movf	(2+(?i1___ftneg)),w
	movwf	(?i1___ftadd+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_lux_set+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?i1___awtoft+1)
	addwf	(?i1___awtoft+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_lux_set)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?i1___awtoft)
	addwf	(?i1___awtoft)

	fcall	i1___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___awtoft)),w
	movwf	0+(?i1___ftadd)+03h
	movf	(1+(?i1___awtoft)),w
	movwf	1+(?i1___ftadd)+03h
	movf	(2+(?i1___awtoft)),w
	movwf	2+(?i1___ftadd)+03h
	fcall	i1___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftadd)),w
	movwf	(_err)
	movf	(1+(?i1___ftadd)),w
	movwf	(_err+1)
	movf	(2+(?i1___ftadd)),w
	movwf	(_err+2)
	line	310
;main.c: 310: kqkp=kp1*err;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_kp1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?i1___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_kp1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?i1___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_kp1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?i1___ftmul)+03h
	movf	(_err),w
	movwf	(?i1___ftmul)
	movf	(_err+1),w
	movwf	(?i1___ftmul+1)
	movf	(_err+2),w
	movwf	(?i1___ftmul+2)
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	(?i1___fttol)
	movf	(1+(?i1___ftmul)),w
	movwf	(?i1___fttol+1)
	movf	(2+(?i1___ftmul)),w
	movwf	(?i1___fttol+2)
	fcall	i1___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?i1___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_kqkp+1)^0180h
	addwf	(_kqkp+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?i1___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_kqkp)^0180h
	addwf	(_kqkp)^0180h

	line	311
;main.c: 311: kqki+=ki1*err*50/1000;
	movf	(_ki1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?i1___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_ki1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?i1___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_ki1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?i1___ftmul)+03h
	movf	(_err),w
	movwf	(?i1___ftmul)
	movf	(_err+1),w
	movwf	(?i1___ftmul+1)
	movf	(_err+2),w
	movwf	(?i1___ftmul+2)
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	0+(?i1___ftmul)+03h
	movf	(1+(?i1___ftmul)),w
	movwf	1+(?i1___ftmul)+03h
	movf	(2+(?i1___ftmul)),w
	movwf	2+(?i1___ftmul)+03h
	movlw	0x0
	movwf	(?i1___ftmul)
	movlw	0x48
	movwf	(?i1___ftmul+1)
	movlw	0x42
	movwf	(?i1___ftmul+2)
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	0+(?i1___ftdiv)+03h
	movf	(1+(?i1___ftmul)),w
	movwf	1+(?i1___ftdiv)+03h
	movf	(2+(?i1___ftmul)),w
	movwf	2+(?i1___ftdiv)+03h
	movlw	0x0
	movwf	(?i1___ftdiv)
	movlw	0x7a
	movwf	(?i1___ftdiv+1)
	movlw	0x44
	movwf	(?i1___ftdiv+2)
	fcall	i1___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftdiv)),w
	movwf	(?i1___fttol)
	movf	(1+(?i1___ftdiv)),w
	movwf	(?i1___fttol+1)
	movf	(2+(?i1___ftdiv)),w
	movwf	(?i1___fttol+2)
	fcall	i1___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?i1___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(_kqki)^0180h,f
	skipnc
	incf	(_kqki+1)^0180h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?i1___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(_kqki+1)^0180h,f
	line	312
;main.c: 312: kqkd=(kd1*(err-pre_err)*20);
	movf	(_pre_err+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?i1___awtoft+1)
	addwf	(?i1___awtoft+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_pre_err)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?i1___awtoft)
	addwf	(?i1___awtoft)

	fcall	i1___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___awtoft)),w
	movwf	(?i1___ftneg)
	movf	(1+(?i1___awtoft)),w
	movwf	(?i1___ftneg+1)
	movf	(2+(?i1___awtoft)),w
	movwf	(?i1___ftneg+2)
	fcall	i1___ftneg
	movf	(0+(?i1___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?i1___ftadd)+03h
	movf	(1+(?i1___ftneg)),w
	movwf	1+(?i1___ftadd)+03h
	movf	(2+(?i1___ftneg)),w
	movwf	2+(?i1___ftadd)+03h
	movf	(_err),w
	movwf	(?i1___ftadd)
	movf	(_err+1),w
	movwf	(?i1___ftadd+1)
	movf	(_err+2),w
	movwf	(?i1___ftadd+2)
	fcall	i1___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftadd)),w
	movwf	0+(?i1___ftmul)+03h
	movf	(1+(?i1___ftadd)),w
	movwf	1+(?i1___ftmul)+03h
	movf	(2+(?i1___ftadd)),w
	movwf	2+(?i1___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_kd1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_kd1+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_kd1+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul+2)
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	0+(?i1___ftmul)+03h
	movf	(1+(?i1___ftmul)),w
	movwf	1+(?i1___ftmul)+03h
	movf	(2+(?i1___ftmul)),w
	movwf	2+(?i1___ftmul)+03h
	movlw	0x0
	movwf	(?i1___ftmul)
	movlw	0xa0
	movwf	(?i1___ftmul+1)
	movlw	0x41
	movwf	(?i1___ftmul+2)
	fcall	i1___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftmul)),w
	movwf	(?i1___fttol)
	movf	(1+(?i1___ftmul)),w
	movwf	(?i1___fttol+1)
	movf	(2+(?i1___ftmul)),w
	movwf	(?i1___fttol+2)
	fcall	i1___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?i1___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_kqkd+1)^0180h
	addwf	(_kqkd+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?i1___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_kqkd)^0180h
	addwf	(_kqkd)^0180h

	line	313
	
i1l5929:	
;main.c: 313: output=kqkp+kqki+kqkd;
	movf	(_kqki)^0180h,w
	addwf	(_kqkp)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pid+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_kqki+1)^0180h,w
	skipnc
	incf	(_kqki+1)^0180h,w
	addwf	(_kqkp+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_pid+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_kqkd)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_pid+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_output)^0180h
	movf	(_kqkd+1)^0180h,w
	skipnc
	incf	(_kqkd+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_pid+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(_output)^0180h
	line	314
	
i1l5931:	
;main.c: 314: if(output>=255)
	movf	(_output+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0FFh))^80h
	subwf	btemp+1,w
	skipz
	goto	u428_25
	movlw	low(0FFh)
	subwf	(_output)^0180h,w
u428_25:

	skipc
	goto	u428_21
	goto	u428_20
u428_21:
	goto	i1l5935
u428_20:
	line	316
	
i1l5933:	
;main.c: 315: {
;main.c: 316: output=255;
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_output)^0180h
	movlw	high(0FFh)
	movwf	((_output)^0180h)+1
	goto	i1l5935
	line	317
	
i1l1032:	
	line	319
	
i1l5935:	
;main.c: 317: }
;main.c: 319: if(output<=0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_output+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u429_25
	movlw	low(01h)
	subwf	(_output)^0180h,w
u429_25:

	skipnc
	goto	u429_21
	goto	u429_20
u429_21:
	goto	i1l5939
u429_20:
	line	321
	
i1l5937:	
;main.c: 320: {
;main.c: 321: output=0;
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_output)^0180h
	movlw	high(0)
	movwf	((_output)^0180h)+1
	goto	i1l5939
	line	322
	
i1l1033:	
	line	324
	
i1l5939:	
;main.c: 322: }
;main.c: 324: pre_err=err;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_err),w
	movwf	(?i1___fttol)
	movf	(_err+1),w
	movwf	(?i1___fttol+1)
	movf	(_err+2),w
	movwf	(?i1___fttol+2)
	fcall	i1___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?i1___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_pre_err+1)^0180h
	addwf	(_pre_err+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?i1___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_pre_err)^0180h
	addwf	(_pre_err)^0180h

	line	325
	
i1l5941:	
;main.c: 325: CCPR1L=255-output;
	decf	(_output)^0180h,w
	xorlw	0ffh
	addlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	327
	
i1l1034:	
	return
	opt stack 0
GLOBAL	__end_of_pid
	__end_of_pid:
;; =============== function _pid ends ============

	signat	_pid,88
	global	_BH1750_read
psect	text1135,local,class=CODE,delta=2
global __ptext1135
__ptext1135:

;; *************** function _BH1750_read *****************
;; Defined at:
;;		line 202 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  hb              1   65[BANK0 ] unsigned char 
;;  lb              1   64[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4  936[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_I2C_start
;;		i1_I2C_write
;;		_I2C_read
;;		i1_I2C_stop
;;		i1___awtoft
;;		i1___ftdiv
;; This function is called by:
;;		_uart_isr
;; This function uses a non-reentrant model
;;
psect	text1135
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	202
	global	__size_of_BH1750_read
	__size_of_BH1750_read	equ	__end_of_BH1750_read-_BH1750_read
	
_BH1750_read:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _BH1750_read: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	203
	
i1l5911:	
;main.c: 203: unsigned char lb = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(BH1750_read@lb)
	line	204
;main.c: 204: unsigned char hb = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(BH1750_read@hb)
	line	205
	
i1l5913:	
;main.c: 205: I2C_start();
	fcall	i1_I2C_start
	line	206
	
i1l5915:	
;main.c: 206: I2C_write(0x47);
	movlw	(047h)
	fcall	i1_I2C_write
	line	207
	
i1l5917:	
;main.c: 207: hb = I2C_read(1);
	movlw	(01h)
	fcall	_I2C_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_BH1750_read+0)+0
	movf	(??_BH1750_read+0)+0,w
	movwf	(BH1750_read@hb)
	line	208
	
i1l5919:	
;main.c: 208: lb = I2C_read(0);
	movlw	(0)
	fcall	_I2C_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_BH1750_read+0)+0
	movf	(??_BH1750_read+0)+0,w
	movwf	(BH1750_read@lb)
	line	209
	
i1l5921:	
;main.c: 209: I2C_stop();
	fcall	i1_I2C_stop
	line	210
	
i1l5923:	
;main.c: 210: value =(hb<<8)+lb;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(BH1750_read@hb),w
	movwf	(??_BH1750_read+0)+0
	clrf	(??_BH1750_read+0)+0+1
	movlw	08h
	movwf	btemp+1
u427_25:
	clrc
	rlf	(??_BH1750_read+0)+0,f
	rlf	(??_BH1750_read+0)+1,f
	decfsz	btemp+1,f
	goto	u427_25
	movf	(BH1750_read@lb),w
	addwf	0+(??_BH1750_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_value)^0180h
	movlw	0
	skipnc
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_BH1750_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(_value)^0180h
	line	211
	
i1l5925:	
;main.c: 211: value1=(float)value/1.2;
	movlw	0x9a
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftdiv)
	movlw	0x99
	movwf	(?i1___ftdiv+1)
	movlw	0x3f
	movwf	(?i1___ftdiv+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_value+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?i1___awtoft+1)
	addwf	(?i1___awtoft+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_value)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?i1___awtoft)
	addwf	(?i1___awtoft)

	fcall	i1___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___awtoft)),w
	movwf	0+(?i1___ftdiv)+03h
	movf	(1+(?i1___awtoft)),w
	movwf	1+(?i1___ftdiv)+03h
	movf	(2+(?i1___awtoft)),w
	movwf	2+(?i1___ftdiv)+03h
	fcall	i1___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?i1___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_value1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?i1___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_value1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?i1___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_value1+2)^080h
	line	212
	
i1l1007:	
	return
	opt stack 0
GLOBAL	__end_of_BH1750_read
	__end_of_BH1750_read:
;; =============== function _BH1750_read ends ============

	signat	_BH1750_read,92
	global	i1___awtoft
psect	text1136,local,class=CODE,delta=2
global __ptext1136
__ptext1136:

;; *************** function i1___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  __awtoft        2   14[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  __awtoft        1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       3       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___ftpack
;; This function is called by:
;;		_BH1750_read
;;		_pid
;; This function uses a non-reentrant model
;;
psect	text1136
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
	line	33
	global	__size_ofi1___awtoft
	__size_ofi1___awtoft	equ	__end_ofi1___awtoft-i1___awtoft
	
i1___awtoft:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
i1l6493:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(i1___awtoft@sign)
	line	37
	
i1l6495:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(i1___awtoft@c+1),7
	goto	u553_21
	goto	u553_20
u553_21:
	goto	i1l6499
u553_20:
	line	38
	
i1l6497:	
	comf	(i1___awtoft@c),f
	comf	(i1___awtoft@c+1),f
	incf	(i1___awtoft@c),f
	skipnz
	incf	(i1___awtoft@c+1),f
	line	39
	clrf	(i1___awtoft@sign)
	bsf	status,0
	rlf	(i1___awtoft@sign),f
	goto	i1l6499
	line	40
	
i1l2103:	
	line	41
	
i1l6499:	
	movf	(i1___awtoft@c),w
	movwf	(?i1___ftpack)
	movf	(i1___awtoft@c+1),w
	movwf	(?i1___ftpack+1)
	clrf	(?i1___ftpack+2)
	movlw	(08Eh)
	movwf	(??i1___awtoft+0)+0
	movf	(??i1___awtoft+0)+0,w
	movwf	0+(?i1___ftpack)+03h
	movf	(i1___awtoft@sign),w
	movwf	(??i1___awtoft+1)+0
	movf	(??i1___awtoft+1)+0,w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___awtoft)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___awtoft+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___awtoft+2)
	goto	i1l2104
	
i1l6501:	
	line	42
	
i1l2104:	
	return
	opt stack 0
GLOBAL	__end_ofi1___awtoft
	__end_ofi1___awtoft:
;; =============== function i1___awtoft ends ============

	signat	i1___awtoft,91
	global	i1___ftmul
psect	text1137,local,class=CODE,delta=2
global __ptext1137
__ptext1137:

;; *************** function i1___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  __ftmul         3   30[BANK0 ] float 
;;  __ftmul         3   33[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  __ftmul         3   41[BANK0 ] unsigned um
;;  __ftmul         1   45[BANK0 ] unsigned char 
;;  __ftmul         1   44[BANK0 ] unsigned char 
;;  __ftmul         1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   30[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___ftpack
;; This function is called by:
;;		_pid
;; This function uses a non-reentrant model
;;
psect	text1137
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
	line	52
	global	__size_ofi1___ftmul
	__size_ofi1___ftmul	equ	__end_ofi1___ftmul-i1___ftmul
	
i1___ftmul:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
i1l6399:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1___ftmul@f1),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f1+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f1+2),w
	movwf	((??i1___ftmul+0)+0+2)
	clrc
	rlf	(??i1___ftmul+0)+1,w
	rlf	(??i1___ftmul+0)+2,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	movwf	(i1___ftmul@exp)
	movf	((i1___ftmul@exp)),f
	skipz
	goto	u529_21
	goto	u529_20
u529_21:
	goto	i1l6405
u529_20:
	line	57
	
i1l6401:	
	movlw	0x0
	movwf	(?i1___ftmul)
	movlw	0x0
	movwf	(?i1___ftmul+1)
	movlw	0x0
	movwf	(?i1___ftmul+2)
	goto	i1l2066
	
i1l6403:	
	goto	i1l2066
	
i1l2065:	
	line	58
	
i1l6405:	
	movf	(i1___ftmul@f2),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f2+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f2+2),w
	movwf	((??i1___ftmul+0)+0+2)
	clrc
	rlf	(??i1___ftmul+0)+1,w
	rlf	(??i1___ftmul+0)+2,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	movwf	(i1___ftmul@sign)
	movf	((i1___ftmul@sign)),f
	skipz
	goto	u530_21
	goto	u530_20
u530_21:
	goto	i1l6411
u530_20:
	line	59
	
i1l6407:	
	movlw	0x0
	movwf	(?i1___ftmul)
	movlw	0x0
	movwf	(?i1___ftmul+1)
	movlw	0x0
	movwf	(?i1___ftmul+2)
	goto	i1l2066
	
i1l6409:	
	goto	i1l2066
	
i1l2067:	
	line	60
	
i1l6411:	
	movf	(i1___ftmul@sign),w
	addlw	07Bh
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	addwf	(i1___ftmul@exp),f
	line	61
	movf	(i1___ftmul@f1),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f1+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f1+2),w
	movwf	((??i1___ftmul+0)+0+2)
	movlw	010h
u531_25:
	clrc
	rrf	(??i1___ftmul+0)+2,f
	rrf	(??i1___ftmul+0)+1,f
	rrf	(??i1___ftmul+0)+0,f
u531_20:
	addlw	-1
	skipz
	goto	u531_25
	movf	0+(??i1___ftmul+0)+0,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	movwf	(i1___ftmul@sign)
	line	62
	movf	(i1___ftmul@f2),w
	movwf	((??i1___ftmul+0)+0)
	movf	(i1___ftmul@f2+1),w
	movwf	((??i1___ftmul+0)+0+1)
	movf	(i1___ftmul@f2+2),w
	movwf	((??i1___ftmul+0)+0+2)
	movlw	010h
u532_25:
	clrc
	rrf	(??i1___ftmul+0)+2,f
	rrf	(??i1___ftmul+0)+1,f
	rrf	(??i1___ftmul+0)+0,f
u532_20:
	addlw	-1
	skipz
	goto	u532_25
	movf	0+(??i1___ftmul+0)+0,w
	movwf	(??i1___ftmul+3)+0
	movf	(??i1___ftmul+3)+0,w
	xorwf	(i1___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	andwf	(i1___ftmul@sign),f
	line	64
	
i1l6413:	
	bsf	(i1___ftmul@f1)+(15/8),(15)&7
	line	66
	
i1l6415:	
	bsf	(i1___ftmul@f2)+(15/8),(15)&7
	line	67
	
i1l6417:	
	movlw	0FFh
	andwf	(i1___ftmul@f2),f
	movlw	0FFh
	andwf	(i1___ftmul@f2+1),f
	movlw	0
	andwf	(i1___ftmul@f2+2),f
	line	68
	
i1l6419:	
	movlw	0
	movwf	(i1___ftmul@f3_as_product)
	movlw	0
	movwf	(i1___ftmul@f3_as_product+1)
	movlw	0
	movwf	(i1___ftmul@f3_as_product+2)
	line	69
	
i1l6421:	
	movlw	(07h)
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	movwf	(i1___ftmul@cntr)
	goto	i1l6423
	line	70
	
i1l2068:	
	line	71
	
i1l6423:	
	btfss	(i1___ftmul@f1),(0)&7
	goto	u533_21
	goto	u533_20
u533_21:
	goto	i1l6427
u533_20:
	line	72
	
i1l6425:	
	movf	(i1___ftmul@f2),w
	addwf	(i1___ftmul@f3_as_product),f
	movf	(i1___ftmul@f2+1),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+1),w
	skipnz
	goto	u534_21
	addwf	(i1___ftmul@f3_as_product+1),f
u534_21:
	movf	(i1___ftmul@f2+2),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+2),w
	skipnz
	goto	u534_22
	addwf	(i1___ftmul@f3_as_product+2),f
u534_22:

	goto	i1l6427
	
i1l2069:	
	line	73
	
i1l6427:	
	movlw	01h
u535_25:
	clrc
	rrf	(i1___ftmul@f1+2),f
	rrf	(i1___ftmul@f1+1),f
	rrf	(i1___ftmul@f1),f
	addlw	-1
	skipz
	goto	u535_25

	line	74
	
i1l6429:	
	movlw	01h
u536_25:
	clrc
	rlf	(i1___ftmul@f2),f
	rlf	(i1___ftmul@f2+1),f
	rlf	(i1___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u536_25
	line	75
	
i1l6431:	
	movlw	low(01h)
	subwf	(i1___ftmul@cntr),f
	btfss	status,2
	goto	u537_21
	goto	u537_20
u537_21:
	goto	i1l6423
u537_20:
	goto	i1l6433
	
i1l2070:	
	line	76
	
i1l6433:	
	movlw	(09h)
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	movwf	(i1___ftmul@cntr)
	goto	i1l6435
	line	77
	
i1l2071:	
	line	78
	
i1l6435:	
	btfss	(i1___ftmul@f1),(0)&7
	goto	u538_21
	goto	u538_20
u538_21:
	goto	i1l6439
u538_20:
	line	79
	
i1l6437:	
	movf	(i1___ftmul@f2),w
	addwf	(i1___ftmul@f3_as_product),f
	movf	(i1___ftmul@f2+1),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+1),w
	skipnz
	goto	u539_21
	addwf	(i1___ftmul@f3_as_product+1),f
u539_21:
	movf	(i1___ftmul@f2+2),w
	clrz
	skipnc
	incf	(i1___ftmul@f2+2),w
	skipnz
	goto	u539_22
	addwf	(i1___ftmul@f3_as_product+2),f
u539_22:

	goto	i1l6439
	
i1l2072:	
	line	80
	
i1l6439:	
	movlw	01h
u540_25:
	clrc
	rrf	(i1___ftmul@f1+2),f
	rrf	(i1___ftmul@f1+1),f
	rrf	(i1___ftmul@f1),f
	addlw	-1
	skipz
	goto	u540_25

	line	81
	
i1l6441:	
	movlw	01h
u541_25:
	clrc
	rrf	(i1___ftmul@f3_as_product+2),f
	rrf	(i1___ftmul@f3_as_product+1),f
	rrf	(i1___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u541_25

	line	82
	
i1l6443:	
	movlw	low(01h)
	subwf	(i1___ftmul@cntr),f
	btfss	status,2
	goto	u542_21
	goto	u542_20
u542_21:
	goto	i1l6435
u542_20:
	goto	i1l6445
	
i1l2073:	
	line	83
	
i1l6445:	
	movf	(i1___ftmul@f3_as_product),w
	movwf	(?i1___ftpack)
	movf	(i1___ftmul@f3_as_product+1),w
	movwf	(?i1___ftpack+1)
	movf	(i1___ftmul@f3_as_product+2),w
	movwf	(?i1___ftpack+2)
	movf	(i1___ftmul@exp),w
	movwf	(??i1___ftmul+0)+0
	movf	(??i1___ftmul+0)+0,w
	movwf	0+(?i1___ftpack)+03h
	movf	(i1___ftmul@sign),w
	movwf	(??i1___ftmul+1)+0
	movf	(??i1___ftmul+1)+0,w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftmul)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___ftmul+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___ftmul+2)
	goto	i1l2066
	
i1l6447:	
	line	84
	
i1l2066:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftmul
	__end_ofi1___ftmul:
;; =============== function i1___ftmul ends ============

	signat	i1___ftmul,91
	global	i1___ftdiv
psect	text1138,local,class=CODE,delta=2
global __ptext1138
__ptext1138:

;; *************** function i1___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  __ftdiv         3   46[BANK0 ] float 
;;  __ftdiv         3   49[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  __ftdiv         3   57[BANK0 ] float 
;;  __ftdiv         1   61[BANK0 ] unsigned char 
;;  __ftdiv         1   60[BANK0 ] unsigned char 
;;  __ftdiv         1   56[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   46[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___ftpack
;; This function is called by:
;;		_BH1750_read
;;		_pid
;; This function uses a non-reentrant model
;;
psect	text1138
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_ofi1___ftdiv
	__size_ofi1___ftdiv	equ	__end_ofi1___ftdiv-i1___ftdiv
	
i1___ftdiv:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l6357:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1___ftdiv@f1),w
	movwf	((??i1___ftdiv+0)+0)
	movf	(i1___ftdiv@f1+1),w
	movwf	((??i1___ftdiv+0)+0+1)
	movf	(i1___ftdiv@f1+2),w
	movwf	((??i1___ftdiv+0)+0+2)
	clrc
	rlf	(??i1___ftdiv+0)+1,w
	rlf	(??i1___ftdiv+0)+2,w
	movwf	(??i1___ftdiv+3)+0
	movf	(??i1___ftdiv+3)+0,w
	movwf	(i1___ftdiv@exp)
	movf	((i1___ftdiv@exp)),f
	skipz
	goto	u521_21
	goto	u521_20
u521_21:
	goto	i1l6363
u521_20:
	line	56
	
i1l6359:	
	movlw	0x0
	movwf	(?i1___ftdiv)
	movlw	0x0
	movwf	(?i1___ftdiv+1)
	movlw	0x0
	movwf	(?i1___ftdiv+2)
	goto	i1l2056
	
i1l6361:	
	goto	i1l2056
	
i1l2055:	
	line	57
	
i1l6363:	
	movf	(i1___ftdiv@f2),w
	movwf	((??i1___ftdiv+0)+0)
	movf	(i1___ftdiv@f2+1),w
	movwf	((??i1___ftdiv+0)+0+1)
	movf	(i1___ftdiv@f2+2),w
	movwf	((??i1___ftdiv+0)+0+2)
	clrc
	rlf	(??i1___ftdiv+0)+1,w
	rlf	(??i1___ftdiv+0)+2,w
	movwf	(??i1___ftdiv+3)+0
	movf	(??i1___ftdiv+3)+0,w
	movwf	(i1___ftdiv@sign)
	movf	((i1___ftdiv@sign)),f
	skipz
	goto	u522_21
	goto	u522_20
u522_21:
	goto	i1l6369
u522_20:
	line	58
	
i1l6365:	
	movlw	0x0
	movwf	(?i1___ftdiv)
	movlw	0x0
	movwf	(?i1___ftdiv+1)
	movlw	0x0
	movwf	(?i1___ftdiv+2)
	goto	i1l2056
	
i1l6367:	
	goto	i1l2056
	
i1l2057:	
	line	59
	
i1l6369:	
	movlw	0
	movwf	(i1___ftdiv@f3)
	movlw	0
	movwf	(i1___ftdiv@f3+1)
	movlw	0
	movwf	(i1___ftdiv@f3+2)
	line	60
	
i1l6371:	
	movlw	(089h)
	addwf	(i1___ftdiv@sign),w
	movwf	(??i1___ftdiv+0)+0
	movf	0+(??i1___ftdiv+0)+0,w
	subwf	(i1___ftdiv@exp),f
	line	61
	
i1l6373:	
	movf	(i1___ftdiv@f1),w
	movwf	((??i1___ftdiv+0)+0)
	movf	(i1___ftdiv@f1+1),w
	movwf	((??i1___ftdiv+0)+0+1)
	movf	(i1___ftdiv@f1+2),w
	movwf	((??i1___ftdiv+0)+0+2)
	movlw	010h
u523_25:
	clrc
	rrf	(??i1___ftdiv+0)+2,f
	rrf	(??i1___ftdiv+0)+1,f
	rrf	(??i1___ftdiv+0)+0,f
u523_20:
	addlw	-1
	skipz
	goto	u523_25
	movf	0+(??i1___ftdiv+0)+0,w
	movwf	(??i1___ftdiv+3)+0
	movf	(??i1___ftdiv+3)+0,w
	movwf	(i1___ftdiv@sign)
	line	62
	
i1l6375:	
	movf	(i1___ftdiv@f2),w
	movwf	((??i1___ftdiv+0)+0)
	movf	(i1___ftdiv@f2+1),w
	movwf	((??i1___ftdiv+0)+0+1)
	movf	(i1___ftdiv@f2+2),w
	movwf	((??i1___ftdiv+0)+0+2)
	movlw	010h
u524_25:
	clrc
	rrf	(??i1___ftdiv+0)+2,f
	rrf	(??i1___ftdiv+0)+1,f
	rrf	(??i1___ftdiv+0)+0,f
u524_20:
	addlw	-1
	skipz
	goto	u524_25
	movf	0+(??i1___ftdiv+0)+0,w
	movwf	(??i1___ftdiv+3)+0
	movf	(??i1___ftdiv+3)+0,w
	xorwf	(i1___ftdiv@sign),f
	line	63
	
i1l6377:	
	movlw	(080h)
	movwf	(??i1___ftdiv+0)+0
	movf	(??i1___ftdiv+0)+0,w
	andwf	(i1___ftdiv@sign),f
	line	64
	
i1l6379:	
	bsf	(i1___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(i1___ftdiv@f1),f
	movlw	0FFh
	andwf	(i1___ftdiv@f1+1),f
	movlw	0
	andwf	(i1___ftdiv@f1+2),f
	line	66
	
i1l6381:	
	bsf	(i1___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(i1___ftdiv@f2),f
	movlw	0FFh
	andwf	(i1___ftdiv@f2+1),f
	movlw	0
	andwf	(i1___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??i1___ftdiv+0)+0
	movf	(??i1___ftdiv+0)+0,w
	movwf	(i1___ftdiv@cntr)
	goto	i1l6383
	line	69
	
i1l2058:	
	line	70
	
i1l6383:	
	movlw	01h
u525_25:
	clrc
	rlf	(i1___ftdiv@f3),f
	rlf	(i1___ftdiv@f3+1),f
	rlf	(i1___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u525_25
	line	71
	
i1l6385:	
	movf	(i1___ftdiv@f2+2),w
	subwf	(i1___ftdiv@f1+2),w
	skipz
	goto	u526_25
	movf	(i1___ftdiv@f2+1),w
	subwf	(i1___ftdiv@f1+1),w
	skipz
	goto	u526_25
	movf	(i1___ftdiv@f2),w
	subwf	(i1___ftdiv@f1),w
u526_25:
	skipc
	goto	u526_21
	goto	u526_20
u526_21:
	goto	i1l6391
u526_20:
	line	72
	
i1l6387:	
	movf	(i1___ftdiv@f2),w
	subwf	(i1___ftdiv@f1),f
	movf	(i1___ftdiv@f2+1),w
	skipc
	incfsz	(i1___ftdiv@f2+1),w
	subwf	(i1___ftdiv@f1+1),f
	movf	(i1___ftdiv@f2+2),w
	skipc
	incf	(i1___ftdiv@f2+2),w
	subwf	(i1___ftdiv@f1+2),f
	line	73
	
i1l6389:	
	bsf	(i1___ftdiv@f3)+(0/8),(0)&7
	goto	i1l6391
	line	74
	
i1l2059:	
	line	75
	
i1l6391:	
	movlw	01h
u527_25:
	clrc
	rlf	(i1___ftdiv@f1),f
	rlf	(i1___ftdiv@f1+1),f
	rlf	(i1___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u527_25
	line	76
	
i1l6393:	
	movlw	low(01h)
	subwf	(i1___ftdiv@cntr),f
	btfss	status,2
	goto	u528_21
	goto	u528_20
u528_21:
	goto	i1l6383
u528_20:
	goto	i1l6395
	
i1l2060:	
	line	77
	
i1l6395:	
	movf	(i1___ftdiv@f3),w
	movwf	(?i1___ftpack)
	movf	(i1___ftdiv@f3+1),w
	movwf	(?i1___ftpack+1)
	movf	(i1___ftdiv@f3+2),w
	movwf	(?i1___ftpack+2)
	movf	(i1___ftdiv@exp),w
	movwf	(??i1___ftdiv+0)+0
	movf	(??i1___ftdiv+0)+0,w
	movwf	0+(?i1___ftpack)+03h
	movf	(i1___ftdiv@sign),w
	movwf	(??i1___ftdiv+1)+0
	movf	(??i1___ftdiv+1)+0,w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftdiv)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___ftdiv+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___ftdiv+2)
	goto	i1l2056
	
i1l6397:	
	line	78
	
i1l2056:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftdiv
	__end_ofi1___ftdiv:
;; =============== function i1___ftdiv ends ============

	signat	i1___ftdiv,91
	global	i1___ftadd
psect	text1139,local,class=CODE,delta=2
global __ptext1139
__ptext1139:

;; *************** function i1___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  __ftadd         3   17[BANK0 ] float 
;;  __ftadd         3   20[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  __ftadd         1   29[BANK0 ] unsigned char 
;;  __ftadd         1   28[BANK0 ] unsigned char 
;;  __ftadd         1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___ftpack
;; This function is called by:
;;		_pid
;; This function uses a non-reentrant model
;;
psect	text1139
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
	line	87
	global	__size_ofi1___ftadd
	__size_ofi1___ftadd	equ	__end_ofi1___ftadd-i1___ftadd
	
i1___ftadd:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l6285:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1___ftadd@f1),w
	movwf	((??i1___ftadd+0)+0)
	movf	(i1___ftadd@f1+1),w
	movwf	((??i1___ftadd+0)+0+1)
	movf	(i1___ftadd@f1+2),w
	movwf	((??i1___ftadd+0)+0+2)
	clrc
	rlf	(??i1___ftadd+0)+1,w
	rlf	(??i1___ftadd+0)+2,w
	movwf	(??i1___ftadd+3)+0
	movf	(??i1___ftadd+3)+0,w
	movwf	(i1___ftadd@exp1)
	line	91
	movf	(i1___ftadd@f2),w
	movwf	((??i1___ftadd+0)+0)
	movf	(i1___ftadd@f2+1),w
	movwf	((??i1___ftadd+0)+0+1)
	movf	(i1___ftadd@f2+2),w
	movwf	((??i1___ftadd+0)+0+2)
	clrc
	rlf	(??i1___ftadd+0)+1,w
	rlf	(??i1___ftadd+0)+2,w
	movwf	(??i1___ftadd+3)+0
	movf	(??i1___ftadd+3)+0,w
	movwf	(i1___ftadd@exp2)
	line	92
	
i1l6287:	
	movf	(i1___ftadd@exp1),w
	skipz
	goto	u497_20
	goto	i1l6293
u497_20:
	
i1l6289:	
	movf	(i1___ftadd@exp2),w
	subwf	(i1___ftadd@exp1),w
	skipnc
	goto	u498_21
	goto	u498_20
u498_21:
	goto	i1l6297
u498_20:
	
i1l6291:	
	decf	(i1___ftadd@exp1),w
	xorlw	0ffh
	addwf	(i1___ftadd@exp2),w
	movwf	(??i1___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u499_21
	goto	u499_20
u499_21:
	goto	i1l6297
u499_20:
	goto	i1l6293
	
i1l2013:	
	line	93
	
i1l6293:	
	movf	(i1___ftadd@f2),w
	movwf	(?i1___ftadd)
	movf	(i1___ftadd@f2+1),w
	movwf	(?i1___ftadd+1)
	movf	(i1___ftadd@f2+2),w
	movwf	(?i1___ftadd+2)
	goto	i1l2014
	
i1l6295:	
	goto	i1l2014
	
i1l2011:	
	line	94
	
i1l6297:	
	movf	(i1___ftadd@exp2),w
	skipz
	goto	u500_20
	goto	i1l2017
u500_20:
	
i1l6299:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u501_21
	goto	u501_20
u501_21:
	goto	i1l6303
u501_20:
	
i1l6301:	
	decf	(i1___ftadd@exp2),w
	xorlw	0ffh
	addwf	(i1___ftadd@exp1),w
	movwf	(??i1___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??i1___ftadd+0)+0,w
	skipc
	goto	u502_21
	goto	u502_20
u502_21:
	goto	i1l6303
u502_20:
	
i1l2017:	
	line	95
	goto	i1l2014
	
i1l2015:	
	line	96
	
i1l6303:	
	movlw	(06h)
	movwf	(??i1___ftadd+0)+0
	movf	(??i1___ftadd+0)+0,w
	movwf	(i1___ftadd@sign)
	line	97
	
i1l6305:	
	btfss	(i1___ftadd@f1+2),(23)&7
	goto	u503_21
	goto	u503_20
u503_21:
	goto	i1l2018
u503_20:
	line	98
	
i1l6307:	
	bsf	(i1___ftadd@sign)+(7/8),(7)&7
	
i1l2018:	
	line	99
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u504_21
	goto	u504_20
u504_21:
	goto	i1l2019
u504_20:
	line	100
	
i1l6309:	
	bsf	(i1___ftadd@sign)+(6/8),(6)&7
	
i1l2019:	
	line	101
	bsf	(i1___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l6311:	
	movlw	0FFh
	andwf	(i1___ftadd@f1),f
	movlw	0FFh
	andwf	(i1___ftadd@f1+1),f
	movlw	0
	andwf	(i1___ftadd@f1+2),f
	line	103
	
i1l6313:	
	bsf	(i1___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(i1___ftadd@f2),f
	movlw	0FFh
	andwf	(i1___ftadd@f2+1),f
	movlw	0
	andwf	(i1___ftadd@f2+2),f
	line	106
	movf	(i1___ftadd@exp2),w
	subwf	(i1___ftadd@exp1),w
	skipnc
	goto	u505_21
	goto	u505_20
u505_21:
	goto	i1l6325
u505_20:
	goto	i1l6315
	line	109
	
i1l2021:	
	line	110
	
i1l6315:	
	movlw	01h
u506_25:
	clrc
	rlf	(i1___ftadd@f2),f
	rlf	(i1___ftadd@f2+1),f
	rlf	(i1___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u506_25
	line	111
	movlw	low(01h)
	subwf	(i1___ftadd@exp2),f
	line	112
	
i1l6317:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u507_21
	goto	u507_20
u507_21:
	goto	i1l6323
u507_20:
	
i1l6319:	
	movlw	low(01h)
	subwf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u508_21
	goto	u508_20
u508_21:
	goto	i1l6315
u508_20:
	goto	i1l6323
	
i1l2023:	
	goto	i1l6323
	
i1l2024:	
	line	113
	goto	i1l6323
	
i1l2026:	
	line	114
	
i1l6321:	
	movlw	01h
u509_25:
	clrc
	rrf	(i1___ftadd@f1+2),f
	rrf	(i1___ftadd@f1+1),f
	rrf	(i1___ftadd@f1),f
	addlw	-1
	skipz
	goto	u509_25

	line	115
	movlw	(01h)
	movwf	(??i1___ftadd+0)+0
	movf	(??i1___ftadd+0)+0,w
	addwf	(i1___ftadd@exp1),f
	goto	i1l6323
	line	116
	
i1l2025:	
	line	113
	
i1l6323:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u510_21
	goto	u510_20
u510_21:
	goto	i1l6321
u510_20:
	goto	i1l2028
	
i1l2027:	
	line	117
	goto	i1l2028
	
i1l2020:	
	
i1l6325:	
	movf	(i1___ftadd@exp1),w
	subwf	(i1___ftadd@exp2),w
	skipnc
	goto	u511_21
	goto	u511_20
u511_21:
	goto	i1l2028
u511_20:
	goto	i1l6327
	line	120
	
i1l2030:	
	line	121
	
i1l6327:	
	movlw	01h
u512_25:
	clrc
	rlf	(i1___ftadd@f1),f
	rlf	(i1___ftadd@f1+1),f
	rlf	(i1___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u512_25
	line	122
	movlw	low(01h)
	subwf	(i1___ftadd@exp1),f
	line	123
	
i1l6329:	
	movf	(i1___ftadd@exp2),w
	xorwf	(i1___ftadd@exp1),w
	skipnz
	goto	u513_21
	goto	u513_20
u513_21:
	goto	i1l6335
u513_20:
	
i1l6331:	
	movlw	low(01h)
	subwf	(i1___ftadd@sign),f
	movf	((i1___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u514_21
	goto	u514_20
u514_21:
	goto	i1l6327
u514_20:
	goto	i1l6335
	
i1l2032:	
	goto	i1l6335
	
i1l2033:	
	line	124
	goto	i1l6335
	
i1l2035:	
	line	125
	
i1l6333:	
	movlw	01h
u515_25:
	clrc
	rrf	(i1___ftadd@f2+2),f
	rrf	(i1___ftadd@f2+1),f
	rrf	(i1___ftadd@f2),f
	addlw	-1
	skipz
	goto	u515_25

	line	126
	movlw	(01h)
	movwf	(??i1___ftadd+0)+0
	movf	(??i1___ftadd+0)+0,w
	addwf	(i1___ftadd@exp2),f
	goto	i1l6335
	line	127
	
i1l2034:	
	line	124
	
i1l6335:	
	movf	(i1___ftadd@exp1),w
	xorwf	(i1___ftadd@exp2),w
	skipz
	goto	u516_21
	goto	u516_20
u516_21:
	goto	i1l6333
u516_20:
	goto	i1l2028
	
i1l2036:	
	goto	i1l2028
	line	128
	
i1l2029:	
	line	129
	
i1l2028:	
	btfss	(i1___ftadd@sign),(7)&7
	goto	u517_21
	goto	u517_20
u517_21:
	goto	i1l6339
u517_20:
	line	131
	
i1l6337:	
	movlw	0FFh
	xorwf	(i1___ftadd@f1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(i1___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f1+2),f
	goto	i1l6339
	line	133
	
i1l2037:	
	line	134
	
i1l6339:	
	btfss	(i1___ftadd@sign),(6)&7
	goto	u518_21
	goto	u518_20
u518_21:
	goto	i1l6343
u518_20:
	line	136
	
i1l6341:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(i1___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f2+2),f
	goto	i1l6343
	line	138
	
i1l2038:	
	line	139
	
i1l6343:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(i1___ftadd@sign)
	line	140
	
i1l6345:	
	movf	(i1___ftadd@f1),w
	addwf	(i1___ftadd@f2),f
	movf	(i1___ftadd@f1+1),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+1),w
	skipnz
	goto	u519_21
	addwf	(i1___ftadd@f2+1),f
u519_21:
	movf	(i1___ftadd@f1+2),w
	clrz
	skipnc
	incf	(i1___ftadd@f1+2),w
	skipnz
	goto	u519_22
	addwf	(i1___ftadd@f2+2),f
u519_22:

	line	141
	
i1l6347:	
	btfss	(i1___ftadd@f2+2),(23)&7
	goto	u520_21
	goto	u520_20
u520_21:
	goto	i1l6353
u520_20:
	line	142
	
i1l6349:	
	movlw	0FFh
	xorwf	(i1___ftadd@f2),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(i1___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(i1___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftadd@f2+2),f
	line	144
	
i1l6351:	
	clrf	(i1___ftadd@sign)
	bsf	status,0
	rlf	(i1___ftadd@sign),f
	goto	i1l6353
	line	145
	
i1l2039:	
	line	146
	
i1l6353:	
	movf	(i1___ftadd@f2),w
	movwf	(?i1___ftpack)
	movf	(i1___ftadd@f2+1),w
	movwf	(?i1___ftpack+1)
	movf	(i1___ftadd@f2+2),w
	movwf	(?i1___ftpack+2)
	movf	(i1___ftadd@exp1),w
	movwf	(??i1___ftadd+0)+0
	movf	(??i1___ftadd+0)+0,w
	movwf	0+(?i1___ftpack)+03h
	movf	(i1___ftadd@sign),w
	movwf	(??i1___ftadd+1)+0
	movf	(??i1___ftadd+1)+0,w
	movwf	0+(?i1___ftpack)+04h
	fcall	i1___ftpack
	movf	(0+(?i1___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?i1___ftadd)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___ftadd+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___ftadd+2)
	goto	i1l2014
	
i1l6355:	
	line	148
	
i1l2014:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftadd
	__end_ofi1___ftadd:
;; =============== function i1___ftadd ends ============

	signat	i1___ftadd,91
	global	i1_I2C_write
psect	text1140,local,class=CODE,delta=2
global __ptext1140
__ptext1140:

;; *************** function i1_I2C_write *****************
;; Defined at:
;;		line 163 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;  I2C_write       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  I2C_write       1    1[COMMON] unsigned char 
;;  I2C_write       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_i2c_dly
;; This function is called by:
;;		_BH1750_read
;; This function uses a non-reentrant model
;;
psect	text1140
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	163
	global	__size_ofi1_I2C_write
	__size_ofi1_I2C_write	equ	__end_ofi1_I2C_write-i1_I2C_write
	
i1_I2C_write:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_I2C_write: [wreg+status,2+status,0+pclath+cstack]
;i1I2C_write@d stored from wreg
	line	166
	movwf	(i1I2C_write@d)
	
i1l6267:	
;main.c: 164: char x;
;main.c: 165: static bit b;
;main.c: 166: for(x=8; x; x--) {
	movlw	(08h)
	movwf	(??i1_I2C_write+0)+0
	movf	(??i1_I2C_write+0)+0,w
	movwf	(i1I2C_write@x)
	goto	i1l993
	
i1l994:	
	line	167
;main.c: 167: if(d&0x80) TRISC4 = 1;
	btfss	(i1I2C_write@d),(7)&7
	goto	u494_21
	goto	u494_20
u494_21:
	goto	i1l995
u494_20:
	
i1l6269:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	goto	i1l996
	line	168
	
i1l995:	
;main.c: 168: else TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	
i1l996:	
	line	169
;main.c: 169: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	170
	
i1l6271:	
;main.c: 170: d <<= 1;
	clrc
	rlf	(i1I2C_write@d),f

	line	171
	
i1l6273:	
;main.c: 171: TRISC3 = 0;
	bcf	(1083/8)^080h,(1083)&7
	line	166
	
i1l6275:	
	movlw	low(01h)
	subwf	(i1I2C_write@x),f
	
i1l993:	
	movf	(i1I2C_write@x),f
	skipz
	goto	u495_21
	goto	u495_20
u495_21:
	goto	i1l994
u495_20:
	
i1l997:	
	line	173
;main.c: 172: }
;main.c: 173: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	174
;main.c: 174: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	175
	
i1l6277:	
;main.c: 175: i2c_dly();
	fcall	i1_i2c_dly
	line	176
	
i1l6279:	
;main.c: 176: b = RC4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(I2C_write@b/8),(I2C_write@b)&7
	btfss	(60/8),(60)&7
	goto	u496_25
	bsf	(I2C_write@b/8),(I2C_write@b)&7
u496_25:

	line	178
	
i1l6281:	
;main.c: 178: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	goto	i1l998
	line	179
	
i1l6283:	
	line	180
;main.c: 179: return b;
;	Return value of i1_I2C_write is never used
	
i1l998:	
	return
	opt stack 0
GLOBAL	__end_ofi1_I2C_write
	__end_ofi1_I2C_write:
;; =============== function i1_I2C_write ends ============

	signat	i1_I2C_write,88
	global	i1_I2C_stop
psect	text1141,local,class=CODE,delta=2
global __ptext1141
__ptext1141:

;; *************** function i1_I2C_stop *****************
;; Defined at:
;;		line 129 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_i2c_dly
;; This function is called by:
;;		_BH1750_read
;; This function uses a non-reentrant model
;;
psect	text1141
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	129
	global	__size_ofi1_I2C_stop
	__size_ofi1_I2C_stop	equ	__end_ofi1_I2C_stop-i1_I2C_stop
	
i1_I2C_stop:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_I2C_stop: [status,2+status,0+pclath+cstack]
	line	130
	
i1l6259:	
;main.c: 130: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	131
	
i1l6261:	
;main.c: 131: i2c_dly();
	fcall	i1_i2c_dly
	line	132
	
i1l6263:	
;main.c: 132: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	133
;main.c: 133: i2c_dly();
	fcall	i1_i2c_dly
	line	134
	
i1l6265:	
;main.c: 134: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	135
;main.c: 135: i2c_dly();
	fcall	i1_i2c_dly
	line	136
	
i1l978:	
	return
	opt stack 0
GLOBAL	__end_ofi1_I2C_stop
	__end_ofi1_I2C_stop:
;; =============== function i1_I2C_stop ends ============

	signat	i1_I2C_stop,88
	global	i1_I2C_start
psect	text1142,local,class=CODE,delta=2
global __ptext1142
__ptext1142:

;; *************** function i1_I2C_start *****************
;; Defined at:
;;		line 117 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_i2c_dly
;; This function is called by:
;;		_BH1750_read
;; This function uses a non-reentrant model
;;
psect	text1142
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	117
	global	__size_ofi1_I2C_start
	__size_ofi1_I2C_start	equ	__end_ofi1_I2C_start-i1_I2C_start
	
i1_I2C_start:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_I2C_start: [status,2+status,0+pclath+cstack]
	line	118
	
i1l6249:	
;main.c: 118: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	119
	
i1l6251:	
;main.c: 119: i2c_dly();
	fcall	i1_i2c_dly
	line	120
	
i1l6253:	
;main.c: 120: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	121
;main.c: 121: i2c_dly();
	fcall	i1_i2c_dly
	line	122
	
i1l6255:	
;main.c: 122: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	123
;main.c: 123: i2c_dly();
	fcall	i1_i2c_dly
	line	124
	
i1l6257:	
;main.c: 124: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	125
;main.c: 125: i2c_dly();
	fcall	i1_i2c_dly
	line	126
	
i1l975:	
	return
	opt stack 0
GLOBAL	__end_ofi1_I2C_start
	__end_ofi1_I2C_start:
;; =============== function i1_I2C_start ends ============

	signat	i1_I2C_start,88
	global	_I2C_read
psect	text1143,local,class=CODE,delta=2
global __ptext1143
__ptext1143:

;; *************** function _I2C_read *****************
;; Defined at:
;;		line 138 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1    1[COMMON] unsigned char 
;;  x               1    3[COMMON] unsigned char 
;;  d               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_i2c_dly
;; This function is called by:
;;		_BH1750_read
;; This function uses a non-reentrant model
;;
psect	text1143
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	138
	global	__size_of_I2C_read
	__size_of_I2C_read	equ	__end_of_I2C_read-_I2C_read
	
_I2C_read:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _I2C_read: [wreg+status,2+status,0+pclath+cstack]
;I2C_read@ack stored from wreg
	movwf	(I2C_read@ack)
	line	139
	
i1l5943:	
;main.c: 139: char x, d=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(I2C_read@d)
	line	140
	
i1l5945:	
;main.c: 140: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	141
;main.c: 141: for(x=0; x<8; x++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(I2C_read@x)
	
i1l5947:	
	movlw	(08h)
	subwf	(I2C_read@x),w
	skipc
	goto	u430_21
	goto	u430_20
u430_21:
	goto	i1l5951
u430_20:
	goto	i1l5967
	
i1l5949:	
	goto	i1l5967
	line	142
	
i1l981:	
	line	143
	
i1l5951:	
;main.c: 142: {
;main.c: 143: d <<= 1;
	clrc
	rlf	(I2C_read@d),f

	goto	i1l5953
	line	144
;main.c: 144: do
	
i1l983:	
	line	146
	
i1l5953:	
;main.c: 145: {
;main.c: 146: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	147
	
i1l5955:	
;main.c: 147: }while(RC3==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u431_21
	goto	u431_20
u431_21:
	goto	i1l5953
u431_20:
	goto	i1l5957
	
i1l984:	
	line	149
	
i1l5957:	
;main.c: 149: i2c_dly();
	fcall	i1_i2c_dly
	line	150
	
i1l5959:	
;main.c: 150: if(RC4) d |= 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u432_21
	goto	u432_20
u432_21:
	goto	i1l985
u432_20:
	
i1l5961:	
	bsf	(I2C_read@d)+(0/8),(0)&7
	
i1l985:	
	line	151
;main.c: 151: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	141
	
i1l5963:	
	movlw	(01h)
	movwf	(??_I2C_read+0)+0
	movf	(??_I2C_read+0)+0,w
	addwf	(I2C_read@x),f
	
i1l5965:	
	movlw	(08h)
	subwf	(I2C_read@x),w
	skipc
	goto	u433_21
	goto	u433_20
u433_21:
	goto	i1l5951
u433_20:
	goto	i1l5967
	
i1l982:	
	line	153
	
i1l5967:	
;main.c: 152: }
;main.c: 153: if(ack) TRISC4 = 0;
	movf	(I2C_read@ack),w
	skipz
	goto	u434_20
	goto	i1l986
u434_20:
	
i1l5969:	
	bcf	(1084/8)^080h,(1084)&7
	goto	i1l987
	line	154
	
i1l986:	
;main.c: 154: else TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	
i1l987:	
	line	155
;main.c: 155: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	156
	
i1l5971:	
;main.c: 156: i2c_dly();
	fcall	i1_i2c_dly
	line	157
	
i1l5973:	
;main.c: 157: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	158
	
i1l5975:	
;main.c: 158: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	line	159
	
i1l5977:	
;main.c: 159: return d;
	movf	(I2C_read@d),w
	goto	i1l988
	
i1l5979:	
	line	160
	
i1l988:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_read
	__end_of_I2C_read:
;; =============== function _I2C_read ends ============

	signat	_I2C_read,4217
	global	i1___ftpack
psect	text1144,local,class=CODE,delta=2
global __ptext1144
__ptext1144:

;; *************** function i1___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
;; Parameters:    Size  Location     Type
;;  __ftpack        3    0[COMMON] unsigned um
;;  __ftpack        1    3[COMMON] unsigned char 
;;  __ftpack        1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1___ftadd
;;		i1___ftdiv
;;		i1___ftmul
;;		i1___awtoft
;; This function uses a non-reentrant model
;;
psect	text1144
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_ofi1___ftpack
	__size_ofi1___ftpack	equ	__end_ofi1___ftpack-i1___ftpack
	
i1___ftpack:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l6511:	
	movf	(i1___ftpack@exp),w
	skipz
	goto	u555_20
	goto	i1l6515
u555_20:
	
i1l6513:	
	movf	(i1___ftpack@arg+2),w
	iorwf	(i1___ftpack@arg+1),w
	iorwf	(i1___ftpack@arg),w
	skipz
	goto	u556_21
	goto	u556_20
u556_21:
	goto	i1l6521
u556_20:
	goto	i1l6515
	
i1l2301:	
	line	65
	
i1l6515:	
	movlw	0x0
	movwf	(?i1___ftpack)
	movlw	0x0
	movwf	(?i1___ftpack+1)
	movlw	0x0
	movwf	(?i1___ftpack+2)
	goto	i1l2302
	
i1l6517:	
	goto	i1l2302
	
i1l2299:	
	line	66
	goto	i1l6521
	
i1l2304:	
	line	67
	
i1l6519:	
	movlw	(01h)
	movwf	(??i1___ftpack+0)+0
	movf	(??i1___ftpack+0)+0,w
	addwf	(i1___ftpack@exp),f
	line	68
	movlw	01h
u557_25:
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	addlw	-1
	skipz
	goto	u557_25

	goto	i1l6521
	line	69
	
i1l2303:	
	line	66
	
i1l6521:	
	movlw	low highword(0FE0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u558_21
	goto	u558_20
u558_21:
	goto	i1l6519
u558_20:
	goto	i1l2306
	
i1l2305:	
	line	70
	goto	i1l2306
	
i1l2307:	
	line	71
	
i1l6523:	
	movlw	(01h)
	movwf	(??i1___ftpack+0)+0
	movf	(??i1___ftpack+0)+0,w
	addwf	(i1___ftpack@exp),f
	line	72
	
i1l6525:	
	movlw	01h
	addwf	(i1___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(i1___ftpack@arg+2),f
	line	73
	
i1l6527:	
	movlw	01h
u559_25:
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	addlw	-1
	skipz
	goto	u559_25

	line	74
	
i1l2306:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u560_21
	goto	u560_20
u560_21:
	goto	i1l6523
u560_20:
	goto	i1l6531
	
i1l2308:	
	line	75
	goto	i1l6531
	
i1l2310:	
	line	76
	
i1l6529:	
	movlw	low(01h)
	subwf	(i1___ftpack@exp),f
	line	77
	movlw	01h
u561_25:
	clrc
	rlf	(i1___ftpack@arg),f
	rlf	(i1___ftpack@arg+1),f
	rlf	(i1___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u561_25
	goto	i1l6531
	line	78
	
i1l2309:	
	line	75
	
i1l6531:	
	btfss	(i1___ftpack@arg+1),(15)&7
	goto	u562_21
	goto	u562_20
u562_21:
	goto	i1l6529
u562_20:
	
i1l2311:	
	line	79
	btfsc	(i1___ftpack@exp),(0)&7
	goto	u563_21
	goto	u563_20
u563_21:
	goto	i1l2312
u563_20:
	line	80
	
i1l6533:	
	movlw	0FFh
	andwf	(i1___ftpack@arg),f
	movlw	07Fh
	andwf	(i1___ftpack@arg+1),f
	movlw	0FFh
	andwf	(i1___ftpack@arg+2),f
	
i1l2312:	
	line	81
	clrc
	rrf	(i1___ftpack@exp),f

	line	82
	
i1l6535:	
	movf	(i1___ftpack@exp),w
	movwf	((??i1___ftpack+0)+0)
	clrf	((??i1___ftpack+0)+0+1)
	clrf	((??i1___ftpack+0)+0+2)
	movlw	010h
u564_25:
	clrc
	rlf	(??i1___ftpack+0)+0,f
	rlf	(??i1___ftpack+0)+1,f
	rlf	(??i1___ftpack+0)+2,f
u564_20:
	addlw	-1
	skipz
	goto	u564_25
	movf	0+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg),f
	movf	1+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+1),f
	movf	2+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+2),f
	line	83
	
i1l6537:	
	movf	(i1___ftpack@sign),w
	skipz
	goto	u565_20
	goto	i1l2313
u565_20:
	line	84
	
i1l6539:	
	bsf	(i1___ftpack@arg)+(23/8),(23)&7
	
i1l2313:	
	line	85
	line	86
	
i1l2302:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftpack
	__end_ofi1___ftpack:
;; =============== function i1___ftpack ends ============

	signat	i1___ftpack,91
	global	i1___ftneg
psect	text1145,local,class=CODE,delta=2
global __ptext1145
__ptext1145:

;; *************** function i1___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  __ftneg         3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pid
;; This function uses a non-reentrant model
;;
psect	text1145
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
	line	16
	global	__size_ofi1___ftneg
	__size_ofi1___ftneg	equ	__end_ofi1___ftneg-i1___ftneg
	
i1___ftneg:	
	opt	stack 0
; Regs used in i1___ftneg: [wreg]
	line	17
	
i1l6503:	
	movf	(i1___ftneg@f1+2),w
	iorwf	(i1___ftneg@f1+1),w
	iorwf	(i1___ftneg@f1),w
	skipnz
	goto	u554_21
	goto	u554_20
u554_21:
	goto	i1l6507
u554_20:
	line	18
	
i1l6505:	
	movlw	080h
	xorwf	(i1___ftneg@f1+2),f
	goto	i1l6507
	
i1l2130:	
	line	19
	
i1l6507:	
	goto	i1l2131
	
i1l6509:	
	line	20
	
i1l2131:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftneg
	__end_ofi1___ftneg:
;; =============== function i1___ftneg ends ============

	signat	i1___ftneg,91
	global	i1___fttol
psect	text1146,local,class=CODE,delta=2
global __ptext1146
__ptext1146:

;; *************** function i1___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  __fttol         3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  __fttol         4    9[BANK0 ] unsigned long 
;;  __fttol         1   13[BANK0 ] unsigned char 
;;  __fttol         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pid
;; This function uses a non-reentrant model
;;
psect	text1146
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
	line	45
	global	__size_ofi1___fttol
	__size_ofi1___fttol	equ	__end_ofi1___fttol-i1___fttol
	
i1___fttol:	
	opt	stack 0
; Regs used in i1___fttol: [wreg+status,2+status,0]
	line	49
	
i1l6449:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1___fttol@f1),w
	movwf	((??i1___fttol+0)+0)
	movf	(i1___fttol@f1+1),w
	movwf	((??i1___fttol+0)+0+1)
	movf	(i1___fttol@f1+2),w
	movwf	((??i1___fttol+0)+0+2)
	clrc
	rlf	(??i1___fttol+0)+1,w
	rlf	(??i1___fttol+0)+2,w
	movwf	(??i1___fttol+3)+0
	movf	(??i1___fttol+3)+0,w
	movwf	(i1___fttol@exp1)
	movf	((i1___fttol@exp1)),f
	skipz
	goto	u543_21
	goto	u543_20
u543_21:
	goto	i1l6455
u543_20:
	line	50
	
i1l6451:	
	movlw	0
	movwf	(?i1___fttol+3)
	movlw	0
	movwf	(?i1___fttol+2)
	movlw	0
	movwf	(?i1___fttol+1)
	movlw	0
	movwf	(?i1___fttol)

	goto	i1l2077
	
i1l6453:	
	goto	i1l2077
	
i1l2076:	
	line	51
	
i1l6455:	
	movf	(i1___fttol@f1),w
	movwf	((??i1___fttol+0)+0)
	movf	(i1___fttol@f1+1),w
	movwf	((??i1___fttol+0)+0+1)
	movf	(i1___fttol@f1+2),w
	movwf	((??i1___fttol+0)+0+2)
	movlw	017h
u544_25:
	clrc
	rrf	(??i1___fttol+0)+2,f
	rrf	(??i1___fttol+0)+1,f
	rrf	(??i1___fttol+0)+0,f
u544_20:
	addlw	-1
	skipz
	goto	u544_25
	movf	0+(??i1___fttol+0)+0,w
	movwf	(??i1___fttol+3)+0
	movf	(??i1___fttol+3)+0,w
	movwf	(i1___fttol@sign1)
	line	52
	
i1l6457:	
	bsf	(i1___fttol@f1)+(15/8),(15)&7
	line	53
	
i1l6459:	
	movlw	0FFh
	andwf	(i1___fttol@f1),f
	movlw	0FFh
	andwf	(i1___fttol@f1+1),f
	movlw	0
	andwf	(i1___fttol@f1+2),f
	line	54
	
i1l6461:	
	movf	(i1___fttol@f1),w
	movwf	(i1___fttol@lval)
	movf	(i1___fttol@f1+1),w
	movwf	((i1___fttol@lval))+1
	movf	(i1___fttol@f1+2),w
	movwf	((i1___fttol@lval))+2
	clrf	((i1___fttol@lval))+3
	line	55
	
i1l6463:	
	movlw	low(08Eh)
	subwf	(i1___fttol@exp1),f
	line	56
	
i1l6465:	
	btfss	(i1___fttol@exp1),7
	goto	u545_21
	goto	u545_20
u545_21:
	goto	i1l6475
u545_20:
	line	57
	
i1l6467:	
	movf	(i1___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u546_21
	goto	u546_20
u546_21:
	goto	i1l6473
u546_20:
	line	58
	
i1l6469:	
	movlw	0
	movwf	(?i1___fttol+3)
	movlw	0
	movwf	(?i1___fttol+2)
	movlw	0
	movwf	(?i1___fttol+1)
	movlw	0
	movwf	(?i1___fttol)

	goto	i1l2077
	
i1l6471:	
	goto	i1l2077
	
i1l2079:	
	goto	i1l6473
	line	59
	
i1l2080:	
	line	60
	
i1l6473:	
	movlw	01h
u547_25:
	clrc
	rrf	(i1___fttol@lval+3),f
	rrf	(i1___fttol@lval+2),f
	rrf	(i1___fttol@lval+1),f
	rrf	(i1___fttol@lval),f
	addlw	-1
	skipz
	goto	u547_25

	line	61
	movlw	(01h)
	movwf	(??i1___fttol+0)+0
	movf	(??i1___fttol+0)+0,w
	addwf	(i1___fttol@exp1),f
	btfss	status,2
	goto	u548_21
	goto	u548_20
u548_21:
	goto	i1l6473
u548_20:
	goto	i1l6485
	
i1l2081:	
	line	62
	goto	i1l6485
	
i1l2078:	
	line	63
	
i1l6475:	
	movlw	(018h)
	subwf	(i1___fttol@exp1),w
	skipc
	goto	u549_21
	goto	u549_20
u549_21:
	goto	i1l6483
u549_20:
	line	64
	
i1l6477:	
	movlw	0
	movwf	(?i1___fttol+3)
	movlw	0
	movwf	(?i1___fttol+2)
	movlw	0
	movwf	(?i1___fttol+1)
	movlw	0
	movwf	(?i1___fttol)

	goto	i1l2077
	
i1l6479:	
	goto	i1l2077
	
i1l2083:	
	line	65
	goto	i1l6483
	
i1l2085:	
	line	66
	
i1l6481:	
	movlw	01h
	movwf	(??i1___fttol+0)+0
u550_25:
	clrc
	rlf	(i1___fttol@lval),f
	rlf	(i1___fttol@lval+1),f
	rlf	(i1___fttol@lval+2),f
	rlf	(i1___fttol@lval+3),f
	decfsz	(??i1___fttol+0)+0
	goto	u550_25
	line	67
	movlw	low(01h)
	subwf	(i1___fttol@exp1),f
	goto	i1l6483
	line	68
	
i1l2084:	
	line	65
	
i1l6483:	
	movf	(i1___fttol@exp1),f
	skipz
	goto	u551_21
	goto	u551_20
u551_21:
	goto	i1l6481
u551_20:
	goto	i1l6485
	
i1l2086:	
	goto	i1l6485
	line	69
	
i1l2082:	
	line	70
	
i1l6485:	
	movf	(i1___fttol@sign1),w
	skipz
	goto	u552_20
	goto	i1l6489
u552_20:
	line	71
	
i1l6487:	
	comf	(i1___fttol@lval),f
	comf	(i1___fttol@lval+1),f
	comf	(i1___fttol@lval+2),f
	comf	(i1___fttol@lval+3),f
	incf	(i1___fttol@lval),f
	skipnz
	incf	(i1___fttol@lval+1),f
	skipnz
	incf	(i1___fttol@lval+2),f
	skipnz
	incf	(i1___fttol@lval+3),f
	goto	i1l6489
	
i1l2087:	
	line	72
	
i1l6489:	
	movf	(i1___fttol@lval+3),w
	movwf	(?i1___fttol+3)
	movf	(i1___fttol@lval+2),w
	movwf	(?i1___fttol+2)
	movf	(i1___fttol@lval+1),w
	movwf	(?i1___fttol+1)
	movf	(i1___fttol@lval),w
	movwf	(?i1___fttol)

	goto	i1l2077
	
i1l6491:	
	line	73
	
i1l2077:	
	return
	opt stack 0
GLOBAL	__end_ofi1___fttol
	__end_ofi1___fttol:
;; =============== function i1___fttol ends ============

	signat	i1___fttol,92
	global	i1_i2c_dly
psect	text1147,local,class=CODE,delta=2
global __ptext1147
__ptext1147:

;; *************** function i1_i2c_dly *****************
;; Defined at:
;;		line 113 in file "C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_read
;;		i1_I2C_start
;;		i1_I2C_stop
;;		i1_I2C_write
;; This function uses a non-reentrant model
;;
psect	text1147
	file	"C:\Users\Administrator\Desktop\HACKATHON\DO AN C-UART\code c - Copy\main.c"
	line	113
	global	__size_ofi1_i2c_dly
	__size_ofi1_i2c_dly	equ	__end_ofi1_i2c_dly-i1_i2c_dly
	
i1_i2c_dly:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_i2c_dly: []
	line	115
	
i1l972:	
	return
	opt stack 0
GLOBAL	__end_ofi1_i2c_dly
	__end_ofi1_i2c_dly:
;; =============== function i1_i2c_dly ends ============

	signat	i1_i2c_dly,88
psect	text1148,local,class=CODE,delta=2
global __ptext1148
__ptext1148:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
