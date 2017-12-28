	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 9, 0
	.file	1 "/Users/luofuzhong/Desktop/test/Test_ARMAssembly" "/Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m"
	.globl	_addFunction
	.p2align	2
_addFunction:                           ; @addFunction
Lfunc_begin0:
	.loc	1 11 0                  ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:11:0
	.cfi_startproc
; BB#0:
	sub	sp, sp, #16             ; =16
Lcfi0:
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
Ltmp1:
	.loc	1 12 13 prologue_end    ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:12:13
	ldr	w0, [sp, #12]
	.loc	1 12 17 is_stmt 0       ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:12:17
	ldr	w1, [sp, #8]
	.loc	1 12 15                 ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:12:15
	add		w0, w0, w1
	.loc	1 12 9                  ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:12:9
	str	w0, [sp, #4]
	.loc	1 13 12 is_stmt 1       ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:13:12
	ldr	w0, [sp, #4]
	.loc	1 13 5 is_stmt 0        ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:13:5
	add	sp, sp, #16             ; =16
	ret
Ltmp2:
Lfunc_end0:
	.cfi_endproc

	.globl	_main
	.p2align	2
_main:                                  ; @main
Lfunc_begin1:
	.loc	1 15 0 is_stmt 1        ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:15:0
	.cfi_startproc
; BB#0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
Lcfi1:
	.cfi_def_cfa w29, 16
Lcfi2:
	.cfi_offset w30, -8
Lcfi3:
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
Ltmp3:
	.loc	1 16 22 prologue_end    ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:16:22
	bl	_objc_autoreleasePoolPush
	adrp	x1, l_OBJC_SELECTOR_REFERENCES_@PAGE
	add	x1, x1, l_OBJC_SELECTOR_REFERENCES_@PAGEOFF
	adrp	x30, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x30, x30, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
Ltmp4:
	.loc	1 17 34                 ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:17:34
	ldur	w8, [x29, #-8]
	.loc	1 17 40 is_stmt 0       ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:17:40
	ldur	x9, [x29, #-16]
	.loc	1 17 69                 ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:17:69
	ldr		x30, [x30]
	ldr		x1, [x1]
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	 x0, x30
	str	w8, [sp, #20]           ; 4-byte Folded Spill
	str	x9, [sp, #8]            ; 8-byte Folded Spill
	bl	_objc_msgSend
	.loc	1 17 51 discriminator 1 ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:17:51
	bl	_NSStringFromClass
	.loc	1 17 51 discriminator 2 ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:17:51
	; InlineAsm Start
	mov	 x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	.loc	1 17 51 discriminator 3 ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:17:51
	bl	_objc_retainAutoreleasedReturnValue
	mov	x9, #0
	.loc	1 17 16 discriminator 4 ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:17:16
	ldr	w8, [sp, #20]           ; 4-byte Folded Reload
	str		x0, [sp]        ; 8-byte Folded Spill
	mov	 x0, x8
	ldr	x1, [sp, #8]            ; 8-byte Folded Reload
	mov	 x2, x9
	ldr		x3, [sp]        ; 8-byte Folded Reload
	bl	_UIApplicationMain
	.loc	1 17 9                  ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:17:9
	stur	w0, [x29, #-4]
	ldr		x1, [sp]        ; 8-byte Folded Reload
	.loc	1 17 9 discriminator 5  ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:17:9
	mov	 x0, x1
	bl	_objc_release
	.loc	1 18 5 is_stmt 1        ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:18:5
	ldr	x0, [sp, #24]           ; 8-byte Folded Reload
	bl	_objc_autoreleasePoolPop
Ltmp5:
	.loc	1 19 1                  ; /Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m:19:1
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
Ltmp6:
Lfunc_end1:
	.cfi_endproc

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

	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple LLVM version 9.0.0 (clang-900.0.39.2)" ; string offset=0
	.asciz	"/Users/luofuzhong/Desktop/test/Test_ARMAssembly/Test_ARMAssembly/main.m" ; string offset=44
	.asciz	"/Users/luofuzhong/Desktop/test/Test_ARMAssembly" ; string offset=116
	.asciz	"UIKit"                 ; string offset=164
	.asciz	"\"-DDEBUG=1\" \"-DOBJC_OLD_DISPATCH_PROTOTYPES=0\"" ; string offset=170
	.asciz	"/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS11.2.sdk/System/Library/Frameworks/UIKit.framework" ; string offset=217
	.asciz	"/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS11.2.sdk" ; string offset=362
	.asciz	"/Users/luofuzhong/Library/Developer/Xcode/DerivedData/ModuleCache/291WWGQYBOJ92/UIKit-2LM3EQU7VVY4O.pcm" ; string offset=465
	.asciz	"addFunction"           ; string offset=569
	.asciz	"main"                  ; string offset=581
	.asciz	"int"                   ; string offset=586
	.asciz	"a"                     ; string offset=590
	.asciz	"b"                     ; string offset=592
	.asciz	"c"                     ; string offset=594
	.asciz	"argc"                  ; string offset=596
	.asciz	"argv"                  ; string offset=601
	.asciz	"char"                  ; string offset=606
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
	.byte	3                       ; Abbreviation Code
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
	.byte	4                       ; Abbreviation Code
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
	.byte	5                       ; Abbreviation Code
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
	.byte	6                       ; Abbreviation Code
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
	.byte	7                       ; Abbreviation Code
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
	.byte	8                       ; Abbreviation Code
	.byte	15                      ; DW_TAG_pointer_type
	.byte	0                       ; DW_CHILDREN_no
	.byte	73                      ; DW_AT_type
	.byte	19                      ; DW_FORM_ref4
	.byte	0                       ; EOM(1)
	.byte	0                       ; EOM(2)
	.byte	9                       ; Abbreviation Code
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
	.long	210                     ; Length of Unit
	.short	4                       ; DWARF version number
Lset0 = Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset0
	.byte	8                       ; Address Size (in bytes)
	.byte	1                       ; Abbrev [1] 0xb:0xcb DW_TAG_compile_unit
	.long	0                       ; DW_AT_producer
	.short	16                      ; DW_AT_language
	.long	44                      ; DW_AT_name
Lset1 = Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset1
	.long	116                     ; DW_AT_comp_dir
	.byte	2                       ; DW_AT_APPLE_major_runtime_vers
	.quad	Lfunc_begin0            ; DW_AT_low_pc
Lset2 = Lfunc_end1-Lfunc_begin0         ; DW_AT_high_pc
	.long	Lset2
	.byte	2                       ; Abbrev [2] 0x2b:0x11 DW_TAG_module
	.long	164                     ; DW_AT_name
	.long	170                     ; DW_AT_LLVM_config_macros
	.long	217                     ; DW_AT_LLVM_include_path
	.long	362                     ; DW_AT_LLVM_isysroot
	.byte	3                       ; Abbrev [3] 0x3c:0x7 DW_TAG_imported_declaration
	.byte	1                       ; DW_AT_decl_file
	.byte	9                       ; DW_AT_decl_line
	.long	43                      ; DW_AT_import
	.byte	4                       ; Abbrev [4] 0x43:0x44 DW_TAG_subprogram
	.quad	Lfunc_begin0            ; DW_AT_low_pc
Lset3 = Lfunc_end0-Lfunc_begin0         ; DW_AT_high_pc
	.long	Lset3
	.byte	1                       ; DW_AT_frame_base
	.byte	111
	.long	569                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	11                      ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	189                     ; DW_AT_type
                                        ; DW_AT_external
	.byte	5                       ; Abbrev [5] 0x5c:0xe DW_TAG_formal_parameter
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	12
	.long	590                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	11                      ; DW_AT_decl_line
	.long	189                     ; DW_AT_type
	.byte	5                       ; Abbrev [5] 0x6a:0xe DW_TAG_formal_parameter
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	8
	.long	592                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	11                      ; DW_AT_decl_line
	.long	189                     ; DW_AT_type
	.byte	6                       ; Abbrev [6] 0x78:0xe DW_TAG_variable
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	4
	.long	594                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	12                      ; DW_AT_decl_line
	.long	189                     ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	4                       ; Abbrev [4] 0x87:0x36 DW_TAG_subprogram
	.quad	Lfunc_begin1            ; DW_AT_low_pc
Lset4 = Lfunc_end1-Lfunc_begin1         ; DW_AT_high_pc
	.long	Lset4
	.byte	1                       ; DW_AT_frame_base
	.byte	109
	.long	581                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	15                      ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	189                     ; DW_AT_type
                                        ; DW_AT_external
	.byte	5                       ; Abbrev [5] 0xa0:0xe DW_TAG_formal_parameter
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	120
	.long	596                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	15                      ; DW_AT_decl_line
	.long	189                     ; DW_AT_type
	.byte	5                       ; Abbrev [5] 0xae:0xe DW_TAG_formal_parameter
	.byte	2                       ; DW_AT_location
	.byte	145
	.byte	112
	.long	601                     ; DW_AT_name
	.byte	1                       ; DW_AT_decl_file
	.byte	15                      ; DW_AT_decl_line
	.long	196                     ; DW_AT_type
	.byte	0                       ; End Of Children Mark
	.byte	7                       ; Abbrev [7] 0xbd:0x7 DW_TAG_base_type
	.long	586                     ; DW_AT_name
	.byte	5                       ; DW_AT_encoding
	.byte	4                       ; DW_AT_byte_size
	.byte	8                       ; Abbrev [8] 0xc4:0x5 DW_TAG_pointer_type
	.long	201                     ; DW_AT_type
	.byte	8                       ; Abbrev [8] 0xc9:0x5 DW_TAG_pointer_type
	.long	206                     ; DW_AT_type
	.byte	7                       ; Abbrev [7] 0xce:0x7 DW_TAG_base_type
	.long	606                     ; DW_AT_name
	.byte	6                       ; DW_AT_encoding
	.byte	1                       ; DW_AT_byte_size
	.byte	0                       ; End Of Children Mark
Lcu_begin1:
	.long	38                      ; Length of Unit
	.short	4                       ; DWARF version number
Lset5 = Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset5
	.byte	8                       ; Address Size (in bytes)
	.byte	9                       ; Abbrev [9] 0xb:0x1f DW_TAG_compile_unit
	.long	0                       ; DW_AT_producer
	.short	16                      ; DW_AT_language
	.long	164                     ; DW_AT_name
Lset6 = Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset6
	.long	217                     ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	3611007748222194423     ; DW_AT_GNU_dwo_id
	.long	465                     ; DW_AT_GNU_dwo_name
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
Lcu_macro_begin0:
Lcu_macro_begin1:
	.byte	0                       ; End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ; Header Magic
	.short	1                       ; Header Version
	.short	0                       ; Header Hash Function
	.long	2                       ; Header Bucket Count
	.long	2                       ; Header Hash Count
	.long	12                      ; Header Data Length
	.long	0                       ; HeaderData Die Offset Base
	.long	1                       ; HeaderData Atom Count
	.short	1                       ; DW_ATOM_die_offset
	.short	6                       ; DW_FORM_data4
	.long	0                       ; Bucket 0
	.long	-1                      ; Bucket 1
	.long	1484627188              ; Hash in Bucket 0
	.long	2090499946              ; Hash in Bucket 0
	.long	LNames1-Lnames_begin    ; Offset in Bucket 0
	.long	LNames0-Lnames_begin    ; Offset in Bucket 0
LNames1:
	.long	569                     ; addFunction
	.long	1                       ; Num DIEs
	.long	67
	.long	0
LNames0:
	.long	581                     ; main
	.long	1                       ; Num DIEs
	.long	135
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
	.long	2                       ; Header Bucket Count
	.long	2                       ; Header Hash Count
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
	.long	193495088               ; Hash in Bucket 0
	.long	2090147939              ; Hash in Bucket 1
	.long	Ltypes0-Ltypes_begin    ; Offset in Bucket 0
	.long	Ltypes1-Ltypes_begin    ; Offset in Bucket 1
Ltypes0:
	.long	586                     ; int
	.long	1                       ; Num DIEs
	.long	189
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	606                     ; char
	.long	1                       ; Num DIEs
	.long	206
	.short	36
	.byte	0
	.long	0

.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
