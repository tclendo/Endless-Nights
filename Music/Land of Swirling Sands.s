	.include "MPlayDef.s"

	.equ	song22_grp, voicegroup000
	.equ	song22_pri, 10
	.equ	song22_rev, 128
	.equ	song22_mvl, 127
	.equ	song22_key, 0
	.equ	song22_tbs, 1
	.equ	song22_exg, 0
	.equ	song22_cmp, 1

	.section .rodata
	.global	song22
	.align	2


@**************** Track 1 (Midi-Chn.0) ****************@

song22_001:
@ 000   ----------------------------------------
 .byte   KEYSH , song22_key+0
Label_0_AB5196:
 .byte   TEMPO , 114*song22_tbs/2
 .byte   VOICE , 127
 .byte   VOL , 43*song22_mvl/mxv
 .byte   N11 ,Cs3 ,v080
 .byte   W12
 .byte   N23 ,Ds2 ,v108
 .byte   W24
 .byte   N12 ,Dn3 ,v092
 .byte   W36
 .byte   N09 ,Dn3 ,v100
 .byte   W12
 .byte   Cs3 ,v064
 .byte   W12
@ 001   ----------------------------------------
 .byte   N10 ,Cn3 ,v072
 .byte   W12
 .byte   Cs3
 .byte   W24
 .byte   N11 ,Dn3 ,v096
 .byte   W36
 .byte   N10 ,Dn3 ,v088
 .byte   W12
 .byte   Cs3 ,v076
 .byte   W12
@ 002   ----------------------------------------
 .byte   N09 ,Cn3
 .byte   W12
 .byte   N10 ,Cn3 ,v068
 .byte   W12
 .byte   Cs3 ,v080
 .byte   W12
 .byte   N11 ,Dn3 ,v100
 .byte   W36
 .byte   N09 ,Dn3 ,v072
 .byte   W12
 .byte   Cs3
 .byte   W12
@ 003   ----------------------------------------
 .byte   W12
 .byte   N10 ,Cn3 ,v080
 .byte   W24
 .byte   N11 ,Cs3 ,v068
 .byte   W36
 .byte   Dn3 ,v088
 .byte   W12
 .byte   N12 ,Cs3 ,v068
 .byte   W12
@ 004   ----------------------------------------
 .byte   W12
 .byte   N11 ,Cn3 ,v084
 .byte   W24
 .byte   Cs3
 .byte   W36
 .byte   Dn3 ,v092
 .byte   W12
 .byte   N10 ,Cs3 ,v064
 .byte   W12
@ 005   ----------------------------------------
 .byte   W12
 .byte   Cs3 ,v080
 .byte   W24
 .byte   N11
 .byte   W24
 .byte   N09 ,Cn3 ,v076
 .byte   W12
 .byte   N11 ,Cs3 ,v068
 .byte   W12
 .byte   N09 ,Dn3 ,v072
 .byte   W12
@ 006   ----------------------------------------
 .byte   N13 ,Cs3
 .byte   W24
 .byte   N12 ,Cs3 ,v064
 .byte   W36
 .byte   N09 ,Cn3 ,v052
 .byte   W12
 .byte   N14 ,Cs3 ,v056
 .byte   W24
@ 007   ----------------------------------------
 .byte   W12
 .byte   N09 ,Dn3 ,v052
 .byte   W12
 .byte   Dn3 ,v060
 .byte   W12
 .byte   N12 ,Cs3 ,v080
 .byte   W24
 .byte   Cs3 ,v068
 .byte   W36
@ 008   ----------------------------------------
 .byte   W24
 .byte   N11 ,Cs3 ,v056
 .byte   W12
 .byte   N12 ,Dn3 ,v024
 .byte   W24
 .byte   N11 ,Dn3 ,v020
 .byte   W12
 .byte   N21 ,Cs3 ,v044
 .byte   W24
@ 009   ----------------------------------------
 .byte   W12
 .byte   N23 ,Cs3 ,v052
 .byte   W36
 .byte   N11 ,Cs3 ,v048
 .byte   W12
 .byte   Fs2 ,v004
 .byte   W12
 .byte   N19 ,Cs3 ,v060
 .byte   W24
@ 010   ----------------------------------------
 .byte   W96
@ 011   ----------------------------------------
 .byte   W72
 .byte   N28 ,Ds2 ,v084
 .byte   W24
@ 012   ----------------------------------------
 .byte   W60
 .byte   N08 ,Fs2 ,v080
 .byte   W24
 .byte   N07 ,Fs2 ,v060
 .byte   W12
