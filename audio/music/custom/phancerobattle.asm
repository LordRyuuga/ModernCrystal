; Pokémon X/Y - Battle! Kanto Legendary Pokémon
; Demixed by GACT and Pigu
; https://github.com/TwitchPlaysPokemon/tppcrystal251pub/blob/public/audio/music/custom/kantolegend.asm
; https://pigu-a.bandcamp.com/album/pok-mon-anniversary-crystal-pigus-arranges
; Flipped for Chatty Crystal's Phancero Battle, original track is under kantolegendbattle.asm

Music_PhanceroBattle:
	dbw $80, Music_PhanceroBattle_Ch1
	dbw $01, Music_PhanceroBattle_Ch2
	dbw $02, Music_PhanceroBattle_Ch3

Music_PhanceroBattle_Ch1:
	tempo $6a
	dutycycle $2
	notetype $c, $c7
	octave 3
	note B_, 1
	octave 4
	note C_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 5
	note C_, 1
	octave 4
	note B_, 1
	octave 5
	note C_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 4
	note B_, 1
	note A#, 1
Music_PhanceroBattle_Ch1_L1:
	note B_, 1
	note __, 1
	note B_, 1
	note __, 5
	loopchannel 4, Music_PhanceroBattle_Ch1_L1
Music_PhanceroBattle_Ch1_L2:
	note A_, 1
	note __, 1
	note A_, 1
	note __, 5
	loopchannel 4, Music_PhanceroBattle_Ch1_L2
Music_PhanceroBattle_Ch1_L3:
	note G_, 1
	note __, 1
	note G_, 1
	note __, 5
	loopchannel 7, Music_PhanceroBattle_Ch1_L3
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	intensity $74
	octave 3
	note E_, 1
	note D_, 1
	note C_, 1
	octave 2
	note A_, 1
	note G_, 1
Music_PhanceroBattle_Ch1_L:
	dutycycle $2
	intensity $53
Music_PhanceroBattle_Ch1_L4:
	octave 5
	note B_, 2
	note F#, 2
	note E_, 2
	octave 4
	note B_, 2
	loopchannel 4, Music_PhanceroBattle_Ch1_L4
Music_PhanceroBattle_Ch1_L5:
	octave 5
	note A_, 2
	note E_, 2
	note D_, 2
	octave 4
	note A_, 2
	loopchannel 4, Music_PhanceroBattle_Ch1_L5
Music_PhanceroBattle_Ch1_L6:
	octave 5
	note G_, 2
	note D_, 2
	note C_, 2
	octave 4
	note G_, 2
	loopchannel 7, Music_PhanceroBattle_Ch1_L6
	octave 5
	note G_, 2
	note D_, 2
	note C_, 2
	octave 4
	note G_, 1
Music_PhanceroBattle_Ch1_L7:
	octave 3
	note B_, 1
	octave 4
	note B_, 1
	octave 2
	note B_, 1
	octave 4
	note B_, 1
	octave 3
	note B_, 1
	octave 4
	note B_, 1
	octave 2
	note B_, 1
	octave 4
	note B_, 1
	octave 5
	note B_, 1
	octave 4
	note B_, 1
	octave 3
	note B_, 1
	octave 4
	note B_, 1
	octave 2
	note B_, 1
	octave 4
	note B_, 1
	octave 2
	note B_, 1
	octave 4
	note B_, 1
	loopchannel 2, Music_PhanceroBattle_Ch1_L7
Music_PhanceroBattle_Ch1_L8:
	octave 3
	note A_, 1
	octave 4
	note A_, 1
	octave 2
	note A_, 1
	octave 4
	note A_, 1
	octave 3
	note A_, 1
	octave 4
	note A_, 1
	octave 2
	note A_, 1
	octave 4
	note A_, 1
	octave 5
	note A_, 1
	octave 4
	note A_, 1
	octave 3
	note A_, 1
	octave 4
	note A_, 1
	octave 2
	note A_, 1
	octave 4
	note A_, 1
	octave 2
	note A_, 1
	octave 4
	note A_, 1
	loopchannel 2, Music_PhanceroBattle_Ch1_L8
