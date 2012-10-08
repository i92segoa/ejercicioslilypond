\version "2.15.30"
\include "indice.ily"
\new Staff  \relative f {
  \time 4/4
  \key f \major
  \clef treble
  \tempo "Allegro"
  \partial 4
  \afterGrace c'''\trill ( { b16[ c] }
  a'16 -> _\markup\italic{ veloce } g f c a-> g f c a-> g f c \clef bass a-> g f c)
  % all accents should go inside slur
  f16 -> ( g a c \clef treble f-> g a c f-> g a c f-> g a g)
}