@ 013   ----------------------------------------
 .byte   W12
 .byte   N08 ,Fs2 ,v040
 .byte   W24
 .byte   N09 ,Fs2 ,v072
 .byte   W24
 .byte   N09
 .byte   W12
 .byte   N08 ,Fs2 ,v060
 .byte   W12
 .byte   N09 ,Fs2 ,v084
 .byte   W12
@ 014   ----------------------------------------
 .byte   W12
 .byte   N08
 .byte   W24
 .byte   Fs2 ,v076
 .byte   W24
 .byte   N09 ,Fs2 ,v068
 .byte   W24
 .byte   Fs2 ,v072
 .byte   W12
@ 015   ----------------------------------------
 .byte   W12
 .byte   N08 ,Fs2 ,v060
 .byte   W24
 .byte   N09 ,Fs2 ,v080
 .byte   W24
 .byte   Fs2 ,v084
 .byte   W12
 .byte   N08 ,Fs2 ,v056
 .byte   W12
 .byte   N09 ,Fs2 ,v080
 .byte   W12
@ 016   ----------------------------------------
 .byte   N28 ,Ds2 ,v076
 .byte   W96
@ 017   ----------------------------------------
 .byte   W96
@ 018   ----------------------------------------
 .byte   Ds2 ,v096
 .byte   W96
@ 019   ----------------------------------------
 .byte   W24
 .byte   N10 ,Fs2 ,v064
 .byte   W12
 .byte   N09
 .byte   W24
 .byte   Fs2 ,v068
 .byte   W12
 .byte   Fs2 ,v056
 .byte   W24
@ 020   ----------------------------------------
 .byte   W24
 .byte   Fs2 ,v076
 .byte   W12
 .byte   Fs2 ,v068
 .byte   W24
 .byte   Fs2 ,v080
 .byte   W12
 .byte   N10 ,Fs2 ,v056
 .byte   W24
@ 021   ----------------------------------------
 .byte   W24
 .byte   N08 ,Fs2 ,v080
 .byte   W12
 .byte   N08
 .byte   W24
 .byte   N09 ,Fs2 ,v092
 .byte   W12
 .byte   Fs2 ,v076
 .byte   W24
@ 022   ----------------------------------------
 .byte   N28 ,Ds2 ,v124
 .byte   W72
 .byte   N10 ,Fs2 ,v064
 .byte   W12
 .byte   N10
 .byte   W12
@ 023   ----------------------------------------
 .byte   W36
 .byte   Fs2 ,v088
 .byte   W48
 .byte   N08 ,Fs2 ,v032
 .byte   W12
@ 024   ----------------------------------------
 .byte   N11 ,Fs2 ,v088
 .byte   W60
 .byte   N09 ,Fs2 ,v080
 .byte   W24
 .byte   N10 ,Fs2 ,v076
 .byte   W12
@ 025   ----------------------------------------
 .byte   W12
 .byte   Fs2 ,v072
 .byte   W24
 .byte   N08 ,Fs2 ,v044
 .byte   W24
 .byte   N10 ,Fs2 ,v092
 .byte   W24
 .byte   Fs2 ,v096
 .byte   W12
@ 026   ----------------------------------------
 .byte   N30 ,Ds2 ,v104
 .byte   W96
@ 027   ----------------------------------------
 .byte   W12
 .byte   N10 ,Fs2 ,v096
 .byte   W24
 .byte   N09 ,Fs2 ,v076
 .byte   W24
 .byte   N10
 .byte   W12
 .byte   N09
 .byte   W12
 .byte   N10 ,Fs2 ,v084
 .byte   W12
@ 028   ----------------------------------------
 .byte   W12
 .byte   N10
 .byte   W24
 .byte   N09 ,Fs2 ,v064
 .byte   W24
 .byte   N10 ,Fs2 ,v080
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   N10
 .byte   W12
@ 029   ----------------------------------------
 .byte   W12
 .byte   Fs2 ,v076
 .byte   W12
 .byte   Fs2 ,v072
 .byte   W12
 .byte   Fs2 ,v084
 .byte   W24
 .byte   Fs2 ,v076
 .byte   W24
 .byte   N11 ,Fs2 ,v088
 .byte   W12
@ 030   ----------------------------------------
 .byte   W12
 .byte   Fs2 ,v060
 .byte   W12
 .byte   N10 ,Fs2 ,v080
 .byte   W12
 .byte   N11 ,Fs2 ,v076
 .byte   W24
 .byte   N10 ,Fs2 ,v072
 .byte   W12
 .byte   N11 ,Fs2 ,v080
 .byte   W12
 .byte   N10 ,Fs2 ,v076
 .byte   W12
@ 031   ----------------------------------------
 .byte   W12
 .byte   N10
 .byte   W12
 .byte   Fs2 ,v080
 .byte   W12
 .byte   N10
 .byte   W24
 .byte   Fs2 ,v072
 .byte   W24
 .byte   N09 ,Fs2 ,v080
 .byte   W12
