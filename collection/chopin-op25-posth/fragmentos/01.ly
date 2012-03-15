\version "2.15.30"
\include "indice.ily"
fP = { \override NoteHead #'font-size = #-2 }
fG = { \once \override NoteHead #'font-size = #0 }
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key aes \major
  \tempo "Allegro sostenuto"
  \partial 4
  \stemDown
  es''4(
  \times 2/3 { es16 \< \fP aes, c }
  \times 2/3 { es,16 aes c }
  \override TupletBracket #'stencil = ##f
  \override TupletNumber #'stencil = ##f
  \times 2/3 { \fG es16 aes, c }
  \times 2/3 { es,16 aes c }
  \times 2/3 { \fG es16 aes, c }
  \times 2/3 { es,16 aes c }
  \times 2/3 { \fG es16 aes, c }
  \times 2/3 { es,16 aes c }

  \times 2/3 { \fG f16 \> aes, c }
  \times 2/3 { es,16 aes c }
  \times 2/3 { \fG es16 aes, c }
  \times 2/3 { es,16 aes c }
  \times 2/3 { \fG es16 aes, c }
  \times 2/3 { es,16 aes c }
  \times 2/3 { \fG es16 aes, c }
  \times 2/3 { es,16 aes c) \!}
  
}