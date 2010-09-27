	file	 "integrate.i"
data

; cc1 (2.7.2.2) arguments: -O -fdefer-pop -fomit-frame-pointer
; -fcse-follow-jumps -fcse-skip-blocks -fexpensive-optimizations
; -fthread-jumps -fstrength-reduce -funroll-loops -fwritable-strings
; -fpeephole -fforce-mem -ffunction-cse -finline-functions -finline
; -freg-struct-return -fdelayed-branch -frerun-cse-after-loop
; -fschedule-insns -fschedule-insns2 -fcommon -fgnu-linker -m88110 -m88100
; -m88000 -mno-ocs-debug-info -mno-ocs-frame-position -mcheck-zero-division

gcc2_compiled.:
	align	 8
@LC0:
	string	 "varargs function cannot be inline\000"
	align	 8
@LC1:
	string	 "function too large to be inline\000"
	align	 8
@LC2:
	string	 "function with large aggregate parameter cannot be"
	string	 " inline\000"
	align	 8
@LC3:
	string	 "no prototype, and parameter address used; cannot "
	string	 "be inline\000"
	align	 8
@LC4:
	string	 "address of an aggregate parameter is used; cannot"
	string	 " be inline\000"
	align	 8
@LC5:
	string	 "function too large to be inline\000"
text
	align	 8
	global	 _function_cannot_inline_p
_function_cannot_inline_p:
	subu	 r31,r31,64
	st	 r1,r31,48
	st.d	 r24,r31,40
	or	 r25,r0,r2
	st	 r23,r31,36
@Ltb0:
	ld	 r13,r25,8
	bsr.n	 _tree_last
	ld	 r2,r13,16
	or	 r24,r0,r2
	bsr.n	 _list_length
	ld	 r2,r25,52
	ld	 r13,r25,12
	extu	 r13,r13,1<9>
	mak	 r13,r13,0<4>
	addu	 r13,r13,8
	addu	 r2,r2,r13
	bcnd.n	 eq0,r24,@L22
	mak	 r23,r2,0<3>
	or.u	 r13,r0,hi16(_void_type_node)
	ld	 r12,r24,20
	ld	 r13,r13,lo16(_void_type_node)
	cmp	 r12,r12,r13
	bb0.n	 ne,r12,@L22
	or.u	 r2,r0,hi16(@LC0)
	br.n	 @L41
	or	 r2,r2,lo16(@LC0)
	align	 4
@L22:
	bsr	 _get_max_uid
	mak	 r13,r23,0<1>
	cmp	 r2,r2,r13
	bb0.n	 gt,r2,@L23
	or.u	 r2,r0,hi16(@LC1)
	br.n	 @L41
	or	 r2,r2,lo16(@LC1)
	align	 4
@L23:
	ld	 r2,r25,52
	bcnd	 eq0,r2,@L25
@L27:
	ld	 r12,r2,8
	ld.bu	 r13,r12,28
	cmp	 r13,r13,26
	bb0	 ne,r13,@L42
	bcnd	 ne0,r24,@L29
	ld	 r13,r2,12
	bb1	 (31-17),r13,@L43
@L29:
	ld.bu	 r13,r12,12
	subu	 r13,r13,19
	mask	 r13,r13,0xff
	cmp	 r13,r13,1
	bb1	 hi,r13,@L26
	ld	 r13,r2,64
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,37
	bb0	 ne,r13,@L44
@L26:
	ld	 r2,r2,4
	bcnd	 ne0,r2,@L27
@L25:
	bsr	 _get_max_uid
	cmp	 r2,r2,r23
	bb0.n	 gt,r2,@L41
	or	 r2,r0,0
	bsr.n	 _get_first_nonparm_insn
	or	 r25,r0,0
	cmp	 r13,r2,0
	br.n	 @L47
	cmp	 r12,r25,r23
	align	 4
@L36:
	ld.hu	 r12,r0,r2
	subu	 r13,r12,13
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L38
	mask	 r13,r12,0xffff
	cmp	 r13,r13,15
	bb1	 ne,r13,@L35
@L38:
	addu	 r25,r25,1
@L35:
	ld	 r2,r2,12
	cmp	 r12,r25,r23
	cmp	 r13,r2,0
@L47:
	rot	 r11,r13,28
	and.c	 r13,r12,r11
	extu	 r13,r13,1<lt>
	bcnd.n	 ne0,r13,@L36
	cmp	 r13,r25,r23
	bb0.n	 ge,r13,@L32
	or.u	 r2,r0,hi16(@LC5)
	br.n	 @L41
	or	 r2,r2,lo16(@LC5)
	align	 4
@L42:
	or.u	 r2,r0,hi16(@LC2)
	br.n	 @L41
	or	 r2,r2,lo16(@LC2)
	align	 4
@L43:
	or.u	 r2,r0,hi16(@LC3)
	br.n	 @L41
	or	 r2,r2,lo16(@LC3)
	align	 4
@L44:
	or.u	 r2,r0,hi16(@LC4)
	br.n	 @L41
	or	 r2,r2,lo16(@LC4)
	align	 4
@L32:
	or	 r2,r0,0
@L41:
@Lte0:
	ld	 r1,r31,48
	ld	 r23,r31,36
	ld.d	 r24,r31,40
	jmp.n	 r1
	addu	 r31,r31,64

	align	 8
	global	 _save_for_inline
_save_for_inline:
	subu	 r31,r31,128
	st.d	 r24,r31,72
	or.u	 r25,r0,hi16(_return_label)
	ld	 r13,r25,lo16(_return_label)
	st	 r1,r31,84
	st	 r30,r31,80
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
	addu	 r30,r31,80
	st.d	 r14,r31,32
@Ltb1:
	bcnd.n	 ne0,r13,@L49
	st	 r2,r30,12
	bsr	 _gen_label_rtx
	bsr.n	 _emit_label
	st	 r2,r25,lo16(_return_label)
@L49:
	bsr.n	 _max_label_num
	or.u	 r25,r0,hi16(_max_parm_reg)
	bsr.n	 _get_first_label_num
	or	 r15,r0,r2
	bsr.n	 _max_parm_reg_num
	st	 r2,r30,36
	bsr.n	 _max_reg_num
	st	 r2,r25,lo16(_max_parm_reg)
	ld	 r4,r25,lo16(_max_parm_reg)
	mak	 r4,r4,0<2>
	addu	 r13,r4,15
	and	 r13,r13,0xfff0
	or.u	 r25,r0,hi16(_parmdecl_map)
	subu	 r31,r31,r13
	st	 r2,r30,44
	addu	 r2,r31,32
	or	 r3,r0,0
	bsr.n	 _memset
	st	 r2,r25,lo16(_parmdecl_map)
	ld	 r14,r30,12
	ld	 r12,r14,52
	bcnd.n	 eq0,r12,@L51
	or.u	 r8,r0,0x10
	or.u	 r7,r0,0xffef
	or	 r7,r7,0xffff
	ld	 r10,r25,lo16(_parmdecl_map)
	or.u	 r9,r0,0x4