@ 032   ----------------------------------------
 .byte   W12
 .byte   N08 ,Fs2 ,v072
 .byte   W24
 .byte   N10 ,Fs2 ,v092
 .byte   W24
 .byte   N09 ,Fs2 ,v076
 .byte   W24
 .byte   N08 ,Fs2 ,v080
 .byte   W12
@ 033   ----------------------------------------
 .byte   N09 ,Fs2 ,v092
 .byte   W12
 .byte   Fs2 ,v080
 .byte   W12
 .byte   N08 ,Fs2 ,v056
 .byte   W12
 .byte   N09 ,Fs2 ,v088
 .byte   W24
 .byte   N08 ,Fs2 ,v080
 .byte   W12
 .byte   N09 ,Fs2 ,v084
 .byte   W12
 .byte   N07 ,Fs2 ,v076
 .byte   W12
@ 034   ----------------------------------------
 .byte   GOTO
  .word Label_0_AB5196
 .byte   FINE

@**************** Track 2 (Midi-Chn.1) ****************@

song22_002:
@ 000   ----------------------------------------
 .byte   KEYSH , song22_key+0
Label_1_AB5374:
 .byte   W72
 .byte   VOICE , 104
 .byte   VOL , 63*song22_mvl/mxv
 .byte   PAN , c_v-10
 .byte   W24
@ 001   ----------------------------------------
 .byte   W84
 .byte   N11 ,En3 ,v108
 .byte   W12
@ 002   ----------------------------------------
 .byte   N80 ,Bn3 ,v104
 .byte   W84
 .byte   N11 ,Cn4 ,v100
 .byte   W12
@ 003   ----------------------------------------
 .byte   N76 ,Dn4 ,v104
 .byte   W78
 .byte   N05 ,Cn4 ,v100
 .byte   W06
 .byte   Dn4 ,v104
 .byte   W06
 .byte   Cn4 ,v100
 .byte   W06
@ 004   ----------------------------------------
 .byte   N80 ,Bn3 ,v108
 .byte   W84
 .byte   N11 ,An3 ,v100
 .byte   W12
@ 005   ----------------------------------------
 .byte   N80 ,Gs3
 .byte   W84
 .byte   N11 ,En3 ,v108
 .byte   W12
@ 006   ----------------------------------------
 .byte   N80 ,Bn3
 .byte   W84
 .byte   N11 ,Cn4
 .byte   W12
@ 007   ----------------------------------------
 .byte   N76 ,Dn4
 .byte   W78
 .byte   N05 ,Cn4 ,v100
 .byte   W06
 .byte   Dn4 ,v108
 .byte   W06
 .byte   Cn4 ,v100
 .byte   W06
@ 008   ----------------------------------------
 .byte   TIE ,Bn3 ,v108
 .byte   W96
@ 009   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@ 010   ----------------------------------------
 .byte   N76 ,Fn3 ,v100
 .byte   W84
 .byte   N05 ,Gn3
 .byte   W06
 .byte   Fn3
 .byte   W06
@ 011   ----------------------------------------
 .byte   N92 ,En3 ,v108
 .byte   W96
@ 012   ----------------------------------------
 .byte   N76 ,Bn2 ,v100
 .byte   W84
 .byte   N11 ,Cn3
 .byte   W12
@ 013   ----------------------------------------
 .byte   Bn2
 .byte   W12
 .byte   N23 ,An2
 .byte   W36
 .byte   Gs2
 .byte   W24
 .byte   N17 ,En2
 .byte   W24
@ 014   ----------------------------------------
 .byte   N80 ,Bn2 ,v104
 .byte   W84
 .byte   N11 ,An2 ,v100
 .byte   W12
@ 015   ----------------------------------------
 .byte   N80 ,Gs2
 .byte   W84
 .byte   N11 ,Fn2
 .byte   W12
@ 016   ----------------------------------------
 .byte   TIE ,En2
 .byte   W96
@ 017   ----------------------------------------
 .byte   W80
 .byte   W03
 .byte   EOT
 .byte   W01
 .byte   N11 ,Dn3
 .byte   W12
@ 018   ----------------------------------------
 .byte   N80 ,Gn3
 .byte   W84
 .byte   N11 ,Fn3
 .byte   W12
@ 019   ----------------------------------------
 .byte   N76 ,Dn3
 .byte   W78
 .byte   N05 ,Cn3
 .byte   W06
 .byte   Dn3
 .byte   W06
 .byte   Cn3
 .byte   W06
@ 020   ----------------------------------------
 .byte   N80 ,Bn2 ,v104
 .byte   W84
 .byte   N11 ,Gs2 ,v100
 .byte   W12
