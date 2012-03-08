\include "indice.ily"
\version "2.15.33"
\new Staff {
  \time 2/2
  \clef treble
  \key bes \minor
  \tempo "Fuga a 5."
  <<
  \new Voice \relative f { \voiceOne bes'2 f
                           r4 ges' f es
                           des4 c des es
                           f4 }
  \new Voice \relative f { \voiceTwo R1*2 f'2 bes, r4 }
  >>
}