	.include "MPlayDef.s"

	.equ	song11_grp, voicegroup000
	.equ	song11_pri, 0
	.equ	song11_rev, 0
	.equ	song11_mvl, 127
	.equ	song11_key, 0
	.equ	song11_tbs, 1
	.equ	song11_exg, 0
	.equ	song11_cmp, 1

	.section .rodata
	.global	song11
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

song11_001:
@ 000   ----------------------------------------
 .byte   KEYSH , song11_key+0
Label_0_016BCE6A:
 .byte   TEMPO , 150*song11_tbs/2
 .byte   VOICE , 46
 .byte   VOL , 50*song11_mvl/mxv
 .byte   N24 ,Ds3 ,v100
 .byte   W24
 .byte   Gs3
 .byte   W24
 .byte   Ds4
 .byte   W24
 .byte   Ds3
 .byte   W24
@ 001   ----------------------------------------
Label_0_016BCE7A:
 .byte   N24 ,Gs3 ,v100
 .byte   W24
 .byte   Cs4
 .byte   W72
 .byte   PEND 
@ 002   ----------------------------------------
Label_0_016BCE81:
 .byte   N24 ,Ds3 ,v100
 .byte   W24
 .byte   Gs3
 .byte   W24
 .byte   Ds4
 .byte   W24
 .byte   Ds3
 .byte   W24
 .byte   PEND 
@ 003   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 004   ----------------------------------------
Label_0_016BCE91:
 .byte   N24 ,Ds3 ,v100
 .byte   W24
 .byte   Gs3
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   Ds3
 .byte   W24
 .byte   PEND 
@ 005   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 006   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 007   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 008   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 009   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 010   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 011   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 012   ----------------------------------------
Label_0_016BCEBF:
 .byte   N24 ,Ds3 ,v100
 .byte   W24
 .byte   Gs3
 .byte   W24
 .byte   Ds4
 .byte   W24
 .byte   Ds3
 .byte   W24
 .byte   PEND 
@ 013   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 014   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 015   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 016   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE91
@ 017   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 018   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 019   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 020   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 021   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 022   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 023   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 024   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCEBF
@ 025   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 026   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 027   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 028   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE91
@ 029   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 030   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 031   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 032   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 033   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 034   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 035   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 036   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE91
@ 037   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 038   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 039   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 040   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 041   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 042   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 043   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 044   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 045   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 046   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 047   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 048   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE91
@ 049   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 050   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 051   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 052   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 053   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 054   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 055   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 056   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 057   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 058   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 059   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 060   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE81
@ 061   ----------------------------------------
 .byte   PATT
  .word Label_0_016BCE7A
@ 062   ----------------------------------------
 .byte   GOTO
  .word Label_0_016BCE6A
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

song11_002:
@ 000   ----------------------------------------
 .byte   KEYSH , song11_key+0
Label_1_016BCFCA:
 .byte   VOICE , 48
 .byte   VOL , 51*song11_mvl/mxv
 .byte   N72 ,Ds0 ,v100
 .byte   N72 ,Ds1
 .byte   W72
 .byte   TIE ,En0
 .byte   TIE ,En1
 .byte   W24
@ 001   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 002   ----------------------------------------
Label_1_016BCFDE:
 .byte   N72 ,Ds0 ,v100
 .byte   N72 ,Ds1
 .byte   W72
 .byte   TIE ,En0
 .byte   TIE ,En1
 .byte   W24
 .byte   PEND 
@ 003   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 004   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 005   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 006   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 007   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 008   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 009   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 010   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 011   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 012   ----------------------------------------
Label_1_016BD017:
 .byte   N72 ,Ds0 ,v100
 .byte   N72 ,Ds1
 .byte   W72
 .byte   TIE ,En0
 .byte   TIE ,En1
 .byte   W24
 .byte   PEND 
@ 013   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 014   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 015   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 016   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 017   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 018   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 019   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 020   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 021   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 022   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 023   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 024   ----------------------------------------
 .byte   PATT
  .word Label_1_016BD017
