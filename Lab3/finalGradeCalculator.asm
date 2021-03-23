.LC0:
        .ascii  "How many exams were given: \000"
.LC1:
        .ascii  "Enter grade of exam \000"
.LC2:
        .ascii  ": \000"
.LC3:
        .ascii  "What was exam \000"
.LC4:
        .ascii  " weight: \000"
calculateExams():
        daddiu  $sp,$sp,-80
        sd      $31,72($sp)
        sd      $fp,64($sp)
        sd      $28,56($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(calculateExams())))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(calculateExams())))
        sw      $0,16($fp)
        sw      $0,0($fp)
        sd      $0,24($fp)
        sd      $0,8($fp)
        sd      $0,32($fp)
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

        daddiu  $2,$fp,16
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERi)($28)
        move    $25,$2
        nop

.L3:
        lw      $2,16($fp)
        lw      $3,0($fp)
        slt     $2,$3,$2
        beq     $2,$0,.L2
        nop

        ld      $2,%got_page(.LC1)($28)
        daddiu  $5,$2,%got_ofst(.LC1)
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
        ld      $2,%got_page(.LC2)($28)
        daddiu  $5,$2,%got_ofst(.LC2)
        move    $4,$3
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,32
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERd)($28)
        move    $25,$2
        nop

        ld      $2,%got_page(.LC3)($28)
        daddiu  $5,$2,%got_ofst(.LC3)
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
        ld      $2,%got_page(.LC4)($28)
        daddiu  $5,$2,%got_ofst(.LC4)
        move    $4,$3
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,24
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERd)($28)
        move    $25,$2
        nop

        ldc1    $f1,24($fp)
        ld      $2,%got_page(.LC5)($28)
        ldc1    $f0,%got_ofst(.LC5)($2)
        div.d   $f0,$f1,$f0
        sdc1    $f0,24($fp)
        ldc1    $f1,32($fp)
        ldc1    $f0,24($fp)
        mul.d   $f1,$f1,$f0
        lw      $2,16($fp)
        mtc1    $2,$f0
        cvt.d.w $f2,$f0
        ldc1    $f0,24($fp)
        mul.d   $f0,$f2,$f0
        div.d   $f0,$f1,$f0
        ldc1    $f1,8($fp)
        add.d   $f0,$f1,$f0
        sdc1    $f0,8($fp)
        lw      $2,0($fp)
        addiu   $2,$2,1
        sw      $2,0($fp)
        b       .L3
        nop

.L2:
        ldc1    $f0,8($fp)
        trunc.w.d $f0,$f0
        mfc1    $2,$f0
        move    $sp,$fp
        ld      $31,72($sp)
        ld      $fp,64($sp)
        ld      $28,56($sp)
        daddiu  $sp,$sp,80
        j       $31
        nop

.LC6:
        .ascii  "How many homeworks were given: \000"
.LC7:
        .ascii  "What is their percentage (Do not include % sign): \000"
.LC8:
        .ascii  "Enter grade of homework \000"
calculateHomework():
        daddiu  $sp,$sp,-80
        sd      $31,72($sp)
        sd      $fp,64($sp)
        sd      $28,56($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(calculateHomework())))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(calculateHomework())))
        sw      $0,16($fp)
        sw      $0,0($fp)
        sd      $0,24($fp)
        sd      $0,8($fp)
        sd      $0,32($fp)
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

        daddiu  $2,$fp,16
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERi)($28)
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

        daddiu  $2,$fp,24
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERd)($28)
        move    $25,$2
        nop

        ldc1    $f1,24($fp)
        ld      $2,%got_page(.LC5)($28)
        ldc1    $f0,%got_ofst(.LC5)($2)
        div.d   $f0,$f1,$f0
        sdc1    $f0,24($fp)
