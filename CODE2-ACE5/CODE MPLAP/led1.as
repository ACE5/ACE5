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
# 6 "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	dw 0x3FFA & 0x3FF7 & 0x3FEF & 0x3FFF & 0x3FFF & 0x3FFF & 0x3CFF & 0x3BFF & 0x37FF & 0x2FFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay_ms
	FNCALL	_main,_BH1750_write
	FNCALL	_main,_xu_ly_lux
	FNCALL	_main,_nhiet_do
	FNCALL	_main,_send_lux
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
	FNCALL	_BH1750_read,i1_I2C_start
	FNCALL	_BH1750_read,i1_I2C_write
	FNCALL	_BH1750_read,_I2C_read
	FNCALL	_BH1750_read,i1_I2C_stop
	FNCALL	_BH1750_read,i1___awtoft
	FNCALL	_BH1750_read,i1___ftdiv
	FNCALL	i1___awtoft,i1___ftpack
	FNCALL	i1___ftdiv,i1___ftpack
	FNCALL	i1_I2C_write,i1_i2c_dly
	FNCALL	i1_I2C_stop,i1_i2c_dly
	FNCALL	i1_I2C_start,i1_i2c_dly
	FNCALL	_I2C_read,i1_i2c_dly
	FNCALL	intlevel1,_uart_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_nhietdo
	global	_fnt1
	global	_fnt2
	global	_n
	global	_value
	global	_biennt1
	global	_biennt2
	global	_check1
	global	_chuc2
	global	_dosang1
	global	_dvi2
	global	_nghin1
	global	_nt1
	global	_nt2
	global	_save
	global	_tram1
	global	I2C_write@b
	global	_check
	global	_dosang
	global	_err
	global	_kd1
	global	_ki1
	global	_kp1
	global	_value1
	global	_flux1
	global	_flux2
	global	_k
	global	_kp5
	global	_kq2
	global	_kqkd
	global	_kqki
	global	_kqkp
	global	_lux_set
	global	_m
	global	_nhietdo1
	global	_output
	global	_pre_err
	global	_temp
	global	_value2
	global	_value3
	global	_c
	global	_chuc
	global	_chuc1
	global	_chuclux
	global	_dvi
	global	_dvi1
	global	_dvilux
	global	_nghin
	global	_nghinlux
	global	_tram
	global	_tramlux
	global	_kq
	global	_ADRESH
psect	text1310,local,class=CODE,delta=2
global __ptext1310
__ptext1310:
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
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
_nhietdo:
       ds      3

_fnt1:
       ds      2

_fnt2:
       ds      2

_n:
       ds      2

_value:
       ds      2

_biennt1:
       ds      1

_biennt2:
       ds      1

_check1:
       ds      1

_chuc2:
       ds      1

_dosang1:
       ds      1

_dvi2:
       ds      1

_nghin1:
       ds      1

_nt1:
       ds      1

_nt2:
       ds      1

_save:
       ds      1

_tram1:
       ds      1

_kq:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_value1:
       ds      3

_flux1:
       ds      2

_flux2:
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

_nhietdo1:
       ds      2

_output:
       ds      2

_pre_err:
       ds      2

_temp:
       ds      2

_value2:
       ds      2

_value3:
       ds      2

_c:
       ds      1

_chuc:
       ds      1

_chuc1:
       ds      1

_chuclux:
       ds      1

_dvi:
       ds      1

_dvi1:
       ds      1

_dvilux:
       ds      1

_nghin:
       ds      1

_nghinlux:
       ds      1

_tram:
       ds      1

_tramlux:
       ds      1

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_check:
       ds      10

_dosang:
       ds      3

_err:
       ds      3

_kd1:
       ds      3

_ki1:
       ds      3

_kp1:
       ds      3

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
	movlw	low((__pbssBANK0)+018h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+02Eh)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+019h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1
global __pcstackBANK3
__pcstackBANK3:
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x0
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x0
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x4
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x5
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x5
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x6
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x7
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x7
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x8
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x9
	ds	1
	global	??_receive_pid
??_receive_pid:	; 0 bytes @ 0xA
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xA
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0xD
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x11
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x12
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x15
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x16
	ds	1
	global	_xu_ly_lux$1462
_xu_ly_lux$1462:	; 2 bytes @ 0x17
	global	_send_lux$1463
_send_lux$1463:	; 2 bytes @ 0x17
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x19
	ds	1
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	?_lcd_gotoxy
?_lcd_gotoxy:	; 0 bytes @ 0x0
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x0
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x0
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x0
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x0
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	ds	1
	global	??_lcd_gotoxy
??_lcd_gotoxy:	; 0 bytes @ 0x1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x2
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	ds	1
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x3
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x3
	global	lcd_gotoxy@address
lcd_gotoxy@address:	; 1 bytes @ 0x3
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x3
	ds	1
	global	??_lcd_putc
??_lcd_putc:	; 0 bytes @ 0x4
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	ds	1
	global	lcd_putc@c
lcd_putc@c:	; 1 bytes @ 0x5
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x6
	global	??___lbtoft
??___lbtoft:	; 0 bytes @ 0x6
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x6
	global	?___fttol
?___fttol:	; 4 bytes @ 0x6
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x6
	ds	1
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x7
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x8
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x9
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0xA
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0xA
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xE
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xF
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x13
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x14
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x14
	ds	3
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x17
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x19
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1A
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1A
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1A
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1A
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x1D
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1D
	ds	3
	global	??_nhiet_do
??_nhiet_do:	; 0 bytes @ 0x20
	global	??_xu_ly_lux
??_xu_ly_lux:	; 0 bytes @ 0x20
	global	??_send_lux
??_send_lux:	; 0 bytes @ 0x20
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
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
	global	?_send_lux
?_send_lux:	; 0 bytes @ 0x0
	global	?_receive_pid
?_receive_pid:	; 0 bytes @ 0x0
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
	global	?i1___awtoft
?i1___awtoft:	; 3 bytes @ 0x8
	global	i1___awtoft@c
i1___awtoft@c:	; 2 bytes @ 0x8
	ds	3
	global	??i1___awtoft
??i1___awtoft:	; 0 bytes @ 0xB
	ds	2
	global	i1___awtoft@sign
i1___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?i1___ftdiv
?i1___ftdiv:	; 3 bytes @ 0x0
	global	i1___ftdiv@f2
i1___ftdiv@f2:	; 3 bytes @ 0x0
	ds	3
	global	i1___ftdiv@f1
i1___ftdiv@f1:	; 3 bytes @ 0x3
	ds	3
	global	??i1___ftdiv
??i1___ftdiv:	; 0 bytes @ 0x6
	ds	4
	global	i1___ftdiv@cntr
i1___ftdiv@cntr:	; 1 bytes @ 0xA
	ds	1
	global	i1___ftdiv@f3
i1___ftdiv@f3:	; 3 bytes @ 0xB
	ds	3
	global	i1___ftdiv@exp
i1___ftdiv@exp:	; 1 bytes @ 0xE
	ds	1
	global	i1___ftdiv@sign
i1___ftdiv@sign:	; 1 bytes @ 0xF
	ds	1
	global	??_BH1750_read
??_BH1750_read:	; 0 bytes @ 0x10
	ds	2
	global	BH1750_read@lb
BH1750_read@lb:	; 1 bytes @ 0x12
	ds	1
	global	BH1750_read@hb
BH1750_read@hb:	; 1 bytes @ 0x13
	ds	1
	global	??_uart_isr
??_uart_isr:	; 0 bytes @ 0x14
	ds	5
	global	?_lcd_put_byte
?_lcd_put_byte:	; 0 bytes @ 0x19
	global	??_lcd_busy
??_lcd_busy:	; 0 bytes @ 0x19
	global	??_isprint
??_isprint:	; 0 bytes @ 0x19
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x19
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x19
	global	??_i2c_dly
??_i2c_dly:	; 0 bytes @ 0x19
	global	??_I2C_start
??_I2C_start:	; 0 bytes @ 0x19
	global	??_I2C_stop
??_I2C_stop:	; 0 bytes @ 0x19
	global	??_I2C_write
??_I2C_write:	; 0 bytes @ 0x19
	global	?___wmul
?___wmul:	; 2 bytes @ 0x19
	global	?___awmod
?___awmod:	; 2 bytes @ 0x19
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x19
	global	uart_tx@data
uart_tx@data:	; 1 bytes @ 0x19
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x19
	global	_isprint$1079
_isprint$1079:	; 1 bytes @ 0x19
	global	delay_ms@x
delay_ms@x:	; 2 bytes @ 0x19
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x19
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x19
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x19
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x1A
	global	I2C_write@d
I2C_write@d:	; 1 bytes @ 0x1A
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x1A
	global	isprint@c
isprint@c:	; 1 bytes @ 0x1A
	ds	1
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x1B
	global	I2C_write@x
I2C_write@x:	; 1 bytes @ 0x1B
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x1B
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x1B
	ds	1
	global	?_BH1750_write
?_BH1750_write:	; 0 bytes @ 0x1C
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x1C
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x1C
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x1C
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x1D
	global	??___awmod
??___awmod:	; 0 bytes @ 0x1D
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x1D
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x1D
	ds	1
	global	??_BH1750_write
??_BH1750_write:	; 0 bytes @ 0x1E
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x1E
;;Data sizes: Strings 16, constant 0, data 0, bss 95, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     30      55
;; BANK1           80     34      80
;; BANK3           96     26      51
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?i1___ftpack	float  size(1) Largest target is 2
;;		 -> kq(BANK0[2]), 
;;
;; ?i1___ftdiv	float  size(1) Largest target is 0
;;
;; ?i1___awtoft	float  size(1) Largest target is 0
;;
;; ?___lbtoft	float  size(1) Largest target is 0
;;
;; ?___ftpack	float  size(1) Largest target is 2
;;		 -> kq(BANK0[2]), 
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 2
;;		 -> kq(BANK0[2]), 
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 2
;;		 -> kq(BANK0[2]), 
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
;;   _BH1750_read->i1___awtoft
;;   i1___awtoft->i1___ftpack
;;   i1___ftdiv->i1___awtoft
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_delay_ms
;;   _main->_BH1750_write
;;   _xu_ly_lux->_delay_ms
;;   _xu_ly_lux->___awmod
;;   _nhiet_do->_delay_ms
;;   _nhiet_do->___awmod
;;   _lcd_putc->_lcd_put_byte
;;   _lcd_init->_lcd_put_byte
;;   _receive_pid->_delay_ms
;;   _send_lux->___awmod
;;   _send_lux->_delay_ms
;;   _lcd_gotoxy->_lcd_put_byte
;;   _BH1750_write->_I2C_write
;;   ___awtoft->___ftpack
;;   ___lbtoft->___ftpack
;;   ___ftmul->___ftpack
;;   ___ftdiv->___ftpack
;;   ___ftadd->___ftpack
;;   ___ftneg->___ftpack
;;   ___awdiv->___awmod
;;   ___fttol->___ftpack
;;
;; Critical Paths under _uart_isr in BANK0
;;
;;   _uart_isr->_BH1750_read
;;   _BH1750_read->i1___ftdiv
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_nhiet_do
;;   _xu_ly_lux->___ftdiv
;;   _xu_ly_lux->___ftadd
;;   _nhiet_do->___ftdiv
;;   _nhiet_do->___ftadd
;;   _lcd_puts->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _receive_pid->___ftdiv
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
;;   _main->_xu_ly_lux
;;   _main->_send_lux
;;   _xu_ly_lux->___ftmul
;;   _nhiet_do->___ftmul
;;   _receive_pid->___ftdiv
;;   _send_lux->___ftmul
;;   ___ftmul->___ftadd
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
;; (0) _main                                                 1     1      0   18865
;;                                             25 BANK3      1     1      0
;;                           _lcd_init
;;                           _delay_ms
;;                       _BH1750_write
;;                          _xu_ly_lux
;;                           _nhiet_do
;;                           _send_lux
;;                        _receive_pid
;; ---------------------------------------------------------------------------------
;; (1) _xu_ly_lux                                            3     3      0    7420
;;                                             32 BANK1      1     1      0
;;                                             23 BANK3      2     2      0
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
;; (1) _nhiet_do                                             2     2      0    7522
;;                                             32 BANK1      2     2      0
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
;; (2) _lcd_puts                                             2     2      0    1053
;;                                              6 BANK1      2     2      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (2) _lcd_putc                                             2     2      0     988
;;                                              4 BANK1      2     2      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     347
;;                                              0 BANK1      2     2      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _receive_pid                                         64    64      0    1279
;;                                             10 BANK3     12    12      0
;;                           ___lbtoft
;;                            ___ftdiv
;;                             ___wmul
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _send_lux                                             3     3      0    2182
;;                                             32 BANK1      1     1      0
;;                                             23 BANK3      2     2      0
;;                            ___ftmul
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                            _uart_tx
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (3) _lcd_gotoxy                                           4     3      1     449
;;                                              0 BANK1      4     3      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _BH1750_write                                         2     0      2      47
;;                                             28 BANK0      2     0      2
;;                          _I2C_start
;;                          _I2C_write
;;                           _I2C_stop
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     445
;;                                             20 BANK1      6     3      3
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                            ___fttol (ARG)
;;                             ___wmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lbtoft                                             8     5      3     343
;;                                              3 BANK1      8     5      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     800
;;                                              7 BANK3     16    10      6
;;                           ___ftpack
;;                            ___ftadd (ARG)
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             16    10      6     732
;;                                             26 BANK1      6     0      6
;;                                              0 BANK3     10    10      0
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                           ___awtoft (ARG)
;;                             ___wmul (ARG)
;;                           ___lbtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             13     7      6    1537
;;                                             26 BANK1      6     0      6
;;                                              0 BANK3      7     7      0
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _lcd_busy                                             2     2      0      34
;;                                             25 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _lcd_put_byte                                         5     4      1     313
;;                                             25 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (2) _I2C_write                                            3     3      0      47
;;                                             25 BANK0      3     3      0
;;                            _i2c_dly
;; ---------------------------------------------------------------------------------
;; (2) _I2C_stop                                             0     0      0       0
;;                            _i2c_dly
;; ---------------------------------------------------------------------------------
;; (2) _I2C_start                                            0     0      0       0
;;                            _i2c_dly
;; ---------------------------------------------------------------------------------
;; (2) _delay_ms                                             5     3      2      68
;;                                             25 BANK0      5     3      2
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     433
;;                                             25 BANK0      5     1      4
;;                                              0 BANK1      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      65
;;                                              3 BANK1      3     0      3
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     445
;;                                              2 BANK1      9     5      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             14    10      4     371
;;                                              6 BANK1     14    10      4
;;                           ___ftpack (ARG)
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     312
;;                                             25 BANK0      5     0      5
;;                                              0 BANK1      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4     136
;;                                             25 BANK0      4     0      4
;;                                              0 BANK1      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _isprint                                              2     2      0      99
;;                                             25 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _i2c_dly                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _uart_tx                                              1     1      0      31
;;                                             25 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _uart_isr                                             5     5      0    2857
;;                                             20 BANK0      5     5      0
;;                        _BH1750_read
;; ---------------------------------------------------------------------------------
;; (7) _BH1750_read                                          4     4      0    2857
;;                                             16 BANK0      4     4      0
;;                        i1_I2C_start
;;                        i1_I2C_write
;;                           _I2C_read
;;                         i1_I2C_stop
;;                         i1___awtoft
;;                          i1___ftdiv
;; ---------------------------------------------------------------------------------
;; (8) i1___awtoft                                           6     3      3     977
;;                                              8 COMMON     6     3      3
;;                         i1___ftpack
;; ---------------------------------------------------------------------------------
;; (8) i1___ftdiv                                           16    10      6    1587
;;                                              0 BANK0     16    10      6
;;                         i1___ftpack
;;                         i1___awtoft (ARG)
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
;;     i1___ftdiv
;;       i1___ftpack
;;       i1___awtoft (ARG)
;;         i1___ftpack
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
;;ABS                  0      0      C8       3        0.0%
;;BITBANK0            50      0       1       4        1.3%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     1E      37       5       68.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     22      50       7      100.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60     1A      33       9       53.1%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      D5      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 302 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_lcd_init
;;		_delay_ms
;;		_BH1750_write
;;		_xu_ly_lux
;;		_nhiet_do
;;		_send_lux
;;		_receive_pid
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	302
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	304
	
l6499:	
;main.c: 304: ANSEL=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	305
;main.c: 305: ANSELH=0;
	clrf	(393)^0180h	;volatile
	line	306
	
l6501:	
;main.c: 306: lcd_init();
	fcall	_lcd_init
	line	308
	
l6503:	
;main.c: 308: SPBRGH=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(154)^080h	;volatile
	line	309
	
l6505:	
;main.c: 309: BRG16=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	310
	
l6507:	
;main.c: 310: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	311
	
l6509:	
;main.c: 311: TXSTA=0x20;
	movlw	(020h)
	movwf	(152)^080h	;volatile
	line	312
	
l6511:	
;main.c: 312: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	313
	