@ 025   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 026   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 027   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 028   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 029   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 030   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 031   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 032   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 033   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 034   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 035   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 036   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 037   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 038   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 039   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 040   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 041   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 042   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 043   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 044   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 045   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 046   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 047   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 048   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 049   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 050   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 051   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 052   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 053   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 054   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 055   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 056   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 057   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 058   ----------------------------------------
 .byte   PATT
  .word Label_1_016BCFDE
@ 059   ----------------------------------------
 .byte   W90
 .byte   EOT
 .byte   En0 ,v040
 .byte   W06
@ 060   ----------------------------------------
 .byte   N72 ,Ds0 ,v100
 .byte   N72 ,Ds1
 .byte   W72
 .byte   En0
 .byte   N72 ,En1
 .byte   W24
@ 061   ----------------------------------------
 .byte   W48
 .byte   N44 ,Ds0
 .byte   N44 ,Ds1
 .byte   W32
 .byte   W03
 .byte   VOL , 50*song11_mvl/mxv
 .byte   W02
 .byte   Cs2
 .byte   W07
 .byte   Cs2
 .byte   W04
@ 062   ----------------------------------------
 .byte   GOTO
  .word Label_1_016BCFCA
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

song11_003:
@ 000   ----------------------------------------
 .byte   KEYSH , song11_key+0
Label_2_016BD12E:
 .byte   VOICE , 85
 .byte   VOL , 42*song11_mvl/mxv
 .byte   W96
@ 001   ----------------------------------------
 .byte   W96
@ 002   ----------------------------------------
 .byte   W96
@ 003   ----------------------------------------
 .byte   W96
@ 004   ----------------------------------------
 .byte   W96
@ 005   ----------------------------------------
 .byte   W96
@ 006   ----------------------------------------
 .byte   W96
@ 007   ----------------------------------------
 .byte   W96
@ 008   ----------------------------------------
 .byte   W96
@ 009   ----------------------------------------
 .byte   W96
@ 010   ----------------------------------------
 .byte   W96
@ 011   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   An1
 .byte   W01
@ 012   ----------------------------------------
Label_2_016BD141:
 .byte   N24 ,Ds3 ,v100
 .byte   N24 ,Ds4
 .byte   W72
 .byte   Ds3
 .byte   N24 ,Ds4
 .byte   W24
 .byte   PEND 
@ 013   ----------------------------------------
 .byte   W96
@ 014   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 015   ----------------------------------------
 .byte   W96
@ 016   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 017   ----------------------------------------
 .byte   W96
@ 018   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 019   ----------------------------------------
 .byte   W96
@ 020   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 021   ----------------------------------------
 .byte   W96
@ 022   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 023   ----------------------------------------
 .byte   W96
@ 024   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 025   ----------------------------------------
 .byte   W96
@ 026   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 027   ----------------------------------------
 .byte   W96
@ 028   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 029   ----------------------------------------
 .byte   W96
@ 030   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 031   ----------------------------------------
 .byte   W96
@ 032   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 033   ----------------------------------------
 .byte   W96
@ 034   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 035   ----------------------------------------
 .byte   W96
@ 036   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 037   ----------------------------------------
 .byte   W96
@ 038   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 039   ----------------------------------------
 .byte   W96
@ 040   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 041   ----------------------------------------
 .byte   W96
@ 042   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 043   ----------------------------------------
 .byte   W96
@ 044   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 045   ----------------------------------------
 .byte   W96
@ 046   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 047   ----------------------------------------
 .byte   W96
@ 048   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 049   ----------------------------------------
 .byte   W96
@ 050   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 051   ----------------------------------------
 .byte   W96
@ 052   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 053   ----------------------------------------
 .byte   W96
@ 054   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 055   ----------------------------------------
 .byte   W96
@ 056   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 057   ----------------------------------------
 .byte   W96
@ 058   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 059   ----------------------------------------
 .byte   W96
@ 060   ----------------------------------------
 .byte   PATT
  .word Label_2_016BD141
@ 061   ----------------------------------------
 .byte   W48
 .byte   N24 ,Ds3 ,v100
 .byte   N24 ,Ds4
 .byte   W48
