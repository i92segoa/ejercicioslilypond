\include "indice.ily"
\version "2.15.33"
\new Staff  \relative f {
  \time 4/4
  \clef bass
  \key a \minor
  \tempo "Fuga a 4."
  r8 a16 gis a8 b c c16 b c8 d
  e16 d c d e8 % corchete recto suelto
}