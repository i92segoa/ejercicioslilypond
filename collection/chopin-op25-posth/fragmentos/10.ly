\version "2.15.30"
\include "indice.ily"
\new Staff  \relative f {
  \time 2/2
  \key b \minor
  \clef treble
  \tempo "Allegro con fuoco"
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \times 2/3 { <fis fis'>8 (  <eis eis'> <fis fis'> }
  \textSpannerDown
  \override TextSpanner #'(bound-details left text) = "poco a poco cresc."
  
\times 2/3 { <g g'> \startTextSpan <gis gis'> <a a'> }
  \override TupletBracket #'stencil = ##f
  \override TupletNumber #'stencil = ##f
\times 2/3 { <gis gis'> <fisis fisis'> <gis gis'> }
\times 2/3 { <a a'> <ais ais'> <b b'> }
\times 2/3 { <ais ais'> <gisis gisis'> <ais ais'> }
\times 2/3 { <b b'> <bis bis'> <cis cis'> }
\times 2/3 { <bis bis'> <aisis aisis'> <bis bis'> }
\times 2/3 { <cis cis'> <d d'> <dis dis'> }
\times 2/3 { <cis cis'> <dis dis'> <e e'>-> }
\times 2/3 { <dis dis'> <e e'> <f f'>-> }
\times 2/3 { <e e'> <eis eis'> <fis fis'>-> }
\times 2/3 { <eis eis'> <fis fis'> <g g'>->) \stopTextSpan }


}