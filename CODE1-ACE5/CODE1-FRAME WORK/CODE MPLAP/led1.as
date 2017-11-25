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
# 6 "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	dw 0x3FFA & 0x3FF7 & 0x3FEF & 0x3FFF & 0x3FFF & 0x3FFF & 0x3CFF & 0x3BFF & 0x37FF & 0x2FFF ;#
	FNCALL	_main,_lcd_init
	FNCALL	_main,_delay_ms
	FNCALL	_main,_BH1750_write
	FNCALL	_main,_BH1750_read
	FNCALL	_main,_xu_ly_lux
	FNCALL	_main,_send_lux
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
	FNCALL	_lcd_puts,_lcd_putc
	FNCALL	_lcd_putc,_lcd_put_byte
	FNCALL	_lcd_putc,_lcd_busy
	FNCALL	_lcd_putc,_lcd_gotoxy
	FNCALL	_lcd_putc,_isprint
	FNCALL	_lcd_init,_lcd_put_byte
	FNCALL	_lcd_init,_lcd_busy
	FNCALL	_send_lux,___ftmul
	FNCALL	_send_lux,___fttol
	FNCALL	_send_lux,___awdiv
	FNCALL	_send_lux,___awmod
	FNCALL	_send_lux,_uart_tx
	FNCALL	_send_lux,_delay_ms
	FNCALL	_lcd_gotoxy,_lcd_put_byte
	FNCALL	_lcd_gotoxy,_lcd_busy
	FNCALL	_BH1750_read,_I2C_start
	FNCALL	_BH1750_read,_I2C_write
	FNCALL	_BH1750_read,_I2C_read
	FNCALL	_BH1750_read,_I2C_stop
	FNCALL	_BH1750_read,___awtoft
	FNCALL	_BH1750_read,___ftdiv
	FNCALL	_BH1750_write,_I2C_start
	FNCALL	_BH1750_write,_I2C_write
	FNCALL	_BH1750_write,_I2C_stop
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_I2C_write,_i2c_dly
	FNCALL	_I2C_read,_i2c_dly
	FNCALL	_I2C_stop,_i2c_dly
	FNCALL	_I2C_start,_i2c_dly
	FNROOT	_main
	FNCALL	intlevel1,_uart_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_flux1
	global	_value2
	global	_biennt2
	global	_chuc
	global	_chuc1
	global	_chuc2
	global	_chuclux
	global	_dvi
	global	_dvi1
	global	_dvilux
	global	_nghin
	global	_nghin1
	global	_nghinlux
	global	_nt1
	global	_nt2
	global	_tram
	global	_tram1
	global	_tramlux
	global	_biennt1
	global	_check1
	global	_dosang1
	global	_save
	global	I2C_write@b
	global	_check
	global	_dosang
	global	_err
	global	_kd1
	global	_ki1
	global	_kp1
	global	_nhietdo
	global	_value1
	global	_flux2
	global	_fnt1
	global	_fnt2
	global	_k
	global	_kp5
	global	_kq
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
	global	_dvi2
	global	_CCP1CON
psect	text985,local,class=CODE,delta=2
global __ptext985
__ptext985:
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

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
I2C_write@b:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_biennt1:
       ds      1

_check1:
       ds      1

_dosang1:
       ds      1

_save:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_flux1:
       ds      2

_value2:
       ds      2

_biennt2:
       ds      1

_chuc:
       ds      1

_chuc1:
       ds      1

_chuc2:
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

_nghin1:
       ds      1

_nghinlux:
       ds      1

_nt1:
       ds      1

_nt2:
       ds      1

_tram:
       ds      1

_tram1:
       ds      1

_tramlux:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
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

_nhietdo:
       ds      3

_value1:
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

_kq:
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

_dvi2:
       ds      1

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

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+014h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+047h)
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
	global	??_xu_ly_lux
??_xu_ly_lux:	; 0 bytes @ 0x0
	global	??_send_lux
??_send_lux:	; 0 bytes @ 0x0
	ds	1
	global	_xu_ly_lux$1403
_xu_ly_lux$1403:	; 2 bytes @ 0x1
	global	_send_lux$1404
_send_lux$1404:	; 2 bytes @ 0x1
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x3
	ds	1
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
	global	??_uart_isr
??_uart_isr:	; 0 bytes @ 0x0
	global	?_i2c_dly
?_i2c_dly:	; 0 bytes @ 0x0
	global	?_I2C_start
?_I2C_start:	; 0 bytes @ 0x0
	global	?_I2C_stop
?_I2C_stop:	; 0 bytes @ 0x0
	global	?_I2C_write
?_I2C_write:	; 1 bit 
	global	?_xu_ly_lux
?_xu_ly_lux:	; 0 bytes @ 0x0
	global	?_send_lux
?_send_lux:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lcd_busy
?_lcd_busy:	; 1 bytes @ 0x0
	global	?_I2C_read
?_I2C_read:	; 1 bytes @ 0x0
	global	?_BH1750_read
?_BH1750_read:	; 4 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
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
	global	??_I2C_read
??_I2C_read:	; 0 bytes @ 0x0
	global	??_I2C_write
??_I2C_write:	; 0 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	uart_tx@data
uart_tx@data:	; 1 bytes @ 0x0
	global	lcd_put_byte@b
lcd_put_byte@b:	; 1 bytes @ 0x0
	global	_isprint$1046
_isprint$1046:	; 1 bytes @ 0x0
	global	delay_ms@x
delay_ms@x:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??_lcd_put_byte
??_lcd_put_byte:	; 0 bytes @ 0x1
	global	I2C_read@ack
I2C_read@ack:	; 1 bytes @ 0x1
	global	I2C_write@d
I2C_write@d:	; 1 bytes @ 0x1
	global	lcd_busy@busy
lcd_busy@busy:	; 1 bytes @ 0x1
	global	isprint@c
isprint@c:	; 1 bytes @ 0x1
	ds	1
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x2
	global	I2C_read@d
I2C_read@d:	; 1 bytes @ 0x2
	global	I2C_write@x
I2C_write@x:	; 1 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	?_BH1750_write
?_BH1750_write:	; 0 bytes @ 0x3
	global	I2C_read@x
I2C_read@x:	; 1 bytes @ 0x3
	global	lcd_put_byte@rs
lcd_put_byte@rs:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x3
	ds	1
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_put_byte@temp
lcd_put_byte@temp:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
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
	global	??_BH1750_read
??_BH1750_read:	; 0 bytes @ 0x2F
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x2F
	ds	2
	global	BH1750_read@lb
BH1750_read@lb:	; 1 bytes @ 0x31
	ds	1
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x32
	global	BH1750_read@hb
