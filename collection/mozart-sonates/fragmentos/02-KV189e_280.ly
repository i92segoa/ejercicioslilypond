\version "2.15.32"
\include "indice.ily"
\new Staff \relative f {
  \time 3/4
  \key f \major
  \clef treble
  \tempo "Allegro assai"
  <c' f a c>4 \arpeggio <a' c> <a c>
  <a c>4. d16 c bes a g f
  f'4 e es
  d4 r r
}