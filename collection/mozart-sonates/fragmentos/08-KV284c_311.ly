\version "2.15.32"
\include "indice.ily"
\new Staff \relative f {
  \time 4/4
  \key d \major
  \clef treble
  \tempo "Allegro con spirito"
  <fis' a d>4\arpeggio r \grace g'16 fis8 e16 fis \grace a16 g8 fis16 g
  a4 r a8 b cis d
  a4 fis \grace a16 g8 fis16 g a8 g
  \grace eis16 fis4
}