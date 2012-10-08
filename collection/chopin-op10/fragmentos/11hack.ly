\version "2.15.30"
\include "indice.ily"
fixA = {
  %\stemDown
  %\once \override Stem #'length = #-9
  \once \override Accidental #'extra-offset = #'(1 . 0)
}
fixB = {
  \once \override NoteHead #'extra-offset = #'(-2.5 . 0)
  \once \override Stem #'length = #8
  \once \override Stem #'extra-offset = #'(-3 . 0)
  \once \override Stem #'X-extent = #'(-1 . 0)
  \once \override Stem #'rotation = #'(30 0 2)
  %\once \override Stem #'extra-offset = #'(-0.2 . -0.2)
  \once \override Flag #'style = #'no-flag
  \once \override Accidental #'extra-offset = #'(-0.5 . 0)
}

\relative c' {
  << \new Voice {\voiceOne
                 \fixB aes'!} \\ { \voiceTwo \fixA 
                                   <b a'!>8  } >> s
}

\new Staff \relative f {
  \time 3/4
  \key es \major
  \clef treble
  \tempo "Allegretto"
  \partial 8
  \stemDown
  bes''8(
  <bes, g' es'>8 -\staccatissimo \sf\arpeggio )
  <bes g' bes>\arpeggio \< (
  <bes g' a>\arpeggio
  <bes g' bes>\arpeggio \>
  <bes g' c>\arpeggio
  <bes g' bes>\arpeggio \!
  
  %Double stem here!
  <bes aes'! f'>-.\arpeggio )
  <bes aes' bes>\arpeggio (
  <bes a' aes!>8\arpeggio\< 
  <bes aes' bes>\arpeggio \!
  <bes aes' c>\arpeggio \>
  <bes aes' bes>\arpeggio \!
  
  <bes, g' bes g'>-.\arpeggio )
  <bes d bes' d>\arpeggio (
  <bes es bes' es>\arpeggio
  <b es d'>\arpeggio -\markup\italic{cresc.}
  <c es c'>\arpeggio
  <c f f'>\arpeggio
  <bes! g' es'>\arpeggio )
  
}