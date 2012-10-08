\version "2.15.32"
\include "indice.ily"
\new Staff \relative f {
  \time 4/4
  \key bes \major
  \clef treble
  \tempo "(Allegro)"
  \partial 4
  \grace g''16 f8 es16 d
  c8 bes bes4. d8 g d
  f4 es4. f16 g f es d c
  bes4 a4.
}