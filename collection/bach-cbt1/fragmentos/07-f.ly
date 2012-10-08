\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key es \major
  \tempo "Fuga a 3."
  <<
    \new Voice {
      \voiceOne 
      bes'16 g f g es aes g aes c8 bes r a16 f
      es'8[ d] }
    \new Voice {
      \voiceTwo R1
    }
  >>
}