@ 062   ----------------------------------------
 .byte   GOTO
  .word Label_2_016BD12E
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

song11_004:
@ 000   ----------------------------------------
 .byte   KEYSH , song11_key+0
Label_3_016BD1EE:
 .byte   VOICE , 79
 .byte   W96
@ 001   ----------------------------------------
 .byte   W96
@ 002   ----------------------------------------
 .byte   W96
@ 003   ----------------------------------------
 .byte   W96
@ 004   ----------------------------------------
 .byte   W96
@ 005   ----------------------------------------
 .byte   W96
@ 006   ----------------------------------------
 .byte   W96
@ 007   ----------------------------------------
 .byte   W96
@ 008   ----------------------------------------
 .byte   W96
@ 009   ----------------------------------------
 .byte   W96
@ 010   ----------------------------------------
 .byte   W96
@ 011   ----------------------------------------
 .byte   W96
@ 012   ----------------------------------------
Label_3_016BD1FC:
 .byte   VOL , 32*song11_mvl/mxv
 .byte   TIE ,Ds4 ,v127
 .byte   W02
 .byte   VOL , 33*song11_mvl/mxv
 .byte   W01
 .byte   As0
 .byte   W01
 .byte   As0
 .byte   W02
 .byte   Bn0
 .byte   W02
 .byte   Bn0
 .byte   W02
 .byte   Cn1
 .byte   W03
 .byte   Cs1
 .byte   W02
 .byte   Cs1
 .byte   W05
 .byte   Dn1
 .byte   W03
 .byte   Ds1
 .byte   W01
 .byte   Ds1
 .byte   W03
 .byte   En1
 .byte   W03
 .byte   En1
 .byte   W07
 .byte   Fn1
 .byte   W02
 .byte   Fn1
 .byte   W02
 .byte   Fs1
 .byte   W01
 .byte   Fs1
 .byte   W02
 .byte   Gn1
 .byte   W02
 .byte   Gs1
 .byte   W02
 .byte   An1
 .byte   W02
 .byte   An1
 .byte   W01
 .byte   As1
 .byte   W01
 .byte   As1
 .byte   W02
 .byte   Bn1
 .byte   W03
 .byte   Cn2
 .byte   W03
 .byte   Cn2
 .byte   W02
 .byte   Cs2
 .byte   W01
 .byte   Dn2
 .byte   W01
 .byte   Dn2
 .byte   W01
 .byte   Ds2
 .byte   W01
 .byte   Ds2
 .byte   W01
 .byte   En2
 .byte   W01
 .byte   Fn2
 .byte   W01
 .byte   Fn2
 .byte   W01
 .byte   Fs2
 .byte   W01
 .byte   Fs2
 .byte   W02
 .byte   Gn2
 .byte   W02
 .byte   Gn2
 .byte   W02
 .byte   Gs2
 .byte   W01
 .byte   An2
 .byte   W01
 .byte   An2
 .byte   W01
 .byte   As2
 .byte   W01
 .byte   Bn2
 .byte   W01
 .byte   Cn3
 .byte   W01
 .byte   Cs3
 .byte   W01
 .byte   Dn3
 .byte   W01
 .byte   Ds3
 .byte   W01
 .byte   En3
 .byte   W10
 .byte   PEND 
@ 013   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   N12 ,As3
 .byte   W12
 .byte   Gs3
 .byte   W12
@ 014   ----------------------------------------
Label_3_016BD26B:
 .byte   VOL , 44*song11_mvl/mxv
 .byte   TIE ,As3 ,v127
 .byte   W03
 .byte   VOL , 44*song11_mvl/mxv
 .byte   W01
 .byte   An1
 .byte   W01
 .byte   As1
 .byte   W01
 .byte   Bn1
 .byte   W01
 .byte   Bn1
 .byte   W04
 .byte   Cn2
 .byte   W09
 .byte   Cn2
 .byte   W02
 .byte   Cs2
 .byte   W02
 .byte   Dn2
 .byte   W01
 .byte   Ds2
 .byte   W03
 .byte   Ds2
 .byte   W02
 .byte   En2
 .byte   W05
 .byte   En2
 .byte   W10
 .byte   Fn2
 .byte   W01
 .byte   Fn2
 .byte   W02
 .byte   Gn2
 .byte   W02
 .byte   Gn2
 .byte   W01
 .byte   Gs2
 .byte   W01
 .byte   Gs2
 .byte   W01
 .byte   An2
 .byte   W01
 .byte   As2
 .byte   W02
 .byte   As2
 .byte   W01
 .byte   Bn2
 .byte   W01
 .byte   Cn3
 .byte   W01
 .byte   Cn3
 .byte   W01
 .byte   Cs3
 .byte   W01
 .byte   Dn3
 .byte   W01
 .byte   Dn3
 .byte   W01
 .byte   Ds3
 .byte   W01
 .byte   Fn3
 .byte   W32
 .byte   PEND 
