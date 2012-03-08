\include "indice.ily"
\version "2.15.33"
\new Staff {
  \time 4/4
  \clef treble
  \key bes \minor
  \tempo "Praeludium"
  <<
  \new Voice \relative f { \voiceOne r8 bes'16 c <bes des>8 q q <a c>16 <bes des> <c es>8 q
  q4 }
  \new Voice \relative f { \voiceThree s2. s8 a'! }
  \new Voice \relative f { \new CueVoice { \voiceTwo <bes des>8 }
                           \voiceTwo r8 r f' ges4 r8 <c, ges'>
                           <des f>4 }
  >>
}