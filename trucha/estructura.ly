violin = { c' }
viola = { c' }
cello = { c' }
contrabajo = { c' }
pianoManoDerecha = { c' }
pianoManoIzquierda = { c' }


\include "violin.ly"
\include "viola.ly"
\include "cello.ly"
\include "contrabajo.ly"
\include "piano.ly"

<<
  \new Staff \with {
  fontSize = #-3 
  \override StaffSymbol #'staff-space = #(magstep -3)
} { \violin }
  \new Staff \with {
  fontSize = #-3 
  \override StaffSymbol #'staff-space = #(magstep -3)
}{ \viola }
  \new Staff \with {
  fontSize = #-3 
  \override StaffSymbol #'staff-space = #(magstep -3)
}{ << \cello \\ \contrabajo >> }
  \new PianoStaff <<
    \new Staff { \pianoManoDerecha }
    \new Staff { \pianoManoIzquierda }
  >>
>>