@ 015   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   N12 ,Gs3
 .byte   W12
 .byte   Ds3
 .byte   W12
@ 016   ----------------------------------------
Label_3_016BD2B6:
 .byte   VOL , 42*song11_mvl/mxv
 .byte   TIE ,Fs3 ,v127
 .byte   W01
 .byte   VOL , 42*song11_mvl/mxv
 .byte   W01
 .byte   Gs1
 .byte   W01
 .byte   An1
 .byte   W01
 .byte   An1
 .byte   W01
 .byte   As1
 .byte   W03
 .byte   Bn1
 .byte   W02
 .byte   Bn1
 .byte   W03
 .byte   Cn2
 .byte   W02
 .byte   Cs2
 .byte   W02
 .byte   Cs2
 .byte   W04
 .byte   Dn2
 .byte   W01
 .byte   Dn2
 .byte   W02
 .byte   Ds2
 .byte   W04
 .byte   Ds2
 .byte   W01
 .byte   En2
 .byte   W01
 .byte   En2
 .byte   W04
 .byte   Fn2
 .byte   W03
 .byte   Fn2
 .byte   W02
 .byte   Gn2
 .byte   W01
 .byte   Gn2
 .byte   W04
 .byte   Gs2
 .byte   W01
 .byte   Gs2
 .byte   W01
 .byte   An2
 .byte   W01
 .byte   As2
 .byte   W01
 .byte   As2
 .byte   W01
 .byte   Bn2
 .byte   W01
 .byte   Cn3
 .byte   W01
 .byte   Cs3
 .byte   W01
 .byte   Dn3
 .byte   W01
 .byte   Ds3
 .byte   W01
 .byte   Ds3
 .byte   W01
 .byte   Fn3
 .byte   W40
 .byte   W01
 .byte   PEND 
@ 017   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   N24 ,Gs3
 .byte   W24
@ 018   ----------------------------------------
 .byte   VOL , 39*song11_mvl/mxv
 .byte   TIE ,Ds3
 .byte   W04
 .byte   VOL , 40*song11_mvl/mxv
 .byte   W01
 .byte   En1
 .byte   W01
 .byte   Fn1
 .byte   W01
 .byte   Fn1
 .byte   W01
 .byte   Fs1
 .byte   W01
 .byte   Fs1
 .byte   W01
 .byte   Gs1
 .byte   W04
 .byte   Gs1
 .byte   W13
 .byte   An1
 .byte   W05
 .byte   An1
 .byte   W04
 .byte   As1
 .byte   W02
 .byte   As1
 .byte   W02
 .byte   Bn1
 .byte   W03
 .byte   Cn2
 .byte   W02
 .byte   Cn2
 .byte   W02
 .byte   Cs2
 .byte   W04
 .byte   Cs2
 .byte   W02
 .byte   Dn2
 .byte   W02
 .byte   Ds2
 .byte   W02
 .byte   Ds2
 .byte   W02
 .byte   En2
 .byte   W01
 .byte   En2
 .byte   W01
 .byte   Fn2
 .byte   W01
 .byte   Fs2
 .byte   W02
 .byte   Gs2
 .byte   W02
 .byte   Gs2
 .byte   W04
 .byte   An2
 .byte   W01
 .byte   An2
 .byte   W01
 .byte   Bn2
 .byte   W01
 .byte   Cn3
 .byte   W01
 .byte   Cs3
 .byte   W01
 .byte   Dn3
 .byte   W01
 .byte   Ds3
 .byte   W01
 .byte   En3
 .byte   W01
 .byte   Fn3
 .byte   W18
