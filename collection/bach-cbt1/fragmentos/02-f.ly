\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key c \minor
  \tempo "Fuga a 3."
  \stemDown
  r8 c''16 b c8 g aes c16 b c8 d
  g,8 c16 b c8 d
}