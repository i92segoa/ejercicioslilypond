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

cumple= \new Staff \relative c''{  \time 3/4 \partial 4
			g8. g16 a4 g c b2
			g8. g16 a4 g d' c2 \bar "" \break
			g8. g16 g'4 e c b a\fermata
		f'8. f16 e4 c d c2. \bar "|." }
		
		
despertad = << \new Staff { \set Staff.instrumentName="Voz" \musica }
				\addlyrics { \letra }
			\new RhythmicStaff \with { \consists "Clef_engraver" }
		
			{  \set Staff.instrumentName="Pulso" \clef percussion
			\improvisationOn \stemDown
			\repeat unfold 32 { c4 } }
		>>
mozart = \relative c'' { \key g \major \tempo "Allegro"
<g d' g>4 \f r8 d' g4 r8 d
g8 d g b d4 r
c4 r8 a c4 r8 a
		c8 a fis a d,4 r4 \bar "||" }
ofrenda= \relative c'' {
\key c \minor
\time 2/2
c2 es g as b, r4
g' fis2 f e es~ es4 d des c b a8 g c4 f es2 d c4 }

quinta= \relative c''{
 \key c \minor
 \time 2/4
 r8 g8[ g g]
 ees2 \fermata
 r8 f8[  f f]
 d2 ~
 d \fermata
}

novena= \relative c' { \key c \major

\repeat volta 2 { e2 f4 g g f e d c c d e } \alternative { { e2 d2 } { d2 c2 } } }


bachVUno= \relative c''' {
\time 12/8 \key f\major
    c4. ~ c8 b a g4. ~ g8 f e |
    d b c f4. ~ f8 e g c4 es,8

}

bachVDos= \relative c'' {
\time 12/8 \key f\major
    e16( d )e c g c f( e )f d b d g( f )g e c e a( g )a f g a |
    b,8 g' c, ~ c a b!-\trill c16( b )c g e g f( g a bes )c a }

bachDosViolinesA = { << \new Staff { \bachVUno } \new Staff { \bachVDos } >> }
bachDosViolinesB = { \new Staff << { \bachVUno } \\ { \bachVDos } >> }



\book{  
	\bookpart { \header { title="LIBRO PRIMERO"
			subtitle="(PRIMERA PARTE)"
			composer="Heinrich Ignaz Franz Von Biler" }
		\markup { \vspace #5 }
		\score { \cumple
			\header { piece="Cumpleaños feliz" }
		}
		\markup { \vspace #5 }
		
		\score { \despertad
			\header { piece="Despertad" }
		}
	} %bookpart
	\bookpart { \header {  subtitle="(SEGUNDA PARTE)" }
		\markup { \vspace #5 }
		\score { \mozart
			\header { piece="Serenata nocturna, de Mozart" }
		}
		\markup { \vspace #5 }
		
		\score { \ofrenda
			\header { piece="Ofrenda musical, de Bach" }
		}
	} %bookpart
  \paper { % print-all-headers=##t 
  	  % bookTitleMarkup = \markup { "booktitlemarkup" }
  	  %  ragged-last-bottom=##f
  }


} %book

\book{  %book2
	\bookpart { \header { title="LIBRO SEGUNDO"
			subtitle="(PRIMERA PARTE)"
			composer="Engelbert Humperdinck" }
		\markup { \vspace #5 }
		\score { \quinta
			\header { piece="Quinta sinfonía, de Beethoven" }
		}
		\markup { \vspace #5 }
		
		\score { \novena
			\header { piece="Novena sinfonía" }
		}
	} %bookpart
	\bookpart { \header {  subtitle="(SEGUNDA PARTE)" }
		\markup { \vspace #5 }
		\score { \bachDosViolinesA
			\header { piece="Concierto para dos violines, de Bach (1)" }
		}
		\markup { \vspace #5 }
		
		\score { \bachDosViolinesB
			\header { piece="Concierto para dos violines, de Bach (2)" }
		}
	} %bookpart
  
} %book2