.L7:
        lw      $2,16($fp)
        lw      $3,0($fp)
        slt     $2,$3,$2
        beq     $2,$0,.L6
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
        ld      $2,%got_page(.LC2)($28)
        daddiu  $5,$2,%got_ofst(.LC2)
        move    $4,$3
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,32
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERd)($28)
        move    $25,$2
        nop

        ldc1    $f1,32($fp)
        ldc1    $f0,24($fp)
        mul.d   $f1,$f1,$f0
        lw      $2,16($fp)
        mtc1    $2,$f0
        cvt.d.w $f2,$f0
        ldc1    $f0,24($fp)
        mul.d   $f0,$f2,$f0
        div.d   $f0,$f1,$f0
        ldc1    $f1,8($fp)
        add.d   $f0,$f1,$f0
        sdc1    $f0,8($fp)
        lw      $2,0($fp)
        addiu   $2,$2,1
        sw      $2,0($fp)
        b       .L7
        nop

.L6:
        ldc1    $f0,8($fp)
        trunc.w.d $f0,$f0
        mfc1    $2,$f0
        move    $sp,$fp
        ld      $31,72($sp)
        ld      $fp,64($sp)
        ld      $28,56($sp)
        daddiu  $sp,$sp,80
        j       $31
        nop

.LC9:
        .ascii  "How many quizes were given: \000"
.LC10:
        .ascii  "Enter grade of quizes \000"
calculateQuizes():
        daddiu  $sp,$sp,-80
        sd      $31,72($sp)
        sd      $fp,64($sp)
        sd      $28,56($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(calculateQuizes())))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(calculateQuizes())))
        sw      $0,16($fp)
        sw      $0,0($fp)
        sd      $0,24($fp)
        sd      $0,8($fp)
        sd      $0,32($fp)
        ld      $2,%got_page(.LC9)($28)
        daddiu  $5,$2,%got_ofst(.LC9)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,16
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERi)($28)
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

        daddiu  $2,$fp,24
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERd)($28)
        move    $25,$2
        nop

        ldc1    $f1,24($fp)
        ld      $2,%got_page(.LC5)($28)
        ldc1    $f0,%got_ofst(.LC5)($2)
        div.d   $f0,$f1,$f0
        sdc1    $f0,24($fp)
.L11:
        lw      $2,16($fp)
        lw      $3,0($fp)
        slt     $2,$3,$2
        beq     $2,$0,.L10
        nop

        ld      $2,%got_page(.LC10)($28)
        daddiu  $5,$2,%got_ofst(.LC10)
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
        ld      $2,%got_page(.LC2)($28)
        daddiu  $5,$2,%got_ofst(.LC2)
        move    $4,$3
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,32
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERd)($28)
        move    $25,$2
        nop

        ldc1    $f1,32($fp)
        ldc1    $f0,24($fp)
        mul.d   $f1,$f1,$f0
        lw      $2,16($fp)
        mtc1    $2,$f0
        cvt.d.w $f2,$f0
        ldc1    $f0,24($fp)
        mul.d   $f0,$f2,$f0
        div.d   $f0,$f1,$f0
        ldc1    $f1,8($fp)
        add.d   $f0,$f1,$f0
        sdc1    $f0,8($fp)
        lw      $2,0($fp)
        addiu   $2,$2,1
        sw      $2,0($fp)
        b       .L11
        nop

.L10:
        ldc1    $f0,8($fp)
        trunc.w.d $f0,$f0
        mfc1    $2,$f0
        move    $sp,$fp
        ld      $31,72($sp)
        ld      $fp,64($sp)
        ld      $28,56($sp)
        daddiu  $sp,$sp,80
        j       $31
        nop

.LC11:
        .ascii  "How much did attendance and participation weigh: \000"
.LC12:
        .ascii  "Enter full attendance and participation points: \000"
