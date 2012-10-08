\version "2.15.30"
\include "indice.ily"
\new Staff \relative f {
  \time 2/2
  \clef treble
  \tempo "Presto"
  \key f \minor
  \partial 4
  c''4 ( -\markup{\dynamic p \italic "molto legato" }
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)

  \times 2/3 { c8 des b }
  \times 2/3 { c8 es des }
  \override TupletBracket #'stencil = ##f
  \override TupletNumber #'stencil = ##f
  \times 2/3 { c8 des b }
  \times 2/3 { c8 fis g }
  \times 2/3 { c,8 des b }
  \times 2/3 { c8 es des }
  \times 2/3 { c8 des b }
  \times 2/3 { c8 aes' f }
  \times 2/3 { e \< f e }
  \times 2/3 { dis e g }
  \times 2/3 { bes c bes }
  \times 2/3 { a bes des! \! ) }
  
  
}