@ 021   ----------------------------------------
 .byte   N80 ,Gn2
 .byte   W84
 .byte   N11 ,Dn3
 .byte   W12
@ 022   ----------------------------------------
 .byte   N68 ,Gn3
 .byte   W72
 .byte   N11 ,Dn3
 .byte   W12
 .byte   Ds3
 .byte   W12
@ 023   ----------------------------------------
 .byte   N56 ,Fn3
 .byte   W60
 .byte   N11 ,Ds3
 .byte   W12
 .byte   Fn3
 .byte   W12
 .byte   Gn3
 .byte   W12
@ 024   ----------------------------------------
 .byte   N68 ,Dn3
 .byte   W72
 .byte   N23 ,Cn3
 .byte   W24
@ 025   ----------------------------------------
 .byte   N92 ,An2
 .byte   W96
@ 026   ----------------------------------------
 .byte   N68 ,Gn2 ,v104
 .byte   W72
 .byte   N11 ,Fn2 ,v100
 .byte   W12
 .byte   Gn2
 .byte   W12
@ 027   ----------------------------------------
 .byte   N64 ,Gs2
 .byte   W72
 .byte   N11 ,Dn2
 .byte   W12
 .byte   Ds2
 .byte   W12
@ 028   ----------------------------------------
 .byte   N68 ,Fn2
 .byte   W72
 .byte   N11 ,Bn1
 .byte   W12
 .byte   Cn2
 .byte   W12
@ 029   ----------------------------------------
 .byte   N92 ,Dn2
 .byte   W96
@ 030   ----------------------------------------
 .byte   N68 ,Dn3
 .byte   W72
 .byte   N11 ,Cn3
 .byte   W12
 .byte   Dn3
 .byte   W12
@ 031   ----------------------------------------
 .byte   N76 ,Bn2
 .byte   W78
 .byte   N05 ,Cn3
 .byte   W06
 .byte   Bn2
 .byte   W06
 .byte   Gs2
 .byte   W06
@ 032   ----------------------------------------
 .byte   TIE ,Gn2
 .byte   W96
@ 033   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   W01
@ 034   ----------------------------------------
 .byte   GOTO
  .word Label_1_AB5374
 .byte   FINE

@**************** Track 3 (Midi-Chn.2) ****************@

song22_003:
@ 000   ----------------------------------------
 .byte   KEYSH , song22_key+0
Label_2_AB546E:
 .byte   VOICE , 32
 .byte   VOL , 60*song22_mvl/mxv
 .byte   PAN , c_v+0
 .byte   N32 ,En2 ,v112
 .byte   N32 ,Bn2 ,v100
 .byte   W48
 .byte   En2 ,v112
 .byte   N32 ,Bn2 ,v100
 .byte   W36
 .byte   N11 ,Fn2 ,v092
 .byte   N09 ,Bn2 ,v100
 .byte   W12
@ 001   ----------------------------------------
Label_2_AB5488:
 .byte   N32 ,En2 ,v112
 .byte   N32 ,Bn2 ,v100
 .byte   W48
 .byte   En2 ,v112
 .byte   N32 ,Bn2 ,v100
 .byte   W36
 .byte   N11 ,Fn2 ,v092
 .byte   N09 ,Cn3 ,v076
 .byte   W12
 .byte   PEND 
@ 002   ----------------------------------------
 .byte   PATT
  .word Label_2_AB5488
@ 003   ----------------------------------------
 .byte   N32 ,En2 ,v112
 .byte   N32 ,Bn2 ,v100
 .byte   W48
 .byte   En2 ,v112
 .byte   N32 ,Bn2 ,v100
 .byte   W36
 .byte   N11 ,Fn2 ,v096
 .byte   N11 ,Cn3 ,v084
 .byte   W12
@ 004   ----------------------------------------
 .byte   N30 ,En2 ,v112
 .byte   N30 ,Bn2 ,v100
 .byte   W48
 .byte   N32 ,En2 ,v112
 .byte   N32 ,Bn2 ,v100
 .byte   W36
 .byte   N11 ,Fn2 ,v092
 .byte   N09 ,Cn3 ,v080
 .byte   W12
@ 005   ----------------------------------------
 .byte   N30 ,En2 ,v112
 .byte   N30 ,Bn2 ,v100
 .byte   W48
 .byte   En2 ,v112
 .byte   N32 ,Bn2 ,v100
 .byte   W36
 .byte   N11 ,Fn2 ,v092
 .byte   N11 ,Cn3 ,v080
 .byte   W12
