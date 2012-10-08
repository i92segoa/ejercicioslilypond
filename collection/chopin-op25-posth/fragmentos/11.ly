\version "2.15.30"
\include "indice.ily"
\new Staff \relative f {
  \time 4/4
  \key a \minor
  \clef treble
  \tempo "Lento"
  
  e'4( \p e8. e16 e4 f
  e4 c e2 \fermata)
  \stopStaff s1 s1
  \startStaff \bar ""
  \override Staff.Clef #'break-visibility = #center-visible	
  \clef treble
  \ottava #1
  \tempo "Allegro con brio"
  \override TupletBracket #'stencil = ##f
  \override TupletNumber #'stencil = ##f
  \times 4/6 { f'''16 -\markup{\dynamic f \italic risoluto }
               c e a, dis c }
  \times 4/6 { d a cis a c e, }
  \times 4/6 { b' e, bes' c, a' e }
  \times 4/6 { gis c, g' c, fis a, }
}