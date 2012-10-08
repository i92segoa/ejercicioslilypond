\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key e \minor
  \tempo "Praeludium"
  <<
    \new Voice { \voiceOne e''2~e8 fis32 e dis e e8.\trill dis32 e }
    \new Voice { \voiceTwo e,16 g a b a b a g <g b>8 r r4 }
    \new Voice { \voiceThree <g b>8 r s4 s2 } %el silencio por dentro de la ligadura
  >>
}