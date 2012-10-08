\version "2.15.32"
\include "indice.ily"
\new Staff \relative f {
  \time 4/4
  \key d \major
  \clef treble
  \tempo "Allegro"
  <d' fis a d>4\arpeggio r \grace g16 fis8 e16 d \grace g16 fis8 e16 d
  a'4 fis b r8 fis
  g8 e a fis d  % aquí corchete suelto recto
}