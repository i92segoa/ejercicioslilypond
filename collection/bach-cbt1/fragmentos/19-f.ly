\include "indice.ily"
\version "2.15.33"
\new Staff  \relative f {
  \time 9/8
  \clef treble
  \key a \major
  \tempo "Fuga a 3."
  << \new Voice { \voiceOne a'8 r r r gis cis a d b
                  e cis fis e a d,
     }
     \new Voice { \voiceTwo R2.*3/2 e,8 r r r cis fis
     }
  >>
}