@L53:
	ld	 r11,r12,64
	ld.hu	 r13,r0,r11
	cmp	 r13,r13,34
	bb1	 ne,r13,@L54
	ld	 r13,r11,4
	st	 r12,r10[r13]
	ld	 r13,r12,12
	br.n	 @L123
	and	 r13,r13,r7
	align	 4
@L54:
	ld	 r13,r12,12
	or	 r13,r13,r8
@L123:
	st	 r13,r12,12
	ld	 r13,r12,12
	or	 r13,r13,r9
	st	 r13,r12,12
	ld	 r12,r12,4
	bcnd	 ne0,r12,@L53
@L51:
	ld	 r4,r30,36
	or.u	 r13,r0,hi16(_max_parm_reg)
	ld	 r7,r30,44
	or	 r2,r0,0
	ld	 r6,r13,lo16(_max_parm_reg)
	or.u	 r13,r0,hi16(_current_function_args_size)
	or	 r3,r0,0
	ld	 r8,r13,lo16(_current_function_args_size)
	bsr.n	 _gen_inline_header_rtx
	or	 r5,r0,r15
	st	 r2,r30,20
	ld	 r16,r2,4
	bsr.n	 _preserve_data
	st	 r16,r30,28
	bsr	 _get_insns
	or	 r22,r0,r2
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,18
	bb0	 ne,r13,@L57
	bsr	 _abort
	align	 4
@L57:
	bsr.n	 _rtx_alloc
	or	 r2,r0,18
	ld	 r13,r22,16
	ld	 r14,r30,44
	or	 r17,r0,r2
	st	 r13,r17,16
	ld	 r13,r22,20
	st	 r13,r17,20
	ld	 r13,r22,4
	or.u	 r12,r0,hi16(_rtx_length+136)
	or	 r18,r0,r17
	st	 r13,r17,4
	mak	 r13,r14,0<2>
	st	 r0,r17,8
	addu	 r13,r13,19
	st	 r0,r17,12
	and	 r13,r13,0xfff0
	subu	 r24,r14,1
	subu	 r31,r31,r13
	ld	 r13,r12,lo16(_rtx_length+136)
	or.u	 r12,r0,hi16(_reg_map)
	addu	 r21,r31,32
	st	 r21,r12,lo16(_reg_map)
	mak	 r13,r13,0<2>
	cmp	 r12,r24,55
	bb0.n	 gt,r12,@L59
	addu	 r3,r13,4
	or.u	 r12,r0,hi16(_maybepermanent_obstack)
	or	 r13,r0,55
	or	 r23,r0,r3
	subu	 r13,r13,r24
	bb0.n	 (31-31),r13,@L61
	or	 r25,r12,lo16(_maybepermanent_obstack)
	ld	 r13,r25,12
	ld	 r12,r25,16
	addu	 r13,r13,r23
	cmp	 r13,r13,r12
	bb1.n	 ls,r13,@L125
	or.u	 r13,r0,hi16(_regno_reg_rtx)
	bsr.n	 __obstack_newchunk
	or	 r2,r0,r25
	or.u	 r13,r0,hi16(_regno_reg_rtx)
@L125:
	ld	 r13,r13,lo16(_regno_reg_rtx)
	ld	 r2,r25,12
	ld	 r3,r13[r24]
	bsr.n	 _memcpy
	or	 r4,r0,r23
	ld	 r13,r25,12
	ld	 r12,r25,24
	ld	 r11,r25,4
	addu	 r13,r13,r23
	ld	 r9,r25,16
	addu	 r10,r13,r12
	and.c	 r12,r10,r12
	st	 r13,r25,12
	subu	 r13,r12,r11
	subu	 r11,r9,r11
	st	 r12,r25,12
	cmp	 r13,r13,r11
	ld	 r12,r25,8
	bb0	 gt,r13,@L112
	st	 r9,r25,12
@L112:
	ld	 r13,r25,12
	ld	 r16,r30,44
	st	 r13,r25,8
	st	 r12,r21[r24]
	subu	 r24,r16,2
	cmp	 r13,r24,55
	bb0	 gt,r13,@L59
@L61:
	ld	 r13,r25,12
	ld	 r12,r25,16
	addu	 r13,r13,r23
	or.u	 r20,r0,hi16(_reg_map)
	cmp	 r13,r13,r12
	ld	 r21,r20,lo16(_reg_map)
	bb1.n	 ls,r13,@L115
	or	 r2,r0,r25
	bsr.n	 __obstack_newchunk
	or	 r3,r0,r23
@L115:
	or.u	 r19,r0,hi16(_regno_reg_rtx)
	ld	 r13,r19,lo16(_regno_reg_rtx)
	ld	 r2,r25,12
	ld	 r3,r13[r24]
	bsr.n	 _memcpy
	or	 r4,r0,r23
	ld	 r13,r25,12
	ld	 r12,r25,24
	ld	 r10,r25,4
	addu	 r13,r13,r23
	ld	 r9,r25,16
	addu	 r11,r13,r12
	and.c	 r12,r11,r12
	st	 r13,r25,12
	subu	 r13,r12,r10
	subu	 r10,r9,r10
	st	 r12,r25,12
	cmp	 r13,r13,r10
	ld	 r12,r25,8
	bb0	 gt,r13,@L116
	st	 r9,r25,12
@L116:
	ld	 r13,r25,12
	st	 r13,r25,8
	st	 r12,r21[r24]
	ld	 r13,r25,12
	ld	 r12,r25,16
	addu	 r13,r13,r23
	cmp	 r13,r13,r12
	ld	 r20,r20,lo16(_reg_map)
	bb1.n	 ls,r13,@L119
	subu	 r21,r24,1
	or	 r2,r0,r25
	bsr.n	 __obstack_newchunk
	or	 r3,r0,r23
@L119:
	ld	 r13,r19,lo16(_regno_reg_rtx)
	ld	 r2,r25,12
	ld	 r3,r13[r21]
	bsr.n	 _memcpy
	or	 r4,r0,r23
	ld	 r13,r25,12
	or	 r10,r0,r25
	addu	 r13,r13,r23
	st	 r13,r25,12
	ld	 r12,r10,24
	ld	 r11,r10,4
	addu	 r13,r13,r12
	ld	 r9,r10,16
	and.c	 r12,r13,r12
	subu	 r13,r12,r11
	subu	 r11,r9,r11
	st	 r12,r10,12
	cmp	 r13,r13,r11
	ld	 r12,r10,8
	bb0	 gt,r13,@L120
	st	 r9,r10,12
@L120:
	ld	 r13,r25,12
	subu	 r24,r24,2
	st	 r13,r25,8
	cmp	 r13,r24,55
	bb1.n	 gt,r13,@L61
	st	 r12,r20[r21]
