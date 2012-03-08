\version "2.15.32"
\include "indice.ily"
\new Staff \relative f {
  \time 2/4
  \key bes \major
  \clef treble
  \tempo "Allegro"
  bes'8. \trill c32 d \times 2/3 { bes16 a c } \times 2/3 { bes16 a es' }
  \override TupletBracket #'bracket-visibility = ##f
  \override TupletNumber #'transparent = ##t
  \times 2/3 { c bes d } \times 2/3 { c bes f' } d8 r
  <bes es g>8 \arpeggio <bes d f> \arpeggio
}