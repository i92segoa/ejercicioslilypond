\version "2.15.30"
\include "indice.ily"
\new Staff  \relative f {
  \time 4/4
  \key des \major
  \clef treble
  \tempo "Vivace"
  \times 2/3 { <ges' es'>8(  _\markup\italic{mezza voce} <aes f'> <ges es'> }
\times 2/3 { <aes f'> <ges es'> ^\markup\italic{molto legato} <aes f'> }
\override TupletNumber #'stencil = ##f
\times 2/3 { <f des'> <ges es'> <g e'> }
\times 2/3 { <bes ges'!> <aes f'> <f des'> ) } 

\times 2/3 { <aes f'> ( <ges! es'!> <aes f'>  }
\times 2/3 { <ges es'> <aes f'> <ges es'> }
\times 2/3 { <f des'> <ges es'> <g e'> }
\times 2/3 { <bes ges'!> <aes f'> <f des'> ) }
}