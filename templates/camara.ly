\version "2.15.40"

global = { \key d \major \time 2/4 \tempo "Andantino" \partial 8 }

pequeno = \with {
  fontSize = #-3
  \override StaffSymbol #'staff-space = #(magstep -3)  }

violin = \relative f {
  \global a'8 \pp
  d8.-. ( d16-. fis8-. fis-.) }

viola = \relative f {
  \global \clef alto r8 \pp
  <a fis'>4-.( q8-. q-.) }

cello = \relative f {
  \global \clef bass r8 ^\pp
  d'4-.( d8-. d-.) }

contrabajo = \relative f {
  \global \clef bass r8 \pp
  d4-.( d8-. d-.)
}

pianoManoDerecha = \relative f {
  \global \clef treble r8
  R2 }

pianoManoIzquierda = \relative f {
  \global \clef bass r8
  R2 }

<<
  \new Staff \with { \pequeno }
  {  \violin }
  \new Staff \with { \pequeno }
  { \viola }
  \new Staff \with { \pequeno }
  { << \cello \\ \contrabajo >> }
  \new PianoStaff <<
    \new Staff { \pianoManoDerecha }
    \new Staff { \pianoManoIzquierda }
  >>
>>
