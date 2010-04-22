\version "2.13.18"
#(set-global-staff-size 26)

\header{
	title = "Frère Jacques / Fray Santiago"
	composer = "Trad. francesa"
	tagline = ""
}

frerejacques = \relative c' { \clef treble
	\key f \major
	\time 4/4 \repeat volta 2 {
	f4^\markup{\bold 1.} g a f
	f4 g a f
	a4^\markup{\bold 2.} bes c2
	a4 bes c2
	c8^\markup{\bold 3.} d c bes a4 f
	c'8 d c bes a4 f
	f4^\markup{\bold 4.} c f2
	f4 c f2 }
}

textF = \lyricmode {
	\set stanza = "(Fr.) "
	Frè -- re Jac -- ques, frè -- re Jac -- ques,
	dor -- mez vous, dor -- mez vous?
	Son -- nez les Ma -- ti -- nes, son -- nez les Ma -- ti -- nes:
	Ding dong ding, ding dong ding!
}

textD = \lyricmode {
	\set stanza = "(de) "
	Bru -- der Ja -- kob, Bru -- der Ja -- kob,
	schläfst du noch, schläfst du noch?
	Hörst du nicht die Glo -- cken, hörst du nicht die Glo -- cken:
	Ding dang dong, ding dang dong!
}

textE = \lyricmode {
	\set stanza = "(en) "
	Are you slee -- ping, are you slee -- ping,
	bro -- ther John, bro -- ther John?
	Mor -- ning bells are ring -- ing, mor -- ning bells are ring -- ing:
	Ding ding dong, ding ding dong!
}

textI = \lyricmode {
	\set stanza = "(it) "
	San Mar -- ti -- no, San Mar -- ti -- no,
	dor -- mi tu, dor -- mi tu?
	Sen -- ti le cam -- pa -- ne, sen -- ti le cam -- pa -- ne:
	Ding ding dong, ding ding dong!
}

textES = \lyricmode {
	\set stanza = "(Esp.) "
	Fray San -- tia -- go, Fray San -- tia -- go,
	¿duer -- me~us ted? ¿duer -- me~us ted?
	To -- can a mai -- ti -- nes, to -- can a mai -- ti -- nes:
	¡Din dan don, din dan don!
}

\score {
  \new Staff {  \frerejacques }
  \addlyrics { \textF }
  %\addlyrics  { \textD }
  %\addlyrics  { \textE }
  %\addlyrics  { \textI }
  \addlyrics  { \textES }
  \layout {
    \context { \Score \remove "Bar_number_engraver" }
  }
}

\paper { indent = 0
	left-margin=3\cm
	 right-margin=3\cm
	 %linewidth = 123\mm
	 bottom-margin=10\cm
	 top-margin=4\cm
	system-count=4
	ragged-last-bottom=##f
}
