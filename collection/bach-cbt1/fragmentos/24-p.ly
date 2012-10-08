\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key b \minor
  \tempo "Praeludium"
  <<
    \new Voice { \voiceOne r2 cis''4 fis~
                 fis4 e d2\laissezVibrer }
    \new Voice { \voiceTwo fis,4 b2 a4
                 gis4 cis2 b4 }
  >>
}