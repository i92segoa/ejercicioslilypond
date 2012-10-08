\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef bass
  \key cis \minor
  \tempo "Fuga a 5."
  <<
    \new Voice { \voiceOne
                 s1*3
                 gis1
                 fisis2 }
    \new Voice { \voiceTwo
                 cis1
                 bis2 e
                 dis1
                 cis4 dis e2~
                 e4 }
  >>
  
}