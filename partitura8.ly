%partitura8

% #(set-global-staff-size 17)

musica =  \relative c'' { \time 2/4
	g4 g e2
	g4 g e2
	g4 g e e
	g4 g e e

	e4 e c2
	e4 e c2
	e4 e c c
	e4 e c2 \bar "|."
}

letra = \lyricmode { Des -- per -- tad a mi voz,
me re -- pi -- ten las cam -- pa -- nas.
Din din don.
Din din don.
¡La ma -- ña -- na ya lle -- gó!
}

\header { title = "DESPERTAD" }

\score { << \new Staff { \set Staff.instrumentName="Voz" \musica }
		\addlyrics { \letra }
	\new RhythmicStaff \with { \consists "Clef_engraver" }

	{  \set Staff.instrumentName="Pulso" \clef percussion
	\improvisationOn \stemDown
	\repeat unfold 32 { c4 } }
>>
}