@ 019   ----------------------------------------
 .byte   W96
@ 020   ----------------------------------------
Label_3_016BD351:
 .byte   W07
 .byte   VOL , 64*song11_mvl/mxv
 .byte   W03
 .byte   Ds3
 .byte   W01
 .byte   Dn3
 .byte   W01
 .byte   Dn3
 .byte   W01
 .byte   Cs3
 .byte   W01
 .byte   Cn3
 .byte   W01
 .byte   Bn2
 .byte   W01
 .byte   Bn2
 .byte   W01
 .byte   As2
 .byte   W01
 .byte   As2
 .byte   W01
 .byte   An2
 .byte   W01
 .byte   Gs2
 .byte   W02
 .byte   Gn2
 .byte   W01
 .byte   Gn2
 .byte   W01
 .byte   Fs2
 .byte   W01
 .byte   Fn2
 .byte   W01
 .byte   En2
 .byte   W01
 .byte   En2
 .byte   W01
 .byte   Ds2
 .byte   W01
 .byte   Dn2
 .byte   W01
 .byte   Dn2
 .byte   W01
 .byte   Cs2
 .byte   W01
 .byte   Cs2
 .byte   W01
 .byte   Cn2
 .byte   W02
 .byte   Bn1
 .byte   W01
 .byte   Bn1
 .byte   W01
 .byte   As1
 .byte   W02
 .byte   An1
 .byte   W01
 .byte   Gs1
 .byte   W01
 .byte   Gs1
 .byte   W01
 .byte   Gn1
 .byte   W01
 .byte   Fs1
 .byte   W01
 .byte   Fs1
 .byte   W01
 .byte   Fn1
 .byte   W02
 .byte   En1
 .byte   W02
 .byte   Ds1
 .byte   W01
 .byte   Dn1
 .byte   W02
 .byte   Dn1
 .byte   W02
 .byte   Cs1
 .byte   W03
 .byte   Cn1
 .byte   W02
 .byte   Cn1
 .byte   W02
 .byte   Bn0
 .byte   W01
 .byte   Bn0
 .byte   W01
 .byte   As0
 .byte   W02
 .byte   As0
 .byte   W03
 .byte   An0
 .byte   W02
 .byte   Gs0
 .byte   W02
 .byte   Gn0
 .byte   W03
 .byte   Gn0
 .byte   W02
 .byte   Fs0
 .byte   W02
 .byte   Fn0
 .byte   W01
 .byte   En0
 .byte   W02
 .byte   En0
 .byte   W02
 .byte   Ds0
 .byte   W01
 .byte   Dn0
 .byte   W01
 .byte   Cs0
 .byte   W01
 .byte   Cn0
 .byte   W01
 .byte   AsM1
 .byte   W01
 .byte   AnM1
 .byte   W01
 .byte   GnM1
 .byte   W01
 .byte   GnM1
 .byte   W01
 .byte   FsM1
 .byte   W01
 .byte   FnM1
 .byte   W03
 .byte   PEND 
@ 021   ----------------------------------------
 .byte   EOT
 .byte   Ds3
 .byte   W96
@ 022   ----------------------------------------
 .byte   W96
@ 023   ----------------------------------------
 .byte   W96
@ 024   ----------------------------------------
 .byte   PATT
  .word Label_3_016BD1FC
@ 025   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Ds4
 .byte   N12 ,As3 ,v127
 .byte   W12
 .byte   Gs3
 .byte   W12
@ 026   ----------------------------------------
 .byte   PATT
  .word Label_3_016BD26B
@ 027   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   As3
 .byte   N12 ,Gs3 ,v127
 .byte   W12
 .byte   Ds3
 .byte   W12
@ 028   ----------------------------------------
 .byte   PATT
  .word Label_3_016BD2B6
@ 029   ----------------------------------------
 .byte   W72
 .byte   EOT
 .byte   Fs3
 .byte   N24 ,Fs4 ,v127
 .byte   W24