l6513:	
;main.c: 313: SYNC=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	314
	
l6515:	
;main.c: 314: c=RCREG;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_main+0)^0180h+0
	movf	(??_main+0)^0180h+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_c)^080h
	line	315
	
l6517:	
;main.c: 315: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	316
	
l6519:	
;main.c: 316: PEIE=1;
	bsf	(94/8),(94)&7
	line	317
	
l6521:	
;main.c: 317: GIE=1;
	bsf	(95/8),(95)&7
	line	319
	
l6523:	
;main.c: 319: PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	320
	
l6525:	
;main.c: 320: TRISC1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	321
	
l6527:	
;main.c: 321: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	322
	
l6529:	
;main.c: 322: CCP1CON=0X0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	323
	
l6531:	
;main.c: 323: T2CON=0X01;
	movlw	(01h)
	movwf	(18)	;volatile
	line	324
	
l6533:	
;main.c: 324: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	325
	
l6535:	
;main.c: 325: PR2=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	327
	
l6537:	
;main.c: 327: ANS2=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3138/8)^0180h,(3138)&7
	line	328
	
l6539:	
;main.c: 328: VCFG0=VCFG1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1277/8)^080h,(1277)&7
	bcf	(1276/8)^080h,(1276)&7
	line	329
	
l6541:	
;main.c: 329: ADCS0=ADCS1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	btfsc	(255/8),(255)&7
	goto	u6361
	goto	u6360
	
u6361:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(254/8),(254)&7
	goto	u6374
u6360:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(254/8),(254)&7
u6374:
	line	330
	
l6543:	
;main.c: 330: ADFM=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1279/8)^080h,(1279)&7
	line	331
	
l6545:	
;main.c: 331: CHS3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	332
	
l6547:	
;main.c: 332: CHS2=0;
	bcf	(252/8),(252)&7
	line	333
	
l6549:	
;main.c: 333: CHS1=1;
	bsf	(251/8),(251)&7
	line	334
	
l6551:	
;main.c: 334: CHS0=0;
	bcf	(250/8),(250)&7
	line	335
	
l6553:	
;main.c: 335: ADON=1;
	bsf	(248/8),(248)&7
	line	337
	
l6555:	
;main.c: 337: T0CS=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	338
	
l6557:	
;main.c: 338: PSA=0;
	bcf	(1035/8)^080h,(1035)&7
	line	339
	
l6559:	
;main.c: 339: T0SE=1;
	bsf	(1036/8)^080h,(1036)&7
	line	340
	
l6561:	
;main.c: 340: PS0=PS2=0;
	bcf	(1034/8)^080h,(1034)&7
	bcf	(1032/8)^080h,(1032)&7
	line	341
	
l6563:	
;main.c: 341: PS1=1;
	bsf	(1033/8)^080h,(1033)&7
	line	342
	
l6565:	
;main.c: 342: TMR0=131;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	343
	
l6567:	
;main.c: 343: T0IE=1;
	bsf	(93/8),(93)&7
	line	344
	
l6569:	
;main.c: 344: delay_ms(1000);
	movlw	low(03E8h)
	movwf	(?_delay_ms)
	movlw	high(03E8h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	345
	
l6571:	
;main.c: 345: BH1750_write();
	fcall	_BH1750_write
	goto	l6573
	line	347
;main.c: 347: while(1)
	
l1030:	
	line	350
	
l6573:	
;main.c: 348: {
;main.c: 350: xu_ly_lux();
	fcall	_xu_ly_lux
	line	351
	
l6575:	
;main.c: 351: nhiet_do();
	fcall	_nhiet_do
	line	352
	
l6577:	
;main.c: 352: send_lux();
	fcall	_send_lux
	line	353
	
l6579:	
;main.c: 353: receive_pid();
	fcall	_receive_pid
	goto	l6573
	line	355
	
l1031:	
	line	347
	goto	l6573
	
l1032:	
	line	356
	
l1033:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_xu_ly_lux
psect	text1311,local,class=CODE,delta=2
global __ptext1311
__ptext1311:

;; *************** function _xu_ly_lux *****************
;; Defined at:
;;		line 243 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
;;      Locals:         0       0       0       2       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       2       0
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
psect	text1311
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	243
	global	__size_of_xu_ly_lux
	__size_of_xu_ly_lux	equ	__end_of_xu_ly_lux-_xu_ly_lux
	
_xu_ly_lux:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _xu_ly_lux: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	244
	
l6467:	
;main.c: 244: lcd_gotoxy(0, 1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_lcd_gotoxy)^080h
	bsf	status,0
	rlf	(?_lcd_gotoxy)^080h,f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	245
	
l6469:	
;main.c: 245: lcd_puts("lux: ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_puts
	line	246
	
l6471:	
;main.c: 246: lcd_gotoxy(6, 1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_lcd_gotoxy)^080h
	bsf	status,0
	rlf	(?_lcd_gotoxy)^080h,f
	movlw	(06h)
	fcall	_lcd_gotoxy
	line	247
;main.c: 247: lcd_putc(nghin);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_nghin)^080h,w
	fcall	_lcd_putc
	line	248
;main.c: 248: lcd_putc(tram);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tram)^080h,w
	fcall	_lcd_putc
	line	249
;main.c: 249: lcd_putc(chuc);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_chuc)^080h,w
	fcall	_lcd_putc
	line	250
;main.c: 250: lcd_putc(dvi);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dvi)^080h,w
	fcall	_lcd_putc
	line	251
;main.c: 251: lcd_putc('.');
	movlw	(02Eh)
	fcall	_lcd_putc
	line	252
;main.c: 252: lcd_putc(chuc1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_chuc1)^080h,w
	fcall	_lcd_putc
	line	253
;main.c: 253: lcd_putc(dvi1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dvi1)^080h,w
	fcall	_lcd_putc
	line	254
;main.c: 254: lcd_putc(dvi1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dvi1)^080h,w
	fcall	_lcd_putc
	line	255
	
l6473:	
;main.c: 255: delay_ms(300);
	movlw	low(012Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay_ms)
	movlw	high(012Ch)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	256
	
l6475:	
;main.c: 256: flux1=value1/1;
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

	line	257
	
l6477:	
;main.c: 257: nghin=(flux1/1000)+48;
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
	movwf	(_nghin)^080h
	line	258
	
l6479:	
;main.c: 258: tram=((flux1%1000)/100)+48;
	movlw	low(064h)
	movwf	(?___awdiv)^080h
	movlw	high(064h)
	movwf	((?___awdiv)^080h)+1
	movf	(_flux1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_flux1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
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
	movwf	(_tram)^080h
	line	259
	
l6481:	
;main.c: 259: chuc=(((flux1%1000)%100)/10)+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(_flux1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_flux1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
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
	movwf	(_chuc)^080h
	line	260
	
l6483:	
;main.c: 260: dvi=(((flux1%1000)%100)%10)+48;
	movf	(_flux1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_flux1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_xu_ly_lux$1462+1)^0180h
	addwf	(_xu_ly_lux$1462+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_xu_ly_lux$1462)^0180h
	addwf	(_xu_ly_lux$1462)^0180h

	
l6485:	
;main.c: 260: dvi=(((flux1%1000)%100)%10)+48;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_xu_ly_lux$1462+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_xu_ly_lux$1462)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	movwf	(_dvi)^080h
	line	261
	
l6487:	
;main.c: 261: for(m=0;m<2;m++)
	movlw	low(0)
	movwf	(_m)^080h
	movlw	high(0)
	movwf	((_m)^080h)+1
	
l6489:	
	movf	(_m+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6345
	movlw	low(02h)
	subwf	(_m)^080h,w
u6345:

	skipc
	goto	u6341
	goto	u6340
u6341:
	goto	l6493
u6340:
	goto	l1018
	
l6491:	
	goto	l1018
	line	262
	
l1016:	
	line	263
	
l6493:	
;main.c: 262: {
;main.c: 263: flux2=(value1-flux1)*10;
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(?___ftmul)^0180h+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftadd))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(?___ftmul)^0180h+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftadd))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	2+(?___ftmul)^0180h+03h
	movlw	0x0
	movwf	(?___ftmul)^0180h
	movlw	0x20
	movwf	(?___ftmul+1)^0180h
	movlw	0x41
	movwf	(?___ftmul+2)^0180h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(0+(?___ftmul))^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(1+(?___ftmul))^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(2+(?___ftmul))^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	clrf	(_flux2+1)^080h
	addwf	(_flux2+1)^080h
	movf	0+(((0+(?___fttol))^080h)),w
	clrf	(_flux2)^080h
	addwf	(_flux2)^080h

	line	264
;main.c: 264: chuc1=(flux2%10)+48;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_flux2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_flux2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	movwf	(_chuc1)^080h
	line	265
;main.c: 265: dvi1=(flux2/10)+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(_flux2+1)^080h,w
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	movf	(_flux2)^080h,w
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
	line	261
	
l6495:	
	movlw	low(01h)
	addwf	(_m)^080h,f
	skipnc
	incf	(_m+1)^080h,f
	movlw	high(01h)
	addwf	(_m+1)^080h,f
	
l6497:	
	movf	(_m+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6355
	movlw	low(02h)
	subwf	(_m)^080h,w
u6355:

	skipc
	goto	u6351
	goto	u6350
u6351:
	goto	l6493
u6350:
	goto	l1018
	
l1017:	
	line	267
	
l1018:	
	return
	opt stack 0
GLOBAL	__end_of_xu_ly_lux
	__end_of_xu_ly_lux:
;; =============== function _xu_ly_lux ends ============

	signat	_xu_ly_lux,88
	global	_nhiet_do
psect	text1312,local,class=CODE,delta=2
global __ptext1312
__ptext1312:

;; *************** function _nhiet_do *****************
;; Defined at:
;;		line 214 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
psect	text1312
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	214
	global	__size_of_nhiet_do
	__size_of_nhiet_do	equ	__end_of_nhiet_do-_nhiet_do
	
_nhiet_do:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _nhiet_do: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	215
	
l6441:	
;main.c: 215: GODONE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	216
;main.c: 216: while(GODONE);
	goto	l1008
	
l1009:	
	
l1008:	
	btfsc	(249/8),(249)&7
	goto	u6301
	goto	u6300
u6301:
	goto	l1008
u6300:
	goto	l6443
	
l1010:	
	line	217
	
l6443:	
;main.c: 217: kq=ADRESH;
	movf	(30),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_nhiet_do+0)^080h+0
	clrf	(??_nhiet_do+0)^080h+0+1
	movf	0+(??_nhiet_do+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_kq)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_nhiet_do+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_kq+1)
	line	218
;main.c: 218: kq<<=8;
	movlw	08h
	
u6315:
	clrc
	rlf	(_kq),f
	rlf	(_kq+1),f
	addlw	-1
	skipz
	goto	u6315
	line	219
	
l6445:	
;main.c: 219: delay_ms(200);
	movlw	low(0C8h)
	movwf	(?_delay_ms)
	movlw	high(0C8h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	220
	
l6447:	
;main.c: 220: kq=kq+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_kq),w
	movwf	(_kq)
	movf	(_kq+1),w
	skipnc
	incf	(_kq+1),w
	movwf	((_kq))+1
	line	221
;main.c: 221: nhietdo=((float)(500*kq)/1023.0);
	movlw	0xc0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	movlw	0x7f
	movwf	(?___ftdiv+1)^080h
	movlw	0x44
	movwf	(?___ftdiv+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_kq+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_kq),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(01F4h)
	movwf	0+(?___wmul)+02h
	movlw	high(01F4h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___awtoft+1)^080h
	addwf	(?___awtoft+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_nhietdo)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_nhietdo+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftdiv))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_nhietdo+2)
	line	223
;main.c: 223: fnt1=(nhietdo/1);
	movf	(_nhietdo),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?___ftdiv)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nhietdo+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?___ftdiv)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nhietdo+2),w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_fnt1+1)
	addwf	(_fnt1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fttol))^080h)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_fnt1)
	addwf	(_fnt1)

	line	224
;main.c: 224: nt1=(fnt1/10)+48;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fnt1+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fnt1),w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_nt1)
	line	225
;main.c: 225: nt2=(fnt1%10)+48;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_fnt1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_fnt1),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_nhiet_do+0)^080h+0
	movf	(??_nhiet_do+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_nt2)
	line	226
;main.c: 226: lcd_gotoxy(0, 0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_lcd_gotoxy)^080h
	movlw	(0)
	fcall	_lcd_gotoxy
	line	227
	
l6449:	
;main.c: 227: lcd_puts("nhietdo: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_puts
	line	228
	
l6451:	
;main.c: 228: lcd_gotoxy(8,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_lcd_gotoxy)^080h
	movlw	(08h)
	fcall	_lcd_gotoxy
	line	229
;main.c: 229: lcd_putc(nt1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nt1),w
	fcall	_lcd_putc
	line	230
;main.c: 230: lcd_putc(nt2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nt2),w
	fcall	_lcd_putc
	line	231
;main.c: 231: lcd_putc('.');
	movlw	(02Eh)
	fcall	_lcd_putc
	line	233
	
l6453:	
;main.c: 233: for(n=0;n<2;n++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_n)
	movlw	high(0)
	movwf	((_n))+1
	
l6455:	
	movf	(_n+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6325
	movlw	low(02h)
	subwf	(_n),w
u6325:

	skipc
	goto	u6321
	goto	u6320
u6321:
	goto	l6459
u6320:
	goto	l6465
	
l6457:	
	goto	l6465
	line	234
	
l1011:	
	line	235
	
l6459:	
;main.c: 234: {
;main.c: 235: fnt2=(nhietdo-fnt1)*10;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fnt1+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?___awtoft+1)^080h
	addwf	(?___awtoft+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fnt1),w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nhietdo),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nhietdo+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nhietdo+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd+2)^080h
	fcall	___ftadd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftadd))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(?___ftmul)^0180h+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___ftadd))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(?___ftmul)^0180h+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___ftadd))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	2+(?___ftmul)^0180h+03h
	movlw	0x0
	movwf	(?___ftmul)^0180h
	movlw	0x20
	movwf	(?___ftmul+1)^0180h
	movlw	0x41
	movwf	(?___ftmul+2)^0180h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(0+(?___ftmul))^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(1+(?___ftmul))^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(2+(?___ftmul))^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_fnt2+1)
	addwf	(_fnt2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fttol))^080h)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_fnt2)
	addwf	(_fnt2)

	line	236
;main.c: 236: chuc2=fnt2/10+48;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fnt2+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fnt2),w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_chuc2)
	line	237
;main.c: 237: dvi2=fnt2%10+48;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_fnt2+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_fnt2),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_nhiet_do+0)^080h+0
	movf	(??_nhiet_do+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dvi2)
	line	233
	
l6461:	
	movlw	low(01h)
	addwf	(_n),f
	skipnc
	incf	(_n+1),f
	movlw	high(01h)
	addwf	(_n+1),f
	
l6463:	
	movf	(_n+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6335
	movlw	low(02h)
	subwf	(_n),w
u6335:

	skipc
	goto	u6331
	goto	u6330
u6331:
	goto	l6459
u6330:
	goto	l6465
	
l1012:	
	line	239
	
l6465:	
;main.c: 238: }
;main.c: 239: lcd_putc(chuc2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_chuc2),w
	fcall	_lcd_putc
	line	240
;main.c: 240: lcd_putc(dvi2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dvi2),w
	fcall	_lcd_putc
	line	241
	
l1013:	
	return
	opt stack 0
GLOBAL	__end_of_nhiet_do
	__end_of_nhiet_do:
;; =============== function _nhiet_do ends ============

	signat	_nhiet_do,88
	global	_lcd_puts
psect	text1313,local,class=CODE,delta=2
global __ptext1313
__ptext1313:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 175 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_2(6), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  s               1    7[BANK1 ] PTR const unsigned char 
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
psect	text1313
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
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
	
l6433:	
;lcd.c: 176: while(*s){
	goto	l6439
	
l1937:	
	line	177
	
l6435:	
;lcd.c: 177: lcd_putc(*s++);
	movf	(lcd_puts@s)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_putc
	
l6437:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_puts+0)^080h+0
	movf	(??_lcd_puts+0)^080h+0,w
	addwf	(lcd_puts@s)^080h,f
	goto	l6439
	line	178
	
l1936:	
	line	176
	
l6439:	
	movf	(lcd_puts@s)^080h,w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u6291
	goto	u6290
u6291:
	goto	l6435
u6290:
	goto	l1939
	
l1938:	
	line	179
	
l1939:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_putc
psect	text1314,local,class=CODE,delta=2
global __ptext1314
__ptext1314:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    5[BANK1 ] unsigned char 
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
psect	text1314
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
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
	
