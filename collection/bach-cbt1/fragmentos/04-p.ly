\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 6/4
  \clef treble
  \key cis \minor
  \tempo "Praeludium"
  gis'8 fis e dis e cis
  <<
    \new Voice { \voiceOne cis'4. b8 a4 }
    \new Voice { \voiceTwo <e gis>2 fis4 }
  >>
  
}