\version "2.15.30"
\include "indice.ily"
\new Staff  \relative f {
  \time 2/2
  \key f \minor
  \clef treble
  \tempo "Andantino"
\times 2/3 { r\( b ( c }
\times 2/3 { des bes f' }
\times 2/3 { e) b( c }
\times 2/3 { des bes f' }
\override TupletBracket #'stencil = ##f
\override TupletNumber #'stencil = ##f
\times 2/3 { e) b( c }
\times 2/3 { des c d }
\times 2/3 { f e f }
\times 2/3 { aes g aes }
f\) )
}