BH1750_read@hb:	; 1 bytes @ 0x32
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
;;Data sizes: Strings 6, constant 0, data 0, bss 95, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80     60      80
;; BANK1           80      4      75
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 6
;;		 -> STR_1(CODE[6]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _uart_isr in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _xu_ly_lux->___ftmul
;;   _lcd_puts->_lcd_putc
;;   _lcd_putc->_lcd_gotoxy
;;   _lcd_init->_lcd_put_byte
;;   _send_lux->___ftmul
;;   _lcd_gotoxy->_lcd_put_byte
;;   _BH1750_read->___ftdiv
;;   _BH1750_write->_I2C_write
;;   ___awtoft->___fttol
;;   ___ftmul->___ftadd
;;   ___ftdiv->___awtoft
;;   ___ftadd->___awtoft
;;   ___ftneg->___ftpack
;;   ___awdiv->___awmod
;;   ___fttol->___ftneg
;;
;; Critical Paths under _uart_isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_xu_ly_lux
;;   _main->_send_lux
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
;; (0) _main                                                 1     1      0   11549
;;                                              3 BANK1      1     1      0
;;                           _lcd_init
;;                           _delay_ms
;;                       _BH1750_write
;;                        _BH1750_read
;;                          _xu_ly_lux
;;                           _send_lux
;; ---------------------------------------------------------------------------------
;; (1) _xu_ly_lux                                            3     3      0    7420
;;                                              0 BANK1      3     3      0
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
;; (2) _lcd_puts                                             2     2      0    1053
;;                                             11 BANK0      2     2      0
;;                           _lcd_putc
;; ---------------------------------------------------------------------------------
;; (2) _lcd_putc                                             2     2      0     988
;;                                              9 BANK0      2     2      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;;                         _lcd_gotoxy
;;                            _isprint
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     347
;;                                              5 BANK0      2     2      0
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _send_lux                                             3     3      0    2182
;;                                              0 BANK1      3     3      0
;;                            ___ftmul
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                            _uart_tx
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (3) _lcd_gotoxy                                           4     3      1     449
;;                                              5 BANK0      4     3      1
;;                       _lcd_put_byte
;;                           _lcd_busy
;; ---------------------------------------------------------------------------------
;; (1) _BH1750_read                                          4     4      0    1461
;;                                             47 BANK0      4     4      0
;;                          _I2C_start
;;                          _I2C_write
;;                           _I2C_read
;;                           _I2C_stop
;;                           ___awtoft
;;                            ___ftdiv
;; ---------------------------------------------------------------------------------
;; (1) _BH1750_write                                         2     0      2      71
;;                                              3 BANK0      2     0      2
;;                          _I2C_start
;;                          _I2C_write
;;                           _I2C_stop
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     445
;;                                             25 BANK0      6     3      3
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     800
;;                                             44 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftadd (ARG)
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             16    10      6     732
;;                                             31 BANK0     16    10      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             13     7      6    1537
;;                                             31 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _lcd_busy                                             2     2      0      34
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (4) _lcd_put_byte                                         5     4      1     313
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (2) _I2C_write                                            3     3      0      71
;;                                              0 BANK0      3     3      0
;;                            _i2c_dly
;; ---------------------------------------------------------------------------------
;; (2) _I2C_read                                             4     4      0     139
;;                                              0 BANK0      4     4      0
;;                            _i2c_dly
;; ---------------------------------------------------------------------------------
;; (2) _I2C_stop                                             0     0      0       0
;;                            _i2c_dly
;; ---------------------------------------------------------------------------------
;; (2) _I2C_start                                            0     0      0       0
;;                            _i2c_dly
;; ---------------------------------------------------------------------------------
;; (2) _delay_ms                                             5     3      2      68
;;                                              0 BANK0      5     3      2
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     433
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      65
;;                                              8 BANK0      3     0      3
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     445
;;                                              7 BANK0      9     5      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             14    10      4     371
;;                                             11 BANK0     14    10      4
;;                           ___ftpack (ARG)
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     312
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (3) _isprint                                              2     2      0      99
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _i2c_dly                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _uart_tx                                              1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _uart_isr                                             5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
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
;;   _BH1750_read
;;     _I2C_start
;;       _i2c_dly
;;     _I2C_write
;;       _i2c_dly
;;     _I2C_read
;;       _i2c_dly
;;     _I2C_stop
;;       _i2c_dly
;;     ___awtoft
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
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
;;
;; _uart_isr (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      A5       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3C      50       5      100.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      4      4B       7       93.8%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      AA      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 256 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_init
;;		_delay_ms
;;		_BH1750_write
;;		_BH1750_read
;;		_xu_ly_lux
;;		_send_lux
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	256
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	258
	
l5624:	
;main.c: 258: ANSEL=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	259
;main.c: 259: ANSELH=0;
	clrf	(393)^0180h	;volatile
	line	260
	
l5626:	
;main.c: 260: lcd_init();
	fcall	_lcd_init
	line	262
	
l5628:	
;main.c: 262: SPBRGH=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(154)^080h	;volatile
	line	263
	
l5630:	
;main.c: 263: BRG16=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3131/8)^0180h,(3131)&7
	line	264
	
l5632:	
;main.c: 264: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	265
	
l5634:	
;main.c: 265: TXSTA=0x20;
	movlw	(020h)
	movwf	(152)^080h	;volatile
	line	266
	
l5636:	
;main.c: 266: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	267
	
l5638:	
;main.c: 267: SYNC=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	268
	
l5640:	
;main.c: 268: c=RCREG;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(_c)^080h
	line	269
	
l5642:	
;main.c: 269: RCIE=1;
	bsf	(1125/8)^080h,(1125)&7
	line	270
	
l5644:	
;main.c: 270: PEIE=1;
	bsf	(94/8),(94)&7
	line	271
	
l5646:	
;main.c: 271: GIE=1;
	bsf	(95/8),(95)&7
	line	273
	
l5648:	
;main.c: 273: PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	274
	
l5650:	
;main.c: 274: TRISC1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	275
	
l5652:	
;main.c: 275: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	276
	
l5654:	
;main.c: 276: CCP1CON=0X0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	277
	
l5656:	
;main.c: 277: T2CON=0X01;
	movlw	(01h)
	movwf	(18)	;volatile
	line	278
	
l5658:	
;main.c: 278: TMR2ON=1;
	bsf	(146/8),(146)&7
	line	279
	
l5660:	
;main.c: 279: PR2=255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	281
	
l5662:	
;main.c: 281: ANS2=1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3138/8)^0180h,(3138)&7
	line	282
	
l5664:	
;main.c: 282: VCFG0=VCFG1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1277/8)^080h,(1277)&7
	bcf	(1276/8)^080h,(1276)&7
	line	283
	
l5666:	
;main.c: 283: ADCS0=ADCS1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(255/8),(255)&7
	btfsc	(255/8),(255)&7
	goto	u5561
	goto	u5560
	
u5561:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(254/8),(254)&7
	goto	u5574
u5560:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(254/8),(254)&7
u5574:
	line	284
	
l5668:	
;main.c: 284: ADFM=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1279/8)^080h,(1279)&7
	line	285
	
l5670:	
;main.c: 285: CHS3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	286
	
l5672:	
;main.c: 286: CHS2=0;
	bcf	(252/8),(252)&7
	line	287
	
l5674:	
;main.c: 287: CHS1=1;
	bsf	(251/8),(251)&7
	line	288
	
l5676:	
;main.c: 288: CHS0=0;
	bcf	(250/8),(250)&7
	line	289
	
l5678:	
;main.c: 289: ADON=1;
	bsf	(248/8),(248)&7
	line	291
	
l5680:	
;main.c: 291: T0CS=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	292
	
l5682:	
;main.c: 292: PSA=0;
	bcf	(1035/8)^080h,(1035)&7
	line	293
	
l5684:	
;main.c: 293: T0SE=1;
	bsf	(1036/8)^080h,(1036)&7
	line	294
	
l5686:	
;main.c: 294: PS0=PS2=0;
	bcf	(1034/8)^080h,(1034)&7
	bcf	(1032/8)^080h,(1032)&7
	line	295
	
l5688:	
;main.c: 295: PS1=1;
	bsf	(1033/8)^080h,(1033)&7
	line	296
	
l5690:	
;main.c: 296: TMR0=131;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	297
	
l5692:	
;main.c: 297: T0IE=1;
	bsf	(93/8),(93)&7
	line	298
	
l5694:	
;main.c: 298: delay_ms(1000);
	movlw	low(03E8h)
	movwf	(?_delay_ms)
	movlw	high(03E8h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	299
	
l5696:	
;main.c: 299: BH1750_write();
	fcall	_BH1750_write
	goto	l5698
	line	301
;main.c: 301: while(1)
	
l1017:	
	line	303
	
l5698:	
;main.c: 302: {
;main.c: 303: delay_ms(200);
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay_ms)
	movlw	high(0C8h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	304
	
l5700:	
;main.c: 304: BH1750_read();
	fcall	_BH1750_read
	line	305
	
l5702:	
;main.c: 305: xu_ly_lux();
	fcall	_xu_ly_lux
	line	306
	
l5704:	
;main.c: 306: send_lux();
	fcall	_send_lux
	goto	l5698
	line	307
	
l1018:	
	line	301
	goto	l5698
	
l1019:	
	line	308
	
l1020:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_xu_ly_lux
psect	text986,local,class=CODE,delta=2
global __ptext986
__ptext986:

;; *************** function _xu_ly_lux *****************
;; Defined at:
;;		line 208 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
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
;; Hardware stack levels required when called:    5
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
psect	text986
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	208
	global	__size_of_xu_ly_lux
	__size_of_xu_ly_lux	equ	__end_of_xu_ly_lux-_xu_ly_lux
	
_xu_ly_lux:	
	opt	stack 2
; Regs used in _xu_ly_lux: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	209
	
l5592:	
;main.c: 209: lcd_gotoxy(0, 1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_gotoxy)
	bsf	status,0
	rlf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	210
	
l5594:	
;main.c: 210: lcd_puts("lux: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_puts
	line	211
	
l5596:	
;main.c: 211: lcd_gotoxy(6, 1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_gotoxy)
	bsf	status,0
	rlf	(?_lcd_gotoxy),f
	movlw	(06h)
	fcall	_lcd_gotoxy
	line	212
;main.c: 212: lcd_putc(nghin);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_nghin),w
	fcall	_lcd_putc
	line	213
;main.c: 213: lcd_putc(tram);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tram),w
	fcall	_lcd_putc
	line	214
;main.c: 214: lcd_putc(chuc);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_chuc),w
	fcall	_lcd_putc
	line	215
;main.c: 215: lcd_putc(dvi);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dvi),w
	fcall	_lcd_putc
	line	216
;main.c: 216: lcd_putc('.');
	movlw	(02Eh)
	fcall	_lcd_putc
	line	217
;main.c: 217: lcd_putc(chuc1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_chuc1),w
	fcall	_lcd_putc
	line	218
;main.c: 218: lcd_putc(dvi1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dvi1),w
	fcall	_lcd_putc
	line	219
;main.c: 219: lcd_putc(dvi1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dvi1),w
	fcall	_lcd_putc
	line	220
	
l5598:	
;main.c: 220: delay_ms(300);
	movlw	low(012Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay_ms)
	movlw	high(012Ch)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	221
	
l5600:	
;main.c: 221: flux1=value1/1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftdiv)+03h
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x80
	movwf	(?___ftdiv+1)
	movlw	0x3f
	movwf	(?___ftdiv+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?___fttol)
	movf	(1+(?___ftdiv)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(_flux1+1)
	addwf	(_flux1+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(_flux1)
	addwf	(_flux1)

	line	222
	
l5602:	
;main.c: 222: nghin=(flux1/1000)+48;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(_flux1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_flux1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_nghin)
	line	223
	
l5604:	
;main.c: 223: tram=((flux1%1000)/100)+48;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_flux1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_flux1),w
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
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_tram)
	line	224
	
l5606:	
;main.c: 224: chuc=(((flux1%1000)%100)/10)+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_flux1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_flux1),w
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
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_chuc)
	line	225
	
l5608:	
;main.c: 225: dvi=(((flux1%1000)%100)%10)+48;
	movf	(_flux1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_flux1),w
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
	clrf	(_xu_ly_lux$1403+1)^080h
	addwf	(_xu_ly_lux$1403+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_xu_ly_lux$1403)^080h
	addwf	(_xu_ly_lux$1403)^080h

	
