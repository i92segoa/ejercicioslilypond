\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key c \major
  \tempo "Fuga a 4."
  << 
    \new Voice { \voiceTwo r8 c' d e f8. g32 f e8 a
                 d,8[ g]\laissezVibrer }
    \new Voice { \voiceOne R1 }

  >>
}