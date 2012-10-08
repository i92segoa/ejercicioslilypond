\include "indice.ily"
\version "2.15.33"
\new Staff  \relative f {
  \time 4/4
  \clef treble
  \key a \major
  \tempo "Praeludium"
  << \new Voice { \voiceOne a'16 b cis a fis'8 fis fis16 dis e8 r16 e fis g
     a16 %corchete recto
     }
     \new Voice { \voiceTwo r2 r4 r8 e,~
                  e8 %corchete recto
     }
  >>
}