@ 030   ----------------------------------------
 .byte   VOL , 39*song11_mvl/mxv
 .byte   TIE ,Ds4
 .byte   W04
 .byte   VOL , 40*song11_mvl/mxv
 .byte   W01
 .byte   En1
 .byte   W01
 .byte   Fn1
 .byte   W01
 .byte   Fn1
 .byte   W01
 .byte   Fs1
 .byte   W01
 .byte   Fs1
 .byte   W01
 .byte   Gs1
 .byte   W04
 .byte   Gs1
 .byte   W13
 .byte   An1
 .byte   W05
 .byte   An1
 .byte   W04
 .byte   As1
 .byte   W02
 .byte   As1
 .byte   W02
 .byte   Bn1
 .byte   W03
 .byte   Cn2
 .byte   W02
 .byte   Cn2
 .byte   W02
 .byte   Cs2
 .byte   W04
 .byte   Cs2
 .byte   W02
 .byte   Dn2
 .byte   W02
 .byte   Ds2
 .byte   W02
 .byte   Ds2
 .byte   W02
 .byte   En2
 .byte   W01
 .byte   En2
 .byte   W01
 .byte   Fn2
 .byte   W01
 .byte   Fs2
 .byte   W02
 .byte   Gs2
 .byte   W02
 .byte   Gs2
 .byte   W04
 .byte   An2
 .byte   W01
 .byte   An2
 .byte   W01
 .byte   Bn2
 .byte   W01
 .byte   Cn3
 .byte   W01
 .byte   Cs3
 .byte   W01
 .byte   Dn3
 .byte   W01
 .byte   Ds3
 .byte   W01
 .byte   En3
 .byte   W01
 .byte   Fn3
 .byte   W18
@ 031   ----------------------------------------
 .byte   W96
@ 032   ----------------------------------------
 .byte   PATT
  .word Label_3_016BD351
@ 033   ----------------------------------------
 .byte   EOT
 .byte   Ds4
 .byte   W96
@ 034   ----------------------------------------
 .byte   W96
@ 035   ----------------------------------------
 .byte   W96
@ 036   ----------------------------------------
 .byte   W96
@ 037   ----------------------------------------
 .byte   W96
@ 038   ----------------------------------------
 .byte   W96
@ 039   ----------------------------------------
 .byte   W96
@ 040   ----------------------------------------
 .byte   W96
@ 041   ----------------------------------------
 .byte   W96
@ 042   ----------------------------------------
 .byte   W96
@ 043   ----------------------------------------
 .byte   W96
@ 044   ----------------------------------------
 .byte   W96
@ 045   ----------------------------------------
 .byte   W96
@ 046   ----------------------------------------
 .byte   W96
@ 047   ----------------------------------------
 .byte   W96
@ 048   ----------------------------------------
 .byte   W96
@ 049   ----------------------------------------
 .byte   W96
@ 050   ----------------------------------------
 .byte   W96
@ 051   ----------------------------------------
 .byte   W96
@ 052   ----------------------------------------
 .byte   W96
@ 053   ----------------------------------------
 .byte   W96
@ 054   ----------------------------------------
 .byte   W96
@ 055   ----------------------------------------
 .byte   W96
@ 056   ----------------------------------------
 .byte   W96
@ 057   ----------------------------------------
 .byte   W96
@ 058   ----------------------------------------
 .byte   W96
@ 059   ----------------------------------------
 .byte   W96
@ 060   ----------------------------------------
 .byte   W96
@ 061   ----------------------------------------
 .byte   W96
@ 062   ----------------------------------------
 .byte   GOTO
  .word Label_3_016BD1EE
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

song11_005:
@ 000   ----------------------------------------
 .byte   KEYSH , song11_key+0
Label_4_016BD47A:
 .byte   VOICE , 1
 .byte   W96
@ 001   ----------------------------------------
 .byte   W96
@ 002   ----------------------------------------
 .byte   W96
@ 003   ----------------------------------------
 .byte   W96
@ 004   ----------------------------------------
 .byte   W96
