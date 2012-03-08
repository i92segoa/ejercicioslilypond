\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key g \minor
  \tempo "Praeludium"
  g''1 \trill ~
  g16 d es32 d c16 d g c,32 bes a16 bes16[ g'] %corchete suelto
}