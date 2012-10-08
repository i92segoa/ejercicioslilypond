\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key c \major
  \tempo "Praeludium"
  << 
    \new Voice { \voiceTwo c'2 c }
    \new Voice { \voiceTwo a'16\rest e8.~e4 a16\rest e8.~e4 }
    \new Voice { \voiceOne r8 g16 c e g, c e r8 g,16 c e g, c e }
  >>
}