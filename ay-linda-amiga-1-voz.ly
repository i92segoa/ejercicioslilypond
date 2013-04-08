\version "2.13.0"

\header  { title = "¡Ay! linda amiga"
	composer = "E. Martínez Torner (s.XX)" 
}

#( set-global-staff-size 17)

global = { \key b \minor \time 2/4 }

sopranos = \relative c'' { \global \set Staff.instrumentName = "Sopranos"
	\new Voice = "estribilloSopranos" {
		\tempo 4=50
		% \autoBeamOff \stemUp
		b4 b8 d
		cis4 cis8 a
		b4 a8 g
		fis4 fis
		b4 b8 d
		cis8 cis cis a
		b4 a8 g
		fis4 fis 
		\override Score.RehearsalMark #'self-alignment-X = #RIGHT
		\mark "FIN" 
		\bar "||" \break
	}
	\new Voice ="coplaSopranos" {
		% \autoBeamOff
		d'8 d cis a
		b4 b
		d8 d cis a
		b4. fis8
		b8 b a a
		fis4 e
		g8 b a g 
		fis4. fis8
		b8 b a a
		fis4 e
		g8 b b ais
		b2
		\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
		\override Score.RehearsalMark #'self-alignment-X = #RIGHT  
		\mark "D.C. al FIN" \bar "||" 
} 
}

letraEstribillo = \lyricmode { ¡Ay!, lin -- da~a -- mi -- ga, que no vuel -- vo~a ver -- te.
				Cuer -- po ga -- rri -- do que me lle -- va~a -- la muer -- te. }
letraCoplaUno = \lyricmode { \set stanza = "1." No~hay a -- mor sin pe -- na, pe -- na sin do -- lor,
				ni do -- lor tan a -- gu -- do co -- mo~el del a -- mor, 
				ni do -- lor tan a -- gu -- do co -- mo~el del a -- mor. }
letraCoplaDos = \lyricmode { \set stanza = "2." Le -- van -- té -- me, ma -- dre, al sa -- lir el sol,
				fui por los cam -- pos ver -- des a bus -- car mi~a -- mor,
				fui por los cam -- pos ver -- des a bus -- car mi~a -- mor. }

\score {

	<<	\new Staff { \sopranos }
		\new Lyrics \lyricsto "estribilloSopranos" { \letraEstribillo }
		\new Lyrics \lyricsto "coplaSopranos" { \letraCoplaUno }
		\new Lyrics \lyricsto "coplaSopranos" { \letraCoplaDos }
	>>
	
}



