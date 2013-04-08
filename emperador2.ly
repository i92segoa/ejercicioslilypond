% canción del emperador. Narváez
\header { title = "CANCIÓN DEL EMPERADOR" 
	composer= \markup "Luys de Narváez"
	arranger = \markup {\small "(1530-1550)"}
} 
\version "2.12.0"

cantus = \relative c'{ 
	<b fis' fis\4 b>1
	<b b' b\3 >
	<c e'>
	<c' e>
	<b d> \break %5
	d2 c4 b
	a2 g
	a1
	r2 <b g'>2
	<b g'> g' \break %10
	fis fis4 g
	e2 e
	r4 g8_( fis) e d e fis
	<g, b g'>2 <g b g'> \break
	fis'8( g) fis g fis e d c
	b2  e  ~ 
	e4 e4 dis cis
	<dis fis,>2 <dis fis,>   
 }


altus = \relative c'' {
	s1
	s1
	g4 a8 b c d c b
	a,8 b c d e4 a,
	b8 cis d e fis4 b, % \break %5
	b4 d a g
	c4\rest dis e2 ^~
	e4 dis e dis
	\stemUp g2 s2
	s2 \voiceThree b4 cis %10
	\shiftOff d1
	c1
}

tenor = \relative c { \voiceTwo 
	s1
	s1
	s1
	s1
	s1 %5
	s1
	fis2 r4 e
	fis1
	<e e'>1
	e2 e'
	d2 b
	c2 a8 b c d
	<e g b>1
	e2 e
	<d a'>1
	<e g>1
	<b fis'>1
	b2 b
} 

{
  \new Staff \relative c' { \set Staff.instrumentName = "Guitarra"
  \time 4/4
  \key g \major

	<<
		\new Voice { \voiceOne \cantus }
		\new Voice { \voiceFour \altus } 
		\new Voice { \voiceTwo \tenor }
	>>
   }

}