l5610:	
;main.c: 225: dvi=(((flux1%1000)%100)%10)+48;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_xu_ly_lux$1403+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_xu_ly_lux$1403)^080h,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dvi)
	line	226
	
l5612:	
;main.c: 226: for(m=0;m<2;m++)
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_m)^080h
	movlw	high(0)
	movwf	((_m)^080h)+1
	
l5614:	
	movf	(_m+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5545
	movlw	low(02h)
	subwf	(_m)^080h,w
u5545:

	skipc
	goto	u5541
	goto	u5540
u5541:
	goto	l5618
u5540:
	goto	l1008
	
l5616:	
	goto	l1008
	line	227
	
l1006:	
	line	228
	
l5618:	
;main.c: 227: {
;main.c: 228: flux2=(value1-flux1)*10;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_flux1+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(_flux1),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftneg)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftneg+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftadd)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftadd)),w
	movwf	2+(?___ftmul)+03h
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x20
	movwf	(?___ftmul+1)
	movlw	0x41
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_flux2+1)^080h
	addwf	(_flux2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_flux2)^080h
	addwf	(_flux2)^080h

	line	229
;main.c: 229: chuc1=(flux2%10)+48;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_chuc1)
	line	230
;main.c: 230: dvi1=(flux2/10)+48;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_flux2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_flux2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_xu_ly_lux+0)^080h+0
	movf	(??_xu_ly_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dvi1)
	line	226
	
l5620:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_m)^080h,f
	skipnc
	incf	(_m+1)^080h,f
	movlw	high(01h)
	addwf	(_m+1)^080h,f
	
l5622:	
	movf	(_m+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5555
	movlw	low(02h)
	subwf	(_m)^080h,w
u5555:

	skipc
	goto	u5551
	goto	u5550
u5551:
	goto	l5618
u5550:
	goto	l1008
	
l1007:	
	line	232
	
l1008:	
	return
	opt stack 0
GLOBAL	__end_of_xu_ly_lux
	__end_of_xu_ly_lux:
;; =============== function _xu_ly_lux ends ============

	signat	_xu_ly_lux,88
	global	_lcd_puts
psect	text987,local,class=CODE,delta=2
global __ptext987
__ptext987:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 175 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  s               1   12[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(6), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_putc
;; This function is called by:
;;		_xu_ly_lux
;; This function uses a non-reentrant model
;;
psect	text987
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
	line	175
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 2
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_puts@s)
	line	176
	
l5584:	
;lcd.c: 176: while(*s){
	goto	l5590
	
l1924:	
	line	177
	
l5586:	
;lcd.c: 177: lcd_putc(*s++);
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_putc
	
l5588:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_puts+0)+0
	movf	(??_lcd_puts+0)+0,w
	addwf	(lcd_puts@s),f
	goto	l5590
	line	178
	
l1923:	
	line	176
	
l5590:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u5531
	goto	u5530
u5531:
	goto	l5586
u5530:
	goto	l1926
	
l1925:	
	line	179
	
l1926:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_putc
psect	text988,local,class=CODE,delta=2
global __ptext988
__ptext988:

;; *************** function _lcd_putc *****************
;; Defined at:
;;		line 143 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   10[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;;		_lcd_gotoxy
;;		_isprint
;; This function is called by:
;;		_xu_ly_lux
;;		_lcd_puts
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text988
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
	line	143
	global	__size_of_lcd_putc
	__size_of_lcd_putc	equ	__end_of_lcd_putc-_lcd_putc
	
_lcd_putc:	
	opt	stack 3
; Regs used in _lcd_putc: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_putc@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_putc@c)
	line	144
	
l5566:	
;lcd.c: 144: switch(c){
	goto	l5582
	line	145
;lcd.c: 145: case '\f':
	
l1901:	
	line	146
	
l5568:	
;lcd.c: 146: lcd_put_byte(0, 1);
	clrf	(?_lcd_put_byte)
	bsf	status,0
	rlf	(?_lcd_put_byte),f
	movlw	(0)
	fcall	_lcd_put_byte
	line	147
;lcd.c: 147: while(lcd_busy());
	goto	l5570
	
l1903:	
	goto	l5570
	
l1902:	
	
l5570:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5501
	goto	u5500
u5501:
	goto	l5570
u5500:
	goto	l1912
	
l1904:	
	line	148
;lcd.c: 148: break;
	goto	l1912
	line	149
;lcd.c: 149: case '\n':
	
l1906:	
	line	150
	
l5572:	
;lcd.c: 150: lcd_gotoxy(0, 1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_lcd_gotoxy)
	bsf	status,0
	rlf	(?_lcd_gotoxy),f
	movlw	(0)
	fcall	_lcd_gotoxy
	line	151
;lcd.c: 151: break;
	goto	l1912
	line	152
;lcd.c: 152: default:
	
l1907:	
	line	153
	
l5574:	
;lcd.c: 153: if(isprint(c)){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_putc@c),w
	fcall	_isprint
	btfss	status,0
	goto	u5511
	goto	u5510
u5511:
	goto	l1912
u5510:
	line	154
	
l5576:	
;lcd.c: 154: lcd_put_byte(1, c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_putc@c),w
	movwf	(??_lcd_putc+0)+0
	movf	(??_lcd_putc+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(01h)
	fcall	_lcd_put_byte
	line	155
;lcd.c: 155: while(lcd_busy());
	goto	l5578
	
l1910:	
	goto	l5578
	
l1909:	
	
l5578:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5521
	goto	u5520
u5521:
	goto	l5578
u5520:
	goto	l1912
	
l1911:	
	goto	l1912
	line	156
	
l1908:	
	line	157
;lcd.c: 156: }
;lcd.c: 157: break;
	goto	l1912
	line	158
	
l5580:	
;lcd.c: 158: }
	goto	l1912
	line	144
	
l1900:	
	
l5582:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_putc@c),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 10 to 12
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     7     4 (average)
; direct_byte    31    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	10^0	; case 10
	skipnz
	goto	l5572
	xorlw	12^10	; case 12
	skipnz
	goto	l5568
	goto	l5574

	line	158
	
l1905:	
	line	159
	
l1912:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putc
	__end_of_lcd_putc:
;; =============== function _lcd_putc ends ============

	signat	_lcd_putc,4216
	global	_lcd_init
psect	text989,local,class=CODE,delta=2
global __ptext989
__ptext989:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 5 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text989
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
	line	5
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l5528:	
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
	
l5530:	
;lcd.c: 18: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u5587:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5587
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5587
	nop2
opt asmopt_on

	line	21
	
l5532:	
;lcd.c: 21: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	22
	
l5534:	
;lcd.c: 22: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	238
movwf	((??_lcd_init+0)+0),f
u5597:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5597
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5597
	clrwdt
opt asmopt_on

	line	23
;lcd.c: 23: lcd_put_byte(0,0x30);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	24
	
l5536:	
;lcd.c: 24: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	238
movwf	((??_lcd_init+0)+0),f
u5607:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5607
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5607
	clrwdt
opt asmopt_on

	line	25
	
l5538:	
;lcd.c: 25: lcd_put_byte(0,0x32);
	movlw	(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	26
;lcd.c: 26: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u5617:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5617
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5617
	nop2
opt asmopt_on

	line	27
;lcd.c: 27: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u5627:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5627
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5627
	nop2
opt asmopt_on

	line	28
;lcd.c: 28: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u5637:
	decfsz	((??_lcd_init+0)+0),f
	goto	u5637
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u5637
	nop2
opt asmopt_on

	line	30
;lcd.c: 30: while(lcd_busy());
	goto	l5540
	
l1866:	
	goto	l5540
	
l1865:	
	
l5540:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5431
	goto	u5430
u5431:
	goto	l5540
u5430:
	goto	l5542
	
l1867:	
	line	31
	
l5542:	
;lcd.c: 31: lcd_put_byte(0,0b00101100 & 0b00111000);
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	32
;lcd.c: 32: while(lcd_busy());
	goto	l5544
	
l1869:	
	goto	l5544
	
l1868:	
	
l5544:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5441
	goto	u5440
u5441:
	goto	l5544
u5440:
	goto	l5546
	
l1870:	
	line	34
	
l5546:	
;lcd.c: 34: lcd_put_byte(0,0b00001011&0b00001101&0b00001110);
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	35
;lcd.c: 35: while(lcd_busy());
	goto	l5548
	
l1872:	
	goto	l5548
	
l1871:	
	
l5548:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5451
	goto	u5450
u5451:
	goto	l5548
u5450:
	goto	l5550
	
l1873:	
	line	36
	
l5550:	
;lcd.c: 36: lcd_put_byte(0,0b00001111&0b00001101&0b00001110);
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	37
;lcd.c: 37: while(lcd_busy());
	goto	l5552
	
l1875:	
	goto	l5552
	
l1874:	
	
l5552:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5461
	goto	u5460
u5461:
	goto	l5552
u5460:
	goto	l5554
	
l1876:	
	line	39
	
l5554:	
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
	goto	l5556
	
l1878:	
	goto	l5556
	
l1877:	
	
l5556:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5471
	goto	u5470
u5471:
	goto	l5556
u5470:
	goto	l5558
	
l1879:	
	line	41
	
l5558:	
;lcd.c: 41: lcd_put_byte(0,0b00000100);
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	42
;lcd.c: 42: while(lcd_busy());
	goto	l5560
	
l1881:	
	goto	l5560
	
l1880:	
	
l5560:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5481
	goto	u5480
u5481:
	goto	l5560
u5480:
	goto	l5562
	
l1882:	
	line	43
	
l5562:	
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
	goto	l5564
	
l1884:	
	goto	l5564
	
l1883:	
	
l5564:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5491
	goto	u5490
u5491:
	goto	l5564
u5490:
	goto	l1886
	
l1885:	
	line	45
	
l1886:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_send_lux
psect	text990,local,class=CODE,delta=2
global __ptext990
__ptext990:

;; *************** function _send_lux *****************
;; Defined at:
;;		line 235 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
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
;; Hardware stack levels required when called:    3
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
psect	text990
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	235
	global	__size_of_send_lux
	__size_of_send_lux	equ	__end_of_send_lux-_send_lux
	
_send_lux:	
	opt	stack 4
; Regs used in _send_lux: [wreg+status,2+status,0+pclath+cstack]
	line	236
	
l5526:	
;main.c: 236: value2=value1*10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x20
	movwf	(?___ftmul+1)
	movlw	0x41
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(_value2+1)
	addwf	(_value2+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(_value2)
	addwf	(_value2)

	line	237
;main.c: 237: nghinlux=(value2/1000);
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(_value2+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_value2),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_send_lux+0)^080h+0
	movf	(??_send_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_nghinlux)
	line	238
;main.c: 238: tramlux=((value2%1000)/100);
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_value2+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_value2),w
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
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_send_lux+0)^080h+0
	movf	(??_send_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_tramlux)
	line	239
