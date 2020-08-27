.thumb
.align

@ the plan:

@ store in 6 bits of external data
@ (bar runs 0-30, which is exactly 6 bits)
@ initialize bar position at the beginning of each chapter
@ bar gain per turn at the start of each turn
@ can initialize at the start of the first turn in the same function
@ stat boosts when transformed (make 1 function that gets passed an index)
@ need to use a 7th bit to denote whether we are transformed or not
@ so we know if we're adding or subtracting from bar
@ post-battle loop for bar gain/loss from battle
@ so that it works on non-player units
@ we need to initialize separately from each turn increase
@ since at the start of *every* phase, we need to do it for all
@ units of the proper allegiance for the current phase



@Uses 7 bits of external data struct +0x6

@ldrb r0,[r4,#0xB] 	@allegiance byte
@mov r1,#0x8 		@size of debuff table entry
@mul r0,r1
@ldr r1,=DebuffTableLink
@ldr r1,[r1]
@add r1,r0
@ldrb r0,[r1,#6] 	@our byte

@to get bar:
@lsl r0,r0,#2
@lsr r0,r0,#2

@to get transformed flag:
@lsl r0,r0,#25
@lsr r0,r0,#31


@ TODO:

@ Initialize Bar 	 						[X]
@ Increment & Decrement Bar Per-Phase		[X]
@ Increment & DecrementBar Per-Battle		[X]
@ Transform Menu Command					[X]
@ Stat Boosts When Transformed				[X]



@segmenting this file so function defs will be at the start of each section






@ ===========================================
@ ========== GENERAL USE FUNCTIONS ==========
@ ===========================================

.global IsClassLaguz
.type IsClassLaguz, %function

.global IsLaguzTransformed
.type IsLaguzTransformed, %function

.global GetLaguzBar
.type GetLaguzBar, %function

.global SetLaguzBar
.type SetLaguzBar, %function

.global GetBarTurnGain
.type GetBarTurnGain, %function

.global GetBarTurnLoss
.type GetBarTurnLoss, %function

.global GetBarBattleGain
.type GetBarBattleGain, %function

.global GetBarBattleLoss
.type GetBarBattleLoss, %function

.global GetTransformedClass
.type GetTransformedClass, %function

.global ToggleLaguzTransformed
.type ToggleLaguzTransformed, %function

.global LaguzUntransform
.type LaguzUntransform, %function

.global LaguzTransform
.type LaguzTransform, %function



IsClassLaguz: @r0 = class ID

ldr r2,=LaguzClassList

IsClassLaguz_LoopStart:
ldrb r1,[r2]
cmp r1,#0
beq IsClassLaguz_RetFalse
cmp r1,r0
beq IsClassLaguz_RetTrue
add r2,#1
b IsClassLaguz_LoopStart

IsClassLaguz_RetTrue:
mov r0,#1
b IsClassLaguz_GoBack

IsClassLaguz_RetFalse:
mov r0,#0

IsClassLaguz_GoBack:
bx r14

.ltorg
.align





IsLaguzTransformed: @r0 = unit pointer

push {r4,r14}
mov r4,r0

@check if unit's class is laguz
ldr r0,[r4,#4]
ldrb r0,[r0,#4]

bl IsClassLaguz
cmp r0,#0
beq IsLaguzTransformed_RetNotLaguz


ldrb r0,[r4,#0xB] 	@allegiance byte
mov r1,#0x8 		@size of debuff table entry
mul r0,r1
ldr r1,=DebuffTableLink
ldr r1,[r1]
add r1,r0
ldrb r0,[r1,#6] 	@our byte

lsl r0,r0,#25
lsr r0,r0,#31		@r0 = transformed bool

cmp r0,#0
beq IsLaguzTransformed_GoBack
mov r0,#1
b IsLaguzTransformed_GoBack

IsLaguzTransformed_RetFalse:
mov r0,#0
b IsLaguzTransformed_GoBack

IsLaguzTransformed_RetNotLaguz:
mov r0,#2

IsLaguzTransformed_GoBack:
pop {r4}
pop {r1}
bx r1

.ltorg
.align





GetLaguzBar: @r0 = unit struct

push {r4,r14}
mov r4,r0

@first, see if we are a laguz class

ldr r0,[r4,#4]
ldrb r0,[r0,#4]

bl IsClassLaguz
cmp r0,#0
beq GetLaguzBar_ReturnNil

@we are laguz!

@check for skills
ldr r0,=SkillTester
mov r14,r0
mov r0,r4
ldr r1,=WildheartIDLink
ldrb r1,[r1]
.short 0xF800
cmp r0,#0
bne GetLaguzBar_AlwaysFull

ldr r0,=SkillTester
mov r14,r0
mov r0,r4
ldr r1,=FormshiftIDLink
ldrb r1,[r1]
.short 0xF800
cmp r0,#0
beq GetLaguzBar_NoSkills

GetLaguzBar_AlwaysFull:
mov r0,#30
b GetLaguzBar_GoBack


GetLaguzBar_NoSkills:
@get the external data byte

ldrb r0,[r4,#0xB] 	@allegiance byte
mov r1,#0x8 		@size of debuff table entry
mul r0,r1
ldr r1,=DebuffTableLink
ldr r1,[r1]
add r1,r0
ldrb r0,[r1,#6] 	@our byte

mov r1,#0x3F
and r0,r1 			@r0 = just the bar

b GetLaguzBar_GoBack

GetLaguzBar_ReturnNil:
mov r0,#0

GetLaguzBar_GoBack:
pop {r4}
pop {r1}
bx r1

.ltorg
.align



 


SetLaguzBar: @r0 = unit struct, r1 = new value

push {r4-r5,r14}
mov r4,r0
mov r5,r1

@bounds check input
cmp r5,#30
ble SetLaguzBar_AreWeGood
mov r5,#30

SetLaguzBar_AreWeGood: @if our new value is <0 we should force-untransform, if possible
cmp r5,#0
bge SetLaguzBar_WeGood
mov r5,#0
mov r0,r4
bl LaguzUntransform

SetLaguzBar_WeGood:

@first, see if we are a laguz class

ldr r0,[r4,#4]
ldrb r0,[r0,#4]

bl IsClassLaguz
cmp r0,#0
beq SetLaguzBar_GoBack

@do we have Wildheart or Formshift?
ldr r0,=SkillTester
mov r14,r0
mov r0,r4
ldr r1,=WildheartIDLink
ldrb r1,[r1]
.short 0xF800
cmp r0,#0
bne SetLaguzBar_BarAlwaysFull

ldr r0,=SkillTester
mov r14,r0
mov r0,r4
ldr r1,=FormshiftIDLink
ldrb r1,[r1]
.short 0xF800
cmp r0,#0
beq SetLaguzBar_NoSkills

SetLaguzBar_BarAlwaysFull:
mov r5,#30
b SetLaguzBar_SetBarValue


SetLaguzBar_NoSkills:
ldrb r0,[r4,#0xB] 	@allegiance byte
mov r1,#0x8 		@size of debuff table entry
mul r0,r1
ldr r1,=DebuffTableLink
ldr r1,[r1]
add r1,r0
ldrb r0,[r1,#6] 	@our byte


SetLaguzBar_SetBarValue:
mov r2,#0xC0
and r0,r2 			@r0 = the part of the byte that's not the bar

orr r0,r5			@r0 = the byte with the new bar value
strb r0,[r1,#6]		@store the byte

SetLaguzBar_GoBack:
pop {r4-r5}
pop {r0}
bx r0

.ltorg
.align



GetBarTurnGain: @r0 = unit struct
push {r4,r14}
mov r4,r0

@get class ID
ldr r0,[r4,#4]
ldrb r0,[r0,#4] 	@r0 = class ID

lsl r0,r0,#2 @*4

ldr r1,=TransformationSpeedTable
add r1,r0
ldrb r0,[r1]

pop {r4}
pop {r1}
bx r1

.ltorg
.align




GetBarTurnLoss: @r0 = unit struct
push {r4,r14}
mov r4,r0

@get class ID
ldr r0,[r4,#4]
ldrb r0,[r0,#4] 	@r0 = class ID

lsl r0,r0,#2 @*4

ldr r1,=TransformationSpeedTable
add r1,r0
ldrb r0,[r1,#2]

pop {r4}
pop {r1}
bx r1

.ltorg
.align



GetBarBattleGain: @r0 = unit struct
push {r4,r14}
mov r4,r0

@get class ID
ldr r0,[r4,#4]
ldrb r0,[r0,#4] 	@r0 = class ID

lsl r0,r0,#2 @*4

ldr r1,=TransformationSpeedTable
add r1,r0
ldrb r0,[r1,#1]

pop {r4}
pop {r1}
bx r1

.ltorg
.align



GetBarBattleLoss: @r0 = unit struct
push {r4,r14}
mov r4,r0

@get class ID
ldr r0,[r4,#4]
ldrb r0,[r0,#4] 	@r0 = class ID

lsl r0,r0,#2 @*4

ldr r1,=TransformationSpeedTable
add r1,r0
ldrb r0,[r1,#3]

pop {r4}
pop {r1}
bx r1

.ltorg
.align



GetTransformedClass: @r0 = unit struct
push {r4,r14}
mov r4,r0

@we want to loop through the laguz class list
@but only checking every second byte
@then when we find a match return [current list pos +1] 

ldr r3,=LaguzClassList
ldr r2,[r4,#4]
ldrb r2,[r2,#4]

GetTransformedClass_LoopStart:
ldrb r1,[r3]
cmp r1,#0
beq GetTransformedClass_RetNoClass
cmp r1,r2
beq GetTransformedClass_LoopExit

GetTransformedClass_LoopRestart:
add r3,#2
b GetTransformedClass_LoopStart


GetTransformedClass_LoopExit:
ldrb r0,[r3,#1]
b GetTransformedClass_GoBack

GetTransformedClass_RetNoClass:
mov r0,#0

GetTransformedClass_GoBack:
pop {r4}
pop {r1}
bx r1

.ltorg
.align



ToggleLaguzTransformed: @r0 = unit struct
push {r4,r14}
mov r4,r0

@check if unit's class is laguz
ldr r0,[r4,#4]
ldrb r0,[r0,#4]

bl IsClassLaguz
cmp r0,#0
beq ToggleLaguzTransformed_GoBack


ldrb r0,[r4,#0xB] 	@allegiance byte
mov r1,#0x8 		@size of debuff table entry
mul r0,r1
ldr r1,=DebuffTableLink
ldr r1,[r1]
add r1,r0
ldrb r0,[r1,#6] 	@our byte

mov r2,#0x40 @bit to check
and r0,r2
cmp r0,#0
beq ToggleLaguzTransformed_NotTransformed

ldrb r0,[r1,#6]
mov r2,#0xBF
and r0,r2

b ToggleLaguzTransformed_GoBack


ToggleLaguzTransformed_NotTransformed:
ldrb r0,[r1,#6]
orr r0,r2

ToggleLaguzTransformed_GoBack:
strb r0,[r1,#6]
pop {r4}
pop {r0}
bx r0

.ltorg
.align






LaguzUntransform: @r0 = unit struct
push {r4,r14}
mov r4,r0

@find untransformed class
ldr r0,[r4,#4]
ldrb r2,[r0,#4]

ldr r3,=LaguzClassList
add r3,#1

LaguzUntransform_LoopStart:
ldrb r1,[r3]
cmp r1,#0
beq LaguzUntransform_GoBack
cmp r1,r2
beq LaguzUntransform_LoopExit

add r3,#2
b LaguzUntransform_LoopStart


LaguzUntransform_LoopExit:
@r3 = [address of class ID] + 1
sub r3,#1
ldrb r1,[r3]
@r1 = class ID
mov r0,#84 @size of class table entry
mul r0,r1
ldr r1,=ClassTable
add r0,r1
str r0,[r4,#4] @class = untransformed class

@do fancy animation here

LaguzUntransform_GoBack:
pop {r4}
pop {r0}
bx r0



LaguzTransform: @r0 = unit struct
push {r4,r14}
mov r4,r0

ldr r0,[r4,#4]
ldrb r2,[r0,#4]

ldr r3,=LaguzClassList

LaguzTransform_LoopStart:
ldrb r1,[r3]
cmp r1,#0
beq LaguzTransform_GoBack
cmp r1,r2
beq LaguzTransform_LoopExit

add r3,#2
b LaguzTransform_LoopStart


LaguzTransform_LoopExit:
@r3 = [address of class ID] - 1
add r3,#1
ldrb r1,[r3]
@r1 = class ID
mov r0,#84 @size of class table entry
mul r0,r1
ldr r1,=ClassTable
add r0,r1
str r0,[r4,#4] @class = untransformed class

@toggle transformed bit
mov r0,r4
bl ToggleLaguzTransformed

@do fancy animation here

LaguzTransform_GoBack:
pop {r4}
pop {r0}
bx r0

.ltorg
.align



@ =============================================================
@ ========== INITIALIZE BARS AT BEGINNING OF CHAPTER ==========
@ =============================================================

.global InitializeLaguzBarsIfFirstTurn
.type InitializeLaguzBarsIfFirstTurn, %function

InitializeLaguzBarsIfFirstTurn:
push {r4,r14}

@make sure it's the first turn and player phase

@character data struct (202BCF0) contatins both turn and phase

@if (turn == 1 && phase == 0) we do our thing; otherwise, no

ldr r1,=#0x202BCF0
ldrh r0,[r1,#0x10]
cmp r0,#1
bne InitializeLaguzBars_GoBack

ldrb r0,[r1,#0x0F]
cmp r0,#0
bne InitializeLaguzBars_GoBack


@loop through every player character until we find an empty struct

ldr r4,=#0x202BE4C @start of player unit structs

InitializeLaguzBars_LoopStart1:

ldr r0,[r4]
cmp r0,#0
beq InitializeLaguzBars_LoopEnd1

@get class ID
ldr r0,[r4,#4]	@r0 = pointer to class data
ldrb r0,[r0,#4]  @r0 = class ID

bl IsClassLaguz @returns true or false
cmp r0,#0
beq InitializeLaguzBars_LoopRestart1

@get char ID
ldr r0,[r4] 	@r0 = pointer to char data
ldrb r0,[r0,#4] @r0 = char ID

@add to bar starting position table offset
ldr r1,=BarStartingPositionTable
add r0,r1

ldrb r1,[r0] 	@r0 = bar starting position

mov r0,r4
bl SetLaguzBar

@check if unit has either skill that denotes them needing to transform here
ldr r0,=SkillTester
mov r14,r0
mov r0,r4
ldr r1,=WildheartIDLink
ldrb r1,[r1]
.short 0xF800
cmp r0,#0
bne InitializeLaguzBars_AutotransformPlayerUnit

ldr r0,=SkillTester
mov r14,r0
mov r0,r4
ldr r1,=FormshiftIDLink
ldrb r1,[r1]
.short 0xF800
cmp r0,#0
beq InitializeLaguzBars_LoopRestart1

InitializeLaguzBars_AutotransformPlayerUnit:
mov r0,r4
bl LaguzTransform

InitializeLaguzBars_LoopRestart1:
add r4,#0x48
b InitializeLaguzBars_LoopStart1

InitializeLaguzBars_LoopEnd1:

ldr r4,=#0x202CFBC @start of enemy unit structs

InitializeLaguzBars_LoopStart2:

ldr r0,[r4]
cmp r0,#0
beq InitializeLaguzBars_LoopEnd2

@get class ID
ldr r0,[r4,#4]	@r0 = pointer to class data
ldrb r0,[r0,#4]  @r0 = class ID

bl IsClassLaguz @returns true or false
cmp r0,#0
beq InitializeLaguzBars_LoopRestart2

@get char ID
ldr r0,[r4] 	@r0 = pointer to char data
ldrb r0,[r0,#4] @r0 = char ID

@add to bar starting position table offset
ldr r1,=BarStartingPositionTable
add r0,r1

ldrb r1,[r0] 	@r0 = bar starting position

mov r0,r4
bl SetLaguzBar

InitializeLaguzBars_LoopRestart2:
add r4,#0x48
b InitializeLaguzBars_LoopStart2

InitializeLaguzBars_LoopEnd2:


ldr r2,=#0x202DDCC @start of NPC unit structs

InitializeLaguzBars_LoopStart3:

ldr r0,[r4]
cmp r0,#0
beq InitializeLaguzBars_GoBack

@get class ID
ldr r0,[r4,#4]	@r0 = pointer to class data
ldrb r0,[r0,#4]  @r0 = class ID

bl IsClassLaguz @returns true or false
cmp r0,#0
beq InitializeLaguzBars_LoopRestart3

@get char ID
ldr r0,[r4] 	@r0 = pointer to char data
ldrb r0,[r0,#4] @r0 = char ID

@add to bar starting position table offset
ldr r1,=BarStartingPositionTable
add r0,r1

ldrb r1,[r0] 	@r0 = bar starting position

mov r0,r4
bl SetLaguzBar

InitializeLaguzBars_LoopRestart3:
add r4,#0x48
b InitializeLaguzBars_LoopStart3


InitializeLaguzBars_GoBack:
pop {r4}
pop {r0}
bx r0

.ltorg
.align







@ =======================================================
@ ========== INCREMENT AND DECREMENT PER PHASE ==========
@ =======================================================

	
.global IncDecLaguzBarsPerPhase
.type IncDecLaguzBarsPerPhase, %function


IncDecLaguzBarsPerPhase:

push {r4-r7,r14}

mov r6,#0

@inc bars of units based on current phase
ldr r0,=#0x202BCF0 @chapter data struct
ldrb r0,[r0,#0x0F] @current phase

cmp r0,#0x80
beq IncDecLaguzBarsPerPhase_IsEnemyPhase

cmp r0,#0x40
beq IncDecLaguzBarsPerPhase_IsNPCPhase


IncDecLaguzBarsPerPhase_IsPlayerPhase:
ldr r4,=#0x202BE4C @start of player unit structs
mov r7,#62 @# of times to loop through structs
b IncDecLaguzBarsPerPhase_LoopStart

IncDecLaguzBarsPerPhase_IsEnemyPhase:
ldr r4,=#0x202CFBC @start of enemy unit structs
mov r7,#49 @# of times to loop through structs
b IncDecLaguzBarsPerPhase_LoopStart

IncDecLaguzBarsPerPhase_IsNPCPhase:
ldr r4,=#0x202DDCC @start of NPC unit structs
mov r7,#19 @# of times to loop through structs

IncDecLaguzBarsPerPhase_LoopStart:
cmp r6,r7
beq IncDecLaguzBarsPerPhase_LoopExit
ldr r0,[r4]
cmp r0,#0
beq IncDecLaguzBarsPerPhase_LoopRestart

mov r0,r4
bl IsLaguzTransformed
cmp r0,#2
beq IncDecLaguzBarsPerPhase_LoopRestart
cmp r0,#1
beq IncDecLaguzBarsPerPhase_LoopTransformed

IncDecLaguzBarsPerPhase_LoopUntransformed:
mov r0,r4
bl GetLaguzBar
mov r5,r0
mov r0,r4
bl GetBarTurnGain
add r0,r5
mov r1,r0
mov r0,r4
bl SetLaguzBar
b IncDecLaguzBarsPerPhase_LoopRestart


IncDecLaguzBarsPerPhase_LoopTransformed:
mov r0,r4
bl GetLaguzBar
mov r5,r0
mov r0,r4
bl GetBarTurnLoss
mov r1,r0
mov r0,r5
sub r0,r1
mov r1,r0
mov r0,r4
bl SetLaguzBar


IncDecLaguzBarsPerPhase_LoopRestart:
add r4,#0x48
mov r5,#0
add r6,#1
b IncDecLaguzBarsPerPhase_LoopStart


IncDecLaguzBarsPerPhase_LoopExit:

pop {r4-r7}
pop {r0}
bx r0

.ltorg
.align




.macro blh to, reg=r3
    ldr \reg, =\to
    mov lr, \reg
    .short 0xF800
.endm
.equ GetUnit,0x8019430



@ ========================================================
@ ========== INCREMENT AND DECREMENT PER BATTLE ==========
@ ========================================================

.global IncDecLaguzBarsPerBattle
.type IncDecLaguzBarsPerBattle, %function

IncDecLaguzBarsPerBattle: @r4 = unit struct
push {r5-r6,r14}


@validate action as combat
ldr r0,=#0x203A958 @action struct
ldrb r0,[r0,#0x11] @action taken
cmp r0,#2 @combat action
bne IncDecLaguzBarsPerBattle_GoBack

mov r6,r5

mov r0,r4
bl IsLaguzTransformed
cmp r0,#2
beq IncDecLaguzBarsPerBattle_CheckDefender
cmp r0,#1
beq IncDecLaguzBarsPerBattle_IsTransformed

IncDecLaguzBarsPerBattle_IsUntransformed:
mov r0,r4
bl GetLaguzBar
mov r5,r0
mov r0,r4
bl GetBarBattleGain
add r0,r5
mov r1,r0
mov r0,r4
bl SetLaguzBar
b IncDecLaguzBarsPerBattle_CheckDefender


IncDecLaguzBarsPerBattle_IsTransformed:
mov r0,r4
bl GetLaguzBar
mov r5,r0
mov r0,r4
bl GetBarBattleLoss
mov r1,r0
mov r0,r5
sub r0,r1
mov r1,r0
mov r0,r4
bl SetLaguzBar


IncDecLaguzBarsPerBattle_CheckDefender:
mov r0,r6
bl IsLaguzTransformed
cmp r0,#2
beq IncDecLaguzBarsPerBattle_GoBack
cmp r0,#1
beq IncDecLaguzBarsPerBattle_IsTransformed2

IncDecLaguzBarsPerBattle_IsUntransformed2:
mov r0,r6
bl GetLaguzBar
mov r5,r0
mov r0,r6
bl GetBarBattleGain
add r0,r5
mov r1,r0
mov r0,r6
bl SetLaguzBar
b IncDecLaguzBarsPerBattle_GoBack


IncDecLaguzBarsPerBattle_IsTransformed2:
mov r0,r6
bl GetLaguzBar
mov r5,r0
mov r0,r6
bl GetBarBattleLoss
mov r1,r0
mov r0,r5
sub r0,r1
mov r1,r0
mov r0,r6
bl SetLaguzBar



IncDecLaguzBarsPerBattle_GoBack:
pop {r5-r6}
pop {r0}
bx r0

.ltorg
.align





@ ============================================
@ ========== TRANSFORM MENU COMMAND ==========
@ ============================================

.global TransformUsability
.type TransformUsability, %function

.global TransformEffect
.type TransformEffect, %function




TransformUsability:
push {r4,r14}
ldr r0,=#0x3004E50
ldr r4,[r0]

@are we an untransformed laguz?
mov r0,r4
bl IsLaguzTransformed 
cmp r0,#0 @1 means transformed, 2 means not a laguz; we only want to do this if we are not transformed, which is 0
bne TransformUsability_ReturnFalse 

@we are!
@is our bar full?
mov r0,r4
bl GetLaguzBar
cmp r0,#30
bne TransformUsability_ReturnFalse

@it is!
@so, we can transform
b TransformUsability_ReturnTrue


TransformUsability_ReturnFalse:
mov r0,#3
b TransformUsability_GoBack


TransformUsability_ReturnTrue:
mov r0,#1


TransformUsability_GoBack:
pop {r4}
pop {r1}
bx r1

.ltorg
.align






TransformEffect:
push {r4,r14}


@TODO: fancy visuals here


ldr r0,=#0x3004E50 @pointer to active unit's unit struct
ldr r4,[r0] @r4 = unit struct

mov r0,r4
bl GetTransformedClass
cmp r0,#0
beq TransformEffect_GoBack

@apply new class
mov r1,#84
mul r0,r1
ldr r1,=ClassTable
add r0,r1

str r0,[r4,#4] @store new class ptr

@set the "is transformed" flag
mov r0,r4
bl ToggleLaguzTransformed

@silently give sharp claw (temp)
@mov r0,r4
@add r0,#0x1E
@mov r1,#0x8B
@strh r1,[r0]

TransformEffect_GoBack:
mov r0,#0x94		@play beep sound & end menu on next frame & clear menu graphics
pop {r4}
pop {r1}
bx r1

.ltorg
.align











@ =================================
@ ========== STAT BOOSTS ==========
@ =================================


.global TransformationStatBoostCheck
.type TransformationStatBoostCheck, %function

.global Str_TransformBoost
.type Str_TransformBoost, %function

.global Skl_TransformBoost
.type Skl_TransformBoost, %function

.global Spd_TransformBoost
.type Spd_TransformBoost, %function

.global Def_TransformBoost
.type Def_TransformBoost, %function

.global Res_TransformBoost
.type Res_TransformBoost, %function

.global Con_TransformBoost
.type Con_TransformBoost, %function

.global Mov_TransformBoost
.type Mov_TransformBoost, %function

.global Mag_TransformBoost
.type Mag_TransformBoost, %function





TransformationStatBoostCheck:
@r0 = unit struct, r1 = stat index

push {r4-r7,r14}
mov r4,r0 @r4 = unit struct
mov r5,r1 @r5 = stat index

mov r0,r4
bl IsLaguzTransformed
cmp r0,#0
beq TransformationStatBoostCheck_RetFalse

ldr r0,=TransformationStatBoostTable
ldr r1,[r4,#4]
ldrb r1,[r1,#4]
mov r2,#8
mul r1,r2
add r0,r1
add r0,r5
ldrb r0,[r0]

mov r6,r0
@do we have Wildheart?

ldr r0,=SkillTester
mov r14,r0
mov r0,r4
ldr r1,=WildheartIDLink
ldrb r1,[r1]
.short 0xF800
cmp r0,#0
beq TransformationStatBoostCheck_DontHalveBonus
lsr r6,r6,#1 @/2

TransformationStatBoostCheck_DontHalveBonus:
mov r0,r6
b TransformationStatBoostCheck_GoBack

TransformationStatBoostCheck_RetFalse:
mov r0,#0
 
TransformationStatBoostCheck_GoBack:
pop {r4-r7}
pop {r1}
bx r1

.ltorg
.align





Str_TransformBoost:
push {r4-r7,r14}
mov r4,r1 @unit
mov r5,r0 @stat

mov r0,r4
mov r1,#0 @stat index

bl TransformationStatBoostCheck
add r5,r0

Str_TransformBoost_GoBack:
mov r1,r4
mov r0,r5

pop {r4-r7}
pop {r2}
bx r2

.ltorg
.align


Skl_TransformBoost:
push {r4-r7,r14}
mov r4,r1 @unit
mov r5,r0 @stat

mov r0,r4
mov r1,#1 @stat index

bl TransformationStatBoostCheck
add r5,r0


Skl_TransformBoost_GoBack:
mov r1,r4
mov r0,r5

pop {r4-r7}
pop {r1}
bx r1

.ltorg
.align


Spd_TransformBoost:
push {r4-r7,r14}
mov r4,r1 @unit
mov r5,r0 @stat

mov r0,r4
mov r1,#2 @stat index

bl TransformationStatBoostCheck
add r5,r0


Spd_TransformBoost_GoBack:
mov r1,r4
mov r0,r5

pop {r4-r7}
pop {r1}
bx r1

.ltorg
.align


Def_TransformBoost:
push {r4-r7,r14}
mov r4,r1 @unit
mov r5,r0 @stat

mov r0,r4
mov r1,#3 @stat index

bl TransformationStatBoostCheck
add r5,r0


Def_TransformBoost_GoBack:
mov r1,r4
mov r0,r5

pop {r4-r7}
pop {r1}
bx r1

.ltorg
.align


Res_TransformBoost:
push {r4-r7,r14}
mov r4,r1 @unit
mov r5,r0 @stat

mov r0,r4
mov r1,#4 @stat index

bl TransformationStatBoostCheck
add r5,r0


Res_TransformBoost_GoBack:
mov r1,r4
mov r0,r5

pop {r4-r7}
pop {r1}
bx r1

.ltorg
.align


Con_TransformBoost:
push {r4-r7,r14}
mov r4,r1 @unit
mov r5,r0 @stat

mov r0,r4
mov r1,#5 @stat index

bl TransformationStatBoostCheck
add r5,r0


Con_TransformBoost_GoBack:
mov r1,r4
mov r0,r5

pop {r4-r7}
pop {r1}
bx r1

.ltorg
.align


Mov_TransformBoost:
push {r4-r7,r14}
mov r4,r1 @unit
mov r5,r0 @stat

mov r0,r4
mov r1,#6 @stat index

bl TransformationStatBoostCheck
add r5,r0


Mov_TransformBoost_GoBack:
mov r1,r4
mov r0,r5

pop {r4-r7}
pop {r1}
bx r1

.ltorg
.align


Mag_TransformBoost:
push {r4-r7,r14}
mov r4,r1 @unit
mov r5,r0 @stat

mov r0,r4
mov r1,#7 @stat index

bl TransformationStatBoostCheck
add r5,r0


Mag_TransformBoost_GoBack:
mov r1,r4
mov r0,r5

pop {r4-r7}
pop {r1}
bx r1

.ltorg
.align





@ ===================================================
@ ========== AUTO-TRANSFORM ENEMIES & NPCS ==========
@ ===================================================


.global AutoTransformNonPlayerLaguz
.type AutoTransformNonPlayerLaguz, %function

AutoTransformNonPlayerLaguz:
push {r4-r5,r14}

@loop through every enemy & npc unit
@check if untransformed laguz
@check bar
@if both true, transform
@restart loop

ldr r4,=#0x202CFBC @start of enemy unit structs
mov r5,#0

AutoTransformNonPlayerLaguz_Loop1Start:
cmp r5,#49
beq AutoTransformNonPlayerLaguz_Loop1Exit
ldr r0,[r4]
cmp r0,#0
beq AutoTransformNonPlayerLaguz_Loop1Restart

@check if untransformed laguz
mov r0,r4
bl IsLaguzTransformed
cmp r0,#0
bne AutoTransformNonPlayerLaguz_Loop1Restart

@check bar
mov r0,r4
bl GetLaguzBar
cmp r0,#30
bne AutoTransformNonPlayerLaguz_Loop1Restart

@transform
mov r0,r4
bl GetTransformedClass
mov r1,#84 @size of char table entry
mul r0,r1
ldr r1,=ClassTable
add r0,r1
str r0,[r4,#4]
mov r0,r4
bl ToggleLaguzTransformed

AutoTransformNonPlayerLaguz_Loop1Restart:
add r4,#0x48 @size of unit struct
add r5,#1
b AutoTransformNonPlayerLaguz_Loop1Start


AutoTransformNonPlayerLaguz_Loop1Exit:

ldr r4,=#0x202DDCC @start of NPC unit structs
mov r5,#0

AutoTransformNonPlayerLaguz_Loop2Start:
cmp r5,#19
beq AutoTransformNonPlayerLaguz_GoBack
ldr r0,[r4]
cmp r0,#0
beq AutoTransformNonPlayerLaguz_Loop2Restart

@check if untransformed laguz
mov r0,r4
bl IsLaguzTransformed
cmp r0,#0
bne AutoTransformNonPlayerLaguz_Loop2Restart

@check bar
mov r0,r4
bl GetLaguzBar
cmp r0,#30
bne AutoTransformNonPlayerLaguz_Loop2Restart

@transform
mov r0,r4
bl GetTransformedClass
mov r1,#84 @size of char table entry
mul r0,r1
ldr r1,=ClassTable
add r0,r1
str r0,[r4,#4]
mov r0,r4
bl ToggleLaguzTransformed

AutoTransformNonPlayerLaguz_Loop2Restart:
add r4,#0x48 @size of unit struct
add r5,#1
b AutoTransformNonPlayerLaguz_Loop2Start


AutoTransformNonPlayerLaguz_GoBack:

pop {r4-r5}
pop {r0}
bx r0

.ltorg
.align


























@ ======================================
@ ========= INIT BARS AT PREP ==========
@ ======================================

.global InitializeLaguzBarsIfPrepScreen
.type InitializeLaguzBarsIfPrepScreen, %function


InitializeLaguzBarsIfPrepScreen:
push {r4,r14}


@loop through every player character until we find an empty struct

ldr r4,=#0x202BE4C @start of player unit structs

InitializeLaguzBars2_LoopStart1:

ldr r0,[r4]
cmp r0,#0
beq InitializeLaguzBars2_LoopEnd1

@get class ID
ldr r0,[r4,#4]	@r0 = pointer to class data
ldrb r0,[r0,#4]  @r0 = class ID

bl IsClassLaguz @returns true or false
cmp r0,#0
beq InitializeLaguzBars2_LoopRestart1

@get char ID
ldr r0,[r4] 	@r0 = pointer to char data
ldrb r0,[r0,#4] @r0 = char ID

@add to bar starting position table offset
ldr r1,=BarStartingPositionTable
add r0,r1

ldrb r1,[r0] 	@r0 = bar starting position

mov r0,r4
bl SetLaguzBar

@check if unit has either skill that denotes them needing to transform here
ldr r0,=SkillTester
mov r14,r0
mov r0,r4
ldr r1,=WildheartIDLink
ldrb r1,[r1]
.short 0xF800
cmp r0,#0
bne InitializeLaguzBars2_AutotransformPlayerUnit

ldr r0,=SkillTester
mov r14,r0
mov r0,r4
ldr r1,=FormshiftIDLink
ldrb r1,[r1]
.short 0xF800
cmp r0,#0
beq InitializeLaguzBars2_LoopRestart1

InitializeLaguzBars2_AutotransformPlayerUnit:
mov r0,r4
bl LaguzTransform


InitializeLaguzBars2_LoopRestart1:
add r4,#0x48
b InitializeLaguzBars2_LoopStart1

InitializeLaguzBars2_LoopEnd1:

ldr r4,=#0x202CFBC @start of enemy unit structs

InitializeLaguzBars2_LoopStart2:

ldr r0,[r4]
cmp r0,#0
beq InitializeLaguzBars2_LoopEnd2

@get class ID
ldr r0,[r4,#4]	@r0 = pointer to class data
ldrb r0,[r0,#4]  @r0 = class ID

bl IsClassLaguz @returns true or false
cmp r0,#0
beq InitializeLaguzBars2_LoopRestart2

@get char ID
ldr r0,[r4] 	@r0 = pointer to char data
ldrb r0,[r0,#4] @r0 = char ID

@add to bar starting position table offset
ldr r1,=BarStartingPositionTable
add r0,r1

ldrb r1,[r0] 	@r0 = bar starting position

mov r0,r4
bl SetLaguzBar

InitializeLaguzBars2_LoopRestart2:
add r4,#0x48
b InitializeLaguzBars2_LoopStart2

InitializeLaguzBars2_LoopEnd2:


ldr r2,=#0x202DDCC @start of NPC unit structs

InitializeLaguzBars2_LoopStart3:

ldr r0,[r4]
cmp r0,#0
beq InitializeLaguzBars2_GoBack

@get class ID
ldr r0,[r4,#4]	@r0 = pointer to class data
ldrb r0,[r0,#4]  @r0 = class ID

bl IsClassLaguz @returns true or false
cmp r0,#0
beq InitializeLaguzBars2_LoopRestart3

@get char ID
ldr r0,[r4] 	@r0 = pointer to char data
ldrb r0,[r0,#4] @r0 = char ID

@add to bar starting position table offset
ldr r1,=BarStartingPositionTable
add r0,r1

ldrb r1,[r0] 	@r0 = bar starting position

mov r0,r4
bl SetLaguzBar


InitializeLaguzBars2_LoopRestart3:
add r4,#0x48
b InitializeLaguzBars2_LoopStart3


InitializeLaguzBars2_GoBack:
pop {r4}
pop {r0}
bx r0


.ltorg
.align


@ ======================================================
@ ========= UNTRANSFORM AT THE END OF CHAPTERS =========
@ ======================================================


.global UntransformTransformedLaguz
.type UntransformTransformedLaguz, %function


UntransformTransformedLaguz:

@we need to check for each player unit to see if they are transformed
@if so, we need to untransform them
@should be lib funcs for both of these, after getting each unit ptr
@so we can setup a loop for this then

push {r4-r7,r14}

ldr r4,=#0x202BE4C @start of player unit structs
mov r5,#0 @number of units checked so far

UntransformTransformedLaguz_LoopStart:
@have we checked every unit?
cmp r5,#62
beq UntransformTransformedLaguz_LoopExit

@does unit exist?
ldr r0,[r4]
cmp r0,#0
beq UntransformTransformedLaguz_LoopExit

@is unit transformed?
mov r0,r4
bl IsLaguzTransformed
cmp r0,#0
beq UntransformTransformedLaguz_LoopRestart

@untransform them
mov r0,r4
bl LaguzUntransform

UntransformTransformedLaguz_LoopRestart:
add r4,#0x48 @size of unit struct
add r5,#1
b UntransformTransformedLaguz_LoopStart


UntransformTransformedLaguz_LoopExit:

pop {r4-r7}
mov r0,#0
pop {r1}
bx r1


.ltorg
.align