@L59:
	ld	 r14,r30,44
	or.u	 r13,r0,hi16(_regno_reg_rtx)
	ld	 r2,r13,lo16(_regno_reg_rtx)
	or.u	 r13,r0,hi16(_reg_map)
	subu	 r4,r14,56
	ld	 r3,r13,lo16(_reg_map)
	mak	 r4,r4,0<2>
	addu	 r2,r2,224
	bsr.n	 _memcpy
	addu	 r3,r3,224
	ld	 r16,r30,36
	subu	 r10,r15,r16
	mak	 r13,r10,0<2>
	addu	 r13,r13,15
	ld	 r24,r30,36
	and	 r13,r13,0xfff0
	subu	 r31,r31,r13
	mak	 r12,r24,0<2>
	addu	 r13,r31,32
	or.u	 r11,r0,hi16(_label_map)
	subu	 r13,r13,r12
	cmp	 r12,r24,r15
	bb0.n	 lt,r12,@L68
	st	 r13,r11,lo16(_label_map)
	mask	 r12,r10,3
	bcnd.n	 eq0,r12,@L70
	or	 r23,r0,r11
	cmp	 r13,r12,1
	bb0.n	 gt,r13,@L90
	cmp	 r13,r12,2
	bb0	 gt,r13,@L91
	bsr	 _gen_label_rtx
	ld	 r13,r23,lo16(_label_map)
	st	 r2,r13[r24]
	addu	 r24,r24,1
@L91:
	bsr	 _gen_label_rtx
	ld	 r13,r23,lo16(_label_map)
	st	 r2,r13[r24]
	addu	 r24,r24,1
@L90:
	bsr	 _gen_label_rtx
	ld	 r13,r23,lo16(_label_map)
	st	 r2,r13[r24]
	addu	 r24,r24,1
	cmp	 r12,r24,r15
	bb0	 lt,r12,@L68
@L70:
	bsr.n	 _gen_label_rtx
	addu	 r25,r24,3
	ld	 r13,r23,lo16(_label_map)
	bsr.n	 _gen_label_rtx
	st	 r2,r13[r24]
	ld	 r12,r23,lo16(_label_map)
	addu	 r13,r24,1
	bsr.n	 _gen_label_rtx
	st	 r2,r12[r13]
	addu	 r12,r24,2
	ld	 r13,r23,lo16(_label_map)
	addu	 r24,r24,4
	bsr.n	 _gen_label_rtx
	st	 r2,r13[r12]
	ld	 r13,r23,lo16(_label_map)
	cmp	 r12,r24,r15
	bb1.n	 lt,r12,@L70
	st	 r2,r13[r25]
@L68:
	ld	 r14,r30,28
	mak	 r4,r14,0<2>
	addu	 r13,r4,15
	and	 r13,r13,0xfff0
	subu	 r31,r31,r13
	or.u	 r13,r0,hi16(_insn_map)
	addu	 r2,r31,32
	or	 r3,r0,0
	bsr.n	 _memset
	st	 r2,r13,lo16(_insn_map)
@L124:
	ld	 r22,r22,12
	bcnd	 eq0,r22,@L73
	ld.hu	 r2,r0,r22
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	st	 r0,r13,lo16(_orig_asm_operands_vector)
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	cmp	 r12,r2,16
	bb0.n	 ne,r12,@L83
	st	 r0,r13,lo16(_copy_asm_operands_vector)
	bb1.n	 ls,r12,@L86
	cmp	 r13,r2,17
	bb0.n	 ne,r13,@L82
	cmp	 r13,r2,18
	bb1	 ne,r13,@L84
	ld	 r13,r22,20
	addu	 r13,r13,6
	bcnd	 eq0,r13,@L124
	bsr.n	 _rtx_alloc
	or	 r2,r0,18
	ld	 r13,r22,16
	or	 r25,r0,r2
	st	 r13,r25,16
	ld	 r13,r22,20
	br.n	 @L76
	st	 r13,r25,20
	align	 4
@L86:
	cmp	 r13,r2,13
	bb1	 lo,r13,@L84
	bsr	 _rtx_alloc
	or	 r25,r0,r2
	bsr.n	 _copy_for_inline
	ld	 r2,r22,16
	st	 r2,r25,16
	subu	 r13,r0,1
	st	 r13,r25,20
	st	 r0,r25,24
	bsr.n	 _copy_for_inline
	ld	 r2,r22,28
	br.n	 @L76
	st	 r2,r25,28
	align	 4
@L82:
	or.u	 r13,r0,hi16(_label_map)
	ld	 r12,r22,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r25,r13[r12]
	br	 @L76
	align	 4
@L83:
	bsr.n	 _rtx_alloc
	or	 r2,r0,16
	br.n	 @L76
	or	 r25,r0,r2
	align	 4
@L84:
	bsr	 _abort
	align	 4
@L76:
	ld	 r13,r22,4
	st	 r13,r25,4
	or.u	 r13,r0,hi16(_insn_map)
	ld	 r12,r22,4
	ld	 r13,r13,lo16(_insn_map)
	st	 r25,r13[r12]
	st	 r25,r18,12
	st	 r18,r25,8
	br.n	 @L124
	or	 r18,r0,r25
	align	 4
@L73:
	bsr.n	 _get_first_nonparm_insn
	st	 r0,r18,12
	ld	 r16,r30,20
	bsr.n	 _get_insns
	st	 r2,r16,12
	ld	 r14,r30,12
	st	 r2,r16,16
	bsr.n	 _get_frame_size
	st	 r16,r14,72
	or.u	 r13,r0,hi16(_parmdecl_map)
	st	 r2,r14,68
	st	 r0,r13,lo16(_parmdecl_map)
	or.u	 r13,r0,hi16(_label_map)
	st	 r0,r13,lo16(_label_map)
	or.u	 r13,r0,hi16(_reg_map)
	st	 r0,r13,lo16(_reg_map)
	or	 r2,r0,r17
	ld	 r13,r14,12
	or.u	 r12,r0,hi16(_return_label)
	or	 r3,r0,r18
	st	 r0,r12,lo16(_return_label)
	or	 r13,r13,512
	bsr.n	 _set_new_first_and_last_insn
	st	 r13,r14,12
@Lte1:
	subu	 r31,r30,80
	ld	 r1,r31,84
	ld	 r30,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,128

	align	 8
_copy_for_inline:
	subu	 r31,r31,96
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	or	 r21,r0,r2
	st.d	 r16,r31,40
@Ltb2:
	bcnd.n	 ne0,r21,@L172
	or	 r17,r0,r21
	br.n	 @L216
	or	 r2,r0,0
	align	 4
