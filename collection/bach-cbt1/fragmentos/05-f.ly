\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef bass
  \key d \major
  \tempo "Fuga a 4."
  r4 d32 e fis g fis e fis d b'8. b16 a8. g16
  fis4. \laissezVibrer
}