;main.c: 239: chuclux=(((value2%1000)%100)/10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_value2+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_value2),w
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
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_send_lux+0)^080h+0
	movf	(??_send_lux+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_chuclux)
	line	240
;main.c: 240: dvilux=(((value2%1000)%100)%10);
	movf	(_value2+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_value2),w
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
	clrf	(_send_lux$1404+1)^080h
	addwf	(_send_lux$1404+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_send_lux$1404)^080h
	addwf	(_send_lux$1404)^080h

;main.c: 240: dvilux=(((value2%1000)%100)%10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_send_lux$1404+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_send_lux$1404)^080h,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dvilux)
	line	242
;main.c: 242: uart_tx(nghinlux);
	movf	(_nghinlux),w
	fcall	_uart_tx
	line	243
;main.c: 243: uart_tx(tramlux);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tramlux),w
	fcall	_uart_tx
	line	244
;main.c: 244: uart_tx(chuclux);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_chuclux),w
	fcall	_uart_tx
	line	245
;main.c: 245: uart_tx(dvilux);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dvilux),w
	fcall	_uart_tx
	line	246
;main.c: 246: delay_ms(200);
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay_ms)
	movlw	high(0C8h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	247
	
l1011:	
	return
	opt stack 0
GLOBAL	__end_of_send_lux
	__end_of_send_lux:
;; =============== function _send_lux ends ============

	signat	_send_lux,88
	global	_lcd_gotoxy
psect	text991,local,class=CODE,delta=2
global __ptext991
__ptext991:

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 162 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    7[BANK0 ] unsigned char 
;;  address         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_put_byte
;;		_lcd_busy
;; This function is called by:
;;		_xu_ly_lux
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text991
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
	line	162
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
	opt	stack 3
; Regs used in _lcd_gotoxy: [wreg+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	line	165
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@col)
	
l5516:	
;lcd.c: 163: unsigned char address;
;lcd.c: 165: if(row!=0)
	movf	(lcd_gotoxy@row),w
	skipz
	goto	u5410
	goto	l5520
u5410:
	line	166
	
l5518:	
;lcd.c: 166: address=0x40;
	movlw	(040h)
	movwf	(??_lcd_gotoxy+0)+0
	movf	(??_lcd_gotoxy+0)+0,w
	movwf	(lcd_gotoxy@address)
	goto	l1916
	line	167
	
l1915:	
	line	168
	
l5520:	
;lcd.c: 167: else
;lcd.c: 168: address=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(lcd_gotoxy@address)
	
l1916:	
	line	170
;lcd.c: 170: address += col;
	movf	(lcd_gotoxy@col),w
	movwf	(??_lcd_gotoxy+0)+0
	movf	(??_lcd_gotoxy+0)+0,w
	addwf	(lcd_gotoxy@address),f
	line	171
	
l5522:	
;lcd.c: 171: lcd_put_byte(0,0x80|address);
	movf	(lcd_gotoxy@address),w
	iorlw	080h
	movwf	(??_lcd_gotoxy+0)+0
	movf	(??_lcd_gotoxy+0)+0,w
	movwf	(?_lcd_put_byte)
	movlw	(0)
	fcall	_lcd_put_byte
	line	172
;lcd.c: 172: while(lcd_busy());
	goto	l5524
	
l1918:	
	goto	l5524
	
l1917:	
	
l5524:	
	fcall	_lcd_busy
	iorlw	0
	skipz
	goto	u5421
	goto	u5420
u5421:
	goto	l5524
u5420:
	goto	l1920
	
l1919:	
	line	173
	
l1920:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
;; =============== function _lcd_gotoxy ends ============

	signat	_lcd_gotoxy,8312
	global	_BH1750_read
psect	text992,local,class=CODE,delta=2
global __ptext992
__ptext992:

;; *************** function _BH1750_read *****************
;; Defined at:
;;		line 193 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  hb              1   50[BANK0 ] unsigned char 
;;  lb              1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4  1002[COMMON] unsigned long 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_start
;;		_I2C_write
;;		_I2C_read
;;		_I2C_stop
;;		___awtoft
;;		___ftdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text992
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	193
	global	__size_of_BH1750_read
	__size_of_BH1750_read	equ	__end_of_BH1750_read-_BH1750_read
	
_BH1750_read:	
	opt	stack 4
; Regs used in _BH1750_read: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	194
	
l5500:	
;main.c: 194: unsigned char lb = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(BH1750_read@lb)
	line	195
;main.c: 195: unsigned char hb = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(BH1750_read@hb)
	line	196
	
l5502:	
;main.c: 196: I2C_start();
	fcall	_I2C_start
	line	197
	
l5504:	
;main.c: 197: I2C_write(0x47);
	movlw	(047h)
	fcall	_I2C_write
	line	198
	
l5506:	
;main.c: 198: hb = I2C_read(1);
	movlw	(01h)
	fcall	_I2C_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_BH1750_read+0)+0
	movf	(??_BH1750_read+0)+0,w
	movwf	(BH1750_read@hb)
	line	199
	
l5508:	
;main.c: 199: lb = I2C_read(0);
	movlw	(0)
	fcall	_I2C_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_BH1750_read+0)+0
	movf	(??_BH1750_read+0)+0,w
	movwf	(BH1750_read@lb)
	line	200
	
l5510:	
;main.c: 200: I2C_stop();
	fcall	_I2C_stop
	line	201
	
l5512:	
;main.c: 201: value =(hb<<8)+lb;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(BH1750_read@hb),w
	movwf	(??_BH1750_read+0)+0
	clrf	(??_BH1750_read+0)+0+1
	movlw	08h
	movwf	btemp+1
u5405:
	clrc
	rlf	(??_BH1750_read+0)+0,f
	rlf	(??_BH1750_read+0)+1,f
	decfsz	btemp+1,f
	goto	u5405
	movf	(BH1750_read@lb),w
	addwf	0+(??_BH1750_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_value)^080h
	movlw	0
	skipnc
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_BH1750_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(_value)^080h
	line	202
	
l5514:	
;main.c: 202: value1=(float)value/1.2;
	movlw	0x9a
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movlw	0x99
	movwf	(?___ftdiv+1)
	movlw	0x3f
	movwf	(?___ftdiv+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_value)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_value1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_value1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_value1+2)^080h
	line	203
	
l1003:	
	return
	opt stack 0
GLOBAL	__end_of_BH1750_read
	__end_of_BH1750_read:
;; =============== function _BH1750_read ends ============

	signat	_BH1750_read,92
	global	_BH1750_write
psect	text993,local,class=CODE,delta=2
global __ptext993
__ptext993:

;; *************** function _BH1750_write *****************
;; Defined at:
;;		line 184 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_start
;;		_I2C_write
;;		_I2C_stop
;; This function is called by:
;;		_main
;;		_BH1750_init
;; This function uses a non-reentrant model
;;
psect	text993
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	184
	global	__size_of_BH1750_write
	__size_of_BH1750_write	equ	__end_of_BH1750_write-_BH1750_write
	
_BH1750_write:	
	opt	stack 4
; Regs used in _BH1750_write: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l5494:	
;main.c: 185: I2C_start();
	fcall	_I2C_start
	line	186
	
l5496:	
;main.c: 186: I2C_write(0x46);
	movlw	(046h)
	fcall	_I2C_write
	line	187
	
l5498:	
;main.c: 187: I2C_write(0x10);
	movlw	(010h)
	fcall	_I2C_write
	line	188
;main.c: 188: I2C_stop();
	fcall	_I2C_stop
	line	189
	
l1000:	
	return
	opt stack 0
GLOBAL	__end_of_BH1750_write
	__end_of_BH1750_write:
;; =============== function _BH1750_write ends ============

	signat	_BH1750_write,88
	global	___awtoft