@ 005   ----------------------------------------
 .byte   W96
@ 006   ----------------------------------------
 .byte   W96
@ 007   ----------------------------------------
 .byte   W96
@ 008   ----------------------------------------
 .byte   W96
@ 009   ----------------------------------------
 .byte   W96
@ 010   ----------------------------------------
 .byte   W96
@ 011   ----------------------------------------
 .byte   W96
@ 012   ----------------------------------------
 .byte   W96
@ 013   ----------------------------------------
 .byte   W96
@ 014   ----------------------------------------
 .byte   W96
@ 015   ----------------------------------------
 .byte   W96
@ 016   ----------------------------------------
 .byte   W96
@ 017   ----------------------------------------
 .byte   W96
@ 018   ----------------------------------------
 .byte   W96
@ 019   ----------------------------------------
 .byte   W96
@ 020   ----------------------------------------
 .byte   W96
@ 021   ----------------------------------------
 .byte   W96
@ 022   ----------------------------------------
 .byte   W96
@ 023   ----------------------------------------
 .byte   W96
@ 024   ----------------------------------------
 .byte   W96
@ 025   ----------------------------------------
 .byte   W96
@ 026   ----------------------------------------
 .byte   W96
@ 027   ----------------------------------------
 .byte   W96
@ 028   ----------------------------------------
 .byte   W96
@ 029   ----------------------------------------
 .byte   W96
@ 030   ----------------------------------------
 .byte   W96
@ 031   ----------------------------------------
 .byte   W96
@ 032   ----------------------------------------
 .byte   W96
@ 033   ----------------------------------------
 .byte   W96
@ 034   ----------------------------------------
 .byte   W96
@ 035   ----------------------------------------
 .byte   W96
@ 036   ----------------------------------------
 .byte   W96
@ 037   ----------------------------------------
 .byte   W96
@ 038   ----------------------------------------
 .byte   W96
@ 039   ----------------------------------------
 .byte   W96
@ 040   ----------------------------------------
 .byte   W96
@ 041   ----------------------------------------
 .byte   W96
@ 042   ----------------------------------------
 .byte   W96
@ 043   ----------------------------------------
 .byte   W96
@ 044   ----------------------------------------
 .byte   W96
@ 045   ----------------------------------------
 .byte   W96
@ 046   ----------------------------------------
 .byte   W96
@ 047   ----------------------------------------
 .byte   W92
 .byte   W01
 .byte   VOL , 50*song11_mvl/mxv
 .byte   W02
 .byte   W01
@ 048   ----------------------------------------
Label_4_016BD4B1:
 .byte   N12 ,Ds4 ,v127
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Gs3
 .byte   W24
 .byte   PEND 
@ 049   ----------------------------------------
 .byte   Ds3
 .byte   W96
@ 050   ----------------------------------------
 .byte   As2
 .byte   W24
 .byte   Ds3
 .byte   W24
 .byte   Fs3
 .byte   W24
 .byte   Gs3
 .byte   W24
@ 051   ----------------------------------------
 .byte   W96
@ 052   ----------------------------------------
 .byte   PATT
  .word Label_4_016BD4B1
@ 053   ----------------------------------------
 .byte   N12 ,Ds3 ,v127
 .byte   W96
@ 054   ----------------------------------------
 .byte   As2
 .byte   W24
 .byte   Ds3
 .byte   W24
 .byte   As3
 .byte   W24
 .byte   Gs3
 .byte   W24
@ 055   ----------------------------------------
 .byte   W96
@ 056   ----------------------------------------
Label_4_016BD4DF:
 .byte   N12 ,Fs3 ,v127
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Gs3
 .byte   W24
 .byte   PEND 
@ 057   ----------------------------------------
 .byte   Ds3
 .byte   W96
@ 058   ----------------------------------------
 .byte   PATT
  .word Label_4_016BD4DF
@ 059   ----------------------------------------
 .byte   N12 ,Cs4 ,v127
 .byte   W96
@ 060   ----------------------------------------
 .byte   Ds4
 .byte   W12
 .byte   Cs4
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Gs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   As3
 .byte   W12
 .byte   Gs3
 .byte   W12
