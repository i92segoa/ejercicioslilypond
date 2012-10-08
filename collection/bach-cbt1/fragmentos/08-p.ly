\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 3/2
  \clef treble
  \key es \minor
  \tempo "Praeludium"
  <<
    \new Voice {
      \voiceOne 
      bes'2 r4
      r8 bes8 es4. ges8
      ces,2 r4 r8 es8 }
    \new Voice { \voiceTwo
      <es, ges>2 q q
      <es aes>2 q
    }
  >>
}