l6415:	
;lcd.c: 144: switch(c){
	goto	l6431
	line	145
;lcd.c: 145: case '\f':
	
l1914:	
	line	146
	
l6417:	
;lcd.c: 146: lcd_put_byte(0, 1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_put_byte)
	bsf	status,0
	rlf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd.c: 147: while(lcd_busy());
	goto	l6419
	
l1916:	
	goto	l6419
	
l1915:	
	
l6419:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6261
	goto	u6260
u6261:
	goto	l6419
u6260:
	goto	l1925
	
l1917:	
	line	148
;lcd.c: 148: break;
	goto	l1925
	line	149
;lcd.c: 149: case '\n':
	
l1919:	
	line	150
	
l6421:	
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
	goto	l1925
	line	152
;lcd.c: 152: default:
	
l1920:	
	line	153
	
l6423:	
;lcd.c: 153: if(isprint(c)){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_putc@c)^080h,w
	fcall	_isprint
	btfss	status,0
	goto	u6271
	goto	u6270
u6271:
	goto	l1925
u6270:
	line	154
	
l6425:	
;lcd.c: 154: lcd_put_byte(1, c);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(lcd_putc@c)^080h,w
	movwf	(??_lcd_putc+0)^080h+0
	movf	(??_lcd_putc+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd.c: 155: while(lcd_busy());
	goto	l6427
	
l1923:	
	goto	l6427
	
l1922:	
	
l6427:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6281
	goto	u6280
u6281:
	goto	l6427
u6280:
	goto	l1925
	
l1924:	
	goto	l1925
	line	156
	
l1921:	
	line	157
;lcd.c: 156: }
;lcd.c: 157: break;
	goto	l1925
	line	158
	
l6429:	
;lcd.c: 158: }
	goto	l1925
	line	144
	
l1913:	
	
l6431:	
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
	goto	l6421
	xorlw	12^10	; case 12
	skipnz
	goto	l6417
	goto	l6423

	line	158
	
l1918:	
	line	159
	
l1925:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_init
psect	text1315,local,class=CODE,delta=2
global __ptext1315
__ptext1315:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 5 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
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
psect	text1315
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 2
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l6377:	
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
	
l6379:	
;lcd.c: 18: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_lcd_init+0)^080h+0+1),f
	movlw	221
movwf	((??_lcd_init+0)^080h+0),f
u6387:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6387
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6387
	nop2
opt asmopt_on

	line	21
	
l6381:	
;lcd.c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l6383:	
;lcd.c: 22: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_lcd_init+0)^080h+0+1),f
	movlw	238
movwf	((??_lcd_init+0)^080h+0),f
u6397:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6397
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6397
	clrwdt
opt asmopt_on

	line	23
;lcd.c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l6385:	
;lcd.c: 24: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_lcd_init+0)^080h+0+1),f
	movlw	238
movwf	((??_lcd_init+0)^080h+0),f
u6407:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6407
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6407
	clrwdt
opt asmopt_on

	line	25
	
l6387:	
;lcd.c: 25: lcd_put_byte(0,0x32);
	movlw	(032h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
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
u6417:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6417
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6417
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
u6427:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6427
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6427
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
u6437:
	decfsz	((??_lcd_init+0)^080h+0),f
	goto	u6437
	decfsz	((??_lcd_init+0)^080h+0+1),f
	goto	u6437
	nop2
opt asmopt_on

	line	30
;lcd.c: 30: while(lcd_busy());
	goto	l6389
	
l1879:	
	goto	l6389
	
l1878:	
	
l6389:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6191
	goto	u6190
u6191:
	goto	l6389
u6190:
	goto	l6391
	
l1880:	
	line	31
	
l6391:	
;lcd.c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd.c: 32: while(lcd_busy());
	goto	l6393
	
l1882:	
	goto	l6393
	
l1881:	
	
l6393:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6201
	goto	u6200
u6201:
	goto	l6393
u6200:
	goto	l6395
	
l1883:	
	line	34
	
l6395:	
;lcd.c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd.c: 35: while(lcd_busy());
	goto	l6397
	
l1885:	
	goto	l6397
	
l1884:	
	
l6397:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6211
	goto	u6210
u6211:
	goto	l6397
u6210:
	goto	l6399
	
l1886:	
	line	36
	
l6399:	
;lcd.c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd.c: 37: while(lcd_busy());
	goto	l6401
	
l1888:	
	goto	l6401
	
l1887:	
	
l6401:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6221
	goto	u6220
u6221:
	goto	l6401
u6220:
	goto	l6403
	
l1889:	
	line	39
	
l6403:	
;lcd.c: 39: lcd_put_byte(0,0x01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_put_byte)
	bsf	status,0
	rlf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	40
;lcd.c: 40: while(lcd_busy());
	goto	l6405
	
l1891:	
	goto	l6405
	
l1890:	
	
l6405:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6231
	goto	u6230
u6231:
	goto	l6405
u6230:
	goto	l6407
	
l1892:	
	line	41
	
l6407:	
;lcd.c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_lcd_init+0)^080h+0
	movf	(??_lcd_init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd.c: 42: while(lcd_busy());
	goto	l6409
	
l1894:	
	goto	l6409
	
l1893:	
	
l6409:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6241
	goto	u6240
u6241:
	goto	l6409
u6240:
	goto	l6411
	
l1895:	
	line	43
	
l6411:	
;lcd.c: 43: lcd_put_byte(0,0x01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_put_byte)
	bsf	status,0
	rlf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	44
;lcd.c: 44: while(lcd_busy());
	goto	l6413
	
l1897:	
	goto	l6413
	
l1896:	
	
l6413:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6251
	goto	u6250
u6251:
	goto	l6413
u6250:
	goto	l1899
	
l1898:	
	line	45
	
l1899:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_receive_pid
psect	text1316,local,class=CODE,delta=2
global __ptext1316
__ptext1316:

;; *************** function _receive_pid *****************
;; Defined at:
;;		line 283 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
;;      Temps:          0       0       0      12       0
;;      Totals:         0       0       0      12       0
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
psect	text1316
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	283
	global	__size_of_receive_pid
	__size_of_receive_pid	equ	__end_of_receive_pid-_receive_pid
	
_receive_pid:	
	opt	stack 1
; Regs used in _receive_pid: [wreg+status,2+status,0+pclath+cstack]
	line	288
	
l6375:	
;main.c: 284: int chuckp, bienkp1, bienkp2,bienki1,bienki2,bienkd1,bienkd2,p,i,d;
;main.c: 285: int nghinkp,tramkp,chuckp,dvikp,tramki,chucki,dviki,tramkd,chuckd,dvikd;
;main.c: 286: int nghinout,tramout,chucout,dviout;
;main.c: 287: int fkp,fki,fkd;
;main.c: 288: kp1=((check[0])/10.0);
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
	line	289
;main.c: 289: ki1=((check[1])/10.0);
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
	line	290
;main.c: 290: kd1=((check[2])/10.0);
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
	line	291
;main.c: 291: lux_set=check[3]*1000+check[4]*100+check[5]*10+check[6];
	movf	0+(_check)^0180h+03h,w
	movwf	(??_receive_pid+0)^0180h+0
	clrf	(??_receive_pid+0)^0180h+0+1
	movf	0+(??_receive_pid+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(??_receive_pid+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul+1)
	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+?___wmul),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_receive_pid+2)^0180h+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+?___wmul),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??_receive_pid+2)^0180h+0+1)
	movf	0+(_check)^0180h+04h,w
	movwf	(??_receive_pid+4)^0180h+0
	clrf	(??_receive_pid+4)^0180h+0+1
	movf	0+(??_receive_pid+4)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(??_receive_pid+4)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	0+(??_receive_pid+2)^0180h+0,w
	movwf	(??_receive_pid+6)^0180h+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	1+(??_receive_pid+2)^0180h+0,w
	movwf	1+(??_receive_pid+6)^0180h+0
	movf	0+(_check)^0180h+05h,w
	movwf	(??_receive_pid+8)^0180h+0
	clrf	(??_receive_pid+8)^0180h+0+1
	movf	0+(??_receive_pid+8)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	1+(??_receive_pid+8)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul+1)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	0+(??_receive_pid+6)^0180h+0,w
	movwf	(??_receive_pid+10)^0180h+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	1+(??_receive_pid+6)^0180h+0,w
	movwf	1+(??_receive_pid+10)^0180h+0
	movf	0+(_check)^0180h+06h,w
	addwf	0+(??_receive_pid+10)^0180h+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lux_set)^080h
	movlw	0
	skipnc
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	1+(??_receive_pid+10)^0180h+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(_lux_set)^080h
	line	292
;main.c: 292: delay_ms(50);
	movlw	low(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	293
	
l1024:	
	return
	opt stack 0
GLOBAL	__end_of_receive_pid
	__end_of_receive_pid:
;; =============== function _receive_pid ends ============

	signat	_receive_pid,88
	global	_send_lux
psect	text1317,local,class=CODE,delta=2
global __ptext1317
__ptext1317:

;; *************** function _send_lux *****************
;; Defined at:
;;		line 269 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
;;      Locals:         0       0       0       2       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       2       0
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
psect	text1317
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	269
	global	__size_of_send_lux
	__size_of_send_lux	equ	__end_of_send_lux-_send_lux
	
_send_lux:	
	opt	stack 1
; Regs used in _send_lux: [wreg+status,2+status,0+pclath+cstack]
	line	270
	
l6373:	
;main.c: 270: value2=value1*10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(?___ftmul)^0180h+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1+1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(?___ftmul)^0180h+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1+2)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	2+(?___ftmul)^0180h+03h
	movlw	0x0
	movwf	(?___ftmul)^0180h
	movlw	0x20
	movwf	(?___ftmul+1)^0180h
	movlw	0x41
	movwf	(?___ftmul+2)^0180h
	fcall	___ftmul
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(0+(?___ftmul))^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(1+(?___ftmul))^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___fttol+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(2+(?___ftmul))^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
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

	line	271
;main.c: 271: nghinlux=(value2/1000);
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
	movwf	(_nghinlux)^080h
	line	272
;main.c: 272: tramlux=((value2%1000)/100);
	movlw	low(064h)
	movwf	(?___awdiv)^080h
	movlw	high(064h)
	movwf	((?___awdiv)^080h)+1
	movf	(_value2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	movwf	(??_send_lux+0)^080h+0
	movf	(??_send_lux+0)^080h+0,w
	movwf	(_tramlux)^080h
	line	273
;main.c: 273: chuclux=(((value2%1000)%100)/10);
	movlw	low(0Ah)
	movwf	(?___awdiv)^080h
	movlw	high(0Ah)
	movwf	((?___awdiv)^080h)+1
	movf	(_value2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?___awdiv)^080h+02h
	addwf	1+(?___awdiv)^080h+02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?___awdiv)^080h+02h
	addwf	0+(?___awdiv)^080h+02h

	fcall	___awdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___awdiv))^080h,w
	movwf	(??_send_lux+0)^080h+0
	movf	(??_send_lux+0)^080h+0,w
	movwf	(_chuclux)^080h
	line	274
;main.c: 274: dvilux=(((value2%1000)%100)%10);
	movf	(_value2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_send_lux$1463+1)^0180h
	addwf	(_send_lux$1463+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_send_lux$1463)^0180h
	addwf	(_send_lux$1463)^0180h

;main.c: 274: dvilux=(((value2%1000)%100)%10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_send_lux$1463+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_send_lux$1463)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_send_lux+0)^080h+0
	movf	(??_send_lux+0)^080h+0,w
	movwf	(_dvilux)^080h
	line	276
;main.c: 276: uart_tx(nghinlux);
	movf	(_nghinlux)^080h,w
	fcall	_uart_tx
	line	277
;main.c: 277: uart_tx(tramlux);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tramlux)^080h,w
	fcall	_uart_tx
	line	278
;main.c: 278: uart_tx(chuclux);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_chuclux)^080h,w
	fcall	_uart_tx
	line	279
;main.c: 279: uart_tx(dvilux);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dvilux)^080h,w
	fcall	_uart_tx
	line	280
;main.c: 280: delay_ms(200);
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay_ms)
	movlw	high(0C8h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	281
	
l1021:	
	return
	opt stack 0
GLOBAL	__end_of_send_lux
	__end_of_send_lux:
;; =============== function _send_lux ends ============

	signat	_send_lux,88
	global	_lcd_gotoxy
psect	text1318,local,class=CODE,delta=2
global __ptext1318
__ptext1318:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    0[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    2[BANK1 ] unsigned char 
;;  address         1    3[BANK1 ] unsigned char 
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
psect	text1318
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
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
	
l6363:	
;lcd.c: 163: unsigned char address;
;lcd.c: 165: if(row!=0)
	movf	(lcd_gotoxy@row)^080h,w
	skipz
	goto	u6170
	goto	l6367
u6170:
	line	166
	
l6365:	
;lcd.c: 166: address=0x40;
	movlw	(040h)
	movwf	(??_lcd_gotoxy+0)^080h+0
	movf	(??_lcd_gotoxy+0)^080h+0,w
	movwf	(lcd_gotoxy@address)^080h
	goto	l1929
	line	167
	
l1928:	
	line	168
	
l6367:	
;lcd.c: 167: else
;lcd.c: 168: address=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(lcd_gotoxy@address)^080h
	
l1929:	
	line	170
;lcd.c: 170: address += col;
	movf	(lcd_gotoxy@col)^080h,w
	movwf	(??_lcd_gotoxy+0)^080h+0
	movf	(??_lcd_gotoxy+0)^080h+0,w
	addwf	(lcd_gotoxy@address)^080h,f
	line	171
	
l6369:	
;lcd.c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address)^080h,w
	iorlw	080h
	movwf	(??_lcd_gotoxy+0)^080h+0
	movf	(??_lcd_gotoxy+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd.c: 172: while(lcd_busy());
	goto	l6371
	
l1931:	
	goto	l6371
	
l1930:	
	
l6371:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u6181
	goto	u6180
u6181:
	goto	l6371
u6180:
	goto	l1933
	
l1932:	
	line	173
	
l1933:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_BH1750_write
psect	text1319,local,class=CODE,delta=2
global __ptext1319
__ptext1319:

;; *************** function _BH1750_write *****************
;; Defined at:
;;		line 191 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
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
psect	text1319
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	191
	global	__size_of_BH1750_write
	__size_of_BH1750_write	equ	__end_of_BH1750_write-_BH1750_write
	
_BH1750_write:	
	opt	stack 1
; Regs used in _BH1750_write: [wreg+status,2+status,0+pclath+cstack]
	line	192
	
l5553:	
;main.c: 192: I2C_start();
	fcall	_I2C_start
	line	193
	
l5555:	
;main.c: 193: I2C_write(0x46);
	movlw	(046h)
	fcall	_I2C_write
	line	194
	
l5557:	
;main.c: 194: I2C_write(0x10);
	movlw	(010h)
	fcall	_I2C_write
	line	195
;main.c: 195: I2C_stop();
	fcall	_I2C_stop
	line	196
	
l1002:	
	return
	opt stack 0
GLOBAL	__end_of_BH1750_write
	__end_of_BH1750_write:
;; =============== function _BH1750_write ends ============

	signat	_BH1750_write,88
	global	___awtoft
psect	text1320,local,class=CODE,delta=2
global __ptext1320
__ptext1320:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   20[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   25[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   20[BANK1 ] float 
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
;; This function uses a non-reentrant model
;;
psect	text1320
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 1
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l6353:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___awtoft@sign)^080h
	line	37
	
l6355:	
	btfss	(___awtoft@c+1)^080h,7
	goto	u6161
	goto	u6160
u6161:
	goto	l6359
u6160:
	line	38
	
l6357:	
	comf	(___awtoft@c)^080h,f
	comf	(___awtoft@c+1)^080h,f
	incf	(___awtoft@c)^080h,f
	skipnz
	incf	(___awtoft@c+1)^080h,f
	line	39
	clrf	(___awtoft@sign)^080h
	bsf	status,0
	rlf	(___awtoft@sign)^080h,f
	goto	l6359
	line	40
	
l2089:	
	line	41
	
l6359:	
	movf	(___awtoft@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___awtoft@c+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??___awtoft+0)^080h+0
	movf	(??___awtoft+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftpack)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___awtoft@sign)^080h,w
	movwf	(??___awtoft+1)^080h+0
	movf	(??___awtoft+1)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awtoft)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awtoft+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___awtoft+2)^080h
	goto	l2090
	
l6361:	
	line	42
	
l2090:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___lbtoft
psect	text1321,local,class=CODE,delta=2
global __ptext1321
__ptext1321:

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   10[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK1 ] float 
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
psect	text1321
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
	
l6349:	
	movf	(___lbtoft@c)^080h,w
	movwf	((??___lbtoft+0)^080h+0)
	clrf	((??___lbtoft+0)^080h+0+1)
	clrf	((??___lbtoft+0)^080h+0+2)
	movf	0+(??___lbtoft+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??___lbtoft+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	2+(??___lbtoft+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+2)
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??___lbtoft+3)^080h+0
	movf	(??___lbtoft+3)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftpack)+03h
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___lbtoft)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___lbtoft+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___lbtoft+2)^080h
	goto	l2078
	
l6351:	
	line	30
	
l2078:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
;; =============== function ___lbtoft ends ============

	signat	___lbtoft,4219
	global	___ftmul