@ 061   ----------------------------------------
 .byte   Fs3
 .byte   W12
 .byte   Ds3
 .byte   W12
 .byte   Fs3
 .byte   W12
 .byte   Cs3
 .byte   W12
 .byte   Ds3
 .byte   W48
@ 062   ----------------------------------------
 .byte   GOTO
  .word Label_4_016BD47A
 .byte   FINE

@**************** Track 6 (Midi-Chn.5) ****************@

song11_006:
@ 000   ----------------------------------------
 .byte   KEYSH , song11_key+0
Label_5_016BD51E:
 .byte   VOICE , 127
 .byte   VOL , 48*song11_mvl/mxv
 .byte   Cn2
 .byte   N12 ,En0 ,v127
 .byte   W12
 .byte   En0 ,v100
 .byte   W12
 .byte   En0 ,v080
 .byte   W12
 .byte   En0 ,v072
 .byte   W12
 .byte   En0 ,v060
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   En0 ,v127
 .byte   W12
 .byte   En0 ,v100
 .byte   W12
@ 001   ----------------------------------------
Label_5_016BD53B:
 .byte   N12 ,En0 ,v080
 .byte   W12
 .byte   En0 ,v072
 .byte   W12
 .byte   En0 ,v100
 .byte   W12
 .byte   En0 ,v080
 .byte   W12
 .byte   En0 ,v060
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   PEND 
@ 002   ----------------------------------------
Label_5_016BD552:
 .byte   N12 ,En0 ,v127
 .byte   W12
 .byte   En0 ,v100
 .byte   W12
 .byte   En0 ,v080
 .byte   W12
 .byte   En0 ,v072
 .byte   W12
 .byte   En0 ,v060
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   En0 ,v127
 .byte   W12
 .byte   En0 ,v100
 .byte   W12
 .byte   PEND 
@ 003   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 004   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 005   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 006   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 007   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 008   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 009   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 010   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 011   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 012   ----------------------------------------
Label_5_016BD598:
 .byte   N12 ,En0 ,v127
 .byte   W12
 .byte   En0 ,v100
 .byte   W12
 .byte   En0 ,v080
 .byte   W12
 .byte   En0 ,v072
 .byte   W12
 .byte   En0 ,v060
 .byte   W12
 .byte   N12
 .byte   W12
 .byte   En0 ,v127
 .byte   W12
 .byte   En0 ,v100
 .byte   W12
 .byte   PEND 
@ 013   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 014   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 015   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 016   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 017   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 018   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 019   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 020   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 021   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 022   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 023   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 024   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD598
@ 025   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 026   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 027   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 028   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 029   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 030   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 031   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 032   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 033   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 034   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 035   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 036   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 037   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 038   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 039   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 040   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 041   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 042   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 043   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 044   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 045   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 046   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD552
@ 047   ----------------------------------------
 .byte   PATT
  .word Label_5_016BD53B
@ 048   ----------------------------------------
 .byte   W96
@ 049   ----------------------------------------
 .byte   W96
@ 050   ----------------------------------------
 .byte   W96
@ 051   ----------------------------------------
 .byte   W96
@ 052   ----------------------------------------
 .byte   W96
@ 053   ----------------------------------------
 .byte   W96
@ 054   ----------------------------------------
 .byte   W96
@ 055   ----------------------------------------
 .byte   W96
@ 056   ----------------------------------------
 .byte   W96
@ 057   ----------------------------------------
 .byte   W96
@ 058   ----------------------------------------
 .byte   W96
@ 059   ----------------------------------------
 .byte   W96
@ 060   ----------------------------------------
 .byte   W96
@ 061   ----------------------------------------
 .byte   W96
@ 062   ----------------------------------------
 .byte   GOTO
  .word Label_5_016BD51E
 .byte   FINE

@******************************************************@
	.align	2

song11:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song11_pri	@ Priority
	.byte	song11_rev	@ Reverb.
    
	.word	song11_grp
    
	.word	song11_001
	.word	song11_002
	.word	song11_003
	.word	song11_004
	.word	song11_005
	.word	song11_006

	.end
