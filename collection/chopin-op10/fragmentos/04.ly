\version "2.15.30"
\include "indice.ily"
\new Staff {
  \time 4/4
  \key cis \minor
  \clef treble
  \tempo "Presto"
  \partial 4
  <<
    \new Voice
    \relative f {
      \voiceOne gis''16( fis e dis
            %la ligadura por dentro del staccatissimo

      \oneVoice <cis' cis,>16-\staccatissimo _\fp ) dis,( bis cis
      %la ligadura debe empezar en el do inferior
      dis _\markup{\italic cresc.} e cis dis
      e fis dis e
      fis gis e fis)
      gis_>( a gis cis)
      fis,_>( gis fis cis')
      e,_>( fis e cis')
      dis,_>( e dis cis')
      
    }
    \new Voice {
      \voiceTwo gis'4_\markup{\dynamic f \italic{con fuoco}}
      %esta expresión debería ir más a la izquierda
    }
 
  >>
}