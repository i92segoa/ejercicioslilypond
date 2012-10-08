\version "2.15.30"
\include "indice.ily"
\new Staff {
  \time 4/4
    <<
    \new Voice
    \relative f {
       %     \once \override Flag #'style = #'no-flag
      \voiceOne%\oneVoice 
      %\stemDown
      c''' %-\staccatissimo %) cis,( >16-\staccatissimo _\fp ) dis, bis cis
      %la ligadura debe empezar en el do inferior
      
      
    }
    \new Voice \relative f {
      c''16 ( _\fp  dis bis cis
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
