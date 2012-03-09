\version "2.15.30"
\include "indice.ily"
\new Staff \relative f {
  \time 3/4
  \key es \major
  \clef treble
  \tempo "Allegretto"
  \partial 8
  bes''8(
  <bes, g' es'>8 -\staccatissimo \sf\arpeggio )
  <bes g' bes>\arpeggio \< (
  <bes g' a>\arpeggio
  <bes g' bes>\arpeggio \>
  <bes g' c>\arpeggio
  <bes g' bes>\arpeggio \!
  <bes aes'! f'>-.\arpeggio )
  <bes aes' bes>\arpeggio (
  %Double stem here!
  <bes aes' a>\arpeggio \<
  <bes aes' bes>\arpeggio \!
  <bes aes' c>\arpeggio \>
  <bes aes' bes>\arpeggio \!
  <bes g' bes g'>-.\arpeggio )
  <bes d bes' d>\arpeggio (
  <bes es bes' es>\arpeggio
  <b es d'>\arpeggio -\markup\italic{cresc.}
  <c es c'>\arpeggio
  <c f f'>\arpeggio
  <bes! g' es'>\arpeggio )
  
}