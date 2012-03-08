\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key d \minor
  \tempo "Praeludium"
  r8 r16 a'
  \override TupletBracket #'transparent = ##t
  % barrado a cada corchea
  \times 2/3 { f d a' }
  \times 2/3 { f d d' }
  \override TupletNumber #'transparent = ##t
  \times 2/3 { bes g bes }
  \times 2/3 { g e g }
  \times 2/3 { e cis g' }
  \times 2/3 { e cis a' }
  
}