psect	text1322,local,class=CODE,delta=2
global __ptext1322
__ptext1322:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    7[BANK3 ] float 
;;  f2              3   10[BANK3 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   18[BANK3 ] unsigned um
;;  sign            1   22[BANK3 ] unsigned char 
;;  cntr            1   21[BANK3 ] unsigned char 
;;  exp             1   17[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    7[BANK3 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       6       0
;;      Locals:         0       0       0       6       0
;;      Temps:          0       0       0       4       0
;;      Totals:         0       0       0      16       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_lux
;; This function uses a non-reentrant model
;;
psect	text1322
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 1
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l6299:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftmul@f1)^0180h,w
	movwf	((??___ftmul+0)^0180h+0)
	movf	(___ftmul@f1+1)^0180h,w
	movwf	((??___ftmul+0)^0180h+0+1)
	movf	(___ftmul@f1+2)^0180h,w
	movwf	((??___ftmul+0)^0180h+0+2)
	clrc
	rlf	(??___ftmul+0)^0180h+1,w
	rlf	(??___ftmul+0)^0180h+2,w
	movwf	(??___ftmul+3)^0180h+0
	movf	(??___ftmul+3)^0180h+0,w
	movwf	(___ftmul@exp)^0180h
	movf	((___ftmul@exp)^0180h),f
	skipz
	goto	u6021
	goto	u6020
u6021:
	goto	l6305
u6020:
	line	57
	
l6301:	
	movlw	0x0
	movwf	(?___ftmul)^0180h
	movlw	0x0
	movwf	(?___ftmul+1)^0180h
	movlw	0x0
	movwf	(?___ftmul+2)^0180h
	goto	l2052
	
l6303:	
	goto	l2052
	
l2051:	
	line	58
	
l6305:	
	movf	(___ftmul@f2)^0180h,w
	movwf	((??___ftmul+0)^0180h+0)
	movf	(___ftmul@f2+1)^0180h,w
	movwf	((??___ftmul+0)^0180h+0+1)
	movf	(___ftmul@f2+2)^0180h,w
	movwf	((??___ftmul+0)^0180h+0+2)
	clrc
	rlf	(??___ftmul+0)^0180h+1,w
	rlf	(??___ftmul+0)^0180h+2,w
	movwf	(??___ftmul+3)^0180h+0
	movf	(??___ftmul+3)^0180h+0,w
	movwf	(___ftmul@sign)^0180h
	movf	((___ftmul@sign)^0180h),f
	skipz
	goto	u6031
	goto	u6030
u6031:
	goto	l6311
u6030:
	line	59
	
l6307:	
	movlw	0x0
	movwf	(?___ftmul)^0180h
	movlw	0x0
	movwf	(?___ftmul+1)^0180h
	movlw	0x0
	movwf	(?___ftmul+2)^0180h
	goto	l2052
	
l6309:	
	goto	l2052
	
l2053:	
	line	60
	
l6311:	
	movf	(___ftmul@sign)^0180h,w
	addlw	07Bh
	movwf	(??___ftmul+0)^0180h+0
	movf	(??___ftmul+0)^0180h+0,w
	addwf	(___ftmul@exp)^0180h,f
	line	61
	movf	(___ftmul@f1)^0180h,w
	movwf	((??___ftmul+0)^0180h+0)
	movf	(___ftmul@f1+1)^0180h,w
	movwf	((??___ftmul+0)^0180h+0+1)
	movf	(___ftmul@f1+2)^0180h,w
	movwf	((??___ftmul+0)^0180h+0+2)
	movlw	010h
u6045:
	clrc
	rrf	(??___ftmul+0)^0180h+2,f
	rrf	(??___ftmul+0)^0180h+1,f
	rrf	(??___ftmul+0)^0180h+0,f
u6040:
	addlw	-1
	skipz
	goto	u6045
	movf	0+(??___ftmul+0)^0180h+0,w
	movwf	(??___ftmul+3)^0180h+0
	movf	(??___ftmul+3)^0180h+0,w
	movwf	(___ftmul@sign)^0180h
	line	62
	movf	(___ftmul@f2)^0180h,w
	movwf	((??___ftmul+0)^0180h+0)
	movf	(___ftmul@f2+1)^0180h,w
	movwf	((??___ftmul+0)^0180h+0+1)
	movf	(___ftmul@f2+2)^0180h,w
	movwf	((??___ftmul+0)^0180h+0+2)
	movlw	010h
u6055:
	clrc
	rrf	(??___ftmul+0)^0180h+2,f
	rrf	(??___ftmul+0)^0180h+1,f
	rrf	(??___ftmul+0)^0180h+0,f
u6050:
	addlw	-1
	skipz
	goto	u6055
	movf	0+(??___ftmul+0)^0180h+0,w
	movwf	(??___ftmul+3)^0180h+0
	movf	(??___ftmul+3)^0180h+0,w
	xorwf	(___ftmul@sign)^0180h,f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)^0180h+0
	movf	(??___ftmul+0)^0180h+0,w
	andwf	(___ftmul@sign)^0180h,f
	line	64
	
l6313:	
	bsf	(___ftmul@f1)^0180h+(15/8),(15)&7
	line	66
	
l6315:	
	bsf	(___ftmul@f2)^0180h+(15/8),(15)&7
	line	67
	
l6317:	
	movlw	0FFh
	andwf	(___ftmul@f2)^0180h,f
	movlw	0FFh
	andwf	(___ftmul@f2+1)^0180h,f
	movlw	0
	andwf	(___ftmul@f2+2)^0180h,f
	line	68
	
l6319:	
	movlw	0
	movwf	(___ftmul@f3_as_product)^0180h
	movlw	0
	movwf	(___ftmul@f3_as_product+1)^0180h
	movlw	0
	movwf	(___ftmul@f3_as_product+2)^0180h
	line	69
	
l6321:	
	movlw	(07h)
	movwf	(??___ftmul+0)^0180h+0
	movf	(??___ftmul+0)^0180h+0,w
	movwf	(___ftmul@cntr)^0180h
	goto	l6323
	line	70
	
l2054:	
	line	71
	
l6323:	
	btfss	(___ftmul@f1)^0180h,(0)&7
	goto	u6061
	goto	u6060
u6061:
	goto	l6327
u6060:
	line	72
	
l6325:	
	movf	(___ftmul@f2)^0180h,w
	addwf	(___ftmul@f3_as_product)^0180h,f
	movf	(___ftmul@f2+1)^0180h,w
	clrz
	skipnc
	incf	(___ftmul@f2+1)^0180h,w
	skipnz
	goto	u6071
	addwf	(___ftmul@f3_as_product+1)^0180h,f
u6071:
	movf	(___ftmul@f2+2)^0180h,w
	clrz
	skipnc
	incf	(___ftmul@f2+2)^0180h,w
	skipnz
	goto	u6072
	addwf	(___ftmul@f3_as_product+2)^0180h,f
u6072:

	goto	l6327
	
l2055:	
	line	73
	
l6327:	
	movlw	01h
u6085:
	clrc
	rrf	(___ftmul@f1+2)^0180h,f
	rrf	(___ftmul@f1+1)^0180h,f
	rrf	(___ftmul@f1)^0180h,f
	addlw	-1
	skipz
	goto	u6085

	line	74
	
l6329:	
	movlw	01h
u6095:
	clrc
	rlf	(___ftmul@f2)^0180h,f
	rlf	(___ftmul@f2+1)^0180h,f
	rlf	(___ftmul@f2+2)^0180h,f
	addlw	-1
	skipz
	goto	u6095
	line	75
	
l6331:	
	movlw	low(01h)
	subwf	(___ftmul@cntr)^0180h,f
	btfss	status,2
	goto	u6101
	goto	u6100
u6101:
	goto	l6323
u6100:
	goto	l6333
	
l2056:	
	line	76
	
l6333:	
	movlw	(09h)
	movwf	(??___ftmul+0)^0180h+0
	movf	(??___ftmul+0)^0180h+0,w
	movwf	(___ftmul@cntr)^0180h
	goto	l6335
	line	77
	
l2057:	
	line	78
	
l6335:	
	btfss	(___ftmul@f1)^0180h,(0)&7
	goto	u6111
	goto	u6110
u6111:
	goto	l6339
u6110:
	line	79
	
l6337:	
	movf	(___ftmul@f2)^0180h,w
	addwf	(___ftmul@f3_as_product)^0180h,f
	movf	(___ftmul@f2+1)^0180h,w
	clrz
	skipnc
	incf	(___ftmul@f2+1)^0180h,w
	skipnz
	goto	u6121
	addwf	(___ftmul@f3_as_product+1)^0180h,f
u6121:
	movf	(___ftmul@f2+2)^0180h,w
	clrz
	skipnc
	incf	(___ftmul@f2+2)^0180h,w
	skipnz
	goto	u6122
	addwf	(___ftmul@f3_as_product+2)^0180h,f
u6122:

	goto	l6339
	
l2058:	
	line	80
	
l6339:	
	movlw	01h
u6135:
	clrc
	rrf	(___ftmul@f1+2)^0180h,f
	rrf	(___ftmul@f1+1)^0180h,f
	rrf	(___ftmul@f1)^0180h,f
	addlw	-1
	skipz
	goto	u6135

	line	81
	
l6341:	
	movlw	01h
u6145:
	clrc
	rrf	(___ftmul@f3_as_product+2)^0180h,f
	rrf	(___ftmul@f3_as_product+1)^0180h,f
	rrf	(___ftmul@f3_as_product)^0180h,f
	addlw	-1
	skipz
	goto	u6145

	line	82
	
l6343:	
	movlw	low(01h)
	subwf	(___ftmul@cntr)^0180h,f
	btfss	status,2
	goto	u6151
	goto	u6150
u6151:
	goto	l6335
u6150:
	goto	l6345
	
l2059:	
	line	83
	
l6345:	
	movf	(___ftmul@f3_as_product)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftmul@f3_as_product+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftmul@f3_as_product+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftmul@exp)^0180h,w
	movwf	(??___ftmul+0)^0180h+0
	movf	(??___ftmul+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftpack)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftmul@sign)^0180h,w
	movwf	(??___ftmul+1)^0180h+0
	movf	(??___ftmul+1)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(?___ftmul)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(?___ftmul+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(?___ftmul+2)^0180h
	goto	l2052
	
l6347:	
	line	84
	
l2052:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text1323,local,class=CODE,delta=2
global __ptext1323
__ptext1323:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   26[BANK1 ] float 
;;  f1              3   29[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3    5[BANK3 ] float 
;;  sign            1    9[BANK3 ] unsigned char 
;;  exp             1    8[BANK3 ] unsigned char 
;;  cntr            1    4[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       0       6       0
;;      Temps:          0       0       0       4       0
;;      Totals:         0       0       6      10       0
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
psect	text1323
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 1
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l6257:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1+1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1+2)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0+2)
	clrc
	rlf	(??___ftdiv+0)^0180h+1,w
	rlf	(??___ftdiv+0)^0180h+2,w
	movwf	(??___ftdiv+3)^0180h+0
	movf	(??___ftdiv+3)^0180h+0,w
	movwf	(___ftdiv@exp)^0180h
	movf	((___ftdiv@exp)^0180h),f
	skipz
	goto	u5941
	goto	u5940
u5941:
	goto	l6263
u5940:
	line	56
	
l6259:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	movlw	0x0
	movwf	(?___ftdiv+1)^080h
	movlw	0x0
	movwf	(?___ftdiv+2)^080h
	goto	l2042
	
l6261:	
	goto	l2042
	
l2041:	
	line	57
	
l6263:	
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2+1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2+2)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0+2)
	clrc
	rlf	(??___ftdiv+0)^0180h+1,w
	rlf	(??___ftdiv+0)^0180h+2,w
	movwf	(??___ftdiv+3)^0180h+0
	movf	(??___ftdiv+3)^0180h+0,w
	movwf	(___ftdiv@sign)^0180h
	movf	((___ftdiv@sign)^0180h),f
	skipz
	goto	u5951
	goto	u5950
u5951:
	goto	l6269
u5950:
	line	58
	
l6265:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	movlw	0x0
	movwf	(?___ftdiv+1)^080h
	movlw	0x0
	movwf	(?___ftdiv+2)^080h
	goto	l2042
	
l6267:	
	goto	l2042
	
l2043:	
	line	59
	
l6269:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(___ftdiv@f3)^0180h
	movlw	0
	movwf	(___ftdiv@f3+1)^0180h
	movlw	0
	movwf	(___ftdiv@f3+2)^0180h
	line	60
	
l6271:	
	movlw	(089h)
	addwf	(___ftdiv@sign)^0180h,w
	movwf	(??___ftdiv+0)^0180h+0
	movf	0+(??___ftdiv+0)^0180h+0,w
	subwf	(___ftdiv@exp)^0180h,f
	line	61
	
l6273:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1+1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1+2)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0+2)
	movlw	010h
u5965:
	clrc
	rrf	(??___ftdiv+0)^0180h+2,f
	rrf	(??___ftdiv+0)^0180h+1,f
	rrf	(??___ftdiv+0)^0180h+0,f
u5960:
	addlw	-1
	skipz
	goto	u5965
	movf	0+(??___ftdiv+0)^0180h+0,w
	movwf	(??___ftdiv+3)^0180h+0
	movf	(??___ftdiv+3)^0180h+0,w
	movwf	(___ftdiv@sign)^0180h
	line	62
	
l6275:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2+1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2+2)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftdiv+0)^0180h+0+2)
	movlw	010h
u5975:
	clrc
	rrf	(??___ftdiv+0)^0180h+2,f
	rrf	(??___ftdiv+0)^0180h+1,f
	rrf	(??___ftdiv+0)^0180h+0,f
u5970:
	addlw	-1
	skipz
	goto	u5975
	movf	0+(??___ftdiv+0)^0180h+0,w
	movwf	(??___ftdiv+3)^0180h+0
	movf	(??___ftdiv+3)^0180h+0,w
	xorwf	(___ftdiv@sign)^0180h,f
	line	63
	
l6277:	
	movlw	(080h)
	movwf	(??___ftdiv+0)^0180h+0
	movf	(??___ftdiv+0)^0180h+0,w
	andwf	(___ftdiv@sign)^0180h,f
	line	64
	
l6279:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(___ftdiv@f1)^080h+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1)^080h,f
	movlw	0FFh
	andwf	(___ftdiv@f1+1)^080h,f
	movlw	0
	andwf	(___ftdiv@f1+2)^080h,f
	line	66
	
l6281:	
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??___ftdiv+0)^0180h+0
	movf	(??___ftdiv+0)^0180h+0,w
	movwf	(___ftdiv@cntr)^0180h
	goto	l6283
	line	69
	
l2044:	
	line	70
	
l6283:	
	movlw	01h
u5985:
	clrc
	rlf	(___ftdiv@f3)^0180h,f
	rlf	(___ftdiv@f3+1)^0180h,f
	rlf	(___ftdiv@f3+2)^0180h,f
	addlw	-1
	skipz
	goto	u5985
	line	71
	
l6285:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2+2)^080h,w
	subwf	(___ftdiv@f1+2)^080h,w
	skipz
	goto	u5995
	movf	(___ftdiv@f2+1)^080h,w
	subwf	(___ftdiv@f1+1)^080h,w
	skipz
	goto	u5995
	movf	(___ftdiv@f2)^080h,w
	subwf	(___ftdiv@f1)^080h,w
u5995:
	skipc
	goto	u5991
	goto	u5990
u5991:
	goto	l6291
u5990:
	line	72
	
l6287:	
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
	
l6289:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(___ftdiv@f3)^0180h+(0/8),(0)&7
	goto	l6291
	line	74
	
l2045:	
	line	75
	
l6291:	
	movlw	01h
u6005:
	clrc
	bcf	status, 6	;RP1=0, select bank1
	rlf	(___ftdiv@f1)^080h,f
	rlf	(___ftdiv@f1+1)^080h,f
	rlf	(___ftdiv@f1+2)^080h,f
	addlw	-1
	skipz
	goto	u6005
	line	76
	
l6293:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(___ftdiv@cntr)^0180h,f
	btfss	status,2
	goto	u6011
	goto	u6010
u6011:
	goto	l6283
u6010:
	goto	l6295
	
l2046:	
	line	77
	
l6295:	
	movf	(___ftdiv@f3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftdiv@f3+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftdiv@f3+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftdiv@exp)^0180h,w
	movwf	(??___ftdiv+0)^0180h+0
	movf	(??___ftdiv+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftpack)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftdiv@sign)^0180h,w
	movwf	(??___ftdiv+1)^0180h+0
	movf	(??___ftdiv+1)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv+2)^080h
	goto	l2042
	
l6297:	
	line	78
	
