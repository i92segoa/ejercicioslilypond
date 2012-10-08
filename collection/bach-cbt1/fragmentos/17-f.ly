\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key aes \major
  \tempo "Fuga a 4."
  r4 aes8 es' c aes f' des
  es4~ es16 des c des es %Corchete suelto recto
}