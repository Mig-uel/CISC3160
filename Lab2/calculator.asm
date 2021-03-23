
.LC0:
        .ascii  "Calculator\000"
.LC1:
        .ascii  "This is a calculator. Follow the instructions below.\000"
.LC2:
        .ascii  "Enter A: to add numbers\000"
.LC3:
        .ascii  "Enter B: to subtract numbers\000"
.LC4:
        .ascii  "Enter C: to dividee numbers\000"
.LC5:
        .ascii  "Enter D: to multiply numbers\000"
.LC6:
        .ascii  "Enter choice:\000"
.LC7:
        .ascii  "How many numbers will you calculate?: \000"
.LC8:
        .ascii  "Enter number #\000"
.LC9:
        .ascii  ": \000"
.LC10:
        .ascii  "Incorrect choice!\000"
.LC11:
        .ascii  "Calculated:\000"
main:
        daddiu  $sp,$sp,-176
        sd      $31,168($sp)
        sd      $fp,160($sp)
        sd      $28,152($sp)
        sd      $23,144($sp)
        sd      $22,136($sp)
        sd      $21,128($sp)
        sd      $20,120($sp)
        sd      $19,112($sp)
        sd      $18,104($sp)
        sd      $17,96($sp)
        sd      $16,88($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(main)))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(main)))
        move    $2,$sp
        sd      $2,64($fp)
        ld      $2,%got_page(.LC0)($28)
        daddiu  $5,$2,%got_ofst(.LC0)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        ld      $2,%got_page(.LC1)($28)
        daddiu  $5,$2,%got_ofst(.LC1)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        ld      $2,%got_page(.LC2)($28)
        daddiu  $5,$2,%got_ofst(.LC2)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        ld      $2,%got_page(.LC3)($28)
        daddiu  $5,$2,%got_ofst(.LC3)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        ld      $2,%got_page(.LC4)($28)
        daddiu  $5,$2,%got_ofst(.LC4)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        ld      $2,%got_page(.LC5)($28)
        daddiu  $5,$2,%got_ofst(.LC5)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        ld      $2,%got_page(.LC6)($28)
        daddiu  $5,$2,%got_ofst(.LC6)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,48
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_)($28)
        move    $25,$2
        nop

        ld      $2,%got_page(.LC7)($28)
        daddiu  $5,$2,%got_ofst(.LC7)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,52
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERi)($28)
        move    $25,$2
        nop

        lw      $2,52($fp)
        daddiu  $2,$2,-1
        sd      $2,32($fp)
        move    $3,$2
        daddiu  $3,$3,1
        move    $22,$3
        move    $23,$0
        dsrl    $3,$22,59
        dsll    $19,$23,5
        or      $19,$3,$19
        dsll    $18,$22,5
        move    $3,$2
        daddiu  $3,$3,1
        move    $20,$3
        move    $21,$0
        dsrl    $3,$20,59
        dsll    $17,$21,5
        or      $17,$3,$17
        dsll    $16,$20,5
        daddiu  $2,$2,1
        dsll    $2,$2,2
        daddiu  $2,$2,3
        daddiu  $2,$2,15
        dsrl    $2,$2,4
        dsll    $2,$2,4
        dsubu   $sp,$sp,$2
        move    $2,$sp
        daddiu  $2,$2,3
        dsrl    $2,$2,2
        dsll    $2,$2,2
        sd      $2,40($fp)
        sw      $0,0($fp)
.L3:
        lw      $2,52($fp)
        lw      $3,0($fp)
        slt     $2,$3,$2
        beq     $2,$0,.L2
        nop

        ld      $2,%got_page(.LC8)($28)
        daddiu  $5,$2,%got_ofst(.LC8)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        move    $3,$2
        lw      $2,0($fp)
        addiu   $2,$2,1
        move    $5,$2
        move    $4,$3
        ld      $2,%call16(_ZNSolsEi)($28)
        move    $25,$2
        nop

        move    $3,$2
        ld      $2,%got_page(.LC9)($28)
        daddiu  $5,$2,%got_ofst(.LC9)
        move    $4,$3
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,56
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERi)($28)
        move    $25,$2
        nop

        lw      $3,56($fp)
        ld      $4,40($fp)
        lw      $2,0($fp)
        dsll    $2,$2,2
        daddu   $2,$4,$2
        sw      $3,0($2)
        lw      $2,0($fp)
        addiu   $2,$2,1
        sw      $2,0($fp)
        b       .L3
        nop

.L2:
        sd      $0,8($fp)
        lb      $3,48($fp)
        li      $2,65                 # 0x41
        bne     $3,$2,.L4
        nop

        sw      $0,16($fp)
.L6:
        lw      $2,52($fp)
        lw      $3,16($fp)
        slt     $2,$3,$2
        beq     $2,$0,.L7
        nop

        ld      $3,40($fp)
        lw      $2,16($fp)
        dsll    $2,$2,2
        daddu   $2,$3,$2
        lw      $2,0($2)
        mtc1    $2,$f0
        cvt.d.w $f0,$f0
        ldc1    $f1,8($fp)
        add.d   $f0,$f1,$f0
        sdc1    $f0,8($fp)
        lw      $2,16($fp)
        addiu   $2,$2,1
        sw      $2,16($fp)
        b       .L6
        nop

.L4:
        lb      $3,48($fp)
        li      $2,66                 # 0x42
        bne     $3,$2,.L8
        nop

        sw      $0,20($fp)
