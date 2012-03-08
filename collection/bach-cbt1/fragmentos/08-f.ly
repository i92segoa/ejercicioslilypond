\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key es \minor
  \tempo "Fuga a 3."
  <<
    \new Voice {
      \voiceOne  R1*2 }
    \new Voice {
      \voiceTwo
      es'4 bes'4. ces8 bes aes
      ges8 aes bes4 es,4 aes\laissezVibrer
    }
  >>
}