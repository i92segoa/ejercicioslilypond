\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key f \minor
  \tempo "Praeludium"
  <<
    \new Voice { \voiceOne
                 f'16 aes c f
                 g, f' e g
                 aes, c f e
                 f4 }
    \new Voice { \voiceTwo
                 f,4 g aes f'16 c bes aes }
  >>
}