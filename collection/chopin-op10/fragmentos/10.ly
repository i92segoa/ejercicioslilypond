\version "2.15.30"
\include "indice.ily"
\new Staff \relative f {
  \time 12/8
  \key aes \major
  \clef treble
  \tempo "Vivace assai"
  \partial 8
  %need to tweak the slur shape
   es'8\(
   % accents should go inside slur
   aes8 \f\< <c aes'>->( bes)
   <des bes'>8->( b) <d b'>->(
   c) <es c'>->( cis)
   <e cis'>->( d) <f d'>-> \! (
   es!) <g es'>-> \> ( f)
   <aes f'>->( es)\! <g es'>->(
   c,!) <es c'>-> \< ( bes!)
   <des! bes'>->( c\! ) <es c'>->
   bes8
   
   \)
   
}