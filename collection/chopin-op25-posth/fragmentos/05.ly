\version "2.15.30"
\include "indice.ily"
\new Staff \relative f {
  \time 3/4
  \key e \minor
  \clef treble
  \tempo "Vivace"
  \partial 4
  b'4
  <dis, b'>16( 
  ^\markup\italic{leggiero}
  _\markup\italic{scherzando}
  e8.) <fis e'>16( g8.) <ais g'>16( b8.)
  <b g'>16( a!8.) <gis fis'>16( a8.) <c a'>16( b8.)
  <b g'>16( a8.) <gis fis'>16( a8.) <b g'>16( a8.)
  
}