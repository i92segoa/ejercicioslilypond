\version "2.15.30"
\include "indice.ily"
\new Staff {
  \time 4/4
  \clef bass
  \tempo "Allegro"
  <<
    \new Voice \relative f { \voiceOne r16 c g' c
    \clef treble \oneVoice e-> c g' c e-> c g' c \ottava #1 e-> c g' c
    e-> c g c, \ottava #0 e-> c g c, e-> c g c, e-> c g c, }
    \new Voice { \voiceTwo <c c,>1\f ^\markup{\italic legato}}
  >>
}