@ 006   ----------------------------------------
 .byte   N32 ,En2 ,v112
 .byte   N30 ,Bn2 ,v100
 .byte   W48
 .byte   En2 ,v112
 .byte   N30 ,Bn2 ,v100
 .byte   W36
 .byte   N11 ,Fn2 ,v088
 .byte   N10 ,Cn3 ,v076
 .byte   W12
@ 007   ----------------------------------------
 .byte   N32 ,En2 ,v112
 .byte   N32 ,Bn2 ,v100
 .byte   W48
 .byte   N30 ,En2 ,v112
 .byte   N30 ,Bn2 ,v100
 .byte   W36
 .byte   N11 ,Fn2 ,v088
 .byte   N10 ,Cn3 ,v076
 .byte   W12
@ 008   ----------------------------------------
 .byte   N32 ,En2 ,v112
 .byte   N32 ,Bn2 ,v100
 .byte   W48
 .byte   N30 ,En2 ,v112
 .byte   N30 ,Bn2 ,v100
 .byte   W36
 .byte   N11 ,Fn2 ,v088
 .byte   N11 ,Cn3 ,v080
 .byte   W12
@ 009   ----------------------------------------
 .byte   En2 ,v092
 .byte   N11 ,Bn2 ,v104
 .byte   W12
 .byte   N17 ,En2 ,v100
 .byte   N17 ,An2
 .byte   W24
 .byte   N16 ,Ds2 ,v108
 .byte   N17 ,Gs2 ,v088
 .byte   W24
 .byte   N16 ,Dn2 ,v112
 .byte   N17 ,Gn2 ,v100
 .byte   W24
 .byte   N10 ,Cs2 ,v096
 .byte   N10 ,Fs2
 .byte   W12
@ 010   ----------------------------------------
 .byte   N32 ,En2 ,v100
 .byte   N32 ,Bn2 ,v108
 .byte   W48
 .byte   En2 ,v100
 .byte   N32 ,Bn2 ,v104
 .byte   W36
 .byte   N11 ,Fn2 ,v092
 .byte   N09 ,Cn3 ,v076
 .byte   W12
@ 011   ----------------------------------------
 .byte   N32 ,En2 ,v104
 .byte   N32 ,Bn2 ,v108
 .byte   W48
 .byte   En2 ,v100
 .byte   N32 ,Bn2 ,v104
 .byte   W36
 .byte   N11 ,Fn2 ,v096
 .byte   N11 ,Cn3 ,v084
 .byte   W12
@ 012   ----------------------------------------
 .byte   N30 ,En2 ,v096
 .byte   N30 ,Bn2 ,v104
 .byte   W48
 .byte   N32 ,En2 ,v108
 .byte   N32 ,Bn2
 .byte   W36
 .byte   N11 ,Fn2 ,v092
 .byte   N09 ,Cn3 ,v080
 .byte   W12
@ 013   ----------------------------------------
 .byte   N30 ,En2 ,v096
 .byte   N30 ,Bn2 ,v104
 .byte   W48
 .byte   En2 ,v108
 .byte   N32 ,Bn2 ,v116
 .byte   W36
 .byte   N11 ,Fn2 ,v092
 .byte   N11 ,Cn3 ,v080
 .byte   W12
@ 014   ----------------------------------------
 .byte   N32 ,En2 ,v096
 .byte   N30 ,Bn2 ,v104
 .byte   W48
 .byte   En2 ,v108
 .byte   N30 ,Bn2
 .byte   W36
 .byte   N11 ,Fn2 ,v088
 .byte   N10 ,Cn3 ,v076
 .byte   W12
@ 015   ----------------------------------------
 .byte   N32 ,En2 ,v092
 .byte   N32 ,Bn2 ,v104
 .byte   W48
 .byte   N30 ,En2 ,v100
 .byte   N30 ,Bn2 ,v104
 .byte   W36
 .byte   N11 ,Fn2 ,v088
 .byte   N10 ,Cn3 ,v076
 .byte   W12
@ 016   ----------------------------------------
 .byte   N32 ,En2 ,v096
 .byte   N32 ,Bn2 ,v108
 .byte   W48
 .byte   N30 ,En2 ,v104
 .byte   N30 ,Bn2 ,v108
 .byte   W36
 .byte   N11 ,Fn2 ,v088
 .byte   N11 ,Cn3 ,v080
 .byte   W12
@ 017   ----------------------------------------
 .byte   N09 ,En2 ,v092
 .byte   N11 ,Bn2 ,v104
 .byte   W12
 .byte   N17 ,Ds2 ,v100
 .byte   N17 ,Gs2
 .byte   W24
 .byte   N16 ,Dn2 ,v108
 .byte   N17 ,Gn2 ,v088
 .byte   W24
 .byte   N16 ,Cs2 ,v112
 .byte   N17 ,Fs2 ,v100
 .byte   W24
 .byte   N10 ,Cn2 ,v096
 .byte   N10 ,Fn2
 .byte   W12