Music_PhanceroBattle_Ch1_L9:
	octave 3
	note G_, 1
	octave 4
	note G_, 1
	octave 2
	note G_, 1
	octave 4
	note G_, 1
	octave 3
	note G_, 1
	octave 4
	note G_, 1
	octave 2
	note G_, 1
	octave 4
	note G_, 1
	octave 5
	note G_, 1
	octave 4
	note G_, 1
	octave 3
	note G_, 1
	octave 4
	note G_, 1
	octave 2
	note G_, 1
	octave 4
	note G_, 1
	octave 2
	note G_, 1
	octave 4
	note G_, 1
	loopchannel 3, Music_PhanceroBattle_Ch1_L9
	octave 3
	note G_, 1
	octave 4
	note G_, 1
	octave 2
	note G_, 1
	octave 4
	note G_, 1
	octave 3
	note G_, 1
	octave 4
	note G_, 1
	octave 2
	note G_, 1
	octave 4
	note G_, 1
	intensity $74
	note D_, 1
	note C_, 1
	octave 3
	note A_, 1
	note G_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 2
	note A_, 1
	dutycycle $1
	intensity $c5
	octave 4
	note E_, 6
	note F_, 6
	note G_, 4
	note E_, 6
	note D_, 6
	note E_, 4
	octave 3
	note D#, 12
	note E_, 2
	note __, 2
	note D#, 2
	note E_, 2
	note __, 4
	intensity $b7
	octave 2
	note A#, 8
	intensity $c5
	octave 3
	note B_, 6
	octave 4
	note C#, 6
	note D#, 4
	octave 3
	note A#, 6
	note B_, 6
	octave 4
	note C#, 4
	octave 3
	note F#, 6
	note G_, 6
	note A_, 4
	intensity $c7
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
	note F#, 4
	intensity $c0
	note D#, 16
	intensity $b0
	note D#, 16
	intensity $4e
	note E_, 16
	intensity $c7
	note E_, 16
	octave 4
	note F#, 8
	note C#, 8
	octave 3
	note A_, 8
	note F#, 8
	intensity $c0
	note G_, 16
	intensity $c7
	note G_, 16
	octave 4
	note F#, 8
	note C#, 8
	octave 3
	note A_, 8
	note F#, 8
	intensity $c0
	note E_, 16
	intensity $3f
	octave 2
	note B_, 16
	dutycycle $2
	intensity $43
	note B_, 1
	note G_, 1
	note E_, 1
	octave 1
	note B_, 1
	octave 2
	note B_, 1
	octave 1
	note B_, 1
	octave 2
	note E_, 1
	note B_, 1
	note G_, 1
	note E_, 1
	octave 1
	note B_, 1
	octave 2
	note E_, 1
	note G_, 1
	note B_, 1
	note G_, 1
	octave 1
	note B_, 1
	octave 2
	note E_, 1
	note G_, 1
	note B_, 1
	note G_, 1
	octave 1
	note B_, 1
	octave 2
	note E_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note E_, 1
	octave 1
	note B_, 1
	octave 2
	note F#, 1
	note E_, 1
	note F#, 1
	note B_, 1
	note F#, 1
	note A_, 1
	note F#, 1
	note D_, 1
	octave 1
	note A_, 1
	octave 2
	note A_, 1
	octave 1
	note A_, 1
	octave 2
	note D_, 1
	note A_, 1
	note F#, 1
	note D_, 1
	octave 1
	note A_, 1
	octave 2
	note D_, 1
	note F#, 1
	note A_, 1
	note F#, 1
	octave 1
	note A_, 1
	octave 2
	note D_, 1
	note F#, 1
	note A_, 1
	note F#, 1
	octave 1
	note A_, 1
	octave 2
	note D_, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	octave 1
	note A_, 1
	octave 2
	note E_, 1
	note D_, 1
	note E_, 1
	note A_, 1
	note E_, 1
Music_PhanceroBattle_Ch1_L10:
	note G_, 1
	note E_, 1
	note C_, 1
	octave 1
	note G_, 1
	octave 2
	note G_, 1
	octave 1
	note G_, 1
	octave 2
	note C_, 1
	note G_, 1
	note E_, 1
	note C_, 1
	octave 1
	note G_, 1
	octave 2
	note C_, 1
	note E_, 1
	note G_, 1
	note E_, 1
	octave 1
	note G_, 1
	octave 2
	note C_, 1
	note E_, 1
	note G_, 1
	note E_, 1
	octave 1
	note G_, 1
	octave 2
	note C_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 1
	note G_, 1
	octave 2
	note D_, 1
	note C_, 1
	note D_, 1
	note G_, 1
	note D_, 1
	loopchannel 2, Music_PhanceroBattle_Ch1_L10
	dutycycle $1
	intensity $c5
	octave 3
	note G_, 12
	note G_, 2
	note __, 2
	note F#, 2
	intensity $c2
	note G_, 4
	note __, 10
	intensity $c5
	note F#, 12
	note F#, 2
	note __, 2
	note D#, 2
	intensity $c2
	note E_, 6
	intensity $c5
	note F#, 8
	note E_, 12
	note E_, 2
	note __, 2
	note D_, 2
	intensity $c2
	note E_, 4
	note __, 10
	intensity $c5
	note E_, 12
	note E_, 2
	note __, 2
	note D_, 2
	intensity $c2
	note E_, 6
	intensity $c5
	note E_, 9
	loopchannel 0, Music_PhanceroBattle_Ch1_L

