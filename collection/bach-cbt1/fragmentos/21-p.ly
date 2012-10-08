\include "indice.ily"
\version "2.15.33"
\new Staff  \relative f {
  \time 4/4
  \clef treble
  \key bes \major
  \tempo "Praeludium"
  <<
    \new Voice { \voiceOne r32 f' d' f, r f c' f, r f d' f, r a f' a, r d,[ bes' d,] }
    \new Voice { \voiceTwo bes8[ a] bes[ f] g } %corchete recto suelto
  >>
}