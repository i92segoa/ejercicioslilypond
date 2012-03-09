\version "2.15.30"
\include "indice.ily"
\new Staff  \relative f {
  \time 6/8
  \key c \major
  \clef treble
  \tempo "Vivace"
  \partial 8
  g'8
  <e g>16(\p \< <e c'> <f aes> <f d'> \! <d f> \> <d b'> \!
  <b d> \< <b g'> <c es> <c a'> <d aes'> <d b'>) \!
  <e! g>16( <e c'> <f aes> <f d'> <d f> <d b'>
  <b d> <b g'> <c es> <c a'> <d aes'> <d b'>)
}