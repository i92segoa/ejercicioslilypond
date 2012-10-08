\include "indice.ily"
\version "2.15.33"
\new Staff  {
  \time 6/8
  \clef treble
  \key gis \minor
  \tempo "Praeludium"
  <<
    \new Voice \relative f { gis'16 ais b gis ais cis e8 dis cis
                             \voiceTwo b4 ais8\laissezVibrer }
    \new Voice \relative f { s2. \voiceOne s8 gis''4 }
    \new Voice \relative f { s2. \voiceThree b'8 dis[ cis]\laissezVibrer }
  >>
  
}