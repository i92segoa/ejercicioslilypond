\include "indice.ily"
\version "2.15.33"
\new Staff  \relative f {
  \time 3/4
  \clef treble
  \key bes \major
  \tempo "Fuga a 3."
  r8 f' g f bes d,
  c a'16 g bes a g f c'8 es,
  d8 %corchete recto
}