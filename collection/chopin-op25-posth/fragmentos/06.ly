\version "2.15.30"
\include "indice.ily"
\new Staff \relative f {
  \time 4/4
  \key gis \minor
  \clef treble
  \tempo "Allegro"
  <b' dis>16( _\markup \italic {sotto voce}
  \repeat unfold 15 {<cis e> <b dis>}
  <cis e>)
}