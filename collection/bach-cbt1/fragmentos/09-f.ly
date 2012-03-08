\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key e \major
  \tempo "Fuga a 3."
 <<
   \new Voice { \voiceOne R1 r4 r8 b'(cis4*1/4 ) }
\new Voice { \voiceTwo r4 r8 e,8( fis4) r16 b, cis dis 
e16 dis e fis gis a b gis e[ r] }
% ocultar este silencio o poner corchete recto suelto
 >>
}