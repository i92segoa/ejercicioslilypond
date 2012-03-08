\version "2.15.32"
\include "indice.ily"
\new Staff \relative f {
  \time 6/8
  \key d \major
  \clef treble
  \tempo "Allegro"
  \partial 8
  a8
  d a d fis d fis
  a4 a8 a4 cis16\trill b32 cis
  d8 r e16\trill d32 e fis8 r
}