calculateAP():
        daddiu  $sp,$sp,-64
        sd      $31,56($sp)
        sd      $fp,48($sp)
        sd      $28,40($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(calculateAP())))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(calculateAP())))
        sd      $0,8($fp)
        sd      $0,16($fp)
        ld      $2,%got_page(.LC11)($28)
        daddiu  $5,$2,%got_ofst(.LC11)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,8
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERd)($28)
        move    $25,$2
        nop

        ldc1    $f1,8($fp)
        ld      $2,%got_page(.LC5)($28)
        ldc1    $f0,%got_ofst(.LC5)($2)
        div.d   $f0,$f1,$f0
        sdc1    $f0,8($fp)
        ld      $2,%got_page(.LC12)($28)
        daddiu  $5,$2,%got_ofst(.LC12)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,16
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERd)($28)
        move    $25,$2
        nop

        ldc1    $f1,8($fp)
        ldc1    $f0,0($fp)
        mul.d   $f1,$f1,$f0
        ldc1    $f0,8($fp)
        div.d   $f1,$f1,$f0
        ldc1    $f0,16($fp)
        add.d   $f0,$f1,$f0
        sdc1    $f0,16($fp)
        ldc1    $f0,16($fp)
        trunc.w.d $f0,$f0
        mfc1    $2,$f0
        move    $sp,$fp
        ld      $31,56($sp)
        ld      $fp,48($sp)
        ld      $28,40($sp)
        daddiu  $sp,$sp,64
        j       $31
        nop

.LC13:
        .ascii  "A\000"
.LC14:
        .ascii  "B\000"
.LC15:
        .ascii  "C\000"
.LC16:
        .ascii  "D\000"
.LC17:
        .ascii  "F\000"
.LC18:
        .ascii  "Final grade: \000"
classGrade(int):
        daddiu  $sp,$sp,-96
        sd      $31,88($sp)
        sd      $fp,80($sp)
        sd      $28,72($sp)
        sd      $16,64($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(classGrade(int))))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(classGrade(int))))
        move    $2,$4
        sll     $2,$2,0
        sw      $2,48($fp)
        lw      $2,48($fp)
        sw      $2,0($fp)
        daddiu  $2,$fp,8
        move    $4,$2
        ld      $2,%call16(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev)($28)
        move    $25,$2
        nop

        lw      $2,0($fp)
        slt     $2,$2,101
        bne     $2,$0,.L16
        nop

        lw      $2,0($fp)
        slt     $2,$2,100
        bne     $2,$0,.L17
        nop

.L16:
        daddiu  $3,$fp,8
        ld      $2,%got_page(.LC13)($28)
        daddiu  $5,$2,%got_ofst(.LC13)
        move    $4,$3
        ld      $2,%call16(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc)($28)
        move    $25,$2
        nop

        b       .L18
        nop

.L17:
        lw      $2,0($fp)
        slt     $2,$2,90
        beq     $2,$0,.L19
        nop

        daddiu  $3,$fp,8
        ld      $2,%got_page(.LC14)($28)
        daddiu  $5,$2,%got_ofst(.LC14)
        move    $4,$3
        ld      $2,%call16(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc)($28)
        move    $25,$2
        nop

        b       .L18
        nop

.L19:
        lw      $2,0($fp)
        slt     $2,$2,81
        beq     $2,$0,.L20
        nop

        daddiu  $3,$fp,8
        ld      $2,%got_page(.LC15)($28)
        daddiu  $5,$2,%got_ofst(.LC15)
        move    $4,$3
        ld      $2,%call16(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc)($28)
        move    $25,$2
        nop

        b       .L18
        nop

.L20:
        lw      $2,0($fp)
        slt     $2,$2,70
        beq     $2,$0,.L21
        nop

        daddiu  $3,$fp,8
        ld      $2,%got_page(.LC16)($28)
        daddiu  $5,$2,%got_ofst(.LC16)
        move    $4,$3
        ld      $2,%call16(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc)($28)
        move    $25,$2
        nop

        b       .L18
        nop

.L21:
        daddiu  $3,$fp,8
        ld      $2,%got_page(.LC17)($28)
        daddiu  $5,$2,%got_ofst(.LC17)
        move    $4,$3
        ld      $2,%call16(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc)($28)
        move    $25,$2
        nop