@L172:
	ld.hu	 r18,r0,r21
	subu	 r11,r18,22
	or.u	 r13,r0,hi16(@L195)
	cmp	 r12,r11,19
	bb0.n	 ls,r12,@L173
	or	 r13,r13,lo16(@L195)
	ld	 r13,r13[r11]
	jmp	 r13
	align	 4
@L195:
	word	 @L180
	word	 @L173
	word	 @L173
	word	 @L193
	word	 @L173
	word	 @L173
	word	 @L173
	word	 @L173
	word	 @L215
	word	 @L215
	word	 @L173
	word	 @L215
	word	 @L190
	word	 @L173
	word	 @L173
	word	 @L182
	word	 @L189
	word	 @L215
	word	 @L215
	word	 @L215
	align	 4
@L180:
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	ld	 r12,r17,16
	ld	 r13,r13,lo16(_orig_asm_operands_vector)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L173
	bsr.n	 _rtx_alloc
	or	 r2,r0,22
	ld	 r13,r17,4
	or	 r21,r0,r2
	st	 r13,r21,4
	ld	 r13,r17,8
	st	 r13,r21,8
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	ld	 r12,r17,12
	ld	 r13,r13,lo16(_copy_asm_operands_vector)
	st	 r12,r21,12
	st	 r13,r21,16
	ld	 r13,r17,20
	br.n	 @L216
	st	 r13,r2,20
	align	 4
@L182:
	ld	 r10,r21,4
	ld.hu	 r12,r0,r10
	subu	 r13,r12,38
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb0.n	 hi,r13,@L215
	mask	 r11,r12,0xffff
	cmp	 r13,r11,30
	cmp	 r12,r11,32
	or	 r13,r13,r12
	extu	 r13,r13,1<eq>
	bcnd.n	 ne0,r13,@L216
	or	 r2,r0,r21
	cmp	 r13,r11,44
	bb1	 ne,r13,@L173
	ld	 r12,r10,4
	br	 @L173
	align	 4
@L189:
	ld	 r13,r17,4
	or.u	 r12,r0,hi16(_label_map)
	ld	 r11,r13,16
	ld	 r13,r12,lo16(_label_map)
	ld.bu	 r3,r17,2
	ld	 r4,r13[r11]
	or	 r2,r0,38
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L218
@L219:
	align	 4
@L190:
	ld	 r12,r21,4
	cmp	 r13,r12,55
	bb0.n	 gt,r13,@L215
	or.u	 r13,r0,hi16(_reg_map)
	ld	 r13,r13,lo16(_reg_map)
	ld	 r2,r13[r12]
	br	 @L216
	align	 4
@L193:
	ld	 r2,r21,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,34
	bb1.n	 ne,r13,@L173
	or.u	 r13,r0,hi16(_max_parm_reg)
	ld	 r2,r2,4
	ld	 r13,r13,lo16(_max_parm_reg)
	cmp	 r13,r2,r13
	bb1.n	 ge,r13,@L173
	cmp	 r13,r2,55
	bb0.n	 gt,r13,@L173
	or.u	 r13,r0,hi16(_parmdecl_map)
	ld	 r13,r13,lo16(_parmdecl_map)
	ld	 r2,r13[r2]
	bcnd	 eq0,r2,@L173
	ld	 r13,r2,12
	and.u	 r13,r13,0xfffb
	st	 r13,r2,12
@L173:
	bsr.n	 _rtx_alloc
	or	 r2,r0,r18
	or.u	 r13,r0,hi16(_rtx_length)
	or	 r25,r13,lo16(_rtx_length)
	ld	 r4,r25[r18]
	or	 r21,r0,r2
	or	 r3,r0,r17
	addu	 r4,r4,1
	bsr.n	 _memcpy
	mak	 r4,r4,0<2>
	or.u	 r13,r0,hi16(_rtx_format)
	ld	 r12,r25[r18]
	or	 r13,r13,lo16(_rtx_format)
	ld	 r19,r13[r18]
	bcnd.n	 le0,r12,@L198
	or	 r20,r0,0
	or	 r16,r0,r25
	or	 r22,r0,r21
@L200:
	ld.b	 r13,r0,r19
	cmp	 r12,r13,101
	bb0.n	 ne,r12,@L202
	addu	 r19,r19,1
	bb1	 gt,r12,@L213
	cmp	 r13,r13,69
	bb0	 ne,r13,@L204
	br	 @L199
	align	 4
@L213:
	cmp	 r13,r13,117
	bb0.n	 ne,r13,@L203
	or.u	 r12,r0,hi16(_insn_map)
	br	 @L199
	align	 4
@L202:
	bsr.n	 _copy_for_inline
	ld	 r2,r22,4
	br.n	 @L199
	st	 r2,r22,4
	align	 4
@L203:
	ld	 r13,r22,4
	ld	 r11,r13,4
	ld	 r13,r12,lo16(_insn_map)
	ld	 r2,r13[r11]
	br	 @L216
	align	 4
@L204:
	ld	 r3,r22,4
	bcnd	 eq0,r3,@L199
	ld	 r2,r0,r3
	bcnd	 eq0,r2,@L199
	bsr.n	 _gen_rtvec_v
	addu	 r3,r3,4
	st	 r2,r22,4
	ld	 r13,r0,r2
	bcnd.n	 eq0,r13,@L199
	or	 r24,r0,0
	or	 r23,r0,r22
	or	 r25,r0,0
@L209:
	ld	 r13,r23,4
	addu	 r13,r13,r25
	bsr.n	 _copy_for_inline
	ld	 r2,r13,4
	ld	 r13,r23,4
	addu	 r13,r13,r25
	st	 r2,r13,4
	ld	 r13,r23,4
	ld	 r13,r0,r13
	addu	 r24,r24,1
	cmp	 r13,r24,r13
	bb1.n	 lo,r13,@L209
	addu	 r25,r25,4
@L199:
	ld	 r13,r16[r18]
	addu	 r20,r20,1
	cmp	 r13,r20,r13
	bb1.n	 lt,r13,@L200
	addu	 r22,r22,4
@L198:
	cmp	 r13,r18,22
	bb0.n	 eq,r13,@L216
	or	 r2,r0,r21
	or.u	 r12,r0,hi16(_orig_asm_operands_vector)
	ld	 r13,r12,lo16(_orig_asm_operands_vector)
	bcnd	 ne0,r13,@L216
	ld	 r13,r17,16
	st	 r13,r12,lo16(_orig_asm_operands_vector)
	ld	 r12,r21,16
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	st	 r12,r13,lo16(_copy_asm_operands_vector)
@L215:
	or	 r2,r0,r21
@L216:
@Lte2:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	jmp.n	 r1
	addu	 r31,r31,96
	def	 @L218,@L216-@L219

	align	 8
	global	 _expand_inline_function
_expand_inline_function:
	subu	 r31,r31,192
	st	 r1,r31,84
	st	 r30,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
	addu	 r30,r31,80
	st.d	 r14,r31,32
