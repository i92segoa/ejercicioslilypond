\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef bass
  \key b \major
  \tempo "Fuga a 4."
  <<
    \new Voice { \voiceOne r8 b ais b cis4 fis,8 gis16 ais
                 b8 cis16 dis e8 dis cis4\trill }
    \new Voice { \voiceTwo R1 R1 } %should be R1*3/4
  >>
}