l2042:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text1324,local,class=CODE,delta=2
global __ptext1324
__ptext1324:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[BANK1 ] float 
;;  f2              3   29[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1    6[BANK3 ] unsigned char 
;;  exp2            1    5[BANK3 ] unsigned char 
;;  sign            1    4[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       0       3       0
;;      Temps:          0       0       0       4       0
;;      Totals:         0       0       6       7       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text1324
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6185:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftadd+0)^0180h+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1+1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftadd+0)^0180h+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1+2)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftadd+0)^0180h+0+2)
	clrc
	rlf	(??___ftadd+0)^0180h+1,w
	rlf	(??___ftadd+0)^0180h+2,w
	movwf	(??___ftadd+3)^0180h+0
	movf	(??___ftadd+3)^0180h+0,w
	movwf	(___ftadd@exp1)^0180h
	line	91
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftadd+0)^0180h+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2+1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftadd+0)^0180h+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2+2)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	((??___ftadd+0)^0180h+0+2)
	clrc
	rlf	(??___ftadd+0)^0180h+1,w
	rlf	(??___ftadd+0)^0180h+2,w
	movwf	(??___ftadd+3)^0180h+0
	movf	(??___ftadd+3)^0180h+0,w
	movwf	(___ftadd@exp2)^0180h
	line	92
	
l6187:	
	movf	(___ftadd@exp1)^0180h,w
	skipz
	goto	u5700
	goto	l6193
u5700:
	
l6189:	
	movf	(___ftadd@exp2)^0180h,w
	subwf	(___ftadd@exp1)^0180h,w
	skipnc
	goto	u5711
	goto	u5710
u5711:
	goto	l6197
u5710:
	
l6191:	
	decf	(___ftadd@exp1)^0180h,w
	xorlw	0ffh
	addwf	(___ftadd@exp2)^0180h,w
	movwf	(??___ftadd+0)^0180h+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)^0180h+0,w
	skipc
	goto	u5721
	goto	u5720
u5721:
	goto	l6197
u5720:
	goto	l6193
	
l1999:	
	line	93
	
l6193:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2)^080h,w
	movwf	(?___ftadd)^080h
	movf	(___ftadd@f2+1)^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(___ftadd@f2+2)^080h,w
	movwf	(?___ftadd+2)^080h
	goto	l2000
	
l6195:	
	goto	l2000
	
l1997:	
	line	94
	
l6197:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftadd@exp2)^0180h,w
	skipz
	goto	u5730
	goto	l2003
u5730:
	
l6199:	
	movf	(___ftadd@exp1)^0180h,w
	subwf	(___ftadd@exp2)^0180h,w
	skipnc
	goto	u5741
	goto	u5740
u5741:
	goto	l6203
u5740:
	
l6201:	
	decf	(___ftadd@exp2)^0180h,w
	xorlw	0ffh
	addwf	(___ftadd@exp1)^0180h,w
	movwf	(??___ftadd+0)^0180h+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)^0180h+0,w
	skipc
	goto	u5751
	goto	u5750
u5751:
	goto	l6203
u5750:
	
l2003:	
	line	95
	goto	l2000
	
l2001:	
	line	96
	
l6203:	
	movlw	(06h)
	movwf	(??___ftadd+0)^0180h+0
	movf	(??___ftadd+0)^0180h+0,w
	movwf	(___ftadd@sign)^0180h
	line	97
	
l6205:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(___ftadd@f1+2)^080h,(23)&7
	goto	u5761
	goto	u5760
u5761:
	goto	l2004
u5760:
	line	98
	
l6207:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(___ftadd@sign)^0180h+(7/8),(7)&7
	
l2004:	
	line	99
	bcf	status, 6	;RP1=0, select bank1
	btfss	(___ftadd@f2+2)^080h,(23)&7
	goto	u5771
	goto	u5770
u5771:
	goto	l2005
u5770:
	line	100
	
l6209:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(___ftadd@sign)^0180h+(6/8),(6)&7
	
l2005:	
	line	101
	bcf	status, 6	;RP1=0, select bank1
	bsf	(___ftadd@f1)^080h+(15/8),(15)&7
	line	102
	
l6211:	
	movlw	0FFh
	andwf	(___ftadd@f1)^080h,f
	movlw	0FFh
	andwf	(___ftadd@f1+1)^080h,f
	movlw	0
	andwf	(___ftadd@f1+2)^080h,f
	line	103
	
l6213:	
	bsf	(___ftadd@f2)^080h+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	andwf	(___ftadd@f2+1)^080h,f
	movlw	0
	andwf	(___ftadd@f2+2)^080h,f
	line	106
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftadd@exp2)^0180h,w
	subwf	(___ftadd@exp1)^0180h,w
	skipnc
	goto	u5781
	goto	u5780
u5781:
	goto	l6225
u5780:
	goto	l6215
	line	109
	
l2007:	
	line	110
	
l6215:	
	movlw	01h
u5795:
	clrc
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rlf	(___ftadd@f2)^080h,f
	rlf	(___ftadd@f2+1)^080h,f
	rlf	(___ftadd@f2+2)^080h,f
	addlw	-1
	skipz
	goto	u5795
	line	111
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(___ftadd@exp2)^0180h,f
	line	112
	
l6217:	
	movf	(___ftadd@exp2)^0180h,w
	xorwf	(___ftadd@exp1)^0180h,w
	skipnz
	goto	u5801
	goto	u5800
u5801:
	goto	l6223
u5800:
	
l6219:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^0180h,f
	movf	((___ftadd@sign)^0180h),w
	andlw	07h
	btfss	status,2
	goto	u5811
	goto	u5810
u5811:
	goto	l6215
u5810:
	goto	l6223
	
l2009:	
	goto	l6223
	
l2010:	
	line	113
	goto	l6223
	
l2012:	
	line	114
	
l6221:	
	movlw	01h
u5825:
	clrc
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rrf	(___ftadd@f1+2)^080h,f
	rrf	(___ftadd@f1+1)^080h,f
	rrf	(___ftadd@f1)^080h,f
	addlw	-1
	skipz
	goto	u5825

	line	115
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??___ftadd+0)^0180h+0
	movf	(??___ftadd+0)^0180h+0,w
	addwf	(___ftadd@exp1)^0180h,f
	goto	l6223
	line	116
	
l2011:	
	line	113
	
l6223:	
	movf	(___ftadd@exp1)^0180h,w
	xorwf	(___ftadd@exp2)^0180h,w
	skipz
	goto	u5831
	goto	u5830
u5831:
	goto	l6221
u5830:
	goto	l2014
	
l2013:	
	line	117
	goto	l2014
	
l2006:	
	
l6225:	
	movf	(___ftadd@exp1)^0180h,w
	subwf	(___ftadd@exp2)^0180h,w
	skipnc
	goto	u5841
	goto	u5840
u5841:
	goto	l2014
u5840:
	goto	l6227
	line	120
	
l2016:	
	line	121
	
l6227:	
	movlw	01h
u5855:
	clrc
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rlf	(___ftadd@f1)^080h,f
	rlf	(___ftadd@f1+1)^080h,f
	rlf	(___ftadd@f1+2)^080h,f
	addlw	-1
	skipz
	goto	u5855
	line	122
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(___ftadd@exp1)^0180h,f
	line	123
	
l6229:	
	movf	(___ftadd@exp2)^0180h,w
	xorwf	(___ftadd@exp1)^0180h,w
	skipnz
	goto	u5861
	goto	u5860
u5861:
	goto	l6235
u5860:
	
l6231:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^0180h,f
	movf	((___ftadd@sign)^0180h),w
	andlw	07h
	btfss	status,2
	goto	u5871
	goto	u5870
u5871:
	goto	l6227
u5870:
	goto	l6235
	
l2018:	
	goto	l6235
	
l2019:	
	line	124
	goto	l6235
	
l2021:	
	line	125
	
l6233:	
	movlw	01h
u5885:
	clrc
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rrf	(___ftadd@f2+2)^080h,f
	rrf	(___ftadd@f2+1)^080h,f
	rrf	(___ftadd@f2)^080h,f
	addlw	-1
	skipz
	goto	u5885

	line	126
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??___ftadd+0)^0180h+0
	movf	(??___ftadd+0)^0180h+0,w
	addwf	(___ftadd@exp2)^0180h,f
	goto	l6235
	line	127
	
l2020:	
	line	124
	
l6235:	
	movf	(___ftadd@exp1)^0180h,w
	xorwf	(___ftadd@exp2)^0180h,w
	skipz
	goto	u5891
	goto	u5890
u5891:
	goto	l6233
u5890:
	goto	l2014
	
l2022:	
	goto	l2014
	line	128
	
l2015:	
	line	129
	
l2014:	
	btfss	(___ftadd@sign)^0180h,(7)&7
	goto	u5901
	goto	u5900
u5901:
	goto	l6239
u5900:
	line	131
	
l6237:	
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
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
	goto	l6239
	line	133
	
l2023:	
	line	134
	
l6239:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfss	(___ftadd@sign)^0180h,(6)&7
	goto	u5911
	goto	u5910
u5911:
	goto	l6243
u5910:
	line	136
	
l6241:	
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
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
	goto	l6243
	line	138
	
l2024:	
	line	139
	
l6243:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(___ftadd@sign)^0180h
	line	140
	
l6245:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1)^080h,w
	addwf	(___ftadd@f2)^080h,f
	movf	(___ftadd@f1+1)^080h,w
	clrz
	skipnc
	incf	(___ftadd@f1+1)^080h,w
	skipnz
	goto	u5921
	addwf	(___ftadd@f2+1)^080h,f
u5921:
	movf	(___ftadd@f1+2)^080h,w
	clrz
	skipnc
	incf	(___ftadd@f1+2)^080h,w
	skipnz
	goto	u5922
	addwf	(___ftadd@f2+2)^080h,f
u5922:

	line	141
	
l6247:	
	btfss	(___ftadd@f2+2)^080h,(23)&7
	goto	u5931
	goto	u5930
u5931:
	goto	l6253
u5930:
	line	142
	
l6249:	
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
	
l6251:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(___ftadd@sign)^0180h
	bsf	status,0
	rlf	(___ftadd@sign)^0180h,f
	goto	l6253
	line	145
	
l2025:	
	line	146
	
l6253:	
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftadd@exp1)^0180h,w
	movwf	(??___ftadd+0)^0180h+0
	movf	(??___ftadd+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftpack)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(___ftadd@sign)^0180h,w
	movwf	(??___ftadd+1)^0180h+0
	movf	(??___ftadd+1)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd+2)^080h
	goto	l2000
	
l6255:	
	line	148
	
l2000:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_lcd_busy
psect	text1325,local,class=CODE,delta=2
global __ptext1325
__ptext1325:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1   26[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
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
psect	text1325
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 0
; Regs used in _lcd_busy: [wreg]
	line	50
	
l6171:	
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
	
l6173:	
;lcd.c: 57: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u6447:
decfsz	(??_lcd_busy+0)+0,f
	goto	u6447
	clrwdt
opt asmopt_on

	line	58
	
l6175:	
;lcd.c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd.c: 59: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u6457:
decfsz	(??_lcd_busy+0)+0,f
	goto	u6457
	clrwdt
opt asmopt_on

	line	61
;lcd.c: 61: busy = RD7;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(71/8),(71)&7
	movlw	1
	movwf	(??_lcd_busy+0)+0
	movf	(??_lcd_busy+0)+0,w
	movwf	(lcd_busy@busy)
	line	63
	
l6177:	
;lcd.c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd.c: 64: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u6467:
decfsz	(??_lcd_busy+0)+0,f
	goto	u6467
	clrwdt
opt asmopt_on

	line	65
	
l6179:	
;lcd.c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd.c: 66: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u6477:
decfsz	(??_lcd_busy+0)+0,f
	goto	u6477
	clrwdt
opt asmopt_on

	line	67
	
l6181:	
;lcd.c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd.c: 70: return busy;
	movf	(lcd_busy@busy),w
	goto	l1902
	
l6183:	
	line	71
	
l1902:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text1326,local,class=CODE,delta=2
global __ptext1326
__ptext1326:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1   25[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1   28[BANK0 ] unsigned char 
;;  temp            1   29[BANK0 ] struct _BYTE_VAL
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
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
psect	text1326
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\lcd.c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 0
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_put_byte@rs)
	
l6135:	
;lcd.c: 107: BYTE_VAL temp;
;lcd.c: 109: TRISD4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
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
	
l6137:	
;lcd.c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u5530
	goto	l6141
u5530:
	
l6139:	
	bsf	(65/8),(65)&7
	goto	l6141
	
l1909:	
	line	117
	
l6141:	
;lcd.c: 117: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u6487:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6487
	clrwdt
opt asmopt_on

	line	118
	
l6143:	
;lcd.c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd.c: 119: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u6497:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6497
	clrwdt
opt asmopt_on

	line	120
	
l6145:	
;lcd.c: 120: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	122
;lcd.c: 122: temp.Val = b;
	movf	(lcd_put_byte@b),w
	movwf	(??_lcd_put_byte+0)+0
	movf	(??_lcd_put_byte+0)+0,w
	movwf	(lcd_put_byte@temp)
	line	125
	
l6147:	
;lcd.c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u5541
	goto	u5540
	
u5541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u5554
u5540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u5554:
	line	126
	
l6149:	
;lcd.c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u5561
	goto	u5560
	
u5561:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u5574
u5560:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u5574:
	line	127
	
l6151:	
;lcd.c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u5581
	goto	u5580
	
u5581:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u5594
u5580:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u5594:
	line	128
	
l6153:	
;lcd.c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u5601
	goto	u5600
	
u5601:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u5614
u5600:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u5614:
	line	129
;lcd.c: 129: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u6507:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6507
	clrwdt
opt asmopt_on

	line	130
	
l6155:	
;lcd.c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd.c: 131: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u6517:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6517
	clrwdt
opt asmopt_on

	line	132
	
l6157:	
;lcd.c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l6159:	
;lcd.c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u5621
	goto	u5620
	
u5621:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u5634
u5620:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u5634:
	line	135
	
l6161:	
;lcd.c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u5641
	goto	u5640
	
u5641:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u5654
u5640:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u5654:
	line	136
	
l6163:	
;lcd.c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u5661
	goto	u5660
	
u5661:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u5674
u5660:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u5674:
	line	137
	
l6165:	
;lcd.c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u5681
	goto	u5680
	
u5681:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u5694
u5680:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u5694:
	line	138
;lcd.c: 138: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u6527:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6527
	clrwdt
opt asmopt_on

	line	139
	
l6167:	
;lcd.c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd.c: 140: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u6537:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u6537
	clrwdt
opt asmopt_on

	line	141
	
l6169:	
;lcd.c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l1910:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	_I2C_write
psect	text1327,local,class=CODE,delta=2
global __ptext1327
__ptext1327:

;; *************** function _I2C_write *****************
;; Defined at:
;;		line 161 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
;; Parameters:    Size  Location     Type
;;  d               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  d               1   26[BANK0 ] unsigned char 
;;  x               1   27[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_i2c_dly
;; This function is called by:
;;		_BH1750_write
;; This function uses a non-reentrant model
;;
psect	text1327
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	161
	global	__size_of_I2C_write
	__size_of_I2C_write	equ	__end_of_I2C_write-_I2C_write
	
_I2C_write:	
	opt	stack 1
; Regs used in _I2C_write: [wreg+status,2+status,0+pclath+cstack]
;I2C_write@d stored from wreg
	line	163
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(I2C_write@d)
	line	164
	
l5307:	
;main.c: 162: char x;
;main.c: 163: static bit b;
;main.c: 164: for(x=8; x; x--) {
	movlw	(08h)
	movwf	(??_I2C_write+0)+0
	movf	(??_I2C_write+0)+0,w
	movwf	(I2C_write@x)
	goto	l991
	
l992:	
	line	165
;main.c: 165: if(d&0x80) TRISC4 = 1;
	btfss	(I2C_write@d),(7)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l993
u4090:
	
l5309:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	goto	l994
	line	166
	
l993:	
;main.c: 166: else TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	
l994:	
	line	167
;main.c: 167: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	168
	
l5311:	
;main.c: 168: d <<= 1;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(I2C_write@d),f

	line	169
	
l5313:	
;main.c: 169: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	164
	
l5315:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(I2C_write@x),f
	
l991:	
	movf	(I2C_write@x),f
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l992
u4100:
	
l995:	
	line	171
;main.c: 170: }
;main.c: 171: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	172
;main.c: 172: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	173
	
l5317:	
;main.c: 173: i2c_dly();
	fcall	_i2c_dly
	line	174
	
l5319:	
;main.c: 174: b = RC4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(I2C_write@b/8),(I2C_write@b)&7
	btfss	(60/8),(60)&7
	goto	u4115
	bsf	(I2C_write@b/8),(I2C_write@b)&7
u4115:

	line	176
	
l5321:	
;main.c: 176: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	goto	l996
	line	177
	
l5323:	
	line	178
;main.c: 177: return b;
;	Return value of _I2C_write is never used
	
l996:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_write
	__end_of_I2C_write:
;; =============== function _I2C_write ends ============

	signat	_I2C_write,4216
	global	_I2C_stop
psect	text1328,local,class=CODE,delta=2
global __ptext1328
__ptext1328:

;; *************** function _I2C_stop *****************
;; Defined at:
;;		line 127 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
psect	text1328
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	127
	global	__size_of_I2C_stop
	__size_of_I2C_stop	equ	__end_of_I2C_stop-_I2C_stop
	
_I2C_stop:	
	opt	stack 1
; Regs used in _I2C_stop: [status,2+status,0+pclath+cstack]
	line	128
	
l5299:	
;main.c: 128: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	129
	
l5301:	
;main.c: 129: i2c_dly();
	fcall	_i2c_dly
	line	130
	
l5303:	
;main.c: 130: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	131
;main.c: 131: i2c_dly();
	fcall	_i2c_dly
	line	132
	
l5305:	
;main.c: 132: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	133
;main.c: 133: i2c_dly();
	fcall	_i2c_dly
	line	134
	
l976:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_stop
	__end_of_I2C_stop:
;; =============== function _I2C_stop ends ============

	signat	_I2C_stop,88
	global	_I2C_start
psect	text1329,local,class=CODE,delta=2
global __ptext1329
__ptext1329:

;; *************** function _I2C_start *****************
;; Defined at:
;;		line 115 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
psect	text1329
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	115
	global	__size_of_I2C_start
	__size_of_I2C_start	equ	__end_of_I2C_start-_I2C_start
	
_I2C_start:	
	opt	stack 1
; Regs used in _I2C_start: [status,2+status,0+pclath+cstack]
	line	116
	
l5289:	
;main.c: 116: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	117
	
l5291:	
;main.c: 117: i2c_dly();
	fcall	_i2c_dly
	line	118
	
l5293:	
;main.c: 118: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	119
;main.c: 119: i2c_dly();
	fcall	_i2c_dly
	line	120
	
l5295:	
;main.c: 120: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	121
;main.c: 121: i2c_dly();
	fcall	_i2c_dly
	line	122
	
l5297:	
;main.c: 122: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	123
;main.c: 123: i2c_dly();
	fcall	_i2c_dly
	line	124
	
l973:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_start
	__end_of_I2C_start:
;; =============== function _I2C_start ends ============

	signat	_I2C_start,88
	global	_delay_ms
psect	text1330,local,class=CODE,delta=2
global __ptext1330
__ptext1330:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 101 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
;; Parameters:    Size  Location     Type
;;  x               2   25[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2   28[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_lux
;;		_receive_pid
;;		_main
;;		_BH1750_init
;; This function uses a non-reentrant model
;;
psect	text1330
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	101
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 2
; Regs used in _delay_ms: [wreg]
	line	102
	
l6131:	
;main.c: 102: int i=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay_ms@i)
	movlw	high(0)
	movwf	((delay_ms@i))+1
	line	103
;main.c: 103: for(;i<x;i++)
	goto	l964
	line	104
	
l965:	
	line	105
	
l6133:	
;main.c: 104: {
;main.c: 105: _delay(1000);
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_delay_ms+0)+0,f
u6547:
	clrwdt
decfsz	(??_delay_ms+0)+0,f
	goto	u6547
	nop2	;nop
	clrwdt
opt asmopt_on

	line	103
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	high(01h)
	addwf	(delay_ms@i+1),f
	
l964:	
	movf	(delay_ms@i+1),w
	xorlw	80h
	movwf	(??_delay_ms+0)+0
	movf	(delay_ms@x+1),w
	xorlw	80h
	subwf	(??_delay_ms+0)+0,w
	skipz
	goto	u5525
	movf	(delay_ms@x),w
	subwf	(delay_ms@i),w
u5525:

	skipc
	goto	u5521
	goto	u5520
u5521:
	goto	l6133
u5520:
	goto	l967
	
l966:	
	line	107
	
l967:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	___awmod
psect	text1331,local,class=CODE,delta=2
global __ptext1331
__ptext1331:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   25[BANK0 ] int 
;;  dividend        2   27[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    1[BANK1 ] unsigned char 
;;  counter         1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   25[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       2       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_nhiet_do
;;		_xu_ly_lux
;;		_send_lux
;; This function uses a non-reentrant model
;;
psect	text1331
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 2
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6047:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___awmod@sign)^080h
	line	9
	
l6049:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awmod@dividend+1),7
	goto	u5371
	goto	u5370
u5371:
	goto	l6053
u5370:
	line	10
	
l6051:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___awmod@sign)^080h
	bsf	status,0
	rlf	(___awmod@sign)^080h,f
	goto	l6053
	line	12
	
l2161:	
	line	13
	
l6053:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___awmod@divisor+1),7
	goto	u5381
	goto	u5380
u5381:
	goto	l6057
u5380:
	line	14
	
l6055:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l6057
	
l2162:	
	line	15
	
l6057:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u5391
	goto	u5390
u5391:
	goto	l6075
u5390:
	line	16
	
l6059:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___awmod@counter)^080h
	bsf	status,0
	rlf	(___awmod@counter)^080h,f
	line	17
	goto	l6065
	