@ 018   ----------------------------------------
Label_2_AB55EB:
 .byte   N32 ,Gn2 ,v100
 .byte   N32 ,Dn3
 .byte   W48
 .byte   Gn2
 .byte   N32 ,Dn3
 .byte   W36
 .byte   N11 ,Gs2 ,v092
 .byte   N09 ,Ds3 ,v076
 .byte   W12
 .byte   PEND 
@ 019   ----------------------------------------
Label_2_AB55FD:
 .byte   N32 ,Gn2 ,v104
 .byte   N32 ,Dn3 ,v100
 .byte   W48
 .byte   Gn2
 .byte   N32 ,Dn3
 .byte   W36
 .byte   N11 ,Gs2 ,v096
 .byte   N11 ,Ds3 ,v084
 .byte   W12
 .byte   PEND 
@ 020   ----------------------------------------
Label_2_AB5610:
 .byte   N30 ,Gn2 ,v096
 .byte   N30 ,Dn3 ,v100
 .byte   W48
 .byte   N32 ,Gn2 ,v108
 .byte   N32 ,Dn3 ,v100
 .byte   W36
 .byte   N11 ,Gs2 ,v092
 .byte   N09 ,Ds3 ,v080
 .byte   W12
 .byte   PEND 
@ 021   ----------------------------------------
Label_2_AB5626:
 .byte   N30 ,Gn2 ,v096
 .byte   N30 ,Dn3 ,v100
 .byte   W48
 .byte   Gn2 ,v108
 .byte   N32 ,Dn3 ,v100
 .byte   W36
 .byte   N11 ,Gs2 ,v092
 .byte   N11 ,Ds3 ,v080
 .byte   W12
 .byte   PEND 
@ 022   ----------------------------------------
Label_2_AB563B:
 .byte   N32 ,Gn2 ,v096
 .byte   N30 ,Dn3 ,v100
 .byte   W48
 .byte   Gn2 ,v108
 .byte   N30 ,Dn3 ,v100
 .byte   W36
 .byte   N11 ,Gs2 ,v088
 .byte   N10 ,Ds3 ,v076
 .byte   W12
 .byte   PEND 
@ 023   ----------------------------------------
Label_2_AB5650:
 .byte   N32 ,Gn2 ,v092
 .byte   N32 ,Dn3 ,v100
 .byte   W48
 .byte   N30 ,Gn2
 .byte   N30 ,Dn3
 .byte   W36
 .byte   N11 ,Gs2 ,v088
 .byte   N10 ,Ds3 ,v076
 .byte   W12
 .byte   PEND 
@ 024   ----------------------------------------
 .byte   N32 ,Gn2 ,v096
 .byte   N32 ,Dn3 ,v100
 .byte   W48
 .byte   N30 ,Gn2 ,v104
 .byte   N30 ,Dn3 ,v100
 .byte   W36
 .byte   N11 ,Gs2 ,v088
 .byte   N11 ,Ds3 ,v080
 .byte   W12
@ 025   ----------------------------------------
 .byte   N03 ,Gn2 ,v092
 .byte   N05 ,Dn3 ,v104
 .byte   W12
 .byte   N17 ,Fs2 ,v100
 .byte   N17 ,Bn2
 .byte   W24
 .byte   N16 ,Fn2 ,v108
 .byte   N17 ,As2 ,v088
 .byte   W24
 .byte   N16 ,En2 ,v112
 .byte   N17 ,An2 ,v100
 .byte   W24
 .byte   N10 ,Ds2 ,v096
 .byte   N10 ,Gs2
 .byte   W12
@ 026   ----------------------------------------
 .byte   PATT
  .word Label_2_AB55EB
@ 027   ----------------------------------------
 .byte   PATT
  .word Label_2_AB55EB
@ 028   ----------------------------------------
 .byte   PATT
  .word Label_2_AB55EB
@ 029   ----------------------------------------
 .byte   PATT
  .word Label_2_AB55FD
@ 030   ----------------------------------------
 .byte   PATT
  .word Label_2_AB5610
@ 031   ----------------------------------------
 .byte   PATT
  .word Label_2_AB5626
@ 032   ----------------------------------------
 .byte   PATT
  .word Label_2_AB563B
@ 033   ----------------------------------------
 .byte   PATT
  .word Label_2_AB5650
@ 034   ----------------------------------------
 .byte   GOTO
  .word Label_2_AB546E
 .byte   FINE

@**************** Track 4 (Midi-Chn.3) ****************@

song22_004:
@ 000   ----------------------------------------
 .byte   KEYSH , song22_key+0
