\include "indice.ily"
\version "2.15.33"
\new Staff {
  \time 3/4
  \clef treble
  \key aes \major
  \tempo "Praeludium"
  <<
    \new Voice \relative f { \voiceOne r8 aes'16 g aes8 c es, aes
    r8 bes16 aes bes8 des es, bes'
    c4 }
    \new CueVoice \relative f { \voiceTwo <aes c ees>4 }
  >>
}