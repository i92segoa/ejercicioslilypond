\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 3/4
  \clef treble
  \key d \minor
  \tempo "Fuga a 3."
  r8 d' e f g e
  f16( d cis d) bes'4\staccatissimo g \trill
  << a4 \\ r8 >>
}