Label_3_AB56CA:
 .byte   W72
 .byte   VOICE , 49
 .byte   MOD 0
 .byte   DnM2
 .byte   VOL , 44*song22_mvl/mxv
 .byte   PAN , c_v-4
 .byte   W24
@ 001   ----------------------------------------
 .byte   W96
@ 002   ----------------------------------------
 .byte   N92 ,Gs3 ,v080
 .byte   N92 ,Bn3
 .byte   W96
@ 003   ----------------------------------------
 .byte   N92
 .byte   N92 ,Dn4
 .byte   W96
@ 004   ----------------------------------------
 .byte   Gs3
 .byte   N92 ,Bn3
 .byte   W96
@ 005   ----------------------------------------
 .byte   En3
 .byte   N92 ,Gs3
 .byte   W96
@ 006   ----------------------------------------
 .byte   N92
 .byte   N92 ,Bn3
 .byte   W96
@ 007   ----------------------------------------
 .byte   N92
 .byte   N92 ,Dn4
 .byte   W96
@ 008   ----------------------------------------
 .byte   TIE ,Gs3
 .byte   TIE ,Bn3
 .byte   W96
@ 009   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Gs3 ,v071
 .byte   W01
@ 010   ----------------------------------------
 .byte   N92 ,Gs3 ,v072
 .byte   N92 ,Fn4
 .byte   W96
@ 011   ----------------------------------------
 .byte   Bn3 ,v080
 .byte   N92 ,En4
 .byte   W96
@ 012   ----------------------------------------
 .byte   Gs3
 .byte   N92 ,Bn3
 .byte   W96
@ 013   ----------------------------------------
 .byte   N44 ,Fn3 ,v068
 .byte   N44 ,An3
 .byte   W48
 .byte   N23 ,En3
 .byte   N23 ,Gs3
 .byte   W24
 .byte   Bn2 ,v080
 .byte   N23 ,En3
 .byte   W24
@ 014   ----------------------------------------
 .byte   N92 ,Gs3
 .byte   N92 ,Bn3
 .byte   W96
@ 015   ----------------------------------------
 .byte   En3 ,v068
 .byte   N92 ,Gs3
 .byte   W96
@ 016   ----------------------------------------
 .byte   TIE ,Bn2 ,v080
 .byte   TIE ,En3
 .byte   W96
@ 017   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Bn2 ,v064
 .byte   W01
@ 018   ----------------------------------------
 .byte   N92 ,Dn4 ,v076
 .byte   N92 ,Gn4
 .byte   W96
@ 019   ----------------------------------------
 .byte   As3 ,v072
 .byte   N92 ,Dn4
 .byte   W96
@ 020   ----------------------------------------
 .byte   Gn3 ,v080
 .byte   N92 ,Bn3
 .byte   W96
@ 021   ----------------------------------------
 .byte   Dn3 ,v076
 .byte   N92 ,Gn3
 .byte   W96
@ 022   ----------------------------------------
 .byte   Dn4 ,v080
 .byte   N92 ,Gn4
 .byte   W96
@ 023   ----------------------------------------
 .byte   Dn4 ,v064
 .byte   N92 ,Fn4
 .byte   W96
@ 024   ----------------------------------------
 .byte   N68 ,As3 ,v072
 .byte   N68 ,Dn4
 .byte   W72
 .byte   N23 ,Gs3 ,v052
 .byte   N23 ,Cn4
 .byte   W24
@ 025   ----------------------------------------
 .byte   N92 ,Dn3 ,v080
 .byte   N92 ,Gn3
 .byte   W96
@ 026   ----------------------------------------
 .byte   Dn3
 .byte   N92 ,Gn3
 .byte   W96
@ 027   ----------------------------------------
 .byte   En3 ,v072
 .byte   N92 ,Gs3
 .byte   W96
@ 028   ----------------------------------------
 .byte   Cs3 ,v076
 .byte   N92 ,Fn3
 .byte   W96
@ 029   ----------------------------------------
 .byte   Dn3 ,v080
 .byte   N92 ,Fn3
 .byte   W96
@ 030   ----------------------------------------
 .byte   As3 ,v072
 .byte   N92 ,Dn4
 .byte   W96
@ 031   ----------------------------------------
 .byte   Gn3 ,v076
 .byte   N92 ,Bn3
 .byte   W96
@ 032   ----------------------------------------
 .byte   TIE ,Ds3 ,v080
 .byte   TIE ,Gn3
 .byte   W96
@ 033   ----------------------------------------
 .byte   W92
 .byte   W03
 .byte   EOT
 .byte   Ds3 ,v067
 .byte   W01
@ 034   ----------------------------------------
 .byte   GOTO
  .word Label_3_AB56CA
 .byte   FINE

