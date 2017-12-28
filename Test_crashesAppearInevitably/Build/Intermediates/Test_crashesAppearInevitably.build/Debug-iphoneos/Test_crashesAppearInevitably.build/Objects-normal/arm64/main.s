	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 9, 0
	.file	1 "/Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably" "/Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m"
	.globl	_my_close
	.p2align	2
_my_close:                              ; @my_close
Lfunc_begin0:
	.loc	1 32 0                  ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:32:0
	.cfi_startproc
; BB#0:
	sub	sp, sp, #32             ; =32
	stp	x29, x30, [sp, #16]     ; 8-byte Folded Spill
	add	x29, sp, #16            ; =16
Lcfi0:
	.cfi_def_cfa w29, 16
Lcfi1:
	.cfi_offset w30, -8
Lcfi2:
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
Ltmp0:
	.loc	1 33 40 prologue_end    ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:33:40
	ldur	w0, [x29, #-4]
                                        ; implicit-def: %X1
	.loc	1 33 5 is_stmt 0        ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:33:5
	mov	 x1, x0
	mov	 x8, sp
	str		x1, [x8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	adrp	x8, _orig_close@PAGE
	add	x8, x8, _orig_close@PAGEOFF
	.loc	1 34 12 is_stmt 1       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:34:12
	ldr		x8, [x8]
	.loc	1 34 23 is_stmt 0       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:34:23
	ldur	w9, [x29, #-4]
	.loc	1 34 12                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:34:12
	str	w0, [sp, #8]            ; 4-byte Folded Spill
	mov	 x0, x9
	blr	x8
	.loc	1 34 5                  ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:34:5
	ldp	x29, x30, [sp, #16]     ; 8-byte Folded Reload
	add	sp, sp, #32             ; =32
	ret
Ltmp1:
Lfunc_end0:
	.cfi_endproc

	.globl	_my_open
	.p2align	2
_my_open:                               ; @my_open
Lfunc_begin1:
	.loc	1 37 0 is_stmt 1        ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:37:0
	.cfi_startproc
; BB#0:
	sub	sp, sp, #96             ; =96
	stp	x29, x30, [sp, #80]     ; 8-byte Folded Spill
	add	x29, sp, #80            ; =80
Lcfi3:
	.cfi_def_cfa w29, 16
Lcfi4:
	.cfi_offset w30, -8
Lcfi5:
	.cfi_offset w29, -16
	mov	x8, #0
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
Ltmp2:
	.loc	1 38 13 prologue_end    ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:38:13
	stur	x8, [x29, #-32]
	.loc	1 39 12                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:39:12
	sturh	wzr, [x29, #-34]
Ltmp3:
	.loc	1 41 10                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:41:10
	ldur	w1, [x29, #-20]
Ltmp4:
	.loc	1 41 9 is_stmt 0        ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:41:9
	tbz	w1, #9, LBB1_2
; BB#1:
	.loc	1 0 9                   ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:0:9
	sub	x8, x29, #32            ; =32
	add	x9, x29, #16            ; =16
Ltmp5:
	.loc	1 43 9 is_stmt 1        ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:43:9
	stur	x9, [x29, #-32]
	.loc	1 44 16                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:44:16
	ldur	x9, [x29, #-32]
	add	x10, x9, #8             ; =8
	stur	x10, [x29, #-32]
	ldr		w11, [x9]
	str	w11, [sp, #40]
	ldr	w11, [sp, #40]
	.loc	1 44 14 is_stmt 0       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:44:14
	sturh	w11, [x29, #-34]
	.loc	1 46 53 is_stmt 1       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:46:53
	ldur	x9, [x29, #-16]
	.loc	1 46 59 is_stmt 0       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:46:59
	ldur	w11, [x29, #-20]
	.loc	1 46 66                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:46:66
	ldurh	w12, [x29, #-34]
                                        ; implicit-def: %X10
	.loc	1 46 9                  ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:46:9
	mov	 x10, x12
	mov	 x13, sp
	str	x10, [x13, #16]
                                        ; implicit-def: %X10
	mov	 x10, x11
	str	x10, [x13, #8]
	str		x9, [x13]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	str	x8, [sp, #32]           ; 8-byte Folded Spill
	bl	_printf
	adrp	x8, _orig_open@PAGE
	add	x8, x8, _orig_open@PAGEOFF
	.loc	1 47 16 is_stmt 1       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:47:16
	ldr		x8, [x8]
	.loc	1 47 26 is_stmt 0       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:47:26
	ldur	x9, [x29, #-16]
	.loc	1 47 32                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:47:32
	ldur	w1, [x29, #-20]
	.loc	1 47 39                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:47:39
	ldurh	w11, [x29, #-34]
                                        ; implicit-def: %X10
	.loc	1 47 16                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:47:16
	mov	 x10, x11
	mov	 x13, sp
	str		x10, [x13]
	str	w0, [sp, #28]           ; 4-byte Folded Spill
	mov	 x0, x9
	blr	x8
	.loc	1 47 9                  ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:47:9
	stur	w0, [x29, #-4]
	b	LBB1_3
Ltmp6:
LBB1_2:
	.loc	1 49 49 is_stmt 1       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:49:49
	ldur	x8, [x29, #-16]
	.loc	1 49 55 is_stmt 0       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:49:55
	ldur	w9, [x29, #-20]
                                        ; implicit-def: %X0
	.loc	1 49 9                  ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:49:9
	mov	 x0, x9
	mov	 x10, sp
	str	x0, [x10, #8]
	str		x8, [x10]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	adrp	x8, _orig_open@PAGE
	add	x8, x8, _orig_open@PAGEOFF
	.loc	1 50 16 is_stmt 1       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:50:16
	ldr		x8, [x8]
	.loc	1 50 26 is_stmt 0       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:50:26
	ldur	x10, [x29, #-16]
	.loc	1 50 32                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:50:32
	ldur	w1, [x29, #-20]
	.loc	1 50 39                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:50:39
	ldurh	w9, [x29, #-34]
                                        ; implicit-def: %LR
	.loc	1 50 16                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:50:16
	mov	 x30, x9
	mov	 x11, sp
	str		x30, [x11]
	str	w0, [sp, #24]           ; 4-byte Folded Spill
	mov	 x0, x10
	blr	x8
	.loc	1 50 9                  ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:50:9
	stur	w0, [x29, #-4]
Ltmp7:
LBB1_3:
	.loc	1 52 1 is_stmt 1        ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:52:1
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]     ; 8-byte Folded Reload
	add	sp, sp, #96             ; =96
	ret
Ltmp8:
Lfunc_end1:
	.cfi_endproc

	.globl	_main
	.p2align	2
_main:                                  ; @main
Lfunc_begin2:
	.loc	1 60 0                  ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:60:0
	.cfi_startproc
; BB#0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
Lcfi6:
	.cfi_def_cfa w29, 16
Lcfi7:
	.cfi_offset w30, -8
Lcfi8:
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
Ltmp9:
	.loc	1 61 22 prologue_end    ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:61:22
	bl	_objc_autoreleasePoolPush
	adrp	x1, l_OBJC_SELECTOR_REFERENCES_@PAGE
	add	x1, x1, l_OBJC_SELECTOR_REFERENCES_@PAGEOFF
	adrp	x30, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x30, x30, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
Ltmp10:
	.loc	1 75 34                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:75:34
	ldur	w8, [x29, #-8]
	.loc	1 75 40 is_stmt 0       ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:75:40
	ldur	x9, [x29, #-16]
	.loc	1 75 69                 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:75:69
	ldr		x30, [x30]
	ldr		x1, [x1]
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	 x0, x30
	str	w8, [sp, #20]           ; 4-byte Folded Spill
	str	x9, [sp, #8]            ; 8-byte Folded Spill
	bl	_objc_msgSend
	.loc	1 75 51 discriminator 1 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:75:51
	bl	_NSStringFromClass
	.loc	1 75 51 discriminator 2 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:75:51
	; InlineAsm Start
	mov	 x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	.loc	1 75 51 discriminator 3 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:75:51
	bl	_objc_retainAutoreleasedReturnValue
	mov	x9, #0
	.loc	1 75 16 discriminator 4 ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:75:16
	ldr	w8, [sp, #20]           ; 4-byte Folded Reload
	str		x0, [sp]        ; 8-byte Folded Spill
	mov	 x0, x8
	ldr	x1, [sp, #8]            ; 8-byte Folded Reload
	mov	 x2, x9
	ldr		x3, [sp]        ; 8-byte Folded Reload
	bl	_UIApplicationMain
	.loc	1 75 9                  ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:75:9
	stur	w0, [x29, #-4]
	ldr		x1, [sp]        ; 8-byte Folded Reload
	.loc	1 75 9 discriminator 5  ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:75:9
	mov	 x0, x1
	bl	_objc_release
	.loc	1 76 5 is_stmt 1        ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:76:5
	ldr	x0, [sp, #24]           ; 8-byte Folded Reload
	bl	_objc_autoreleasePoolPop
Ltmp11:
	.loc	1 77 1                  ; /Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m:77:1
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
Ltmp12:
Lfunc_end2:
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Calling real close(%d)\n"

.zerofill __DATA,__bss,_orig_close,8,3  ; @orig_close
l_.str.1:                               ; @.str.1
	.asciz	"Calling real open('%s', %d, %d)\n"

.zerofill __DATA,__bss,_orig_open,8,3   ; @orig_open
l_.str.2:                               ; @.str.2
	.asciz	"Calling real open('%s', %d)\n"

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_"
l_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_AppDelegate

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_:                  ; @OBJC_METH_VAR_NAME_
	.asciz	"class"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_
l_OBJC_SELECTOR_REFERENCES_:
	.quad	l_OBJC_METH_VAR_NAME_

	.section	__LLVM,__bitcode
l_llvm.embedded.module:                 ; @llvm.embedded.module
	.byte	0

	.section	__LLVM,__cmdline
l_llvm.cmdline:                         ; @llvm.cmdline
	.byte	0

	.linker_option "-framework", "UIKit"
	.linker_option "-framework", "FileProvider"
	.linker_option "-framework", "CoreText"
	.linker_option "-framework", "QuartzCore"
	.linker_option "-framework", "CoreImage"
	.linker_option "-framework", "ImageIO"
	.linker_option "-framework", "CoreVideo"
	.linker_option "-framework", "OpenGLES"
	.linker_option "-framework", "Metal"
	.linker_option "-framework", "IOSurface"
	.linker_option "-framework", "CoreGraphics"
	.linker_option "-framework", "Foundation"
	.linker_option "-framework", "CFNetwork"
	.linker_option "-framework", "Security"
	.linker_option "-framework", "CoreFoundation"
	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64

	.file	2 "/Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably" "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS11.2.sdk/usr/include/arm/_types.h"
	.file	3 "/Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably" "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS11.2.sdk/usr/include/sys/_types/_va_list.h"
	.file	4 "/Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably" "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS11.2.sdk/usr/include/sys/_types.h"
	.file	5 "/Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably" "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS11.2.sdk/usr/include/sys/_types/_mode_t.h"
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple LLVM version 9.0.0 (clang-900.0.39.2)" ; string offset=0
	.asciz	"/Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably/Test_crashesAppearInevitably/main.m" ; string offset=44
	.asciz	"/Users/luofuzhong/Desktop/test/Test_crashesAppearInevitably" ; string offset=140
	.asciz	"orig_close"            ; string offset=200
	.asciz	"int"                   ; string offset=211
	.asciz	"orig_open"             ; string offset=215
	.asciz	"char"                  ; string offset=225
	.asciz	"Darwin"                ; string offset=230
	.asciz	"\"-DDEBUG=1\" \"-DOBJC_OLD_DISPATCH_PROTOTYPES=0\"" ; string offset=237
	.asciz	"/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS11.2.sdk/usr/include" ; string offset=284
	.asciz	"/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS11.2.sdk" ; string offset=399
	.asciz	"POSIX"                 ; string offset=502
	.asciz	"dlfcn"                 ; string offset=508
	.asciz	"UIKit"                 ; string offset=514
	.asciz	"/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS11.2.sdk/System/Library/Frameworks/UIKit.framework" ; string offset=520
	.asciz	"C"                     ; string offset=665
	.asciz	"stddef"                ; string offset=667
	.asciz	"stdint"                ; string offset=674
	.asciz	"malloc"                ; string offset=681
	.asciz	"stdio"                 ; string offset=688
	.asciz	"/Users/luofuzhong/Library/Developer/Xcode/DerivedData/ModuleCache/291WWGQYBOJ92/Darwin-MI6WZSG1PNOM.pcm" ; string offset=694
	.asciz	"/Users/luofuzhong/Library/Developer/Xcode/DerivedData/ModuleCache/291WWGQYBOJ92/UIKit-2LM3EQU7VVY4O.pcm" ; string offset=798
	.asciz	"my_close"              ; string offset=902
	.asciz	"my_open"               ; string offset=911
	.asciz	"main"                  ; string offset=919
	.asciz	"fd"                    ; string offset=924
	.asciz	"path"                  ; string offset=927
	.asciz	"oflag"                 ; string offset=932
	.asciz	"ap"                    ; string offset=938
	.asciz	"sys"                   ; string offset=941
	.asciz	"types"                 ; string offset=945
	.asciz	"_va_list"              ; string offset=951
	.asciz	"va_list"               ; string offset=960
	.asciz	"machine"               ; string offset=968
	.asciz	"_types"                ; string offset=976
	.asciz	"__darwin_va_list"      ; string offset=983
	.asciz	"__builtin_va_list"     ; string offset=1000
	.asciz	"mode"                  ; string offset=1018
	.asciz	"_mode_t"               ; string offset=1023
	.asciz	"mode_t"                ; string offset=1031
	.asciz	"__darwin_mode_t"       ; string offset=1038
	.asciz	"__uint16_t"            ; string offset=1054
	.asciz	"unsigned short"        ; string offset=1065
	.asciz	"argc"                  ; string offset=1080
	.asciz	"argv"                  ; string offset=1085
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                       ; Abbreviation Code
	.byte	17                      ; DW_TAG_compile_unit
	.byte	1                       ; DW_CHILDREN_yes
	.byte	37                      ; DW_AT_producer
	.byte	14                      ; DW_FORM_strp
	.byte	19                      ; DW_AT_language
	.byte	5                       ; DW_FORM_data2
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	16                      ; DW_AT_stmt_list
	.byte	23                      ; DW_FORM_sec_offset
	.byte	27                      ; DW_AT_comp_dir
	.byte	14                      ; DW_FORM_strp
	.ascii	"\345\177"              ; DW_AT_APPLE_major_runtime_vers
	.byte	11                      ; DW_FORM_data1
	.byte	17                      ; DW_AT_low_pc
	.byte	1                       ; DW_FORM_addr
	.byte	18                      ; DW_AT_high_pc
	.byte	6                       ; DW_FORM_data4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	2                       ; Abbreviation Code
	.byte	52                      ; DW_TAG_variable
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	2                       ; DW_AT_location
	.byte	24                      ; DW_FORM_exprloc
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	3                       ; Abbreviation Code
	.byte	15                      ; DW_TAG_pointer_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	4                       ; Abbreviation Code
	.byte	21                      ; DW_TAG_subroutine_type
	.byte	1                       ; DW_CHILDREN_yes
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	39                      ; DW_AT_prototyped
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	5                       ; Abbreviation Code
	.byte	5                       ; DW_TAG_formal_parameter
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	6                       ; Abbreviation Code
	.byte	36                      ; DW_TAG_base_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	62                      ; DW_AT_encoding
	.byte	11                      ; DW_FORM_data1
	.byte	11                      ; DW_AT_byte_size
	.byte	11                      ; DW_FORM_data1
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	7                       ; Abbreviation Code
	.byte	24                      ; DW_TAG_unspecified_parameters
	.byte	0                       ; DW_CHILDREN_no
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	8                       ; Abbreviation Code
	.byte	38                      ; DW_TAG_const_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	9                       ; Abbreviation Code
	.byte	30                      ; DW_TAG_module
	.byte	1                       ; DW_CHILDREN_yes
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.ascii	"\201|"                 ; DW_AT_LLVM_config_macros
	.byte	14                      ; DW_FORM_strp
	.ascii	"\200|"                 ; DW_AT_LLVM_include_path
	.byte	14                      ; DW_FORM_strp
	.ascii	"\202|"                 ; DW_AT_LLVM_isysroot
	.byte	14                      ; DW_FORM_strp
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	10                      ; Abbreviation Code
	.byte	30                      ; DW_TAG_module
	.byte	0                       ; DW_CHILDREN_no
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.ascii	"\201|"                 ; DW_AT_LLVM_config_macros
	.byte	14                      ; DW_FORM_strp
	.ascii	"\200|"                 ; DW_AT_LLVM_include_path
	.byte	14                      ; DW_FORM_strp
	.ascii	"\202|"                 ; DW_AT_LLVM_isysroot
	.byte	14                      ; DW_FORM_strp
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	11                      ; Abbreviation Code
	.byte	30                      ; DW_TAG_module
	.byte	1                       ; DW_CHILDREN_yes
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.ascii	"\201|"                 ; DW_AT_LLVM_config_macros
	.byte	14                      ; DW_FORM_strp
	.ascii	"\202|"                 ; DW_AT_LLVM_isysroot
	.byte	14                      ; DW_FORM_strp
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	12                      ; Abbreviation Code
	.byte	22                      ; DW_TAG_typedef
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	13                      ; Abbreviation Code
	.byte	8                       ; DW_TAG_imported_declaration
	.byte	0                       ; DW_CHILDREN_no
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	24                      ; DW_AT_import
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	14                      ; Abbreviation Code
	.byte	46                      ; DW_TAG_subprogram
	.byte	1                       ; DW_CHILDREN_yes
	.byte	17                      ; DW_AT_low_pc
	.byte	1                       ; DW_FORM_addr
	.byte	18                      ; DW_AT_high_pc
	.byte	6                       ; DW_FORM_data4
	.byte	64                      ; DW_AT_frame_base
	.byte	24                      ; DW_FORM_exprloc
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	39                      ; DW_AT_prototyped
	.byte	25                      ; DW_FORM_flag_present
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	63                      ; DW_AT_external
	.byte	25                      ; DW_FORM_flag_present
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	15                      ; Abbreviation Code
	.byte	5                       ; DW_TAG_formal_parameter
	.byte	0                       ; DW_CHILDREN_no
	.byte	2                       ; DW_AT_location
	.byte	24                      ; DW_FORM_exprloc
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	16                      ; Abbreviation Code
	.byte	52                      ; DW_TAG_variable
	.byte	0                       ; DW_CHILDREN_no
	.byte	2                       ; DW_AT_location
	.byte	24                      ; DW_FORM_exprloc
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	58                      ; DW_AT_decl_file
	.byte	11                      ; DW_FORM_data1
	.byte	59                      ; DW_AT_decl_line
	.byte	11                      ; DW_FORM_data1
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	17                      ; Abbreviation Code
	.byte	17                      ; DW_TAG_compile_unit
	.byte	0                       ; DW_CHILDREN_no
	.byte	37                      ; DW_AT_producer
	.byte	14                      ; DW_FORM_strp
	.byte	19                      ; DW_AT_language
	.byte	5                       ; DW_FORM_data2
	.byte	3                       ; DW_AT_name
	.byte	14                      ; DW_FORM_strp
	.byte	16                      ; DW_AT_stmt_list
	.byte	23                      ; DW_FORM_sec_offset
	.byte	27                      ; DW_AT_comp_dir
	.byte	14                      ; DW_FORM_strp
	.ascii	"\341\177"              ; DW_AT_APPLE_optimized
	.byte	25                      ; DW_FORM_flag_present
	.ascii	"\261B"                 ; DW_AT_GNU_dwo_id
	.byte	7                       ; DW_FORM_data8
	.ascii	"\260B"                 ; DW_AT_GNU_dwo_name
	.byte	14                      ; DW_FORM_strp
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	0                       ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
	.long	698                     ; Length of Unit
	.short	4                       ; DWARF version number
Lset0 = Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset0
	.byte	8                       ; Address Size (in bytes)
	.byte	1                       ; Abbrev [1] 0xb:0x2b3 DW_TAG_compile_unit
	.long	0                       ; DW_AT_producer
	.short	16                      ; DW_AT_language
	.long	44                      ; DW_AT_name
Lset1 = Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset1
	.long	140                     ; DW_AT_comp_dir
	.byte	2                       ; DW_AT_APPLE_major_runtime_vers
	.quad	Lfunc_begin0            ; DW_AT_low_pc
Lset2 = Lfunc_end2-Lfunc_begin0         ; DW_AT_high_pc
	.long	Lset2
	.byte	2                       ; Abbrev [2] 0x2b:0x15 DW_TAG_variable
	.long	200                     ; DW_AT_name
	.long	64                      ; DW_AT_type
	.byte	1                       ; DW_AT_decl_file
	.byte	28                      ; DW_AT_decl_line
	.byte	9                       ; DW_AT_location
	.byte	3
	.quad	_orig_close
	.byte	3                       ; Abbrev [3] 0x40:0x5 DW_TAG_pointer_type
	.long	69                      ; DW_AT_type
	.byte	4                       ; Abbrev [4] 0x45:0xb DW_TAG_subroutine_type
	.long	80                      ; DW_AT_type
                                        ; DW_AT_prototyped
	.byte	5                       ; Abbrev [5] 0x4a:0x5 DW_TAG_formal_parameter
	.long	80                      ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	6                       ; Abbrev [6] 0x50:0x7 DW_TAG_base_type
	.long	211                     ; DW_AT_name
	.byte	5                       ; DW_AT_encoding
	.byte	4                       ; DW_AT_byte_size
	.byte	2                       ; Abbrev [2] 0x57:0x15 DW_TAG_variable
	.long	215                     ; DW_AT_name
	.long	108                     ; DW_AT_type
	.byte	1                       ; DW_AT_decl_file
	.byte	29                      ; DW_AT_decl_line
	.byte	9                       ; DW_AT_location
	.byte	3
	.quad	_orig_open
	.byte	3                       ; Abbrev [3] 0x6c:0x5 DW_TAG_pointer_type
	.long	113                     ; DW_AT_type
	.byte	4                       ; Abbrev [4] 0x71:0x11 DW_TAG_subroutine_type
	.long	80                      ; DW_AT_type
                                        ; DW_AT_prototyped
	.byte	5                       ; Abbrev [5] 0x76:0x5 DW_TAG_formal_parameter
	.long	130                     ; DW_AT_type
	.byte	5                       ; Abbrev [5] 0x7b:0x5 DW_TAG_formal_parameter
	.long	80                      ; DW_AT_type
	.byte	7                       ; Abbrev [7] 0x80:0x1 DW_TAG_unspecified_parameters
	.byte	0                       ; End Of Children Mark
	.byte	3                       ; Abbrev [3] 0x82:0x5 DW_TAG_pointer_type
	.long	135                     ; DW_AT_type
	.byte	8                       ; Abbrev [8] 0x87:0x5 DW_TAG_const_type
	.long	140                     ; DW_AT_type
	.byte	6                       ; Abbrev [6] 0x8c:0x7 DW_TAG_base_type
	.long	225                     ; DW_AT_name
	.byte	6                       ; DW_AT_encoding
	.byte	1                       ; DW_AT_byte_size
	.byte	9                       ; Abbrev [9] 0x93:0x122 DW_TAG_module
	.long	230                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	9                       ; Abbrev [9] 0xa4:0x84 DW_TAG_module
	.long	502                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	10                      ; Abbrev [10] 0xb5:0x11 DW_TAG_module
	.long	508                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	9                       ; Abbrev [9] 0xc6:0x61 DW_TAG_module
	.long	941                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	9                       ; Abbrev [9] 0xd7:0x4f DW_TAG_module
	.long	945                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	11                      ; Abbrev [11] 0xe8:0x19 DW_TAG_module
	.long	951                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	12                      ; Abbrev [12] 0xf5:0xb DW_TAG_typedef
	.long	412                     ; DW_AT_type
	.long	960                     ; DW_AT_name
	.byte	3                       ; DW_AT_decl_file
	.byte	32                      ; DW_AT_decl_line
	.byte	0                       ; End Of Children Mark
	.byte	11                      ; Abbrev [11] 0x101:0x19 DW_TAG_module
	.long	1023                    ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	12                      ; Abbrev [12] 0x10e:0xb DW_TAG_typedef
	.long	282                     ; DW_AT_type
	.long	1031                    ; DW_AT_name
	.byte	5                       ; DW_AT_decl_file
	.byte	31                      ; DW_AT_decl_line
	.byte	0                       ; End Of Children Mark
	.byte	12                      ; Abbrev [12] 0x11a:0xb DW_TAG_typedef
	.long	423                     ; DW_AT_type
	.long	1038                    ; DW_AT_name
	.byte	4                       ; DW_AT_decl_file
	.byte	70                      ; DW_AT_decl_line
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	9                       ; Abbrev [9] 0x128:0x45 DW_TAG_module
	.long	665                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	10                      ; Abbrev [10] 0x139:0x11 DW_TAG_module
	.long	667                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	10                      ; Abbrev [10] 0x14a:0x11 DW_TAG_module
	.long	674                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	10                      ; Abbrev [10] 0x15b:0x11 DW_TAG_module
	.long	688                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	0                       ; End Of Children Mark
	.byte	10                      ; Abbrev [10] 0x16d:0x11 DW_TAG_module
	.long	681                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	9                       ; Abbrev [9] 0x17e:0x36 DW_TAG_module
	.long	968                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	284                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	11                      ; Abbrev [11] 0x18f:0x24 DW_TAG_module
	.long	976                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	12                      ; Abbrev [12] 0x19c:0xb DW_TAG_typedef
	.long	673                     ; DW_AT_type
	.long	983                     ; DW_AT_name
	.byte	2                       ; DW_AT_decl_file
	.byte	74                      ; DW_AT_decl_line
	.byte	12                      ; Abbrev [12] 0x1a7:0xb DW_TAG_typedef
	.long	689                     ; DW_AT_type
	.long	1054                    ; DW_AT_name
	.byte	2                       ; DW_AT_decl_file
	.byte	19                      ; DW_AT_decl_line
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	0                       ; End Of Children Mark
	.byte	13                      ; Abbrev [13] 0x1b5:0x7 DW_TAG_imported_declaration
	.byte	1                       ; DW_AT_decl_file
	.byte	19                      ; DW_AT_decl_line
	.long	181                     ; DW_AT_import
	.byte	10                      ; Abbrev [10] 0x1bc:0x11 DW_TAG_module
	.long	514                     ; DW_AT_name
	.long	237                     ; DW_AT_LLVM_config_macros
	.long	520                     ; DW_AT_LLVM_include_path
	.long	399                     ; DW_AT_LLVM_isysroot
	.byte	13                      ; Abbrev [13] 0x1cd:0x7 DW_TAG_imported_declaration
	.byte	1                       ; DW_AT_decl_file
	.byte	21                      ; DW_AT_decl_line
	.long	444                     ; DW_AT_import
	.byte	13                      ; Abbrev [13] 0x1d4:0x7 DW_TAG_imported_declaration
	.byte	1                       ; DW_AT_decl_file
	.byte	27                      ; DW_AT_decl_line
	.long	313                     ; DW_AT_import
	.byte	13                      ; Abbrev [13] 0x1db:0x7 DW_TAG_imported_declaration
	.byte	1                       ; DW_AT_decl_file
	.byte	28                      ; DW_AT_decl_line
	.long	330                     ; DW_AT_import
	.byte	13                      ; Abbrev [13] 0x1e2:0x7 DW_TAG_imported_declaration
	.byte	1                       ; DW_AT_decl_file
	.byte	25                      ; DW_AT_decl_line
	.long	365                     ; DW_AT_import
	.byte	13                      ; Abbrev [13] 0x1e9:0x7 DW_TAG_imported_declaration
	.byte	1                       ; DW_AT_decl_file
	.byte	12                      ; DW_AT_decl_line
	.long	347                     ; DW_AT_import
	.byte	14                      ; Abbrev [14] 0x1f0:0x28 DW_TAG_subprogram
	.quad	Lfunc_begin0            ; DW_AT_low_pc
Lset3 = Lfunc_end0-Lfunc_begin0         ; DW_AT_high_pc
	.long	Lset3
	.byte	1                       ; DW_AT_frame_base
	.byte	109
	.long	902                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	32                      ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	80                      ; DW_AT_type
                                        ; DW_AT_external
	.byte	15                      ; Abbrev [15] 0x209:0xe DW_TAG_formal_parameter
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	124
	.long	924                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	32                      ; DW_AT_decl_line
	.long	80                      ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	14                      ; Abbrev [14] 0x218:0x53 DW_TAG_subprogram
	.quad	Lfunc_begin1            ; DW_AT_low_pc
Lset4 = Lfunc_end1-Lfunc_begin1         ; DW_AT_high_pc
	.long	Lset4
	.byte	1                       ; DW_AT_frame_base
	.byte	109
	.long	911                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	37                      ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	80                      ; DW_AT_type
                                        ; DW_AT_external
	.byte	15                      ; Abbrev [15] 0x231:0xe DW_TAG_formal_parameter
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	112
	.long	927                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	37                      ; DW_AT_decl_line
	.long	130                     ; DW_AT_type
	.byte	15                      ; Abbrev [15] 0x23f:0xe DW_TAG_formal_parameter
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	108
	.long	932                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	37                      ; DW_AT_decl_line
	.long	80                      ; DW_AT_type
	.byte	16                      ; Abbrev [16] 0x24d:0xe DW_TAG_variable
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	96
	.long	938                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	38                      ; DW_AT_decl_line
	.long	245                     ; DW_AT_type
	.byte	16                      ; Abbrev [16] 0x25b:0xe DW_TAG_variable
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	94
	.long	1018                    ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	39                      ; DW_AT_decl_line
	.long	270                     ; DW_AT_type
	.byte	7                       ; Abbrev [7] 0x269:0x1 DW_TAG_unspecified_parameters
	.byte	0                       ; End Of Children Mark
	.byte	14                      ; Abbrev [14] 0x26b:0x36 DW_TAG_subprogram
	.quad	Lfunc_begin2            ; DW_AT_low_pc
Lset5 = Lfunc_end2-Lfunc_begin2         ; DW_AT_high_pc
	.long	Lset5
	.byte	1                       ; DW_AT_frame_base
	.byte	109
	.long	919                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	59                      ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	80                      ; DW_AT_type
                                        ; DW_AT_external
	.byte	15                      ; Abbrev [15] 0x284:0xe DW_TAG_formal_parameter
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	120
	.long	1080                    ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	59                      ; DW_AT_decl_line
	.long	80                      ; DW_AT_type
	.byte	15                      ; Abbrev [15] 0x292:0xe DW_TAG_formal_parameter
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	112
	.long	1085                    ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	59                      ; DW_AT_decl_line
	.long	696                     ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	12                      ; Abbrev [12] 0x2a1:0xb DW_TAG_typedef
	.long	684                     ; DW_AT_type
	.long	1000                    ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	38                      ; DW_AT_decl_line
	.byte	3                       ; Abbrev [3] 0x2ac:0x5 DW_TAG_pointer_type
	.long	140                     ; DW_AT_type
	.byte	6                       ; Abbrev [6] 0x2b1:0x7 DW_TAG_base_type
	.long	1065                    ; DW_AT_name
	.byte	7                       ; DW_AT_encoding
	.byte	2                       ; DW_AT_byte_size
	.byte	3                       ; Abbrev [3] 0x2b8:0x5 DW_TAG_pointer_type
	.long	684                     ; DW_AT_type
	.byte	0                       ; End Of Children Mark
Lcu_begin1:
	.long	38                      ; Length of Unit
	.short	4                       ; DWARF version number
Lset6 = Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset6
	.byte	8                       ; Address Size (in bytes)
	.byte	17                      ; Abbrev [17] 0xb:0x1f DW_TAG_compile_unit
	.long	0                       ; DW_AT_producer
	.short	16                      ; DW_AT_language
	.long	230                     ; DW_AT_name
Lset7 = Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset7
	.long	284                     ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	1837014945083789973     ; DW_AT_GNU_dwo_id
	.long	694                     ; DW_AT_GNU_dwo_name
Lcu_begin2:
	.long	38                      ; Length of Unit
	.short	4                       ; DWARF version number
Lset8 = Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset8
	.byte	8                       ; Address Size (in bytes)
	.byte	17                      ; Abbrev [17] 0xb:0x1f DW_TAG_compile_unit
	.long	0                       ; DW_AT_producer
	.short	16                      ; DW_AT_language
	.long	514                     ; DW_AT_name
Lset9 = Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset9
	.long	520                     ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	3611007748222194423     ; DW_AT_GNU_dwo_id
	.long	798                     ; DW_AT_GNU_dwo_name
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
Lcu_macro_begin0:
Lcu_macro_begin1:
Lcu_macro_begin2:
	.byte	0                       ; End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ; Header Magic
	.short	1                       ; Header Version
	.short	0                       ; Header Hash Function
	.long	5                       ; Header Bucket Count
	.long	5                       ; Header Hash Count
	.long	12                      ; Header Data Length
	.long	0                       ; HeaderData Die Offset Base
	.long	1                       ; HeaderData Atom Count
	.short	1                       ; DW_ATOM_die_offset
	.short	6                       ; DW_FORM_data4
	.long	-1                      ; Bucket 0
	.long	0                       ; Bucket 1
	.long	3                       ; Bucket 2
	.long	-1                      ; Bucket 3
	.long	4                       ; Bucket 4
	.long	2090499946              ; Hash in Bucket 1
	.long	-1707962645             ; Hash in Bucket 1
	.long	-343830660              ; Hash in Bucket 1
	.long	859732487               ; Hash in Bucket 2
	.long	1524126464              ; Hash in Bucket 4
	.long	LNames1-Lnames_begin    ; Offset in Bucket 1
	.long	LNames2-Lnames_begin    ; Offset in Bucket 1
	.long	LNames3-Lnames_begin    ; Offset in Bucket 1
	.long	LNames0-Lnames_begin    ; Offset in Bucket 2
	.long	LNames4-Lnames_begin    ; Offset in Bucket 4
LNames1:
	.long	919                     ; main
	.long	1                       ; Num DIEs
	.long	619
	.long	0
LNames2:
	.long	200                     ; orig_close
	.long	1                       ; Num DIEs
	.long	43
	.long	0
LNames3:
	.long	911                     ; my_open
	.long	1                       ; Num DIEs
	.long	536
	.long	0
LNames0:
	.long	215                     ; orig_open
	.long	1                       ; Num DIEs
	.long	87
	.long	0
LNames4:
	.long	902                     ; my_close
	.long	1                       ; Num DIEs
	.long	496
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ; Header Magic
	.short	1                       ; Header Version
	.short	0                       ; Header Hash Function
	.long	1                       ; Header Bucket Count
	.long	0                       ; Header Hash Count
	.long	12                      ; Header Data Length
	.long	0                       ; HeaderData Die Offset Base
	.long	1                       ; HeaderData Atom Count
	.short	1                       ; DW_ATOM_die_offset
	.short	6                       ; DW_FORM_data4
	.long	-1                      ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ; Header Magic
	.short	1                       ; Header Version
	.short	0                       ; Header Hash Function
	.long	1                       ; Header Bucket Count
	.long	0                       ; Header Hash Count
	.long	12                      ; Header Data Length
	.long	0                       ; HeaderData Die Offset Base
	.long	1                       ; HeaderData Atom Count
	.short	1                       ; DW_ATOM_die_offset
	.short	6                       ; DW_FORM_data4
	.long	-1                      ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ; Header Magic
	.short	1                       ; Header Version
	.short	0                       ; Header Hash Function
	.long	9                       ; Header Bucket Count
	.long	9                       ; Header Hash Count
	.long	20                      ; Header Data Length
	.long	0                       ; HeaderData Die Offset Base
	.long	3                       ; HeaderData Atom Count
	.short	1                       ; DW_ATOM_die_offset
	.short	6                       ; DW_FORM_data4
	.short	3                       ; DW_ATOM_die_tag
	.short	5                       ; DW_FORM_data2
	.short	4                       ; DW_ATOM_type_flags
	.short	11                      ; DW_FORM_data1
	.long	0                       ; Bucket 0
	.long	1                       ; Bucket 1
	.long	2                       ; Bucket 2
	.long	-1                      ; Bucket 3
	.long	4                       ; Bucket 4
	.long	-1                      ; Bucket 5
	.long	6                       ; Bucket 6
	.long	7                       ; Bucket 7
	.long	8                       ; Bucket 8
	.long	878862258               ; Hash in Bucket 0
	.long	-1503406983             ; Hash in Bucket 1
	.long	193495088               ; Hash in Bucket 2
	.long	-2056830851             ; Hash in Bucket 2
	.long	1750082071              ; Hash in Bucket 4
	.long	2096540779              ; Hash in Bucket 4
	.long	238190973               ; Hash in Bucket 6
	.long	-511152225              ; Hash in Bucket 7
	.long	2090147939              ; Hash in Bucket 8
	.long	Ltypes7-Ltypes_begin    ; Offset in Bucket 0
	.long	Ltypes1-Ltypes_begin    ; Offset in Bucket 1
	.long	Ltypes6-Ltypes_begin    ; Offset in Bucket 2
	.long	Ltypes4-Ltypes_begin    ; Offset in Bucket 2
	.long	Ltypes0-Ltypes_begin    ; Offset in Bucket 4
	.long	Ltypes2-Ltypes_begin    ; Offset in Bucket 4
	.long	Ltypes3-Ltypes_begin    ; Offset in Bucket 6
	.long	Ltypes5-Ltypes_begin    ; Offset in Bucket 7
	.long	Ltypes8-Ltypes_begin    ; Offset in Bucket 8
Ltypes7:
	.long	1065                    ; unsigned short
	.long	1                       ; Num DIEs
	.long	689
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	983                     ; __darwin_va_list
	.long	1                       ; Num DIEs
	.long	412
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	211                     ; int
	.long	1                       ; Num DIEs
	.long	80
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	1054                    ; __uint16_t
	.long	1                       ; Num DIEs
	.long	423
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	960                     ; va_list
	.long	1                       ; Num DIEs
	.long	245
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	1000                    ; __builtin_va_list
	.long	1                       ; Num DIEs
	.long	673
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	1031                    ; mode_t
	.long	1                       ; Num DIEs
	.long	270
	.short	22
	.byte	0
	.long	0
Ltypes5:
	.long	1038                    ; __darwin_mode_t
	.long	1                       ; Num DIEs
	.long	282
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	225                     ; char
	.long	1                       ; Num DIEs
	.long	140
	.short	36
	.byte	0
	.long	0

.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
