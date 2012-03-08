\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 3/8
  \clef bass
  \key f \major
  \tempo "Fuga a 3."
  \partial 8
  c'8(
  d8) c bes
  c8 e,16 f g a
  bes8
  % corchete recto
}