@Ltb3:
	st	 r2,r30,12
	ld	 r15,r2,72
	ld	 r13,r15,32
	ld	 r8,r15,12
	ld	 r18,r15,20
	st	 r8,r30,44
	ld	 r8,r15,24
	st	 r5,r30,20
	st	 r6,r30,28
	st	 r7,r30,36
	or	 r25,r0,r3
	st	 r0,r30,76
	or	 r14,r0,r4
	st	 r0,r30,84
	or	 r17,r0,0
	st	 r18,r30,60
	addu	 r13,r13,1
	st	 r13,r30,52
	cmp	 r13,r13,55
	bb1.n	 gt,r13,@L221
	st	 r8,r30,68
	bsr	 _abort
	align	 4
@L221:
	ld	 r18,r30,12
	bsr.n	 _list_length
	ld	 r2,r18,52
	or	 r23,r0,r2
	or	 r2,r0,r25
	or.u	 r13,r0,hi16(_first_parm_offset)
	or	 r12,r0,8
	bsr.n	 _list_length
	st	 r12,r13,lo16(_first_parm_offset)
	cmp	 r2,r2,r23
	bb0	 ne,r2,@L222
@L347:
	br.n	 @L320
	subu	 r2,r0,1
	align	 4
@L222:
	ld	 r8,r30,12
	ld	 r24,r8,52
	bcnd.n	 eq0,r24,@L224
	or	 r19,r0,r25
@L226:
	ld	 r13,r19,20
	ld	 r12,r24,52
	ld	 r11,r13,8
	ld.bu	 r12,r12,28
	ld.bu	 r13,r11,28
	cmp	 r13,r12,r13
	bb1.n	 ne,r13,@L347
	cmp	 r13,r12,26
	bb1	 ne,r13,@L225
	ld	 r13,r24,8
	cmp	 r13,r11,r13
	bb0.n	 eq,r13,@L320
	subu	 r2,r0,1
@L225:
	ld	 r24,r24,4
	ld	 r19,r19,4
	bcnd	 ne0,r24,@L226
@L224:
	bsr.n	 _pushlevel
	or	 r2,r0,0
	bsr.n	 _expand_start_bindings
	or	 r2,r0,0
	mak	 r13,r23,0<2>
	ld	 r18,r30,12
	addu	 r13,r13,15
	or	 r19,r0,r25
	and	 r13,r13,0xfff0
	ld	 r24,r18,52
	subu	 r31,r31,r13
	or	 r23,r0,0
	bcnd.n	 eq0,r24,@L352
	addu	 r16,r31,32
@L233:
	ld	 r2,r24,16
	ld	 r3,r24,20
	ld	 r22,r19,20
	ld	 r13,r24,52
	ld	 r12,r24,8
	ld.bu	 r21,r13,28
	ld.bu	 r12,r12,28
	bsr.n	 _emit_note
	st	 r12,r30,100
	ld	 r13,r24,12
	bb0.n	 (31-17),r13,@L234
	mask.u	 r13,r13,0x14
	bsr.n	 _int_size_in_bytes
	ld	 r2,r24,8
	or	 r3,r0,r2
	bsr.n	 _assign_stack_local
	or	 r2,r0,r21
	or	 r25,r0,r2
	ld	 r2,r24,28
	bsr.n	 _memory_address_p
	ld	 r3,r25,4
	bcnd.n	 ne0,r2,@L348
	or	 r2,r0,r22
	bsr.n	 _copy_rtx
	ld	 r2,r25,4
	or	 r4,r0,r2
	or	 r2,r0,r25
	bsr.n	 _change_address
	or	 r3,r0,0
	or	 r25,r0,r2
	or	 r2,r0,r22
@L348:
	or	 r3,r0,r25
	or	 r4,r0,0
	bsr.n	 _store_expr
	addu	 r1,r1,@L353
@L354:
	align	 4
@L234:
	or.u	 r12,r0,0x4
	cmp	 r13,r13,r12
	bb0.n	 ne,r13,@L237
	or	 r2,r0,r22
	bsr.n	 _gen_reg_rtx
	or	 r2,r0,r21
	or	 r25,r0,r2
	or	 r2,r0,r22
	or	 r4,r0,0
	or	 r3,r0,r25
	bsr.n	 _store_expr
	addu	 r1,r1,@L355
@L356:
	align	 4
@L237:
	or	 r3,r0,0
	or	 r4,r0,r21
	bsr.n	 _expand_expr
	or	 r5,r0,0
	or	 r25,r0,r2
	ld.hu	 r11,r0,r25
	mask	 r12,r11,0xffff
	cmp	 r13,r12,34
	bb0.n	 ne,r13,@L236
	subu	 r13,r11,38
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L236
	cmp	 r13,r12,30
	cmp	 r12,r12,32
	or	 r13,r13,r12
	extu	 r12,r13,1<eq>
	xor	 r13,r12,1
	bcnd	 eq0,r13,@L236
	bsr	 _copy_to_reg
	or	 r25,r0,r2
@L236:
	ld	 r8,r30,100
	cmp	 r13,r21,r8
	bb0	 ne,r13,@L240
	ld	 r2,r30,100
	bsr.n	 _convert_to_mode
	or	 r3,r0,r25
	or	 r25,r0,r2
@L240:
	st	 r25,r16[r23]
	ld	 r24,r24,4
	ld	 r19,r19,4
	bcnd.n	 ne0,r24,@L233
	addu	 r23,r23,1
	ld	 r18,r30,12
@L352:
	ld	 r2,r18,52
	bsr.n	 _copy_parm_decls
	or	 r3,r0,r16
	bsr	 _emit_queue
	bsr	 _do_pending_stack_adjust
	ld	 r8,r30,36
	bcnd.n	 eq0,r8,@L242
	or.u	 r13,r0,hi16(_struct_value_rtx)
	ld	 r2,r13,lo16(_struct_value_rtx)
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,37
	bb1	 ne,r13,@L243
	ld	 r3,r30,36
	bsr.n	 _force_reg
	or	 r2,r0,4
	br.n	 @L242
	st	 r2,r30,84
	align	 4
@L243:
	ld	 r3,r30,36
	st	 r2,r30,84
	bsr.n	 _emit_move_insn
	ld	 r2,r30,84
@L242:
	ld	 r18,r30,52
	mak	 r4,r18,0<2>
	addu	 r13,r4,15
	and	 r13,r13,0xfff0
	subu	 r31,r31,r13
	or.u	 r13,r0,hi16(_reg_map)
	addu	 r2,r31,32
	or	 r3,r0,0
	bsr.n	 _memset
	st	 r2,r13,lo16(_reg_map)
	ld	 r8,r30,12
	ld	 r25,r8,52
	bcnd	 eq0,r25,@L245
	ld	 r12,r15,36
	or.u	 r22,r0,hi16(_parm_map)
	bcnd.n	 ge0,r12,@L246
	or	 r4,r0,r12
	addu	 r4,r12,3