@**************** Track 5 (Midi-Chn.4) ****************@

song22_005:
@ 000   ----------------------------------------
 .byte   KEYSH , song22_key+0
Label_4_AB5791:
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
 .byte   W72
 .byte   VOICE , 50
 .byte   VOL , 48*song22_mvl/mxv
 .byte   PAN , c_v+13
 .byte   W24
@ 009   ----------------------------------------
 .byte   W96
@ 010   ----------------------------------------
 .byte   N80 ,Fn5 ,v092
 .byte   W84
 .byte   N05 ,Gn5 ,v096
 .byte   W06
 .byte   Fn5 ,v088
 .byte   W06
@ 011   ----------------------------------------
 .byte   N88 ,En5 ,v112
 .byte   W96
@ 012   ----------------------------------------
 .byte   N80 ,Bn4 ,v100
 .byte   W84
 .byte   N05 ,Cn5 ,v088
 .byte   W06
 .byte   Bn4
 .byte   W06
@ 013   ----------------------------------------
 .byte   N44 ,An4
 .byte   W48
 .byte   N23 ,Gs4
 .byte   W24
 .byte   En4 ,v100
 .byte   W24
@ 014   ----------------------------------------
 .byte   N80 ,Bn4 ,v104
 .byte   W84
 .byte   N11 ,An4 ,v088
 .byte   W12
@ 015   ----------------------------------------
 .byte   N80 ,Gs4
 .byte   W84
 .byte   N11 ,Fn4 ,v096
 .byte   W12
@ 016   ----------------------------------------
 .byte   TIE ,En4 ,v100
 .byte   W96
@ 017   ----------------------------------------
 .byte   W76
 .byte   W01
 .byte   EOT
 .byte   W19
@ 018   ----------------------------------------
 .byte   W96
@ 019   ----------------------------------------
 .byte   W96
@ 020   ----------------------------------------
 .byte   W96
@ 021   ----------------------------------------
 .byte   W84
 .byte   N11 ,An4
 .byte   W12
@ 022   ----------------------------------------
 .byte   N68 ,Dn5
 .byte   W72
 .byte   N11 ,An4 ,v096
 .byte   W12
 .byte   As4
 .byte   W12
@ 023   ----------------------------------------
 .byte   N56 ,Cn5 ,v084
 .byte   W60
 .byte   N11 ,As4 ,v080
 .byte   W12
 .byte   Cn5 ,v084
 .byte   W12
 .byte   Dn5 ,v096
 .byte   W12
@ 024   ----------------------------------------
 .byte   N68 ,An4 ,v092
 .byte   W72
 .byte   N23 ,Gn4 ,v072
 .byte   W24
@ 025   ----------------------------------------
 .byte   N72 ,Dn4 ,v100
 .byte   W96
@ 026   ----------------------------------------
 .byte   N68 ,Gn4 ,v104
 .byte   W72
 .byte   N11 ,Fn4 ,v088
 .byte   W12
 .byte   Gn4 ,v096
 .byte   W12
@ 027   ----------------------------------------
 .byte   N60 ,Gs4 ,v100
 .byte   W72
 .byte   N11 ,Dn4 ,v092
 .byte   W12
 .byte   Ds4 ,v084
 .byte   W12
@ 028   ----------------------------------------
 .byte   N68 ,Fn4
 .byte   W72
 .byte   N11 ,Bn3 ,v080
 .byte   W12
 .byte   Cn4
 .byte   W12
@ 029   ----------------------------------------
 .byte   N72 ,Dn4 ,v100
 .byte   W96
@ 030   ----------------------------------------
 .byte   N68 ,Dn5 ,v092
 .byte   W72
 .byte   N11 ,Cn5 ,v080
 .byte   W12
 .byte   Dn5
 .byte   W12
@ 031   ----------------------------------------
 .byte   N68 ,Bn4 ,v096
 .byte   W78
 .byte   N05 ,Cn5 ,v088
 .byte   W06
 .byte   Bn4 ,v096
 .byte   W06
 .byte   Gs4
 .byte   W06
@ 032   ----------------------------------------
 .byte   TIE ,Gn4 ,v100
 .byte   W96
@ 033   ----------------------------------------
 .byte   W44
 .byte   W03
 .byte   EOT
 .byte   W48
 .byte   W01
@ 034   ----------------------------------------
 .byte   GOTO
  .word Label_4_AB5791
 .byte   FINE

@******************************************************@
	.align	2

song22:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song22_pri	@ Priority
	.byte	song22_rev	@ Reverb.
    
	.word	song22_grp
    
	.word	song22_001
	.word	song22_002
	.word	song22_003
	.word	song22_004
	.word	song22_005

	.end
