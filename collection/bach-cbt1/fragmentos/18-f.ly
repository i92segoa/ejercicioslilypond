\include "indice.ily"
\version "2.15.33"
\new Staff  \relative f {
  \time 4/4
  \clef bass
  \key gis \minor
  \tempo "Fuga a 4."
  \accidentalStyle "no-reset"
  r4 gis4 fisis8 gis16 ais b8 ais
  gis8 cisis dis fis, gis %corchete suelto recto
}