@L246:
	and	 r4,r4,0xfffc
	addu	 r13,r4,15
	and	 r13,r13,0xfff0
	subu	 r31,r31,r13
	addu	 r2,r31,32
	st	 r2,r22,lo16(_parm_map)
	bsr.n	 _memset
	or	 r3,r0,0
	or.u	 r13,r0,hi16(_first_parm_offset)
	ld	 r12,r13,lo16(_first_parm_offset)
	bcnd	 ge0,r12,@L248
	addu	 r12,r12,3
@L248:
	or	 r24,r0,r25
	or	 r9,r0,r22
	or	 r23,r0,0
	ld	 r13,r9,lo16(_parm_map)
	and	 r12,r12,0xfffc
	or.u	 r25,r0,hi16(_frame_pointer_rtx)
	subu	 r13,r13,r12
	st	 r13,r9,lo16(_parm_map)
@L252:
	ld	 r13,r24,44
	bcnd	 lt0,r13,@L253
	ld	 r12,r16[r23]
	ld	 r11,r9,lo16(_parm_map)
	ext	 r13,r13,0<5>
	br.n	 @L255
	st	 r12,r11[r13]
	align	 4
@L253:
	ld	 r11,r24,64
	ld.hu	 r12,r0,r11
	cmp	 r13,r12,37
	bb1.n	 ne,r13,@L256
	or	 r10,r0,0
	ld	 r11,r11,4
	ld.hu	 r13,r0,r11
	cmp	 r13,r13,44
	bb1	 ne,r13,@L257
	ld	 r13,r11,4
	ld	 r12,r25,lo16(_frame_pointer_rtx)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L258
	ld	 r12,r11,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb0	 ne,r13,@L343
@L258:
	ld	 r13,r11,8
	ld	 r12,r25,lo16(_frame_pointer_rtx)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L257
	ld	 r12,r11,4
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L257
@L343:
	or	 r10,r0,r12
@L257:
	bcnd	 eq0,r10,@L261
	ld	 r13,r10,4
	bcnd	 ge0,r13,@L262
	addu	 r13,r13,3
@L262:
	ld	 r11,r9,lo16(_parm_map)
	ld	 r12,r16[r23]
	ext	 r13,r13,0<2>
	br.n	 @L255
	st	 r12,r11[r13]
	align	 4
@L261:
	bsr	 _abort
	align	 4
@L256:
	cmp	 r13,r12,34
	bb0	 ne,r13,@L255
	bsr	 _abort
	align	 4
@L255:
	ld	 r12,r24,64
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,34
	bb1.n	 ne,r13,@L251
	or.u	 r13,r0,hi16(_reg_map)
	ld	 r11,r12,4
	ld	 r12,r13,lo16(_reg_map)
	ld	 r13,r16[r23]
	st	 r13,r12[r11]
@L251:
	ld	 r24,r24,4
	bcnd.n	 ne0,r24,@L252
	addu	 r23,r23,1
	ld	 r18,r30,84
	bcnd.n	 eq0,r18,@L274
	or.u	 r13,r0,hi16(_struct_value_incoming_rtx)
	ld	 r11,r13,lo16(_struct_value_incoming_rtx)
	ld.hu	 r12,r0,r11
	cmp	 r13,r12,34
	bb0.n	 ne,r13,@L274
	cmp	 r13,r12,37
	bb1.n	 ne,r13,@L271
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r11,r11,4
	ld	 r13,r13,lo16(_frame_pointer_rtx)
	ld	 r12,r11,4
	cmp	 r12,r12,r13
	bb1	 ne,r12,@L271
	ld	 r12,r11,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L271
	ld	 r11,r12,4
	bcnd	 ge0,r11,@L272
	addu	 r11,r11,3
@L272:
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r8,r30,84
	ld	 r12,r13,lo16(_parm_map)
	ext	 r13,r11,0<2>
	br.n	 @L274
	st	 r8,r12[r13]
	align	 4
@L271:
	bsr	 _abort
	align	 4
@L245:
	or.u	 r13,r0,hi16(_parm_map)
	st	 r0,r13,lo16(_parm_map)
@L274:
	ld	 r18,r30,68
	ld	 r8,r30,60
	subu	 r10,r18,r8
	mak	 r13,r10,0<2>
	addu	 r13,r13,15
	ld	 r23,r30,60
	and	 r13,r13,0xfff0
	subu	 r31,r31,r13
	mak	 r12,r23,0<2>
	addu	 r13,r31,32
	or.u	 r11,r0,hi16(_label_map)
	subu	 r13,r13,r12
	cmp	 r12,r23,r18
	bb0.n	 lt,r12,@L276
	st	 r13,r11,lo16(_label_map)
	mask	 r12,r10,3
	bcnd.n	 eq0,r12,@L278
	or	 r24,r0,r11
	cmp	 r13,r12,1
	bb0.n	 gt,r13,@L325
	cmp	 r13,r12,2
	bb0	 gt,r13,@L326
	bsr	 _gen_label_rtx
	ld	 r13,r24,lo16(_label_map)
	st	 r2,r13[r23]
	addu	 r23,r23,1
@L326:
	bsr	 _gen_label_rtx
	ld	 r13,r24,lo16(_label_map)
	st	 r2,r13[r23]
	addu	 r23,r23,1
@L325:
	bsr	 _gen_label_rtx
	ld	 r13,r24,lo16(_label_map)
	ld	 r18,r30,68
	st	 r2,r13[r23]
	addu	 r23,r23,1
	cmp	 r12,r23,r18
	bb0	 lt,r12,@L276
@L278:
	bsr.n	 _gen_label_rtx
	addu	 r25,r23,3
	ld	 r13,r24,lo16(_label_map)
	bsr.n	 _gen_label_rtx
	st	 r2,r13[r23]
	ld	 r12,r24,lo16(_label_map)
	addu	 r13,r23,1
	bsr.n	 _gen_label_rtx
	st	 r2,r12[r13]
	ld	 r13,r24,lo16(_label_map)
	addu	 r12,r23,2
	bsr.n	 _gen_label_rtx
	st	 r2,r13[r12]
	ld	 r8,r30,68
	addu	 r23,r23,4
	ld	 r13,r24,lo16(_label_map)
	cmp	 r12,r23,r8
	bb1.n	 lt,r12,@L278
	st	 r2,r13[r25]
@L276:
	ld	 r13,r15,4
	mak	 r13,r13,0<2>
	addu	 r13,r13,15
	or	 r3,r0,0
	and	 r13,r13,0xfff0
	ld	 r4,r15,4
	subu	 r31,r31,r13
	or.u	 r13,r0,hi16(_insn_map)
	addu	 r2,r31,32
	mak	 r4,r4,0<2>
	bsr.n	 _memset
	st	 r2,r13,lo16(_insn_map)
	ld	 r18,r30,36
	bcnd.n	 ne0,r18,@L349
	or.u	 r13,r0,hi16(_inline_target)
	ld	 r8,r30,28
	ld.bu	 r2,r8,28
	bcnd	 ne0,r2,@L280
