\version "2.15.32"
\include "indice.ily"
\new Staff \relative f {
  \time 4/4
  \key c \major
  \clef treble
  \tempo "Allegro con spirito"
  \grace { c'32[ e g] } c2 g
  e'4. f16 d c4 r
  g'4 g r a
  \grace g16 f4 f r
}