Music_PhanceroBattle_Ch2:
	dutycycle $1
	notetype $c, $c2
	octave 4
	note E_, 1
	note F_, 1
	note F#, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	note F_, 1
	note F#, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	note F_, 1
	note F#, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	note F_, 1
	note F#, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	note F_, 1
	note F#, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	note F_, 1
	note F#, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	note F_, 1
	note F#, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	note F_, 1
	note F#, 1
	octave 3
	note E_, 1
	octave 5
Music_PhanceroBattle_Ch2_L1:
	note B_, 2
	note B_, 6
	loopchannel 4, Music_PhanceroBattle_Ch2_L1
Music_PhanceroBattle_Ch2_L2:
	note A_, 2
	note A_, 6
	loopchannel 4, Music_PhanceroBattle_Ch2_L2
Music_PhanceroBattle_Ch2_L3:
	note G_, 2
	note G_, 6
	loopchannel 6, Music_PhanceroBattle_Ch2_L3
	note G_, 4
	note G_, 4
	note G_, 4
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	intensity $b7
Music_PhanceroBattle_Ch2_L:
	callchannel Music_PhanceroBattle_Ch2_P_C
	callchannel Music_PhanceroBattle_Ch2_P_Dm
	callchannel Music_PhanceroBattle_Ch2_P_Em
	callchannel Music_PhanceroBattle_Ch2_P_C
	callchannel Music_PhanceroBattle_Ch2_P_Dm
	callchannel Music_PhanceroBattle_Ch2_P_Em
	callchannel Music_PhanceroBattle_Ch2_P_C2
	callchannel Music_PhanceroBattle_Ch2_P_C#
	callchannel Music_PhanceroBattle_Ch2_P_C2
	callchannel Music_PhanceroBattle_Ch2_P_C2
	callchannel Music_PhanceroBattle_Ch2_P_C#
	callchannel Music_PhanceroBattle_Ch2_P_C
	note B_, 2
	note B_, 2
	note C#, 4
	note B_, 2
	note B_, 2
	note C#, 4
	note B_, 2
	note F#, 2
	note B_, 2
	note B_, 4
	note B_, 2
	note C#, 4
	callchannel Music_PhanceroBattle_Ch2_P_C
	note B_, 2
	note B_, 2
	note E_, 2
	note F#, 2
	note B_, 2
	note B_, 2
	note E_, 2
	note F#, 2
	note B_, 2
	note E_, 2
	note F#, 2
	octave 5
	note B_, 2
	octave 6
	note B_, 2
	octave 5
	note B_, 2
	octave 6
	note E_, 2
	note F#, 2
	callchannel Music_PhanceroBattle_Ch2_P_C
	callchannel Music_PhanceroBattle_Ch2_P_C
	callchannel Music_PhanceroBattle_Ch2_P_Dm
	callchannel Music_PhanceroBattle_Ch2_P_Em
	callchannel Music_PhanceroBattle_Ch2_P_C
	callchannel Music_PhanceroBattle_Ch2_P_Dm
	callchannel Music_PhanceroBattle_Ch2_P_Em
	loopchannel 0, Music_PhanceroBattle_Ch2_L

Music_PhanceroBattle_Ch2_P_C:
	octave 6
	note B_, 2
	octave 5
	note B_, 2
	octave 6
	note E_, 2
	note F#, 2
	note B_, 2
	octave 5
	note B_, 2
	octave 6
	note E_, 2
	note F#, 2
	note B_, 2
	note E_, 2
	note F#, 2
	octave 5
	note B_, 2
	octave 6
	note B_, 2
	octave 5
	note B_, 2
	octave 6
	note E_, 2
	note F#, 2
	endchannel

Music_PhanceroBattle_Ch2_P_C2:
	octave 6
	note B_, 2
	octave 5
	note B_, 2
	octave 6
	note E_, 2
	note F#, 2
	note B_, 2
	octave 5
	note B_, 2
	octave 6
	note E_, 2
	note F#, 2
	note B_, 2
	note E_, 2
	note F#, 2
	octave 5
	note B_, 2
	octave 6
	note B_, 2
	octave 5
	note B_, 2
	octave 6
	note E_, 2
	note F_, 2
	endchannel