psect	text994,local,class=CODE,delta=2
global __ptext994
__ptext994:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   25[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   25[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_BH1750_read
;;		_xu_ly_lux
;; This function uses a non-reentrant model
;;
psect	text994
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5484:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	line	37
	
l5486:	
	btfss	(___awtoft@c+1),7
	goto	u5391
	goto	u5390
u5391:
	goto	l5490
u5390:
	line	38
	
l5488:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l5490
	line	40
	
l2076:	
	line	41
	
l5490:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l2077
	
l5492:	
	line	42
	
l2077:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text995,local,class=CODE,delta=2
global __ptext995
__ptext995:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   44[BANK0 ] float 
;;  f2              3   47[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   55[BANK0 ] unsigned um
;;  sign            1   59[BANK0 ] unsigned char 
;;  cntr            1   58[BANK0 ] unsigned char 
;;  exp             1   54[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_xu_ly_lux
;;		_send_lux
;; This function uses a non-reentrant model
;;
psect	text995
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5434:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u5251
	goto	u5250
u5251:
	goto	l5440
u5250:
	line	57
	
l5436:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2039
	
l5438:	
	goto	l2039
	
l2038:	
	line	58
	
l5440:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u5261
	goto	u5260
u5261:
	goto	l5446
u5260:
	line	59
	
l5442:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2039
	
l5444:	
	goto	l2039
	
l2040:	
	line	60
	
l5446:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u5275:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u5270:
	addlw	-1
	skipz
	goto	u5275
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u5285:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u5280:
	addlw	-1
	skipz
	goto	u5285
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l5448:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l5450:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l5452:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l5454:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l5456:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l5458
	line	70
	
l2041:	
	line	71
	
l5458:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5291
	goto	u5290
u5291:
	goto	l5462
u5290:
	line	72
	
l5460:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5301
	addwf	(___ftmul@f3_as_product+1),f
u5301:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5302
	addwf	(___ftmul@f3_as_product+2),f
u5302:

	goto	l5462
	
l2042:	
	line	73
	
l5462:	
	movlw	01h
u5315:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5315

	line	74
	
l5464:	
	movlw	01h
u5325:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u5325
	line	75
	
l5466:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u5331
	goto	u5330
u5331:
	goto	l5458
u5330:
	goto	l5468
	
l2043:	
	line	76
	
l5468:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l5470
	line	77
	
l2044:	
	line	78
	
l5470:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5341
	goto	u5340
u5341:
	goto	l5474
u5340:
	line	79
	
l5472:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5351
	addwf	(___ftmul@f3_as_product+1),f
u5351:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5352
	addwf	(___ftmul@f3_as_product+2),f
u5352:

	goto	l5474
	
l2045:	
	line	80
	
l5474:	
	movlw	01h
u5365:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5365

	line	81
	
l5476:	
	movlw	01h
u5375:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u5375

	line	82
	
l5478:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u5381
	goto	u5380
u5381:
	goto	l5470
u5380:
	goto	l5480
	
l2046:	
	line	83
	
l5480:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l2039
	
l5482:	
	line	84
	
l2039:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text996,local,class=CODE,delta=2
global __ptext996
__ptext996:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   31[BANK0 ] float 
;;  f1              3   34[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   42[BANK0 ] float 
;;  sign            1   46[BANK0 ] unsigned char 
;;  exp             1   45[BANK0 ] unsigned char 
;;  cntr            1   41[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   31[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_BH1750_read
;;		_xu_ly_lux
;; This function uses a non-reentrant model
;;
psect	text996
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l5392:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u5171
	goto	u5170
u5171:
	goto	l5398
u5170:
	line	56
	
l5394:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2029
	
l5396:	
	goto	l2029
	
l2028:	
	line	57
	
l5398:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u5181
	goto	u5180
u5181:
	goto	l5404
u5180:
	line	58
	
l5400:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2029
	
l5402:	
	goto	l2029
	
l2030:	
	line	59
	
l5404:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l5406:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l5408:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u5195:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u5190:
	addlw	-1
	skipz
	goto	u5195
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l5410:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u5205:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u5200:
	addlw	-1
	skipz
	goto	u5205
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l5412:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l5414:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l5416:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l5418
	line	69
	
l2031:	
	line	70
	
l5418:	
	movlw	01h
u5215:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u5215
	line	71
	
l5420:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u5225
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u5225
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u5225:
	skipc
	goto	u5221
	goto	u5220
u5221:
	goto	l5426
u5220:
	line	72
	
l5422:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l5424:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l5426
	line	74
	
l2032:	
	line	75
	
l5426:	
	movlw	01h
u5235:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u5235
	line	76
	
l5428:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u5241
	goto	u5240
u5241:
	goto	l5418
u5240:
	goto	l5430
	
l2033:	
	line	77
	
l5430:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l2029
	
l5432:	
	line	78
	
l2029:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text997,local,class=CODE,delta=2
global __ptext997
__ptext997:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   31[BANK0 ] float 
;;  f2              3   34[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   43[BANK0 ] unsigned char 
;;  exp2            1   42[BANK0 ] unsigned char 
;;  sign            1   41[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   31[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_xu_ly_lux
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text997
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5320:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l5322:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u4930
	goto	l5328
u4930:
	
l5324:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4941
	goto	u4940
u4941:
	goto	l5332
u4940:
	
l5326:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4951
	goto	u4950
u4951:
	goto	l5332
u4950:
	goto	l5328
	
l1986:	
	line	93
	
l5328:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l1987
	
l5330:	
	goto	l1987
	
l1984:	
	line	94
	
l5332:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u4960
	goto	l1990
u4960:
	
l5334:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4971
	goto	u4970
u4971:
	goto	l5338
u4970:
	
l5336:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4981
	goto	u4980
u4981:
	goto	l5338
u4980:
	
l1990:	
	line	95
	goto	l1987
	
l1988:	
	line	96
	
l5338:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l5340:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u4991
	goto	u4990
u4991:
	goto	l1991
u4990:
	line	98
	
l5342:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l1991:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u5001
	goto	u5000
u5001:
	goto	l1992
u5000:
	line	100
	
l5344:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l1992:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5346:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5348:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u5011
	goto	u5010
u5011:
	goto	l5360
u5010:
	goto	l5350
	line	109
	
l1994:	
	line	110
	
l5350:	
	movlw	01h
u5025:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u5025
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l5352:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u5031
	goto	u5030
u5031:
	goto	l5358
u5030:
	
l5354:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u5041
	goto	u5040
u5041:
	goto	l5350
u5040:
	goto	l5358
	
l1996:	
	goto	l5358
	
l1997:	
	line	113
	goto	l5358
	
l1999:	
	line	114
	
l5356:	
	movlw	01h
u5055:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u5055

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l5358
	line	116
	
l1998:	
	line	113
	
l5358:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u5061
	goto	u5060
u5061:
	goto	l5356
u5060:
	goto	l2001
	
l2000:	
	line	117
	goto	l2001
	
l1993:	
	
l5360:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u5071
	goto	u5070
u5071:
	goto	l2001
u5070:
	goto	l5362
	line	120
	
l2003:	
	line	121
	
l5362:	
	movlw	01h
u5085:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u5085
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l5364:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u5091
	goto	u5090
u5091:
	goto	l5370
u5090:
	
l5366:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u5101
	goto	u5100
u5101:
	goto	l5362
u5100:
	goto	l5370
	
l2005:	
	goto	l5370
	
l2006:	
	line	124
	goto	l5370
	
l2008:	
	line	125
	
l5368:	
	movlw	01h
u5115:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u5115

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l5370
	line	127
	
l2007:	
	line	124
	
l5370:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u5121
	goto	u5120
u5121:
	goto	l5368
u5120:
	goto	l2001
	
l2009:	
	goto	l2001
	line	128
	
l2002:	
	line	129
	
l2001:	
	btfss	(___ftadd@sign),(7)&7
	goto	u5131
	goto	u5130
u5131:
	goto	l5374
u5130:
	line	131
	
l5372:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l5374
	line	133
	
l2010:	
	line	134
	
l5374:	
	btfss	(___ftadd@sign),(6)&7
	goto	u5141
	goto	u5140
u5141:
	goto	l5378
u5140:
	line	136
	
l5376:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l5378
	line	138
	
l2011:	
	line	139
	
l5378:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	line	140
	
l5380:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u5151
	addwf	(___ftadd@f2+1),f
u5151:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u5152
	addwf	(___ftadd@f2+2),f
u5152:

	line	141
	
l5382:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u5161
	goto	u5160
u5161:
	goto	l5388
u5160:
	line	142
	
l5384:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l5386:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l5388
	line	145
	
l2012:	
	line	146
	
l5388:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l1987
	
l5390:	
	line	148
	
l1987:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_lcd_busy
psect	text998,local,class=CODE,delta=2
global __ptext998
__ptext998:

;; *************** function _lcd_busy *****************
;; Defined at:
;;		line 47 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1    1[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text998
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
	line	47
	global	__size_of_lcd_busy
	__size_of_lcd_busy	equ	__end_of_lcd_busy-_lcd_busy
	
_lcd_busy:	
	opt	stack 3
; Regs used in _lcd_busy: [wreg]
	line	50
	
l5306:	
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
	
l5308:	
;lcd.c: 57: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u5647:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5647
	clrwdt
opt asmopt_on

	line	58
	
l5310:	
;lcd.c: 58: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	59
;lcd.c: 59: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u5657:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5657
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
	
l5312:	
;lcd.c: 63: RD3 = 0;
	bcf	(67/8),(67)&7
	line	64
;lcd.c: 64: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u5667:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5667
	clrwdt
opt asmopt_on

	line	65
	
l5314:	
;lcd.c: 65: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	66
;lcd.c: 66: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_busy+0)+0,f
u5677:
decfsz	(??_lcd_busy+0)+0,f
	goto	u5677
	clrwdt
opt asmopt_on

	line	67
	
l5316:	
;lcd.c: 67: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	70
;lcd.c: 70: return busy;
	movf	(lcd_busy@busy),w
	goto	l1889
	
l5318:	
	line	71
	
l1889:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_busy
	__end_of_lcd_busy:
;; =============== function _lcd_busy ends ============

	signat	_lcd_busy,89
	global	_lcd_put_byte
psect	text999,local,class=CODE,delta=2
global __ptext999
__ptext999:

;; *************** function _lcd_put_byte *****************
;; Defined at:
;;		line 106 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
;; Parameters:    Size  Location     Type
;;  rs              1    wreg     unsigned char 
;;  b               1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  rs              1    3[BANK0 ] unsigned char 
;;  temp            1    4[BANK0 ] struct _BYTE_VAL
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_init
;;		_lcd_putc
;;		_lcd_gotoxy
;; This function uses a non-reentrant model
;;
psect	text999
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\lcd.c"
	line	106
	global	__size_of_lcd_put_byte
	__size_of_lcd_put_byte	equ	__end_of_lcd_put_byte-_lcd_put_byte
	
_lcd_put_byte:	
	opt	stack 3
; Regs used in _lcd_put_byte: [wreg+status,2+status,0]
;lcd_put_byte@rs stored from wreg
	line	109
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_put_byte@rs)
	
l5270:	
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
	
l5272:	
;lcd.c: 115: if(rs) RD1 = 1;
	movf	(lcd_put_byte@rs),w
	skipz
	goto	u4760
	goto	l5276
u4760:
	
l5274:	
	bsf	(65/8),(65)&7
	goto	l5276
	
l1896:	
	line	117
	
l5276:	
;lcd.c: 117: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5687:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5687
	clrwdt
opt asmopt_on

	line	118
	
l5278:	
;lcd.c: 118: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	119
;lcd.c: 119: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5697:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5697
	clrwdt
opt asmopt_on

	line	120
	
l5280:	
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
	
l5282:	
;lcd.c: 125: RD4 = temp.bits.b4;
	swapf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u4771
	goto	u4770
	
u4771:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u4784
u4770:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u4784:
	line	126
	
l5284:	
;lcd.c: 126: RD5 = temp.bits.b5;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u4791
	goto	u4790
	
u4791:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u4804
u4790:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u4804:
	line	127
	
l5286:	
;lcd.c: 127: RD6 = temp.bits.b6;
	swapf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u4811
	goto	u4810
	
u4811:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u4824
u4810:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u4824:
	line	128
	
l5288:	
;lcd.c: 128: RD7 = temp.bits.b7;
	rlf	(lcd_put_byte@temp),w
	rlf	(lcd_put_byte@temp),w
	andlw	1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u4831
	goto	u4830
	
u4831:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u4844
u4830:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u4844:
	line	129
;lcd.c: 129: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5707:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5707
	clrwdt
opt asmopt_on

	line	130
	
l5290:	
;lcd.c: 130: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	131
;lcd.c: 131: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5717:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5717
	clrwdt
opt asmopt_on

	line	132
	
l5292:	
;lcd.c: 132: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	134
	
l5294:	
;lcd.c: 134: RD4 = temp.bits.b0;
	movf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u4851
	goto	u4850
	
u4851:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u4864
u4850:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u4864:
	line	135
	
l5296:	
;lcd.c: 135: RD5 = temp.bits.b1;
	rrf	(lcd_put_byte@temp),w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	btfsc	status,0
	goto	u4871
	goto	u4870
	
u4871:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u4884
u4870:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u4884:
	line	136
	
l5298:	
;lcd.c: 136: RD6 = temp.bits.b2;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u4891
	goto	u4890
	
u4891:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u4904
u4890:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u4904:
	line	137
	
l5300:	
;lcd.c: 137: RD7 = temp.bits.b3;
	rrf	(lcd_put_byte@temp),w
	movwf	(??_lcd_put_byte+0)+0
	rrf	(??_lcd_put_byte+0)+0,f
	rrf	(??_lcd_put_byte+0)+0,w
	andlw	(1<<1)-1
	movwf	(??_lcd_put_byte+1)+0
	rrf	(??_lcd_put_byte+1)+0,w
	btfsc	status,0
	goto	u4911
	goto	u4910
	
u4911:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u4924
u4910:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u4924:
	line	138
;lcd.c: 138: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5727:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5727
	clrwdt
opt asmopt_on

	line	139
	
l5302:	
;lcd.c: 139: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	140
;lcd.c: 140: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_lcd_put_byte+0)+0,f
u5737:
decfsz	(??_lcd_put_byte+0)+0,f
	goto	u5737
	clrwdt
opt asmopt_on

	line	141
	
l5304:	
;lcd.c: 141: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	142
	
l1897:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_put_byte
	__end_of_lcd_put_byte:
;; =============== function _lcd_put_byte ends ============

	signat	_lcd_put_byte,8312
	global	_I2C_write
psect	text1000,local,class=CODE,delta=2
global __ptext1000
__ptext1000:

;; *************** function _I2C_write *****************
;; Defined at:
;;		line 154 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
;; Parameters:    Size  Location     Type
;;  d               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  d               1    1[BANK0 ] unsigned char 
;;  x               1    2[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_dly
;; This function is called by:
;;		_BH1750_write
;;		_BH1750_read
;; This function uses a non-reentrant model
;;
psect	text1000
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	154
	global	__size_of_I2C_write
	__size_of_I2C_write	equ	__end_of_I2C_write-_I2C_write
	
_I2C_write:	
	opt	stack 4
; Regs used in _I2C_write: [wreg+status,2+status,0+pclath+cstack]
;I2C_write@d stored from wreg
	line	156
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(I2C_write@d)
	line	157
	
l5252:	
;main.c: 155: char x;
;main.c: 156: static bit b;
;main.c: 157: for(x=8; x; x--) {
	movlw	(08h)
	movwf	(??_I2C_write+0)+0
	movf	(??_I2C_write+0)+0,w
	movwf	(I2C_write@x)
	goto	l989
	
l990:	
	line	158
;main.c: 158: if(d&0x80) TRISC4 = 1;
	btfss	(I2C_write@d),(7)&7
	goto	u4731
	goto	u4730
u4731:
	goto	l991
u4730:
	
l5254:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	goto	l992
	line	159
	
l991:	
;main.c: 159: else TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	
l992:	
	line	160
;main.c: 160: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	161
	
l5256:	
;main.c: 161: d <<= 1;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(I2C_write@d),f

	line	162
	
l5258:	
;main.c: 162: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	157
	
l5260:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(I2C_write@x),f
	
l989:	
	movf	(I2C_write@x),f
	skipz
	goto	u4741
	goto	u4740
u4741:
	goto	l990
u4740:
	
l993:	
	line	164
;main.c: 163: }
;main.c: 164: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	165
;main.c: 165: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	166
	
l5262:	
;main.c: 166: i2c_dly();
	fcall	_i2c_dly
	line	167
	
l5264:	
;main.c: 167: b = RC4;
	bcf	(I2C_write@b/8),(I2C_write@b)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u4755
	bsf	(I2C_write@b/8),(I2C_write@b)&7
u4755:

	line	169
	
l5266:	
;main.c: 169: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	goto	l994
	line	170
	
l5268:	
	line	171
;main.c: 170: return b;
;	Return value of _I2C_write is never used
	
l994:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_write
	__end_of_I2C_write:
;; =============== function _I2C_write ends ============

	signat	_I2C_write,4216
	global	_I2C_read
psect	text1001,local,class=CODE,delta=2
global __ptext1001
__ptext1001:

;; *************** function _I2C_read *****************
;; Defined at:
;;		line 129 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1    1[BANK0 ] unsigned char 
;;  x               1    3[BANK0 ] unsigned char 
;;  d               1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_dly
;; This function is called by:
;;		_BH1750_read
;; This function uses a non-reentrant model
;;
psect	text1001
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	129
	global	__size_of_I2C_read
	__size_of_I2C_read	equ	__end_of_I2C_read-_I2C_read
	
_I2C_read:	
	opt	stack 4
; Regs used in _I2C_read: [wreg+status,2+status,0+pclath+cstack]
;I2C_read@ack stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(I2C_read@ack)
	line	130
	
l5214:	
;main.c: 130: char x, d=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(I2C_read@d)
	line	131
	
l5216:	
;main.c: 131: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	132
;main.c: 132: for(x=0; x<8; x++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(I2C_read@x)
	
l5218:	
	movlw	(08h)
	subwf	(I2C_read@x),w
	skipc
	goto	u4681
	goto	u4680
u4681:
	goto	l5222
u4680:
	goto	l5238
	
l5220:	
	goto	l5238
	line	133
	
l977:	
	line	134
	
l5222:	
;main.c: 133: {
;main.c: 134: d <<= 1;
	clrc
	rlf	(I2C_read@d),f

	goto	l5224
	line	135
;main.c: 135: do
	
l979:	
	line	137
	
l5224:	
;main.c: 136: {
;main.c: 137: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	138
	
l5226:	
;main.c: 138: }while(RC3==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u4691
	goto	u4690
u4691:
	goto	l5224
u4690:
	goto	l5228
	
l980:	
	line	140
	
l5228:	
;main.c: 140: i2c_dly();
	fcall	_i2c_dly
	line	141
	
l5230:	
;main.c: 141: if(RC4) d |= 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u4701
	goto	u4700
u4701:
	goto	l981
u4700:
	
l5232:	
	bsf	(I2C_read@d)+(0/8),(0)&7
	
l981:	
	line	142
;main.c: 142: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	132
	
l5234:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_I2C_read+0)+0
	movf	(??_I2C_read+0)+0,w
	addwf	(I2C_read@x),f
	
l5236:	
	movlw	(08h)
	subwf	(I2C_read@x),w
	skipc
	goto	u4711
	goto	u4710
u4711:
	goto	l5222
u4710:
	goto	l5238
	
l978:	
	line	144
	
l5238:	
;main.c: 143: }
;main.c: 144: if(ack) TRISC4 = 0;
	movf	(I2C_read@ack),w
	skipz
	goto	u4720
	goto	l982
u4720:
	
l5240:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	goto	l983
	line	145
	
l982:	
;main.c: 145: else TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	
l983:	
	line	146
;main.c: 146: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	147
	
l5242:	
;main.c: 147: i2c_dly();
	fcall	_i2c_dly
	line	148
	
l5244:	
;main.c: 148: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	149
	
l5246:	
;main.c: 149: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	line	150
	
l5248:	
;main.c: 150: return d;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(I2C_read@d),w
	goto	l984
	
l5250:	
	line	151
	
l984:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_read
	__end_of_I2C_read:
;; =============== function _I2C_read ends ============

	signat	_I2C_read,4217
	global	_I2C_stop
psect	text1002,local,class=CODE,delta=2
global __ptext1002
__ptext1002:

;; *************** function _I2C_stop *****************
;; Defined at:
;;		line 120 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_dly
;; This function is called by:
;;		_BH1750_write
;;		_BH1750_read
;; This function uses a non-reentrant model
;;
psect	text1002
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	120
	global	__size_of_I2C_stop
	__size_of_I2C_stop	equ	__end_of_I2C_stop-_I2C_stop
	
_I2C_stop:	
	opt	stack 4
; Regs used in _I2C_stop: [status,2+status,0+pclath+cstack]
	line	121
	
l5206:	
;main.c: 121: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	122
	
l5208:	
;main.c: 122: i2c_dly();
	fcall	_i2c_dly
	line	123
	
l5210:	
;main.c: 123: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	124
;main.c: 124: i2c_dly();
	fcall	_i2c_dly
	line	125
	
l5212:	
;main.c: 125: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	126
;main.c: 126: i2c_dly();
	fcall	_i2c_dly
	line	127
	
l974:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_stop
	__end_of_I2C_stop:
;; =============== function _I2C_stop ends ============

	signat	_I2C_stop,88
	global	_I2C_start
psect	text1003,local,class=CODE,delta=2
global __ptext1003
__ptext1003:

;; *************** function _I2C_start *****************
;; Defined at:
;;		line 108 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_dly
;; This function is called by:
;;		_BH1750_write
;;		_BH1750_read
;; This function uses a non-reentrant model
;;
psect	text1003
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	108
	global	__size_of_I2C_start
	__size_of_I2C_start	equ	__end_of_I2C_start-_I2C_start
	
_I2C_start:	
	opt	stack 4
; Regs used in _I2C_start: [status,2+status,0+pclath+cstack]
	line	109
	
l5196:	
;main.c: 109: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	110
	
l5198:	
;main.c: 110: i2c_dly();
	fcall	_i2c_dly
	line	111
	
l5200:	
;main.c: 111: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	112
;main.c: 112: i2c_dly();
	fcall	_i2c_dly
	line	113
	
l5202:	
;main.c: 113: TRISC4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1084/8)^080h,(1084)&7
	line	114
;main.c: 114: i2c_dly();
	fcall	_i2c_dly
	line	115
	
l5204:	
;main.c: 115: TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1083/8)^080h,(1083)&7
	line	116
;main.c: 116: i2c_dly();
	fcall	_i2c_dly
	line	117
	
l971:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_start
	__end_of_I2C_start:
;; =============== function _I2C_start ends ============

	signat	_I2C_start,88
	global	_delay_ms
psect	text1004,local,class=CODE,delta=2
global __ptext1004
__ptext1004:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 93 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2    3[BANK0 ] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_xu_ly_lux
;;		_send_lux
;;		_main
;;		_BH1750_init
;; This function uses a non-reentrant model
;;
psect	text1004
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	93
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 5
; Regs used in _delay_ms: [wreg]
	line	94
	
l5192:	
;main.c: 94: int i=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay_ms@i)
	movlw	high(0)
	movwf	((delay_ms@i))+1
	line	95
;main.c: 95: for(;i<x;i++)
	goto	l962
	line	96
	
l963:	
	line	97
	
l5194:	
;main.c: 96: {
;main.c: 97: _delay(1000);
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_delay_ms+0)+0,f
u5747:
	clrwdt
decfsz	(??_delay_ms+0)+0,f
	goto	u5747
	nop2	;nop
	clrwdt
opt asmopt_on

	line	95
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	high(01h)
	addwf	(delay_ms@i+1),f
	
l962:	
	movf	(delay_ms@i+1),w
	xorlw	80h
	movwf	(??_delay_ms+0)+0
	movf	(delay_ms@x+1),w
	xorlw	80h
	subwf	(??_delay_ms+0)+0,w
	skipz
	goto	u4675
	movf	(delay_ms@x),w
	subwf	(delay_ms@i),w
u4675:

	skipc
	goto	u4671
	goto	u4670
u4671:
	goto	l5194
u4670:
	goto	l965
	
l964:	
	line	99
	
l965:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	___awmod
psect	text1005,local,class=CODE,delta=2
global __ptext1005
__ptext1005:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_xu_ly_lux
;;		_send_lux
;; This function uses a non-reentrant model
;;
psect	text1005
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5108:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	line	9
	
l5110:	
	btfss	(___awmod@dividend+1),7
	goto	u4521
	goto	u4520
u4521:
	goto	l5114
u4520:
	line	10
	
l5112:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l5114
	line	12
	
l2148:	
	line	13
	
l5114:	
	btfss	(___awmod@divisor+1),7
	goto	u4531
	goto	u4530
u4531:
	goto	l5118
u4530:
	line	14
	
l5116:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l5118
	
l2149:	
	line	15
	
l5118:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4541
	goto	u4540
u4541:
	goto	l5136
u4540:
	line	16
	
l5120:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l5126
	
l2152:	
	line	18
	
l5122:	
	movlw	01h
	
u4555:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4555
	line	19
	
l5124:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l5126
	line	20
	
l2151:	
	line	17
	
l5126:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4561
	goto	u4560
u4561:
	goto	l5122
u4560:
	goto	l5128
	
l2153:	
	goto	l5128
	line	21
	
l2154:	
	line	22
	
l5128:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4575
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4575:
	skipc
	goto	u4571
	goto	u4570
u4571:
	goto	l5132
u4570:
	line	23
	
l5130:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l5132
	
l2155:	
	line	24
	
l5132:	
	movlw	01h
	
u4585:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4585
	line	25
	
l5134:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4591
	goto	u4590
u4591:
	goto	l5128
u4590:
	goto	l5136
	
l2156:	
	goto	l5136
	line	26
	
l2150:	
	line	27
	
l5136:	
	movf	(___awmod@sign),w
	skipz
	goto	u4600
	goto	l5140
u4600:
	line	28
	
l5138:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l5140
	
l2157:	
	line	29
	
l5140:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2158
	
l5142:	
	line	30
	
l2158:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___ftneg
psect	text1006,local,class=CODE,delta=2
global __ptext1006
__ptext1006:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_xu_ly_lux
;; This function uses a non-reentrant model
;;
psect	text1006
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l5100:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u4511
	goto	u4510
u4511:
	goto	l5104
u4510:
	line	18
	
l5102:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l5104
	
l2103:	
	line	19
	
l5104:	
	goto	l2104
	
l5106:	
	line	20
	
l2104:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___awdiv
psect	text1007,local,class=CODE,delta=2
global __ptext1007
__ptext1007:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK0 ] int 
;;  dividend        2    9[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   14[BANK0 ] int 
;;  sign            1   13[BANK0 ] unsigned char 
;;  counter         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_xu_ly_lux
;;		_send_lux
;; This function uses a non-reentrant model
;;
psect	text1007
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5062:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	line	10
	
l5064:	
	btfss	(___awdiv@divisor+1),7
	goto	u4411
	goto	u4410
u4411:
	goto	l5068
u4410:
	line	11
	
l5066:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l5068
	line	13
	
l2080:	
	line	14
	
l5068:	
	btfss	(___awdiv@dividend+1),7
	goto	u4421
	goto	u4420
u4421:
	goto	l2081
u4420:
	line	15
	
l5070:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5072:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l2081:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u4431
	goto	u4430
u4431:
	goto	l5092
u4430:
	line	20
	
l5074:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l5080
	
l2084:	
	line	22
	
l5076:	
	movlw	01h
	
u4445:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4445
	line	23
	
l5078:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l5080
	line	24
	
l2083:	
	line	21
	
l5080:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u4451
	goto	u4450
u4451:
	goto	l5076
u4450:
	goto	l5082
	
l2085:	
	goto	l5082
	line	25
	
l2086:	
	line	26
	
l5082:	
	movlw	01h
	
u4465:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4465
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4475
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4475:
	skipc
	goto	u4471
	goto	u4470
u4471:
	goto	l5088
u4470:
	line	28
	
l5084:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l5086:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l5088
	line	30
	
l2087:	
	line	31
	
l5088:	
	movlw	01h
	
u4485:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u4485
	line	32
	
l5090:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u4491
	goto	u4490
u4491:
	goto	l5082
u4490:
	goto	l5092
	
l2088:	
	goto	l5092
	line	33
	
l2082:	
	line	34
	
l5092:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4500
	goto	l5096
u4500:
	line	35
	
l5094:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l5096
	
l2089:	
	line	36
	
l5096:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l2090
	
l5098:	
	line	37
	
l2090:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text1008,local,class=CODE,delta=2
global __ptext1008
__ptext1008:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   11[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   20[BANK0 ] unsigned long 
;;  exp1            1   24[BANK0 ] unsigned char 
;;  sign1           1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   11[BANK0 ] long 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_xu_ly_lux
;;		_send_lux
;; This function uses a non-reentrant model
;;
psect	text1008
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5004:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l5010
u4300:
	line	50
	
l5006:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2050
	
l5008:	
	goto	l2050
	
l2049:	
	line	51
	
l5010:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4315:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4310:
	addlw	-1
	skipz
	goto	u4315
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5012:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5014:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5016:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5018:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5020:	
	btfss	(___fttol@exp1),7
	goto	u4321
	goto	u4320
u4321:
	goto	l5030
u4320:
	line	57
	
l5022:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4331
	goto	u4330
u4331:
	goto	l5028
u4330:
	line	58
	
l5024:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2050
	
l5026:	
	goto	l2050
	
l2052:	
	goto	l5028
	line	59
	
l2053:	
	line	60
	
l5028:	
	movlw	01h
u4345:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u4345

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l5028
u4350:
	goto	l5040
	
l2054:	
	line	62
	goto	l5040
	
l2051:	
	line	63
	
l5030:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l5038
u4360:
	line	64
	
l5032:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2050
	
l5034:	
	goto	l2050
	
l2056:	
	line	65
	goto	l5038
	
l2058:	
	line	66
	
l5036:	
	movlw	01h
	movwf	(??___fttol+0)+0
u4375:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u4375
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l5038
	line	68
	
l2057:	
	line	65
	
l5038:	
	movf	(___fttol@exp1),f
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l5036
u4380:
	goto	l5040
	
l2059:	
	goto	l5040
	line	69
	
l2055:	
	line	70
	
l5040:	
	movf	(___fttol@sign1),w
	skipz
	goto	u4390
	goto	l5044
u4390:
	line	71
	
l5042:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l5044
	
l2060:	
	line	72
	
l5044:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l2050
	
l5046:	
	line	73
	
l2050:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text1009,local,class=CODE,delta=2
global __ptext1009
__ptext1009:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text1009
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l4968:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u4190
	goto	l4972
u4190:
	
l4970:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l4978
u4200:
	goto	l4972
	
l2274:	
	line	65
	
l4972:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l2275
	
l4974:	
	goto	l2275
	
l2272:	
	line	66
	goto	l4978
	
l2277:	
	line	67
	
l4976:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u4215:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u4215

	goto	l4978
	line	69
	
l2276:	
	line	66
	
l4978:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4221
	goto	u4220
u4221:
	goto	l4976
u4220:
	goto	l2279
	
l2278:	
	line	70
	goto	l2279
	
l2280:	
	line	71
	
l4980:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l4982:	
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
	
l4984:	
	movlw	01h
u4235:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u4235

	line	74
	
l2279:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l4980
u4240:
	goto	l4988
	
l2281:	
	line	75
	goto	l4988
	
l2283:	
	line	76
	
l4986:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u4255:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u4255
	goto	l4988
	line	78
	
l2282:	
	line	75
	
l4988:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l4986
u4260:
	
l2284:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l2285
u4270:
	line	80
	
l4990:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l2285:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l4992:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u4285:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u4280:
	addlw	-1
	skipz
	goto	u4285
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l4994:	
	movf	(___ftpack@sign),w
	skipz
	goto	u4290
	goto	l2286
u4290:
	line	84
	
l4996:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2286:	
	line	85
	line	86
	
l2275:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_isprint
psect	text1010,local,class=CODE,delta=2
global __ptext1010
__ptext1010:

;; *************** function _isprint *****************
;; Defined at:
;;		line 13 in file "../../common/isprint.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_putc
;; This function uses a non-reentrant model
;;
psect	text1010
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\isprint.c"
	line	13
	global	__size_of_isprint
	__size_of_isprint	equ	__end_of_isprint-_isprint
	
_isprint:	
	opt	stack 4
; Regs used in _isprint: [wreg+status,2+status,0]
;isprint@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isprint@c)
	line	14
	
l4956:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_isprint$1046)
	
l4958:	
	movlw	(07Fh)
	subwf	(isprint@c),w
	skipnc
	goto	u4171
	goto	u4170
u4171:
	goto	l4964
u4170:
	
l4960:	
	movlw	(020h)
	subwf	(isprint@c),w
	skipc
	goto	u4181
	goto	u4180
u4181:
	goto	l4964
u4180:
	
l4962:	
	clrf	(_isprint$1046)
	bsf	status,0
	rlf	(_isprint$1046),f
	goto	l4964
	
l1930:	
	
l4964:	
	rrf	(_isprint$1046),w
	
	goto	l1931
	
l4966:	
	line	15
	
l1931:	
	return
	opt stack 0
GLOBAL	__end_of_isprint
	__end_of_isprint:
;; =============== function _isprint ends ============

	signat	_isprint,4216
	global	_i2c_dly
psect	text1011,local,class=CODE,delta=2
global __ptext1011
__ptext1011:

;; *************** function _i2c_dly *****************
;; Defined at:
;;		line 104 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_start
;;		_I2C_stop
;;		_I2C_read
;;		_I2C_write
;; This function uses a non-reentrant model
;;
psect	text1011
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	104
	global	__size_of_i2c_dly
	__size_of_i2c_dly	equ	__end_of_i2c_dly-_i2c_dly
	
_i2c_dly:	
	opt	stack 4
; Regs used in _i2c_dly: []
	line	106
	
l968:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_dly
	__end_of_i2c_dly:
;; =============== function _i2c_dly ends ============

	signat	_i2c_dly,88
	global	_uart_tx
psect	text1012,local,class=CODE,delta=2
global __ptext1012
__ptext1012:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 59 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_lux
;; This function uses a non-reentrant model
;;
psect	text1012
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	59
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 5
; Regs used in _uart_tx: [wreg]
;uart_tx@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uart_tx@data)
	line	60
	
l4950:	
;main.c: 60: TXREG =data;
	movf	(uart_tx@data),w
	movwf	(25)	;volatile
	line	61
;main.c: 61: while(TXIF==0);
	goto	l949
	
l950:	
	
l949:	
	btfss	(100/8),(100)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l949
u4160:
	goto	l952
	
l951:	
	line	63
	
l952:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_uart_isr
psect	text1013,local,class=CODE,delta=2
global __ptext1013
__ptext1013:

;; *************** function _uart_isr *****************
;; Defined at:
;;		line 65 in file "C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1013
	file	"C:\Users\Administrator\Desktop\CODE1-ACE5\CODE1-FRAME WORK\CODE MPLAP\main.c"
	line	65
	global	__size_of_uart_isr
	__size_of_uart_isr	equ	__end_of_uart_isr-_uart_isr
	
_uart_isr:	
	opt	stack 2
; Regs used in _uart_isr: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	movwf	(??_uart_isr+1)
	movf	fsr0,w
	movwf	(??_uart_isr+2)
	movf	pclath,w
	movwf	(??_uart_isr+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_uart_isr+4)
	ljmp	_uart_isr
psect	text1013
	line	66
	
i1l4112:	
;main.c: 66: if(RCIE && RCIF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l4124
u269_20:
	
i1l4114:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l4124
u270_20:
	line	68
	
i1l4116:	
;main.c: 67: {
;main.c: 68: check[save]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_uart_isr+0)+0
	movf	(_save),w
	addlw	_check&0ffh
	movwf	fsr0
	movf	(??_uart_isr+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	69
	
i1l4118:	
;main.c: 69: save++;
	movlw	(01h)
	movwf	(??_uart_isr+0)+0
	movf	(??_uart_isr+0)+0,w
	addwf	(_save),f
	line	70
	
i1l4120:	
;main.c: 70: if(save==7)
	movf	(_save),w
	xorlw	07h
	skipz
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l4124
u271_20:
	line	72
	
i1l4122:	
;main.c: 71: {
;main.c: 72: save=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_save)
	goto	i1l4124
	line	74
	
i1l956:	
	goto	i1l4124
	line	75
	
i1l955:	
	line	76
	
i1l4124:	
;main.c: 74: }
;main.c: 75: }
;main.c: 76: if(T0IF && T0IE)
	btfss	(90/8),(90)&7
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l959
u272_20:
	
i1l4126:	
	btfss	(93/8),(93)&7
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l959
u273_20:
	line	78
	
i1l4128:	
;main.c: 77: {
;main.c: 78: T0IF=0;
	bcf	(90/8),(90)&7
	line	79
	
i1l4130:	
;main.c: 79: TMR0=131;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	80
;main.c: 80: k++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_k)^080h,f
	skipnc
	incf	(_k+1)^080h,f
	movlw	high(01h)
	addwf	(_k+1)^080h,f
	line	81
;main.c: 81: if(k==250)
	movlw	0FAh
	xorwf	(_k)^080h,w
	iorwf	(_k+1)^080h,w
	skipz
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l959
u274_20:
	line	84
	
i1l4132:	
;main.c: 82: {
;main.c: 84: k=0;
	movlw	low(0)
	movwf	(_k)^080h
	movlw	high(0)
	movwf	((_k)^080h)+1
	goto	i1l959
	line	87
	
i1l958:	
	goto	i1l959
	line	89
	
i1l957:	
	line	90
	
i1l959:	
	movf	(??_uart_isr+4),w
	bcf	status, 5	;RP0=0, select bank0
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
psect	text1014,local,class=CODE,delta=2
global __ptext1014
__ptext1014:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