.L18:
        ld      $2,%got_page(.LC18)($28)
        daddiu  $5,$2,%got_ofst(.LC18)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        move    $3,$2
        daddiu  $2,$fp,8
        move    $5,$2
        move    $4,$3
        ld      $2,%call16(_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,8
        move    $4,$2
        ld      $2,%call16(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev)($28)
        move    $25,$2
        nop

        b       .L24
        nop

        move    $16,$4
        daddiu  $2,$fp,8
        move    $4,$2
        ld      $2,%call16(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev)($28)
        move    $25,$2
        nop

        move    $2,$16
        move    $4,$2
        ld      $2,%call16(_Unwind_Resume)($28)
        move    $25,$2
        nop

.L24:
        move    $sp,$fp
        ld      $31,88($sp)
        ld      $fp,80($sp)
        ld      $28,72($sp)
        ld      $16,64($sp)
        daddiu  $sp,$sp,96
        j       $31
        nop

.LC19:
        .ascii  "Final Grade Calculator\000"
.LC20:
        .ascii  "Please follow all instructions below to calculate your f"
        .ascii  "inal grade.\000"
.LC21:
        .ascii  "Were exams given? (1 = Yes, 2 = No):\000"
.LC23:
        .ascii  "Invalid entry!\000"
.LC24:
        .ascii  "Were homeworks given? (1 = Yes, 2 = No):\000"
.LC25:
        .ascii  "Were quizes given? (1 = Yes, 2 = No):\000"
.LC26:
        .ascii  "Was attendance and participation included? (1 = Yes, 2 ="
        .ascii  " No):\000"
.LC27:
        .ascii  "Enter total extra credit if any, if none enter 0 (Assumi"
        .ascii  "ng extra credit will be added to the final grade): \000"
main:
        daddiu  $sp,$sp,-80
        sd      $31,72($sp)
        sd      $fp,64($sp)
        sd      $28,56($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(main)))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(main)))
        sw      $0,40($fp)
        sw      $0,44($fp)
        sd      $0,0($fp)
        ld      $2,%got_page(.LC19)($28)
        daddiu  $5,$2,%got_ofst(.LC19)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        ld      $2,%got_page(.LC20)($28)
        daddiu  $5,$2,%got_ofst(.LC20)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        ld      $2,%got_page(.LC21)($28)
        daddiu  $5,$2,%got_ofst(.LC21)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,40
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERi)($28)
        move    $25,$2
        nop

        lw      $3,40($fp)
        li      $2,1                        # 0x1
        bne     $3,$2,.L26
        nop

        ld      $2,%got_disp(calculateExams())($28)
        move    $25,$2
        nop

        mtc1    $2,$f0
        cvt.d.w $f0,$f0
        sdc1    $f0,8($fp)
        ldc1    $f1,0($fp)
        ldc1    $f0,8($fp)
        add.d   $f0,$f1,$f0
        sdc1    $f0,0($fp)
        b       .L27
        nop

.L26:
        ldc1    $f1,0($fp)
        ld      $2,%got_page(.LC22)($28)
        ldc1    $f0,%got_ofst(.LC22)($2)
        c.eq.d  $fcc0,$f1,$f0
        bc1t    $fcc0,.L27
        nop

        ld      $2,%got_page(.LC23)($28)
        daddiu  $5,$2,%got_ofst(.LC23)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

.L27:
        sw      $0,40($fp)
        ld      $2,%got_page(.LC24)($28)
        daddiu  $5,$2,%got_ofst(.LC24)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,40
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERi)($28)
        move    $25,$2
        nop

        lw      $3,40($fp)
        li      $2,1                        # 0x1
        bne     $3,$2,.L29
        nop

        ld      $2,%got_disp(calculateHomework())($28)
        move    $25,$2
        nop

        mtc1    $2,$f0
        cvt.d.w $f0,$f0
        sdc1    $f0,16($fp)
        ldc1    $f1,0($fp)
        ldc1    $f0,16($fp)
        add.d   $f0,$f1,$f0
        sdc1    $f0,0($fp)
        b       .L30
        nop

.L29:
        ldc1    $f1,0($fp)
        ld      $2,%got_page(.LC22)($28)
        ldc1    $f0,%got_ofst(.LC22)($2)
        c.eq.d  $fcc1,$f1,$f0
        bc1t    $fcc1,.L30
        nop

        ld      $2,%got_page(.LC23)($28)
        daddiu  $5,$2,%got_ofst(.LC23)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