Music_PhanceroBattle_Ch2_P_C#:
	note A#, 2
	octave 5
	note A#, 2
	octave 6
	note D#, 2
	note F_, 2
	note A#, 2
	octave 5
	note A#, 2
	octave 6
	note D#, 2
	note F_, 2
	note A#, 2
	note D#, 2
	note F_, 2
	octave 5
	note A#, 2
	octave 6
	note A#, 2
	octave 5
	note A#, 2
	octave 6
	note D#, 2
	note F_, 2
	endchannel

Music_PhanceroBattle_Ch2_P_Dm:
	octave 6
	note A_, 2
	octave 5
	note A_, 2
	octave 6
	note D_, 2
	note E_, 2
	note A_, 2
	octave 5
	note A_, 2
	octave 6
	note D_, 2
	note E_, 2
	note A_, 2
	note D_, 2
	note E_, 2
	octave 5
	note A_, 2
	octave 6
	note A_, 2
	octave 5
	note A_, 2
	octave 6
	note D_, 2
	note E_, 2
	endchannel

Music_PhanceroBattle_Ch2_P_Em:
	octave 6
	note G_, 2
	octave 5
	note G_, 2
	octave 6
	note C_, 2
	note D_, 2
	note G_, 2
	octave 5
	note G_, 2
	octave 6
	note C_, 2
	note D_, 2
	note G_, 2
	note C_, 2
	note D_, 2
	octave 5
	note G_, 2
	octave 6
	note G_, 2
	octave 5
	note G_, 2
	octave 6
	note C_, 2
	note D_, 2
	note G_, 2
	octave 5
	note G_, 2
	octave 6
	note C_, 2
	note D_, 2
	note G_, 2
	octave 5
	note G_, 2
	octave 6
	note C_, 2
	note D_, 2
	note G_, 2
	note C_, 2
	note D_, 2
	octave 5
	note G_, 2
	octave 6
	note G_, 2
	octave 5
	note G_, 2
	octave 6
	note C_, 2
	note D_, 2
	endchannel

Music_PhanceroBattle_Ch3:
	notetype $c, $14
	octave 4
	note B_, 1
	note __, 1
	note B_, 1
	octave 3
	note B_, 1
	octave 4
	note A#, 1
	note __, 1
	note A#, 1
	octave 3
	note A#, 1
	octave 4
	note A_, 1
	note __, 1
	note A_, 1
	octave 3
	note A_, 1
	octave 4
	note G#, 1
	note __, 1
	note G#, 1
	octave 3
	note G#, 1
	octave 4
	note G_, 1
	note __, 1
	note G_, 1
	octave 3
	note G_, 1
	octave 4
	note F#, 1
	note __, 1
	note F#, 1
	octave 3
	note F#, 1
	octave 4
	note F_, 1
	note __, 1
	note F_, 1
	octave 3
	note F_, 1
	octave 4
	note E_, 1
	note __, 1
	note E_, 1
	octave 3
	note E_, 1
	callchannel Music_PhanceroBattle_Ch3_P1
Music_PhanceroBattle_Ch3_L:
	intensity $14
	callchannel Music_PhanceroBattle_Ch3_P1
	callchannel Music_PhanceroBattle_Ch3_P1
	intensity $26
	note A#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 1
	note D#, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note F#, 1
	note G_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	intensity $16
	note A_, 4
	note B_, 4
	note A_, 4
	note F#, 4
	note G_, 6
	note A_, 6
	note F#, 4
	note D_, 16
	note E_, 16
	note A_, 4
	note B_, 4
	note A_, 4
	note F#, 4
	note E_, 6
	note D_, 6
	note C_, 4
	octave 2
	note B_, 16
	octave 3
	note E_, 8
	intensity $20
	note D_, 1
	note C_, 1
	octave 2
	note A_, 1
	note G_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	octave 1
	note A_, 1
	note G_, 4
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	note __, 12
	intensity $10
	octave 3
	note B_, 1
	note __, 1
	note F#, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	note F#, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	note F#, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	note F#, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note A_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note A_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note A_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note A_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	loopchannel 0, Music_PhanceroBattle_Ch3_L

Music_PhanceroBattle_Ch3_P1:
	octave 4
	note B_, 1
	note __, 1
	note F#, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	octave 4
	note B_, 1
	note __, 1
	note F#, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	octave 4
	note B_, 1
	note __, 1
	note F#, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	octave 4
	note B_, 1
	note __, 1
	note F#, 1
	note __, 1
	note E_, 1
	note __, 1
	octave 3
	note B_, 1
	note __, 1
	octave 4
	note A_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 3
	note A_, 1
	note __, 1
	octave 4
	note A_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 3
	note A_, 1
	note __, 1
	octave 4
	note A_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 3
	note A_, 1
	note __, 1
	octave 4
	note A_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 3
	note A_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 4
	note G_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	endchannel