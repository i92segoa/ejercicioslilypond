\version "2.15.32"
\include "indice.ily"
\new Staff \relative f {
  \time 4/4
  \key c \major
  \clef treble
  \tempo "Allegro maestoso"
  \grace dis''16 e4 e8. e16 e4 c8. a16
  \grace a16 gis4 gis2 d'8. b16
  e4 e8. e16 e8 f16 e d c b a
}