l2165:	
	line	18
	
l6061:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	
u5405:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u5405
	line	19
	
l6063:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(___awmod@counter)^080h,f
	goto	l6065
	line	20
	
l2164:	
	line	17
	
l6065:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awmod@divisor+1),(15)&7
	goto	u5411
	goto	u5410
u5411:
	goto	l6061
u5410:
	goto	l6067
	
l2166:	
	goto	l6067
	line	21
	
l2167:	
	line	22
	
l6067:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u5425
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u5425:
	skipc
	goto	u5421
	goto	u5420
u5421:
	goto	l6071
u5420:
	line	23
	
l6069:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l6071
	
l2168:	
	line	24
	
l6071:	
	movlw	01h
	
u5435:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u5435
	line	25
	
l6073:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(___awmod@counter)^080h,f
	btfss	status,2
	goto	u5441
	goto	u5440
u5441:
	goto	l6067
u5440:
	goto	l6075
	
l2169:	
	goto	l6075
	line	26
	
l2163:	
	line	27
	
l6075:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___awmod@sign)^080h,w
	skipz
	goto	u5450
	goto	l6079
u5450:
	line	28
	
l6077:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l6079
	
l2170:	
	line	29
	
l6079:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2171
	
l6081:	
	line	30
	
l2171:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___ftneg
psect	text1332,local,class=CODE,delta=2
global __ptext1332
__ptext1332:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[BANK1 ] float 
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
;; This function uses a non-reentrant model
;;
psect	text1332
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
l6039:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftneg@f1+2)^080h,w
	iorwf	(___ftneg@f1+1)^080h,w
	iorwf	(___ftneg@f1)^080h,w
	skipnz
	goto	u5361
	goto	u5360
u5361:
	goto	l6043
u5360:
	line	18
	
l6041:	
	movlw	080h
	xorwf	(___ftneg@f1+2)^080h,f
	goto	l6043
	
l2116:	
	line	19
	
l6043:	
	goto	l2117
	
l6045:	
	line	20
	
l2117:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___awdiv
psect	text1333,local,class=CODE,delta=2
global __ptext1333
__ptext1333:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[BANK1 ] int 
;;  dividend        2    4[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    9[BANK1 ] int 
;;  sign            1    8[BANK1 ] unsigned char 
;;  counter         1    7[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[BANK1 ] int 
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
;;		_send_lux
;; This function uses a non-reentrant model
;;
psect	text1333
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6001:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___awdiv@sign)^080h
	line	10
	
l6003:	
	btfss	(___awdiv@divisor+1)^080h,7
	goto	u5261
	goto	u5260
u5261:
	goto	l6007
u5260:
	line	11
	
l6005:	
	comf	(___awdiv@divisor)^080h,f
	comf	(___awdiv@divisor+1)^080h,f
	incf	(___awdiv@divisor)^080h,f
	skipnz
	incf	(___awdiv@divisor+1)^080h,f
	line	12
	clrf	(___awdiv@sign)^080h
	bsf	status,0
	rlf	(___awdiv@sign)^080h,f
	goto	l6007
	line	13
	
l2093:	
	line	14
	
l6007:	
	btfss	(___awdiv@dividend+1)^080h,7
	goto	u5271
	goto	u5270
u5271:
	goto	l2094
u5270:
	line	15
	
l6009:	
	comf	(___awdiv@dividend)^080h,f
	comf	(___awdiv@dividend+1)^080h,f
	incf	(___awdiv@dividend)^080h,f
	skipnz
	incf	(___awdiv@dividend+1)^080h,f
	line	16
	
l6011:	
	movlw	(01h)
	movwf	(??___awdiv+0)^080h+0
	movf	(??___awdiv+0)^080h+0,w
	xorwf	(___awdiv@sign)^080h,f
	line	17
	
l2094:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)^080h
	movlw	high(0)
	movwf	((___awdiv@quotient)^080h)+1
	line	19
	movf	(___awdiv@divisor+1)^080h,w
	iorwf	(___awdiv@divisor)^080h,w
	skipnz
	goto	u5281
	goto	u5280
u5281:
	goto	l6031
u5280:
	line	20
	
l6013:	
	clrf	(___awdiv@counter)^080h
	bsf	status,0
	rlf	(___awdiv@counter)^080h,f
	line	21
	goto	l6019
	
l2097:	
	line	22
	
l6015:	
	movlw	01h
	