@L349:
	br.n	 @L282
	st	 r0,r13,lo16(_inline_target)
	align	 4
@L280:
	ld	 r18,r30,12
	ld	 r13,r18,48
	ld.bu	 r24,r13,28
	bcnd.n	 eq0,r14,@L283
	or	 r25,r0,r2
	ld.hu	 r13,r0,r14
	cmp	 r13,r13,34
	bb1	 ne,r13,@L283
	ld.bu	 r13,r14,2
	cmp	 r13,r13,r25
	bb0.n	 ne,r13,@L344
	or.u	 r13,r0,hi16(_inline_target)
@L283:
	bsr.n	 _gen_reg_rtx
	or	 r2,r0,r25
	or.u	 r13,r0,hi16(_inline_target)
	or	 r14,r0,r2
@L344:
	st	 r14,r13,lo16(_inline_target)
	cmp	 r13,r24,r25
	bb0	 ne,r13,@L282
	or	 r2,r0,35
	or	 r3,r0,r24
	or	 r4,r0,r14
	bsr.n	 _gen_rtx
	or	 r5,r0,0
	or.u	 r13,r0,hi16(_inline_target)
	st	 r2,r13,lo16(_inline_target)
@L282:
	bsr	 _get_frame_size
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	subu	 r3,r0,r2
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	or.u	 r13,r0,hi16(_fp_delta)
	bsr.n	 _plus_constant
	st	 r3,r13,lo16(_fp_delta)
	or	 r3,r0,r2
	bsr.n	 _copy_to_mode_reg
	or	 r2,r0,4
	ld	 r8,r30,12
	ld	 r24,r30,44
	or.u	 r13,r0,hi16(_inline_fp_rtx)
	st	 r2,r13,lo16(_inline_fp_rtx)
	ld	 r3,r8,68
	bsr.n	 _assign_stack_local
	or	 r2,r0,0
	bcnd	 eq0,r24,@L287
@L289:
	ld.hu	 r11,r0,r24
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	or	 r23,r0,0
	st	 r0,r13,lo16(_orig_asm_operands_vector)
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	cmp	 r12,r11,15
	bb0.n	 ne,r12,@L304
	st	 r0,r13,lo16(_copy_asm_operands_vector)
	bb0.n	 ls,r12,@L313
	cmp	 r13,r11,13
	bb0.n	 ne,r13,@L291
	cmp	 r13,r11,14
	bb0	 ne,r13,@L301
	br	 @L311
	align	 4
@L313:
	cmp	 r13,r11,17
	bb0	 ne,r13,@L306
	bb1.n	 lo,r13,@L307
	cmp	 r13,r11,18
	bb0	 ne,r13,@L308
	br	 @L311
	align	 4
@L291:
	ld	 r25,r24,16
	bcnd	 eq0,r17,@L292
	ld.hu	 r13,r0,r25
	cmp	 r13,r13,25
	bb1.n	 ne,r13,@L294
	or.u	 r13,r0,hi16(_stack_pointer_rtx)
	ld	 r12,r25,4
	ld	 r13,r13,lo16(_stack_pointer_rtx)
	cmp	 r12,r12,r13
	bb0	 ne,r12,@L292
	ld	 r2,r25,8
	bsr.n	 _rtx_equal_p
	or	 r3,r0,r17
	bcnd	 eq0,r2,@L294
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r25,4
	or	 r4,r0,r2
	or	 r2,r0,25
	or	 r3,r0,0
	bsr.n	 _gen_rtx
	or	 r5,r0,r17
	bsr.n	 _emit_insn
	or	 r17,r0,0
	or	 r20,r0,r2
	ld	 r13,r0,r20
	br.n	 @L350
	or	 r13,r13,2
	align	 4
@L294:
	ld.hu	 r13,r0,r25
	cmp	 r13,r13,26
	bb1	 ne,r13,@L295
	ld	 r2,r25,4
	bsr.n	 _rtx_equal_p
	or	 r3,r0,r17
	bcnd.n	 eq0,r2,@L295
	or	 r2,r0,25
	or.u	 r13,r0,hi16(_inline_target)
	or	 r3,r0,0
	ld	 r4,r13,lo16(_inline_target)
	bsr.n	 _gen_rtx
	or	 r5,r0,r17
	bsr.n	 _emit_insn
	or	 r17,r0,0
	or	 r20,r0,r2
	ld	 r13,r0,r20
	br.n	 @L350
	or	 r13,r13,2
	align	 4
@L295:
	or	 r17,r0,0
@L292:
	ld.hu	 r11,r0,r25
	cmp	 r13,r11,26
	bb1.n	 ne,r13,@L297
	or	 r20,r0,0
	ld	 r13,r25,4
	or.u	 r12,r0,0x22
	or	 r12,r12,0x2
	ld	 r13,r0,r13
	and	 r13,r13,0x2
	cmp	 r13,r13,r12
	bb0.n	 ne,r13,@L351
	or.u	 r13,r0,hi16(_insn_map)
@L297:
	cmp	 r13,r11,25
	bb1.n	 ne,r13,@L298
	or.u	 r13,r0,hi16(_cc0_rtx)
	ld	 r12,r25,4
	ld	 r13,r13,lo16(_cc0_rtx)
	cmp	 r12,r12,r13
	bb1	 ne,r12,@L298
	bsr.n	 _try_fold_cc0
	or	 r2,r0,r24
	or	 r23,r0,r2
@L298:
	bcnd	 eq0,r23,@L299
	or	 r24,r0,r23
	br.n	 @L351
	or.u	 r13,r0,hi16(_insn_map)
	align	 4
@L299:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r25
	bsr.n	 _emit_insn
	addu	 r1,r1,@L357
@L358:
	align	 4
@L301:
	ld	 r2,r24,16
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,29
	bb1.n	 ne,r13,@L302
	or	 r17,r0,0
	ld	 r18,r30,76
	bcnd	 ne0,r18,@L303
	bsr	 _gen_label_rtx
	st	 r2,r30,76
@L303:
	ld	 r2,r30,76
	bsr.n	 _emit_jump
	addu	 r1,r1,@L359
@L360:
	align	 4
@L302:
	bsr	 _copy_rtx_and_substitute
	bsr	 _emit_jump_insn
@L346:
	or	 r20,r0,r2
	ld	 r13,r0,r20
	or	 r13,r13,2
@L350:
	br.n	 @L290
	st	 r13,r0,r20
	align	 4
