effectfn: MACRO
	assert (BANK(\1) == BANK(DoMove)) || (BANK(\1) == BANK("Effect Commands Extra")) || !BANK(\1)
	dw (BANK(\1) == BANK("Effect Commands Extra")) << 15 | (\1)
ENDM

BattleCommandPointers:
; entries correspond to macros/scripts/battle_commands.asm
	effectfn BattleCommand_CheckTurn
	effectfn BattleCommand_CheckObedience
	effectfn BattleCommand_UsedMoveText
	effectfn BattleCommand_DoTurn
	effectfn BattleCommand_Critical
	effectfn BattleCommand_DamageStats
	effectfn BattleCommand_Stab
	effectfn BattleCommand_DamageVariation
	effectfn BattleCommand_CheckHit
	effectfn BattleCommand_LowerSub
	effectfn BattleCommand_MoveAnimNoSub
	effectfn BattleCommand_RaiseSub
	effectfn BattleCommand_FailureText
	effectfn BattleCommand_ApplyDamage
	effectfn BattleCommand_CriticalText
	effectfn BattleCommand_SuperEffectiveText
	effectfn BattleCommand_CheckFaint
	effectfn BattleCommand_BuildOpponentRage
	effectfn BattleCommand_PoisonTarget
	effectfn BattleCommand_SleepTarget
	effectfn BattleCommand_DrainTarget
	effectfn BattleCommand_EatDream
	effectfn BattleCommand_BurnTarget
	effectfn BattleCommand_FreezeTarget
	effectfn BattleCommand_ParalyzeTarget
	effectfn BattleCommand_Selfdestruct
	effectfn BattleCommand_MirrorMove
	effectfn BattleCommand_StatUp
	effectfn BattleCommand_StatDown
	effectfn BattleCommand_PayDay
	effectfn BattleCommand_Conversion
	effectfn BattleCommand_ResetStats
	effectfn BattleCommand_StoreEnergy
	effectfn BattleCommand_UnleashEnergy
	effectfn BattleCommand_ForceSwitch
	effectfn BattleCommand_EndLoop
	effectfn BattleCommand_FlinchTarget
	effectfn BattleCommand_OHKO
	effectfn BattleCommand_Recoil
	effectfn BattleCommand_Mist
	effectfn BattleCommand_FocusEnergy
	effectfn BattleCommand_Confuse
	effectfn BattleCommand_ConfuseTarget
	effectfn BattleCommand_Heal
	effectfn BattleCommand_Transform
	effectfn BattleCommand_Screen
	effectfn BattleCommand_Poison
	effectfn BattleCommand_Paralyze
	effectfn BattleCommand_Substitute
	effectfn BattleCommand_RechargeNextTurn
	effectfn BattleCommand_Mimic
	effectfn BattleCommand_Metronome
	effectfn BattleCommand_LeechSeed
	effectfn BattleCommand_Splash
	effectfn BattleCommand_Disable
	effectfn BattleCommand_ClearText
	effectfn BattleCommand_Charge
	effectfn BattleCommand_CheckCharge
	effectfn BattleCommand_TrapTarget
	effectfn BattleCommand_CheckChatty
	effectfn BattleCommand_Rampage
	effectfn BattleCommand_CheckRampage
	effectfn BattleCommand_ConstantDamage
	effectfn BattleCommand_Counter
	effectfn BattleCommand_Encore
	effectfn BattleCommand_PainSplit
	effectfn BattleCommand_Snore
	effectfn BattleCommand_Conversion2
	effectfn BattleCommand_LockOn
	effectfn BattleCommand_Sketch
	effectfn BattleCommand_DefrostOpponent
	effectfn BattleCommand_SleepTalk
	effectfn BattleCommand_DestinyBond
	effectfn BattleCommand_Spite
	effectfn BattleCommand_FalseSwipe
	effectfn BattleCommand_HealBell
	effectfn BattleCommand_HeldFlinch
	effectfn BattleCommand_TripleKick
	effectfn BattleCommand_KickCounter
	effectfn BattleCommand_Thief
	effectfn BattleCommand_ArenaTrap
	effectfn BattleCommand_Nightmare
	effectfn BattleCommand_Defrost
	effectfn BattleCommand_Curse
	effectfn BattleCommand_Protect
	effectfn BattleCommand_Spikes
	effectfn BattleCommand_Foresight
	effectfn BattleCommand_PerishSong
	effectfn BattleCommand_StartSandstorm
	effectfn BattleCommand_Endure
	effectfn BattleCommand_CheckCurl
	effectfn BattleCommand_RolloutPower
	effectfn BattleCommand_ChattyBranch
	effectfn BattleCommand_FuryCutter
	effectfn BattleCommand_Attract
	effectfn BattleCommand_HappinessPower
	effectfn BattleCommand_Present
	effectfn BattleCommand_DamageCalc
	effectfn BattleCommand_FrustrationPower
	effectfn BattleCommand_Safeguard
	effectfn BattleCommand_CheckSafeguard
	effectfn BattleCommand_GetMagnitude
	effectfn BattleCommand_BatonPass
	effectfn BattleCommand_Pursuit
	effectfn BattleCommand_ClearHazards
	effectfn BattleCommand_HealMorn
	effectfn BattleCommand_HealDay
	effectfn BattleCommand_HealNite
	effectfn BattleCommand_HiddenPower
	effectfn BattleCommand_StartRain
	effectfn BattleCommand_StartSun
	effectfn BattleCommand_AttackUp
	effectfn BattleCommand_DefenseUp
	effectfn BattleCommand_SpeedUp
	effectfn BattleCommand_SpecialAttackUp
	effectfn BattleCommand_SpecialDefenseUp
	effectfn BattleCommand_AccuracyUp
	effectfn BattleCommand_EvasionUp
	effectfn BattleCommand_AttackUp2
	effectfn BattleCommand_DefenseUp2
	effectfn BattleCommand_SpeedUp2
	effectfn BattleCommand_SpecialAttackUp2
	effectfn BattleCommand_SpecialDefenseUp2
	effectfn BattleCommand_AccuracyUp2
	effectfn BattleCommand_EvasionUp2
	effectfn BattleCommand_AttackDown
	effectfn BattleCommand_DefenseDown
	effectfn BattleCommand_SpeedDown
	effectfn BattleCommand_SpecialAttackDown
	effectfn BattleCommand_SpecialDefenseDown
	effectfn BattleCommand_AccuracyDown
	effectfn BattleCommand_EvasionDown
	effectfn BattleCommand_AttackDown2
	effectfn BattleCommand_DefenseDown2
	effectfn BattleCommand_SpeedDown2
	effectfn BattleCommand_SpecialAttackDown2
	effectfn BattleCommand_SpecialDefenseDown2
	effectfn BattleCommand_AccuracyDown2
	effectfn BattleCommand_EvasionDown2
	effectfn BattleCommand_StatUpMessage
	effectfn BattleCommand_StatDownMessage
	effectfn BattleCommand_StatUpFailText
	effectfn BattleCommand_StatDownFailText
	effectfn BattleCommand_EffectChance
	effectfn BattleCommand_StatDownAnim
	effectfn BattleCommand_StatUpAnim
	effectfn BattleCommand_SwitchTurn
	effectfn BattleCommand_FakeOut
	effectfn BattleCommand_BellyDrum
	effectfn BattleCommand_PsychUp
	effectfn BattleCommand_Rage
	effectfn BattleCommand_DoubleFlyingDamage
	effectfn BattleCommand_DoubleUndergroundDamage
	effectfn BattleCommand_MirrorCoat
	effectfn BattleCommand_CheckFutureSight
	effectfn BattleCommand_FutureSight
	effectfn BattleCommand_DoubleMinimizeDamage
	effectfn BattleCommand_SkipSunCharge
	effectfn BattleCommand_ThunderAccuracy
	effectfn BattleCommand_Teleport
	effectfn BattleCommand_BeatUp
	effectfn BattleCommand_RageDamage
	effectfn BattleCommand_ResetTypeMatchup
	effectfn BattleCommand_AllStatsUp
	effectfn BattleCommand_BideFailText
	effectfn BattleCommand_RaiseSubNoAnim
	effectfn BattleCommand_LowerSubNoAnim
	effectfn BattleCommand_BeatUpFailText
	effectfn BattleCommand_ClearMissDamage
	effectfn BattleCommand_MoveDelay
	effectfn BattleCommand_MoveAnim
	effectfn BattleCommand_TriStatusChance
	effectfn BattleCommand_SuperEffectiveLoopText
	effectfn BattleCommand_StartLoop
	effectfn BattleCommand_Curl
	effectfn BattleCommand_ChattyHP
	effectfn BattleCommand_Chatter
	effectfn BattleCommand_Chargem
	effectfn BattleCommand_Stored_Power
	effectfn BattleCommand_Endeavor
	effectfn BattleCommand_Roost
	effectfn BattleCommand_Revenge
