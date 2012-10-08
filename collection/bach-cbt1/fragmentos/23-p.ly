\include "indice.ily"
\version "2.15.33"
\new Staff {
  \time 4/4
  \clef treble
  \key b \major
  \tempo "Praeludium"
  <<
    \new Voice \relative f { \voiceOne r16 b' ais b cis ais b cis r dis cis dis e cis dis e
    } 
    \new Voice \relative f { \voiceTwo dis'4 e fis gis }
    \new Voice { \voiceThree b1 }
  >>
}