u5295:
	clrc
	rlf	(___awdiv@divisor)^080h,f
	rlf	(___awdiv@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u5295
	line	23
	
l6017:	
	movlw	(01h)
	movwf	(??___awdiv+0)^080h+0
	movf	(??___awdiv+0)^080h+0,w
	addwf	(___awdiv@counter)^080h,f
	goto	l6019
	line	24
	
l2096:	
	line	21
	
l6019:	
	btfss	(___awdiv@divisor+1)^080h,(15)&7
	goto	u5301
	goto	u5300
u5301:
	goto	l6015
u5300:
	goto	l6021
	
l2098:	
	goto	l6021
	line	25
	
l2099:	
	line	26
	
l6021:	
	movlw	01h
	
u5315:
	clrc
	rlf	(___awdiv@quotient)^080h,f
	rlf	(___awdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u5315
	line	27
	movf	(___awdiv@divisor+1)^080h,w
	subwf	(___awdiv@dividend+1)^080h,w
	skipz
	goto	u5325
	movf	(___awdiv@divisor)^080h,w
	subwf	(___awdiv@dividend)^080h,w
u5325:
	skipc
	goto	u5321
	goto	u5320
u5321:
	goto	l6027
u5320:
	line	28
	
l6023:	
	movf	(___awdiv@divisor)^080h,w
	subwf	(___awdiv@dividend)^080h,f
	movf	(___awdiv@divisor+1)^080h,w
	skipc
	decf	(___awdiv@dividend+1)^080h,f
	subwf	(___awdiv@dividend+1)^080h,f
	line	29
	
l6025:	
	bsf	(___awdiv@quotient)^080h+(0/8),(0)&7
	goto	l6027
	line	30
	
l2100:	
	line	31
	
l6027:	
	movlw	01h
	
u5335:
	clrc
	rrf	(___awdiv@divisor+1)^080h,f
	rrf	(___awdiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u5335
	line	32
	
l6029:	
	movlw	low(01h)
	subwf	(___awdiv@counter)^080h,f
	btfss	status,2
	goto	u5341
	goto	u5340
u5341:
	goto	l6021
u5340:
	goto	l6031
	
l2101:	
	goto	l6031
	line	33
	
l2095:	
	line	34
	
l6031:	
	movf	(___awdiv@sign)^080h,w
	skipz
	goto	u5350
	goto	l6035
u5350:
	line	35
	
l6033:	
	comf	(___awdiv@quotient)^080h,f
	comf	(___awdiv@quotient+1)^080h,f
	incf	(___awdiv@quotient)^080h,f
	skipnz
	incf	(___awdiv@quotient+1)^080h,f
	goto	l6035
	
l2102:	
	line	36
	
l6035:	
	movf	(___awdiv@quotient+1)^080h,w
	clrf	(?___awdiv+1)^080h
	addwf	(?___awdiv+1)^080h
	movf	(___awdiv@quotient)^080h,w
	clrf	(?___awdiv)^080h
	addwf	(?___awdiv)^080h

	goto	l2103
	
l6037:	
	line	37
	
l2103:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text1334,local,class=CODE,delta=2
global __ptext1334
__ptext1334:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    6[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   15[BANK1 ] unsigned long 
;;  exp1            1   19[BANK1 ] unsigned char 
;;  sign1           1   14[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    6[BANK1 ] long 
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
;;		_send_lux
;; This function uses a non-reentrant model
;;
psect	text1334
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 2
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5947:	
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
	goto	u5151
	goto	u5150
u5151:
	goto	l5953
u5150:
	line	50
	
l5949:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l2063
	
l5951:	
	goto	l2063
	
l2062:	
	line	51
	
l5953:	
	movf	(___fttol@f1)^080h,w
	movwf	((??___fttol+0)^080h+0)
	movf	(___fttol@f1+1)^080h,w
	movwf	((??___fttol+0)^080h+0+1)
	movf	(___fttol@f1+2)^080h,w
	movwf	((??___fttol+0)^080h+0+2)
	movlw	017h
u5165:
	clrc
	rrf	(??___fttol+0)^080h+2,f
	rrf	(??___fttol+0)^080h+1,f
	rrf	(??___fttol+0)^080h+0,f
u5160:
	addlw	-1
	skipz
	goto	u5165
	movf	0+(??___fttol+0)^080h+0,w
	movwf	(??___fttol+3)^080h+0
	movf	(??___fttol+3)^080h+0,w
	movwf	(___fttol@sign1)^080h
	line	52
	
l5955:	
	bsf	(___fttol@f1)^080h+(15/8),(15)&7
	line	53
	
l5957:	
	movlw	0FFh
	andwf	(___fttol@f1)^080h,f
	movlw	0FFh
	andwf	(___fttol@f1+1)^080h,f
	movlw	0
	andwf	(___fttol@f1+2)^080h,f
	line	54
	
l5959:	
	movf	(___fttol@f1)^080h,w
	movwf	(___fttol@lval)^080h
	movf	(___fttol@f1+1)^080h,w
	movwf	((___fttol@lval)^080h)+1
	movf	(___fttol@f1+2)^080h,w
	movwf	((___fttol@lval)^080h)+2
	clrf	((___fttol@lval)^080h)+3
	line	55
	
l5961:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1)^080h,f
	line	56
	
l5963:	
	btfss	(___fttol@exp1)^080h,7
	goto	u5171
	goto	u5170
u5171:
	goto	l5973
u5170:
	line	57
	
l5965:	
	movf	(___fttol@exp1)^080h,w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u5181
	goto	u5180
u5181:
	goto	l5971
u5180:
	line	58
	
l5967:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l2063
	
l5969:	
	goto	l2063
	
l2065:	
	goto	l5971
	line	59
	
l2066:	
	line	60
	
l5971:	
	movlw	01h
u5195:
	clrc
	rrf	(___fttol@lval+3)^080h,f
	rrf	(___fttol@lval+2)^080h,f
	rrf	(___fttol@lval+1)^080h,f
	rrf	(___fttol@lval)^080h,f
	addlw	-1
	skipz
	goto	u5195

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)^080h+0
	movf	(??___fttol+0)^080h+0,w
	addwf	(___fttol@exp1)^080h,f
	btfss	status,2
	goto	u5201
	goto	u5200
u5201:
	goto	l5971
u5200:
	goto	l5983
	
l2067:	
	line	62
	goto	l5983
	
l2064:	
	line	63
	
l5973:	
	movlw	(018h)
	subwf	(___fttol@exp1)^080h,w
	skipc
	goto	u5211
	goto	u5210
u5211:
	goto	l5981
u5210:
	line	64
	
l5975:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l2063
	
l5977:	
	goto	l2063
	
l2069:	
	line	65
	goto	l5981
	
l2071:	
	line	66
	
l5979:	
	movlw	01h
	movwf	(??___fttol+0)^080h+0
u5225:
	clrc
	rlf	(___fttol@lval)^080h,f
	rlf	(___fttol@lval+1)^080h,f
	rlf	(___fttol@lval+2)^080h,f
	rlf	(___fttol@lval+3)^080h,f
	decfsz	(??___fttol+0)^080h+0
	goto	u5225
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1)^080h,f
	goto	l5981
	line	68
	
l2070:	
	line	65
	
l5981:	
	movf	(___fttol@exp1)^080h,f
	skipz
	goto	u5231
	goto	u5230
u5231:
	goto	l5979
u5230:
	goto	l5983
	
l2072:	
	goto	l5983
	line	69
	
l2068:	
	line	70
	
l5983:	
	movf	(___fttol@sign1)^080h,w
	skipz
	goto	u5240
	goto	l5987
u5240:
	line	71
	
l5985:	
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
	goto	l5987
	
l2073:	
	line	72
	
l5987:	
	movf	(___fttol@lval+3)^080h,w
	movwf	(?___fttol+3)^080h
	movf	(___fttol@lval+2)^080h,w
	movwf	(?___fttol+2)^080h
	movf	(___fttol@lval+1)^080h,w
	movwf	(?___fttol+1)^080h
	movf	(___fttol@lval)^080h,w
	movwf	(?___fttol)^080h

	goto	l2063
	
l5989:	
	line	73
	
l2063:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text1335,local,class=CODE,delta=2
global __ptext1335
__ptext1335:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3   25[BANK0 ] unsigned um
;;  exp             1   28[BANK0 ] unsigned char 
;;  sign            1   29[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   25[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       5       3       0       0
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
psect	text1335
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5911:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u5040
	goto	l5915
u5040:
	
l5913:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l5921
u5050:
	goto	l5915
	
l2287:	
	line	65
	
l5915:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l2288
	
l5917:	
	goto	l2288
	
l2285:	
	line	66
	goto	l5921
	
l2290:	
	line	67
	
l5919:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??___ftpack+0)^080h+0
	movf	(??___ftpack+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u5065:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u5065

	goto	l5921
	line	69
	
l2289:	
	line	66
	
l5921:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u5071
	goto	u5070
u5071:
	goto	l5919
u5070:
	goto	l2292
	
l2291:	
	line	70
	goto	l2292
	
l2293:	
	line	71
	
l5923:	
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??___ftpack+0)^080h+0
	movf	(??___ftpack+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(___ftpack@exp),f
	line	72
	
l5925:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l5927:	
	movlw	01h
u5085:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u5085

	line	74
	
l2292:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u5091
	goto	u5090
u5091:
	goto	l5923
u5090:
	goto	l5931
	
l2294:	
	line	75
	goto	l5931
	
l2296:	
	line	76
	
l5929:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u5105:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u5105
	goto	l5931
	line	78
	
l2295:	
	line	75
	
l5931:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u5111
	goto	u5110
u5111:
	goto	l5929
u5110:
	
l2297:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u5121
	goto	u5120
u5121:
	goto	l2298
u5120:
	line	80
	
l5933:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l2298:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l5935:	
	movf	(___ftpack@exp),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	((??___ftpack+0)^080h+0)
	clrf	((??___ftpack+0)^080h+0+1)
	clrf	((??___ftpack+0)^080h+0+2)
	movlw	010h
u5135:
	clrc
	rlf	(??___ftpack+0)^080h+0,f
	rlf	(??___ftpack+0)^080h+1,f
	rlf	(??___ftpack+0)^080h+2,f
u5130:
	addlw	-1
	skipz
	goto	u5135
	movf	0+(??___ftpack+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(___ftpack@arg),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??___ftpack+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(___ftpack@arg+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	2+(??___ftpack+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(___ftpack@arg+2),f
	line	83
	
l5937:	
	movf	(___ftpack@sign),w
	skipz
	goto	u5140
	goto	l2299
u5140:
	line	84
	
l5939:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2299:	
	line	85
	line	86
	
l2288:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text1336,local,class=CODE,delta=2
global __ptext1336
__ptext1336:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   25[BANK0 ] unsigned int 
;;  multiplicand    2   27[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    0[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   25[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       2       0       0
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
psect	text1336
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5899:	
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___wmul@product)^080h
	movlw	high(0)
	movwf	((___wmul@product)^080h)+1
	goto	l5901
	line	6
	
l1953:	
	line	7
	
l5901:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___wmul@multiplier),(0)&7
	goto	u5001
	goto	u5000
u5001:
	goto	l1954
u5000:
	line	8
	
l5903:	
	movf	(___wmul@multiplicand),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(___wmul@product)^080h,f
	skipnc
	incf	(___wmul@product+1)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___wmul@multiplicand+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(___wmul@product+1)^080h,f
	
l1954:	
	line	9
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	
u5015:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u5015
	line	10
	
l5905:	
	movlw	01h
	
u5025:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u5025
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u5031
	goto	u5030
u5031:
	goto	l5901
u5030:
	goto	l5907
	
l1955:	
	line	12
	
l5907:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___wmul@product+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___wmul@product)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1956
	
l5909:	
	line	13
	
l1956:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isprint
psect	text1337,local,class=CODE,delta=2
global __ptext1337
__ptext1337:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "../../common/isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   26[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text1337
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\isprint.c"
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 1
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isprint@c)
	line	14
	
l5887:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_isprint$1079)
	
l5889:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u4981
	goto	u4980
u4981:
	goto	l5895
u4980:
	
l5891:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u4991
	goto	u4990
u4991:
	goto	l5895
u4990:
	
l5893:	
	clrf	(_isprint$1079)
	bsf	status,0
	rlf	(_isprint$1079),f
	goto	l5895
	
l1943:	
	
l5895:	
	rrf	(_isprint$1079),w
	
	goto	l1944
	
l5897:	
	line	15
	
l1944:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_i2c_dly
psect	text1338,local,class=CODE,delta=2
global __ptext1338
__ptext1338:

;; *************** function _i2c_dly *****************
;; Defined at:
;;		line 111 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
psect	text1338
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	111
	global	__size_of_i2c_dly
	__size_of_i2c_dly	equ	__end_of_i2c_dly-_i2c_dly
	
_i2c_dly:	
	opt	stack 1
; Regs used in _i2c_dly: []
	line	113
	
l970:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_dly
	__end_of_i2c_dly:
;; =============== function _i2c_dly ends ============

	signat	_i2c_dly,88
	global	_uart_tx
psect	text1339,local,class=CODE,delta=2
global __ptext1339
__ptext1339:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 66 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   25[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_lux
;; This function uses a non-reentrant model
;;
psect	text1339
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	66
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 2
; Regs used in _uart_tx: [wreg]
;uart_tx@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uart_tx@data)
	line	67
	
l5881:	
;main.c: 67: TXREG =data;
	movf	(uart_tx@data),w
	movwf	(25)	;volatile
	line	68
;main.c: 68: while(TXIF==0);
	goto	l951
	
l952:	
	
l951:	
	btfss	(100/8),(100)&7
	goto	u4971
	goto	u4970
u4971:
	goto	l951
u4970:
	goto	l954
	
l953:	
	line	70
	
l954:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_uart_isr
psect	text1340,local,class=CODE,delta=2
global __ptext1340
__ptext1340:

;; *************** function _uart_isr *****************
;; Defined at:
;;		line 72 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1340
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
psect	text1340
	line	73
	
i1l4841:	
;main.c: 73: if(RCIE && RCIF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u319_21
	goto	u319_20
u319_21:
	goto	i1l4853
u319_20:
	
i1l4843:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u320_21
	goto	u320_20
u320_21:
	goto	i1l4853
u320_20:
	line	75
	
i1l4845:	
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
	
i1l4847:	
;main.c: 76: save++;
	movlw	(01h)
	movwf	(??_uart_isr+0)+0
	movf	(??_uart_isr+0)+0,w
	addwf	(_save),f
	line	77
	
i1l4849:	
;main.c: 77: if(save==7)
	movf	(_save),w
	xorlw	07h
	skipz
	goto	u321_21
	goto	u321_20
u321_21:
	goto	i1l4853
u321_20:
	line	79
	
i1l4851:	
;main.c: 78: {
;main.c: 79: save=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_save)
	goto	i1l4853
	line	81
	
i1l958:	
	goto	i1l4853
	line	82
	
i1l957:	
	line	83
	
i1l4853:	
;main.c: 81: }
;main.c: 82: }
;main.c: 83: if(T0IF && T0IE)
	btfss	(90/8),(90)&7
	goto	u322_21
	goto	u322_20
u322_21:
	goto	i1l961
u322_20:
	
i1l4855:	
	btfss	(93/8),(93)&7
	goto	u323_21
	goto	u323_20
u323_21:
	goto	i1l961
u323_20:
	line	85
	
i1l4857:	
;main.c: 84: {
;main.c: 85: T0IF=0;
	bcf	(90/8),(90)&7
	line	86
	
i1l4859:	
;main.c: 86: TMR0=131;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	87
;main.c: 87: k++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_k)^080h,f
	skipnc
	incf	(_k+1)^080h,f
	movlw	high(01h)
	addwf	(_k+1)^080h,f
	line	88
;main.c: 88: if(k==250)
	movlw	0FAh
	xorwf	(_k)^080h,w
	iorwf	(_k+1)^080h,w
	skipz
	goto	u324_21
	goto	u324_20
u324_21:
	goto	i1l961
u324_20:
	line	90
	
i1l4861:	
;main.c: 89: {
;main.c: 90: BH1750_read();
	fcall	_BH1750_read
	line	91
	
i1l4863:	
;main.c: 91: k=0;
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_k)^080h
	movlw	high(0)
	movwf	((_k)^080h)+1
	goto	i1l961
	line	94
	
i1l960:	
	goto	i1l961
	line	96
	
i1l959:	
	line	97
	
i1l961:	
	bcf	status, 5	;RP0=0, select bank0
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
	global	_BH1750_read
psect	text1341,local,class=CODE,delta=2
global __ptext1341
__ptext1341:

;; *************** function _BH1750_read *****************
;; Defined at:
;;		line 200 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  hb              1   19[BANK0 ] unsigned char 
;;  lb              1   18[BANK0 ] unsigned char 
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
psect	text1341
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	200
	global	__size_of_BH1750_read
	__size_of_BH1750_read	equ	__end_of_BH1750_read-_BH1750_read
	
_BH1750_read:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _BH1750_read: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	201
	
i1l4865:	
;main.c: 201: unsigned char lb = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(BH1750_read@lb)
	line	202
;main.c: 202: unsigned char hb = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(BH1750_read@hb)
	line	203
	
i1l4867:	
;main.c: 203: I2C_start();
	fcall	i1_I2C_start
	line	204
	
i1l4869:	
;main.c: 204: I2C_write(0x47);
	movlw	(047h)
	fcall	i1_I2C_write
	line	205
	
i1l4871:	
;main.c: 205: hb = I2C_read(1);
	movlw	(01h)
	fcall	_I2C_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_BH1750_read+0)+0
	movf	(??_BH1750_read+0)+0,w
	movwf	(BH1750_read@hb)
	line	206
	
i1l4873:	
;main.c: 206: lb = I2C_read(0);
	movlw	(0)
	fcall	_I2C_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_BH1750_read+0)+0
	movf	(??_BH1750_read+0)+0,w
	movwf	(BH1750_read@lb)
	line	207
	
i1l4875:	
;main.c: 207: I2C_stop();
	fcall	i1_I2C_stop
	line	208
	
i1l4877:	
;main.c: 208: value =(hb<<8)+lb;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(BH1750_read@hb),w
	movwf	(??_BH1750_read+0)+0
	clrf	(??_BH1750_read+0)+0+1
	movlw	08h
	movwf	btemp+1
u325_25:
	clrc
	rlf	(??_BH1750_read+0)+0,f
	rlf	(??_BH1750_read+0)+1,f
	decfsz	btemp+1,f
	goto	u325_25
	movf	(BH1750_read@lb),w
	addwf	0+(??_BH1750_read+0)+0,w
	movwf	(_value)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_BH1750_read+0)+0,w
	movwf	1+(_value)
	line	209
	
i1l4879:	
;main.c: 209: value1=(float)value/1.2;
	movlw	0x9a
	movwf	(?i1___ftdiv)
	movlw	0x99
	movwf	(?i1___ftdiv+1)
	movlw	0x3f
	movwf	(?i1___ftdiv+2)
	movf	(_value+1),w
	clrf	(?i1___awtoft+1)
	addwf	(?i1___awtoft+1)
	movf	(_value),w
	clrf	(?i1___awtoft)
	addwf	(?i1___awtoft)

	fcall	i1___awtoft
	movf	(0+(?i1___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	line	210
	
i1l1005:	
	return
	opt stack 0
GLOBAL	__end_of_BH1750_read
	__end_of_BH1750_read:
;; =============== function _BH1750_read ends ============

	signat	_BH1750_read,92
	global	i1___awtoft
psect	text1342,local,class=CODE,delta=2
global __ptext1342
__ptext1342:

;; *************** function i1___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  __awtoft        2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  __awtoft        1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___ftpack
;; This function is called by:
;;		_BH1750_read
;; This function uses a non-reentrant model
;;
psect	text1342
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
	line	33
	global	__size_ofi1___awtoft
	__size_ofi1___awtoft	equ	__end_ofi1___awtoft-i1___awtoft
	
i1___awtoft:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
i1l5245:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(i1___awtoft@sign)
	line	37
	
i1l5247:	
	btfss	(i1___awtoft@c+1),7
	goto	u396_21
	goto	u396_20
u396_21:
	goto	i1l5251
u396_20:
	line	38
	
i1l5249:	
	comf	(i1___awtoft@c),f
	comf	(i1___awtoft@c+1),f
	incf	(i1___awtoft@c),f
	skipnz
	incf	(i1___awtoft@c+1),f
	line	39
	clrf	(i1___awtoft@sign)
	bsf	status,0
	rlf	(i1___awtoft@sign),f
	goto	i1l5251
	line	40
	
i1l2089:	
	line	41
	
i1l5251:	
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
	movwf	(?i1___awtoft)
	movf	(1+(?i1___ftpack)),w
	movwf	(?i1___awtoft+1)
	movf	(2+(?i1___ftpack)),w
	movwf	(?i1___awtoft+2)
	goto	i1l2090
	
i1l5253:	
	line	42
	
i1l2090:	
	return
	opt stack 0
GLOBAL	__end_ofi1___awtoft
	__end_ofi1___awtoft:
;; =============== function i1___awtoft ends ============

	signat	i1___awtoft,91
	global	i1___ftdiv
psect	text1343,local,class=CODE,delta=2
global __ptext1343
__ptext1343:

;; *************** function i1___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  __ftdiv         3    0[BANK0 ] float 
;;  __ftdiv         3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  __ftdiv         3   11[BANK0 ] float 
;;  __ftdiv         1   15[BANK0 ] unsigned char 
;;  __ftdiv         1   14[BANK0 ] unsigned char 
;;  __ftdiv         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
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
;; This function uses a non-reentrant model
;;
psect	text1343
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_ofi1___ftdiv
	__size_ofi1___ftdiv	equ	__end_ofi1___ftdiv-i1___ftdiv
	
i1___ftdiv:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l5203:	
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
	goto	u388_21
	goto	u388_20
u388_21:
	goto	i1l5209
u388_20:
	line	56
	
i1l5205:	
	movlw	0x0
	movwf	(?i1___ftdiv)
	movlw	0x0
	movwf	(?i1___ftdiv+1)
	movlw	0x0
	movwf	(?i1___ftdiv+2)
	goto	i1l2042
	
i1l5207:	
	goto	i1l2042
	
i1l2041:	
	line	57
	
i1l5209:	
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
	goto	u389_21
	goto	u389_20
u389_21:
	goto	i1l5215
u389_20:
	line	58
	
i1l5211:	
	movlw	0x0
	movwf	(?i1___ftdiv)
	movlw	0x0
	movwf	(?i1___ftdiv+1)
	movlw	0x0
	movwf	(?i1___ftdiv+2)
	goto	i1l2042
	
i1l5213:	
	goto	i1l2042
	
i1l2043:	
	line	59
	
i1l5215:	
	movlw	0
	movwf	(i1___ftdiv@f3)
	movlw	0
	movwf	(i1___ftdiv@f3+1)
	movlw	0
	movwf	(i1___ftdiv@f3+2)
	line	60
	
i1l5217:	
	movlw	(089h)
	addwf	(i1___ftdiv@sign),w
	movwf	(??i1___ftdiv+0)+0
	movf	0+(??i1___ftdiv+0)+0,w
	subwf	(i1___ftdiv@exp),f
	line	61
	
i1l5219:	
	movf	(i1___ftdiv@f1),w
	movwf	((??i1___ftdiv+0)+0)
	movf	(i1___ftdiv@f1+1),w
	movwf	((??i1___ftdiv+0)+0+1)
	movf	(i1___ftdiv@f1+2),w
	movwf	((??i1___ftdiv+0)+0+2)
	movlw	010h
u390_25:
	clrc
	rrf	(??i1___ftdiv+0)+2,f
	rrf	(??i1___ftdiv+0)+1,f
	rrf	(??i1___ftdiv+0)+0,f
u390_20:
	addlw	-1
	skipz
	goto	u390_25
	movf	0+(??i1___ftdiv+0)+0,w
	movwf	(??i1___ftdiv+3)+0
	movf	(??i1___ftdiv+3)+0,w
	movwf	(i1___ftdiv@sign)
	line	62
	
i1l5221:	
	movf	(i1___ftdiv@f2),w
	movwf	((??i1___ftdiv+0)+0)
	movf	(i1___ftdiv@f2+1),w
	movwf	((??i1___ftdiv+0)+0+1)
	movf	(i1___ftdiv@f2+2),w
	movwf	((??i1___ftdiv+0)+0+2)
	movlw	010h
u391_25:
	clrc
	rrf	(??i1___ftdiv+0)+2,f
	rrf	(??i1___ftdiv+0)+1,f
	rrf	(??i1___ftdiv+0)+0,f
u391_20:
	addlw	-1
	skipz
	goto	u391_25
	movf	0+(??i1___ftdiv+0)+0,w
	movwf	(??i1___ftdiv+3)+0
	movf	(??i1___ftdiv+3)+0,w
	xorwf	(i1___ftdiv@sign),f
	line	63
	
i1l5223:	
	movlw	(080h)
	movwf	(??i1___ftdiv+0)+0
	movf	(??i1___ftdiv+0)+0,w
	andwf	(i1___ftdiv@sign),f
	line	64
	
i1l5225:	
	bsf	(i1___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(i1___ftdiv@f1),f
	movlw	0FFh
	andwf	(i1___ftdiv@f1+1),f
	movlw	0
	andwf	(i1___ftdiv@f1+2),f
	line	66
	
i1l5227:	
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
	goto	i1l5229
	line	69
	
i1l2044:	
	line	70
	
i1l5229:	
	movlw	01h
u392_25:
	clrc
	rlf	(i1___ftdiv@f3),f
	rlf	(i1___ftdiv@f3+1),f
	rlf	(i1___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u392_25
	line	71
	
i1l5231:	
	movf	(i1___ftdiv@f2+2),w
	subwf	(i1___ftdiv@f1+2),w
	skipz
	goto	u393_25
	movf	(i1___ftdiv@f2+1),w
	subwf	(i1___ftdiv@f1+1),w
	skipz
	goto	u393_25
	movf	(i1___ftdiv@f2),w
	subwf	(i1___ftdiv@f1),w
u393_25:
	skipc
	goto	u393_21
	goto	u393_20
u393_21:
	goto	i1l5237
u393_20:
	line	72
	
i1l5233:	
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
	
i1l5235:	
	bsf	(i1___ftdiv@f3)+(0/8),(0)&7
	goto	i1l5237
	line	74
	
i1l2045:	
	line	75
	
i1l5237:	
	movlw	01h
u394_25:
	clrc
	rlf	(i1___ftdiv@f1),f
	rlf	(i1___ftdiv@f1+1),f
	rlf	(i1___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u394_25
	line	76
	
i1l5239:	
	movlw	low(01h)
	subwf	(i1___ftdiv@cntr),f
	btfss	status,2
	goto	u395_21
	goto	u395_20
u395_21:
	goto	i1l5229
u395_20:
	goto	i1l5241
	
i1l2046:	
	line	77
	
i1l5241:	
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
	goto	i1l2042
	
i1l5243:	
	line	78
	
i1l2042:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftdiv
	__end_ofi1___ftdiv:
;; =============== function i1___ftdiv ends ============

	signat	i1___ftdiv,91
	global	i1_I2C_write
psect	text1344,local,class=CODE,delta=2
global __ptext1344
__ptext1344:

;; *************** function i1_I2C_write *****************
;; Defined at:
;;		line 161 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
psect	text1344
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	161
	global	__size_ofi1_I2C_write
	__size_ofi1_I2C_write	equ	__end_ofi1_I2C_write-i1_I2C_write
	
i1_I2C_write:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_I2C_write: [wreg+status,2+status,0+pclath+cstack]
;i1I2C_write@d stored from wreg
	line	164
	movwf	(i1I2C_write@d)
	
i1l5185:	
;main.c: 162: char x;
;main.c: 163: static bit b;
;main.c: 164: for(x=8; x; x--) {
	movlw	(08h)
	movwf	(??i1_I2C_write+0)+0
	movf	(??i1_I2C_write+0)+0,w
	movwf	(i1I2C_write@x)
	goto	i1l991
	
i1l992:	
	line	165
;main.c: 165: if(d&0x80) TRISC4 = 1;
	btfss	(i1I2C_write@d),(7)&7
	goto	u385_21
	goto	u385_20
u385_21:
	goto	i1l993
u385_20:
	
i1l5187:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	goto	i1l994
	line	166
	
i1l993:	
;main.c: 166: else TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	
i1l994:	
	line	167
;main.c: 167: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	168
	
i1l5189:	
;main.c: 168: d <<= 1;
	clrc
	rlf	(i1I2C_write@d),f

	line	169
	
i1l5191:	
;main.c: 169: TRISC3 = 0;
	bcf	(1083/8)^080h,(1083)&7
	line	164
	
i1l5193:	
	movlw	low(01h)
	subwf	(i1I2C_write@x),f
	
i1l991:	
	movf	(i1I2C_write@x),f
	skipz
	goto	u386_21
	goto	u386_20
u386_21:
	goto	i1l992
u386_20:
	
i1l995:	
	line	171
;main.c: 170: }
;main.c: 171: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	172
;main.c: 172: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	173
	
i1l5195:	
;main.c: 173: i2c_dly();
	fcall	i1_i2c_dly
	line	174
	
i1l5197:	
;main.c: 174: b = RC4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(I2C_write@b/8),(I2C_write@b)&7
	btfss	(60/8),(60)&7
	goto	u387_25
	bsf	(I2C_write@b/8),(I2C_write@b)&7
u387_25:

	line	176
	
i1l5199:	
;main.c: 176: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	goto	i1l996
	line	177
	
i1l5201:	
	line	178
;main.c: 177: return b;
;	Return value of i1_I2C_write is never used
	
i1l996:	
	return
	opt stack 0
GLOBAL	__end_ofi1_I2C_write
	__end_ofi1_I2C_write:
;; =============== function i1_I2C_write ends ============

	signat	i1_I2C_write,88
	global	i1_I2C_stop
psect	text1345,local,class=CODE,delta=2
global __ptext1345
__ptext1345:

;; *************** function i1_I2C_stop *****************
;; Defined at:
;;		line 127 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
psect	text1345
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	127
	global	__size_ofi1_I2C_stop
	__size_ofi1_I2C_stop	equ	__end_ofi1_I2C_stop-i1_I2C_stop
	
i1_I2C_stop:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_I2C_stop: [status,2+status,0+pclath+cstack]
	line	128
	
i1l5177:	
;main.c: 128: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	129
	
i1l5179:	
;main.c: 129: i2c_dly();
	fcall	i1_i2c_dly
	line	130
	
i1l5181:	
;main.c: 130: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	131
;main.c: 131: i2c_dly();
	fcall	i1_i2c_dly
	line	132
	
i1l5183:	
;main.c: 132: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	133
;main.c: 133: i2c_dly();
	fcall	i1_i2c_dly
	line	134
	
i1l976:	
	return
	opt stack 0
GLOBAL	__end_ofi1_I2C_stop
	__end_ofi1_I2C_stop:
;; =============== function i1_I2C_stop ends ============

	signat	i1_I2C_stop,88
	global	i1_I2C_start
psect	text1346,local,class=CODE,delta=2
global __ptext1346
__ptext1346:

;; *************** function i1_I2C_start *****************
;; Defined at:
;;		line 115 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
psect	text1346
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	115
	global	__size_ofi1_I2C_start
	__size_ofi1_I2C_start	equ	__end_ofi1_I2C_start-i1_I2C_start
	
i1_I2C_start:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_I2C_start: [status,2+status,0+pclath+cstack]
	line	116
	
i1l5167:	
;main.c: 116: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	117
	
i1l5169:	
;main.c: 117: i2c_dly();
	fcall	i1_i2c_dly
	line	118
	
i1l5171:	
;main.c: 118: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	119
;main.c: 119: i2c_dly();
	fcall	i1_i2c_dly
	line	120
	
i1l5173:	
;main.c: 120: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	121
;main.c: 121: i2c_dly();
	fcall	i1_i2c_dly
	line	122
	
i1l5175:	
;main.c: 122: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	123
;main.c: 123: i2c_dly();
	fcall	i1_i2c_dly
	line	124
	
i1l973:	
	return
	opt stack 0
GLOBAL	__end_ofi1_I2C_start
	__end_ofi1_I2C_start:
;; =============== function i1_I2C_start ends ============

	signat	i1_I2C_start,88
	global	_I2C_read
psect	text1347,local,class=CODE,delta=2
global __ptext1347
__ptext1347:

;; *************** function _I2C_read *****************
;; Defined at:
;;		line 136 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
psect	text1347
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	136
	global	__size_of_I2C_read
	__size_of_I2C_read	equ	__end_of_I2C_read-_I2C_read
	
_I2C_read:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in _I2C_read: [wreg+status,2+status,0+pclath+cstack]
;I2C_read@ack stored from wreg
	movwf	(I2C_read@ack)
	line	137
	
i1l4881:	
;main.c: 137: char x, d=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(I2C_read@d)
	line	138
	
i1l4883:	
;main.c: 138: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	139
;main.c: 139: for(x=0; x<8; x++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(I2C_read@x)
	
i1l4885:	
	movlw	(08h)
	subwf	(I2C_read@x),w
	skipc
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l4889
u326_20:
	goto	i1l4905
	
i1l4887:	
	goto	i1l4905
	line	140
	
i1l979:	
	line	141
	
i1l4889:	
;main.c: 140: {
;main.c: 141: d <<= 1;
	clrc
	rlf	(I2C_read@d),f

	goto	i1l4891
	line	142
;main.c: 142: do
	
i1l981:	
	line	144
	
i1l4891:	
;main.c: 143: {
;main.c: 144: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	145
	
i1l4893:	
;main.c: 145: }while(RC3==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l4891
u327_20:
	goto	i1l4895
	
i1l982:	
	line	147
	
i1l4895:	
;main.c: 147: i2c_dly();
	fcall	i1_i2c_dly
	line	148
	
i1l4897:	
;main.c: 148: if(RC4) d |= 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u328_21
	goto	u328_20
u328_21:
	goto	i1l983
u328_20:
	
i1l4899:	
	bsf	(I2C_read@d)+(0/8),(0)&7
	
i1l983:	
	line	149
;main.c: 149: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	139
	
i1l4901:	
	movlw	(01h)
	movwf	(??_I2C_read+0)+0
	movf	(??_I2C_read+0)+0,w
	addwf	(I2C_read@x),f
	
i1l4903:	
	movlw	(08h)
	subwf	(I2C_read@x),w
	skipc
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l4889
u329_20:
	goto	i1l4905
	
i1l980:	
	line	151
	
i1l4905:	
;main.c: 150: }
;main.c: 151: if(ack) TRISC4 = 0;
	movf	(I2C_read@ack),w
	skipz
	goto	u330_20
	goto	i1l984
u330_20:
	
i1l4907:	
	bcf	(1084/8)^080h,(1084)&7
	goto	i1l985
	line	152
	
i1l984:	
;main.c: 152: else TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	
i1l985:	
	line	153
;main.c: 153: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	154
	
i1l4909:	
;main.c: 154: i2c_dly();
	fcall	i1_i2c_dly
	line	155
	
i1l4911:	
;main.c: 155: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	156
	
i1l4913:	
;main.c: 156: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	line	157
	
i1l4915:	
;main.c: 157: return d;
	movf	(I2C_read@d),w
	goto	i1l986
	
i1l4917:	
	line	158
	
i1l986:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_read
	__end_of_I2C_read:
;; =============== function _I2C_read ends ============

	signat	_I2C_read,4217
	global	i1___ftpack
psect	text1348,local,class=CODE,delta=2
global __ptext1348
__ptext1348:

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
;;		i1___ftdiv
;;		i1___awtoft
;; This function uses a non-reentrant model
;;
psect	text1348
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_ofi1___ftpack
	__size_ofi1___ftpack	equ	__end_ofi1___ftpack-i1___ftpack
	
i1___ftpack:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l5255:	
	movf	(i1___ftpack@exp),w
	skipz
	goto	u397_20
	goto	i1l5259
u397_20:
	
i1l5257:	
	movf	(i1___ftpack@arg+2),w
	iorwf	(i1___ftpack@arg+1),w
	iorwf	(i1___ftpack@arg),w
	skipz
	goto	u398_21
	goto	u398_20
u398_21:
	goto	i1l5265
u398_20:
	goto	i1l5259
	
i1l2287:	
	line	65
	
i1l5259:	
	movlw	0x0
	movwf	(?i1___ftpack)
	movlw	0x0
	movwf	(?i1___ftpack+1)
	movlw	0x0
	movwf	(?i1___ftpack+2)
	goto	i1l2288
	
i1l5261:	
	goto	i1l2288
	
i1l2285:	
	line	66
	goto	i1l5265
	
i1l2290:	
	line	67
	
i1l5263:	
	movlw	(01h)
	movwf	(??i1___ftpack+0)+0
	movf	(??i1___ftpack+0)+0,w
	addwf	(i1___ftpack@exp),f
	line	68
	movlw	01h
u399_25:
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	addlw	-1
	skipz
	goto	u399_25

	goto	i1l5265
	line	69
	
i1l2289:	
	line	66
	
i1l5265:	
	movlw	low highword(0FE0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u400_21
	goto	u400_20
u400_21:
	goto	i1l5263
u400_20:
	goto	i1l2292
	
i1l2291:	
	line	70
	goto	i1l2292
	
i1l2293:	
	line	71
	
i1l5267:	
	movlw	(01h)
	movwf	(??i1___ftpack+0)+0
	movf	(??i1___ftpack+0)+0,w
	addwf	(i1___ftpack@exp),f
	line	72
	
i1l5269:	
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
	
i1l5271:	
	movlw	01h
u401_25:
	clrc
	rrf	(i1___ftpack@arg+2),f
	rrf	(i1___ftpack@arg+1),f
	rrf	(i1___ftpack@arg),f
	addlw	-1
	skipz
	goto	u401_25

	line	74
	
i1l2292:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(i1___ftpack@arg+2),w
	btfss	status,2
	goto	u402_21
	goto	u402_20
u402_21:
	goto	i1l5267
u402_20:
	goto	i1l5275
	
i1l2294:	
	line	75
	goto	i1l5275
	
i1l2296:	
	line	76
	
i1l5273:	
	movlw	low(01h)
	subwf	(i1___ftpack@exp),f
	line	77
	movlw	01h
u403_25:
	clrc
	rlf	(i1___ftpack@arg),f
	rlf	(i1___ftpack@arg+1),f
	rlf	(i1___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u403_25
	goto	i1l5275
	line	78
	
i1l2295:	
	line	75
	
i1l5275:	
	btfss	(i1___ftpack@arg+1),(15)&7
	goto	u404_21
	goto	u404_20
u404_21:
	goto	i1l5273
u404_20:
	
i1l2297:	
	line	79
	btfsc	(i1___ftpack@exp),(0)&7
	goto	u405_21
	goto	u405_20
u405_21:
	goto	i1l2298
u405_20:
	line	80
	
i1l5277:	
	movlw	0FFh
	andwf	(i1___ftpack@arg),f
	movlw	07Fh
	andwf	(i1___ftpack@arg+1),f
	movlw	0FFh
	andwf	(i1___ftpack@arg+2),f
	
i1l2298:	
	line	81
	clrc
	rrf	(i1___ftpack@exp),f

	line	82
	
i1l5279:	
	movf	(i1___ftpack@exp),w
	movwf	((??i1___ftpack+0)+0)
	clrf	((??i1___ftpack+0)+0+1)
	clrf	((??i1___ftpack+0)+0+2)
	movlw	010h
u406_25:
	clrc
	rlf	(??i1___ftpack+0)+0,f
	rlf	(??i1___ftpack+0)+1,f
	rlf	(??i1___ftpack+0)+2,f
u406_20:
	addlw	-1
	skipz
	goto	u406_25
	movf	0+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg),f
	movf	1+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+1),f
	movf	2+(??i1___ftpack+0)+0,w
	iorwf	(i1___ftpack@arg+2),f
	line	83
	
i1l5281:	
	movf	(i1___ftpack@sign),w
	skipz
	goto	u407_20
	goto	i1l2299
u407_20:
	line	84
	
i1l5283:	
	bsf	(i1___ftpack@arg)+(23/8),(23)&7
	
i1l2299:	
	line	85
	line	86
	
i1l2288:	
	return
	opt stack 0
GLOBAL	__end_ofi1___ftpack
	__end_ofi1___ftpack:
;; =============== function i1___ftpack ends ============

	signat	i1___ftpack,91
	global	i1_i2c_dly
psect	text1349,local,class=CODE,delta=2
global __ptext1349
__ptext1349:

;; *************** function i1_i2c_dly *****************
;; Defined at:
;;		line 111 in file "C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
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
psect	text1349
	file	"C:\Users\Administrator\Desktop\CODE2-ACE5\CODE MPLAP\main.c"
	line	111
	global	__size_ofi1_i2c_dly
	__size_ofi1_i2c_dly	equ	__end_ofi1_i2c_dly-i1_i2c_dly
	
i1_i2c_dly:	
;; hardware stack exceeded
	opt	stack 0
; Regs used in i1_i2c_dly: []
	line	113
	
i1l970:	
	return
	opt stack 0
GLOBAL	__end_ofi1_i2c_dly
	__end_ofi1_i2c_dly:
;; =============== function i1_i2c_dly ends ============

	signat	i1_i2c_dly,88
psect	text1350,local,class=CODE,delta=2
global __ptext1350
__ptext1350:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
