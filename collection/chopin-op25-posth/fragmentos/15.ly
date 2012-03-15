\version "2.15.30"
\include "indice.ily"
\new Staff \relative f {
  \time 2/4
  \key aes \major
  \clef treble
  \tempo "Allegretto"
  \stemUp
  \tupletDown
  \dynamicUp
  \slurUp
  \times 2/3 { r8 <es' aes c> ( \p q }
  \times 2/3 { q 
               \override TupletBracket #'stencil = ##f
               \override TupletNumber #'stencil = ##f
               <des es bes'> q }
  \times 2/3 { q <des es aes> <c es aes>}
  \times 2/3 { q <c es> <bes des es>}
  \times 2/3 { q <des es aes> <c es aes>}
  \times 2/3 { q <es aes bes> <es g bes>}
  \times 2/3 { q <es bes' c> <es aes c>}
  \times 2/3 { <ges aes c> <ges aes des> <ges aes es'>) }
  
  
  
  
}