.L10:
        lw      $2,52($fp)
        lw      $3,20($fp)
        slt     $2,$3,$2
        beq     $2,$0,.L7
        nop

        ld      $3,40($fp)
        lw      $2,20($fp)
        dsll    $2,$2,2
        daddu   $2,$3,$2
        lw      $2,0($2)
        mtc1    $2,$f0
        cvt.d.w $f0,$f0
        ldc1    $f1,8($fp)
        sub.d   $f0,$f1,$f0
        sdc1    $f0,8($fp)
        lw      $2,20($fp)
        addiu   $2,$2,1
        sw      $2,20($fp)
        b       .L10
        nop

.L8:
        lb      $3,48($fp)
        li      $2,67                 # 0x43
        bne     $3,$2,.L11
        nop

        ld      $2,40($fp)
        lw      $2,0($2)
        sw      $2,24($fp)
.L13:
        lw      $2,52($fp)
        lw      $3,24($fp)
        slt     $2,$3,$2
        beq     $2,$0,.L7
        nop

        lw      $2,24($fp)
        addiu   $2,$2,1
        ld      $3,40($fp)
        dsll    $2,$2,2
        daddu   $2,$3,$2
        lw      $2,0($2)
        mtc1    $2,$f0
        cvt.d.w $f0,$f0
        ldc1    $f1,8($fp)
        div.d   $f0,$f1,$f0
        sdc1    $f0,8($fp)
        lw      $2,24($fp)
        addiu   $2,$2,1
        sw      $2,24($fp)
        b       .L13
        nop

.L11:
        lb      $3,48($fp)
        li      $2,68                 # 0x44
        bne     $3,$2,.L14
        nop

        sw      $0,28($fp)
.L16:
        lw      $2,52($fp)
        lw      $3,28($fp)
        slt     $2,$3,$2
        beq     $2,$0,.L7
        nop

        ld      $3,40($fp)
        lw      $2,28($fp)
        dsll    $2,$2,2
        daddu   $2,$3,$2
        lw      $2,0($2)
        mtc1    $2,$f0
        cvt.d.w $f0,$f0
        ldc1    $f1,8($fp)
        mul.d   $f0,$f1,$f0
        sdc1    $f0,8($fp)
        lw      $2,28($fp)
        addiu   $2,$2,1
        sw      $2,28($fp)
        b       .L16
        nop

.L14:
        ld      $2,%got_page(.LC10)($28)
        daddiu  $5,$2,%got_ofst(.LC10)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

.L7:
        ld      $2,%got_page(.LC11)($28)
        daddiu  $5,$2,%got_ofst(.LC11)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ldc1    $f13,8($fp)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEd)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        ld      $sp,64($fp)
        move    $2,$0
        move    $sp,$fp
        ld      $31,168($sp)
        ld      $fp,160($sp)
        ld      $28,152($sp)
        ld      $23,144($sp)
        ld      $22,136($sp)
        ld      $21,128($sp)
        ld      $20,120($sp)
        ld      $19,112($sp)
        ld      $18,104($sp)
        ld      $17,96($sp)
        ld      $16,88($sp)
        daddiu  $sp,$sp,176
        j       $31
        nop

__static_initialization_and_destruction_0(int, int):
        daddiu  $sp,$sp,-48
        sd      $31,40($sp)
        sd      $fp,32($sp)
        sd      $28,24($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(__static_initialization_and_destruction_0(int, int))))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(__static_initialization_and_destruction_0(int, int))))
        move    $3,$4
        move    $2,$5
        sll     $3,$3,0
        sw      $3,0($fp)
        sll     $2,$2,0
        sw      $2,4($fp)
        lw      $3,0($fp)
        li      $2,1                        # 0x1
        bne     $3,$2,.L20
        nop

        lw      $3,4($fp)
        li      $2,65535                    # 0xffff
        bne     $3,$2,.L20
        nop

        ld      $2,%got_page(_ZStL8__ioinit)($28)
        daddiu  $4,$2,%got_ofst(_ZStL8__ioinit)
        ld      $2,%call16(_ZNSt8ios_base4InitC1Ev)($28)
        move    $25,$2
        nop

        ld      $6,%got_disp(__dso_handle)($28)
        ld      $2,%got_page(_ZStL8__ioinit)($28)
        daddiu  $5,$2,%got_ofst(_ZStL8__ioinit)
        ld      $4,%got_disp(_ZNSt8ios_base4InitD1Ev)($28)
        ld      $2,%call16(__cxa_atexit)($28)
        move    $25,$2
        nop

.L20:
        nop
        move    $sp,$fp
        ld      $31,40($sp)
        ld      $fp,32($sp)
        ld      $28,24($sp)
        daddiu  $sp,$sp,48
        j       $31
        nop

_GLOBAL__sub_I_main:
        daddiu  $sp,$sp,-32
        sd      $31,24($sp)
        sd      $fp,16($sp)
        sd      $28,8($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(_GLOBAL__sub_I_main)))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(_GLOBAL__sub_I_main)))
        li      $5,65535                    # 0xffff
        li      $4,1                        # 0x1
        ld      $2,%got_page(__static_initialization_and_destruction_0(int, int))($28)
        daddiu  $2,$2,%got_ofst(__static_initialization_and_destruction_0(int, int))
        move    $25,$2
        nop

        move    $sp,$fp
        ld      $31,24($sp)
        ld      $fp,16($sp)
        ld      $28,8($sp)
        daddiu  $sp,$sp,32
        j       $31
        nop
