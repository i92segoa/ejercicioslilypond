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
      \voiceOne
      gis''16( fis e dis
      % Thanks to Xavier Scheuer for this trick
      \once \override Flag #'style = #'no-flag
      \stemDown
      %la ligadura por dentro del staccatissimo
      % warning here
      cis'-\staccatissimo )
    }
    \new Voice \relative f {
      \voiceTwo
      \slurUp
      gis'4_\markup{\dynamic f \italic{con fuoco}}
      cis16 ^( _\fp  dis bis cis
      %esta expresión debería ir más a la izquierda
      dis _\markup{\italic cresc.} e cis dis
      e fis dis e
      fis gis e fis)
      gis_>( a gis cis)
      fis,_>( gis fis cis')
      e,_>( fis e cis')
      dis,_>( e dis cis')
    }
  >>
}
