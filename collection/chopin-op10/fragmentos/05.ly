\version "2.15.30"
\include "indice.ily"
\new Staff \relative f {
  \time 2/4
  \key ges \major
  \clef treble
  \tempo "Vivace"
  \ottava #1
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(1 1 1 1)
  \stemDown
  \times 2/3{ ges'''16-\markup{\dynamic f \italic brillante}
              bes des, }
  \times 2/3{ ges16 es ges }
  \times 2/3{ des ges bes, }
  \ottava #0
  \times 2/3{ des ges, bes }
  \override TupletBracket #'stencil =##f
  \override TupletNumber #'stencil =##f
  \times 2/3{ ges\p bes des, }
  \times 2/3{ ges es ges }
  \times 2/3{ des ges bes, }
  \times 2/3{ des ges, bes }
  \times 2/3{ des,^\markup{\italic legato} des' aes }
  \times 2/3{ des-\markup{\italic cresc.} aes aes' }
  \times 2/3{ aes, aes' es }
  \times 2/3{ aes es es' }
}