.L30:
        sw      $0,40($fp)
        ld      $2,%got_page(.LC25)($28)
        daddiu  $5,$2,%got_ofst(.LC25)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,40
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERi)($28)
        move    $25,$2
        nop

        lw      $3,40($fp)
        li      $2,1                        # 0x1
        bne     $3,$2,.L32
        nop

        ld      $2,%got_disp(calculateQuizes())($28)
        move    $25,$2
        nop

        mtc1    $2,$f0
        cvt.d.w $f0,$f0
        sdc1    $f0,24($fp)
        ldc1    $f1,0($fp)
        ldc1    $f0,24($fp)
        add.d   $f0,$f1,$f0
        sdc1    $f0,0($fp)
        b       .L33
        nop

.L32:
        ldc1    $f1,0($fp)
        ld      $2,%got_page(.LC22)($28)
        ldc1    $f0,%got_ofst(.LC22)($2)
        c.eq.d  $fcc2,$f1,$f0
        bc1t    $fcc2,.L33
        nop

        ld      $2,%got_page(.LC23)($28)
        daddiu  $5,$2,%got_ofst(.LC23)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

.L33:
        sw      $0,40($fp)
        ld      $2,%got_page(.LC26)($28)
        daddiu  $5,$2,%got_ofst(.LC26)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,40
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERi)($28)
        move    $25,$2
        nop

        lw      $3,40($fp)
        li      $2,1                        # 0x1
        bne     $3,$2,.L35
        nop

        ld      $2,%got_disp(calculateAP())($28)
        move    $25,$2
        nop

        mtc1    $2,$f0
        cvt.d.w $f0,$f0
        sdc1    $f0,32($fp)
        ldc1    $f1,0($fp)
        ldc1    $f0,32($fp)
        add.d   $f0,$f1,$f0
        sdc1    $f0,0($fp)
        b       .L36
        nop

.L35:
        ldc1    $f1,0($fp)
        ld      $2,%got_page(.LC22)($28)
        ldc1    $f0,%got_ofst(.LC22)($2)
        c.eq.d  $fcc3,$f1,$f0
        bc1t    $fcc3,.L36
        nop

        ld      $2,%got_page(.LC23)($28)
        daddiu  $5,$2,%got_ofst(.LC23)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

.L36:
        ld      $2,%got_page(.LC27)($28)
        daddiu  $5,$2,%got_ofst(.LC27)
        ld      $4,%got_disp(_ZSt4cout)($28)
        ld      $2,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
        move    $25,$2
        nop

        ld      $5,%got_disp(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)($28)
        move    $4,$2
        ld      $2,%call16(_ZNSolsEPFRSoS_E)($28)
        move    $25,$2
        nop

        daddiu  $2,$fp,44
        move    $5,$2
        ld      $4,%got_disp(_ZSt3cin)($28)
        ld      $2,%call16(_ZNSirsERi)($28)
        move    $25,$2
        nop

        lw      $2,44($fp)
        mtc1    $2,$f0
        cvt.d.w $f1,$f0
        ldc1    $f0,0($fp)
        add.d   $f0,$f1,$f0
        trunc.w.d $f0,$f0
        mfc1    $2,$f0
        move    $4,$2
        ld      $2,%got_disp(classGrade(int))($28)
        move    $25,$2
        nop

        move    $2,$0
        move    $sp,$fp
        ld      $31,72($sp)
        ld      $fp,64($sp)
        ld      $28,56($sp)
        daddiu  $sp,$sp,80
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
        bne     $3,$2,.L41
        nop

        lw      $3,4($fp)
        li      $2,65535                    # 0xffff
        bne     $3,$2,.L41
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

.L41:
        nop
        move    $sp,$fp
        ld      $31,40($sp)
        ld      $fp,32($sp)
        ld      $28,24($sp)
        daddiu  $sp,$sp,48
        j       $31
        nop

_GLOBAL__sub_I_calculateExams():
        daddiu  $sp,$sp,-32
        sd      $31,24($sp)
        sd      $fp,16($sp)
        sd      $28,8($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(_GLOBAL__sub_I_calculateExams())))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(_GLOBAL__sub_I_calculateExams())))
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

.LC5:
        .word   0
        .word   1076101120
.LC22:
        .word   0
        .word   1073741824
DW.ref.__gxx_personality_v0:
