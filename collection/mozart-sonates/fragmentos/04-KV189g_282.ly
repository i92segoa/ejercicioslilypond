\version "2.15.32"
\include "indice.ily"
\new Staff \relative f {
  \time 4/4
  \key es \major
  \clef treble
  \tempo "Adagio"
  bes'8. c16 bes4~ bes8 bes es es
  \grace es16 d8 c16 bes bes4 d16 c c4 f16 d
  c16 bes bes4
}