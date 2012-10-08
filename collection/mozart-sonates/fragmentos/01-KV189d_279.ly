\version "2.15.32"
\include "indice.ily"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \tempo "Allegro"
  <e' g c>4 \arpeggio r8 c'16 b d c e d f e g f
  <a, d f a>4 \arpeggio g'16 f e d c\trill b c e d f b, d
}