@L304:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r24,16
	bsr	 _emit_call_insn
	or	 r20,r0,r2
	ld	 r13,r0,r20
	or	 r13,r13,2
	st	 r13,r0,r20
	ld	 r12,r24,16
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,25
	bb1	 ne,r13,@L290
	ld	 r17,r12,4
	br.n	 @L351
	or.u	 r13,r0,hi16(_insn_map)
	align	 4
@L306:
	or.u	 r13,r0,hi16(_label_map)
	ld	 r12,r24,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r2,r13[r12]
	bsr.n	 _emit_label
	or	 r17,r0,0
	br.n	 @L290
	or	 r20,r0,r2
	align	 4
@L307:
	bsr	 _emit_barrier
	br.n	 @L290
	or	 r20,r0,r2
	align	 4
@L308:
	ld	 r3,r24,20
	addu	 r13,r3,6
	bcnd.n	 eq0,r13,@L290
	or	 r20,r0,0
	bsr.n	 _emit_note
	ld	 r2,r24,16
	br.n	 @L290
	or	 r20,r0,r2
	align	 4
@L311:
	bsr	 _abort
	align	 4
@L290:
	or.u	 r13,r0,hi16(_insn_map)
@L351:
	ld	 r12,r24,4
	ld	 r13,r13,lo16(_insn_map)
	st	 r20,r13[r12]
	ld	 r24,r24,12
	bcnd	 ne0,r24,@L289
@L287:
	ld	 r8,r30,76
	bcnd	 eq0,r8,@L315
	bsr.n	 _emit_label
	ld	 r2,r30,76
@L315:
	ld	 r18,r30,12
	ld	 r2,r18,60
	bsr.n	 _copy_decl_tree
	or	 r3,r0,0
	bsr	 _getdecls
	or	 r3,r0,1
	bsr.n	 _expand_end_bindings
	or	 r4,r0,1
	or	 r2,r0,1
	or	 r3,r0,1
	bsr.n	 _poplevel
	or	 r4,r0,0
	ld	 r8,r30,20
	or.u	 r13,r0,hi16(_reg_map)
	st	 r0,r13,lo16(_reg_map)
	or.u	 r13,r0,hi16(_label_map)
	bcnd.n	 ne0,r8,@L317
	st	 r0,r13,lo16(_label_map)
	ld	 r18,r30,28
	ld.bu	 r13,r18,28
	bcnd	 ne0,r13,@L316
@L317:
	br.n	 @L320
	or	 r2,r0,0
	align	 4
@L316:
	ld	 r8,r30,36
	bcnd.n	 eq0,r8,@L320
	or	 r2,r0,r14
	bcnd	 ne0,r14,@L320
	ld	 r3,r30,36
	bsr.n	 _memory_address
	or	 r2,r0,26
	or	 r4,r0,r2
	or	 r2,r0,37
	or	 r3,r0,26
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L361
@L362:
	align	 4
@L320:
@Lte3:
	subu	 r31,r30,80
	ld	 r1,r31,84
	ld	 r30,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,192
	def	 @L361,@L320-@L362
	def	 @L359,@L290-@L360
	def	 @L357,@L346-@L358
	def	 @L355,@L236-@L356
	def	 @L353,@L236-@L354

	align	 8
_copy_parm_decls:
	subu	 r31,r31,64
	st	 r23,r31,36
	or	 r23,r0,r3
	st.d	 r24,r31,40
	or	 r25,r0,r2
	or	 r24,r0,0
	bcnd.n	 eq0,r25,@L371
	st	 r1,r31,48
@Ltb4:
@L373:
	ld	 r3,r25,36
	ld	 r4,r25,8
	bsr.n	 _build_decl
	or	 r2,r0,43
	bsr	 _pushdecl
	ld	 r13,r2,12
	or	 r13,r13,256
	st	 r13,r2,12
	ld	 r13,r23[r24]
	st	 r13,r2,64
	ld	 r25,r25,4
	bcnd.n	 ne0,r25,@L373
	addu	 r24,r24,1
@L371:
@Lte4:
	ld	 r1,r31,48
	ld	 r23,r31,36
	ld.d	 r24,r31,40
	jmp.n	 r1
	addu	 r31,r31,64

	align	 8
_copy_decl_tree:
	subu	 r31,r31,64
	st.d	 r22,r31,32
	or	 r22,r0,r2
	or	 r23,r0,r3
	st	 r1,r31,48
	or	 r2,r0,0
	bsr.n	 _pushlevel
	st.d	 r24,r31,40
@Ltb5:
	ld	 r25,r22,28
	bcnd	 eq0,r25,@L393
@L395:
	ld.bu	 r2,r25,12
	ld	 r3,r25,36
	bsr.n	 _build_decl
	ld	 r4,r25,8
	ld	 r13,r25,20
	or	 r24,r0,r2
	st	 r13,r24,20
	ld	 r13,r25,16
	st	 r13,r24,16
	ld	 r11,r25,64
	bcnd	 eq0,r11,@L396
	ld.hu	 r13,r0,r11
	cmp	 r13,r13,37
	bb1	 ne,r13,@L397
	ld	 r13,r11,4
	ld.hu	 r12,r0,r13
	subu	 r13,r12,38
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L398
	mask	 r13,r12,0xffff
	cmp	 r12,r13,30
	cmp	 r13,r13,32
	or	 r12,r12,r13
	extu	 r12,r12,1<eq>
	bcnd	 eq0,r12,@L397
@L398:
	br.n	 @L396
	st	 r11,r24,64
	align	 4
@L397:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r25,64
	st	 r2,r24,64
@L396:
	ld	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xff7f
	mask.u	 r12,r12,0x80
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xffdf
	mask.u	 r12,r12,0x20
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xffbf
	mask.u	 r12,r12,0x40
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xfffd
	mask.u	 r12,r12,0x2
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and	 r13,r13,0xbfff
	mask	 r12,r12,16384
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xfffb
	mask.u	 r12,r12,0x4
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xffef
	mask.u	 r12,r12,0x10
	or	 r13,r13,r12
	or	 r2,r0,r24
	or	 r13,r13,256
	bsr.n	 _pushdecl
	st	 r13,r2,12
	ld	 r25,r25,4
	bcnd	 ne0,r25,@L395
@L393:
	ld	 r25,r22,24
	bcnd.n	 eq0,r25,@L407
	or	 r3,r0,0
	or	 r2,r0,r25
@L408:
	bsr.n	 _copy_decl_tree
	addu	 r3,r23,1
	ld	 r25,r25,4
	bcnd.n	 ne0,r25,@L408
	or	 r2,r0,r25
	or	 r3,r0,0
@L407:
	cmp	 r2,r23,0
	or	 r4,r0,0
	bsr.n	 _poplevel
	extu	 r2,r2,1<gt>
@Lte5:
	ld	 r1,r31,48
	ld.d	 r24,r31,40
	ld.d	 r22,r31,32
	jmp.n	 r1
	addu	 r31,r31,64

