\version "2.15.30"
\include "indice.ily"
\new Staff {
  \time 2/4
  \key e \major
  \clef treble
  \tempo "Lento, ma non troppo"
  \partial 8
  <<
    \new Voice
    \relative f {
      \voiceOne b8( \p -\markup{\italic{legato}}
      % El regulador por dentro de la ligadura
      e8^\< dis16 e\! fis4) ~
      % Los reguladores deben ir por dentro de la ligadura
      fis16[ ^\< ( gis] \! gis[ ^\> fis] ) \! gis4-> ~
      gis16[ ^\< ( a] \! a[ ^\> gis] ) \!cis8.->( b16
      a16 gis dis e)
    }
    \new Voice
    \relative f {
      \voiceTwo s8
      gis16 b gis b a b a b
      a16 b a b gis b gis b
      gis e' b e dis\> a' b, dis\!
      b\> e gis, b\!
    }
    \new Voice
    \relative f {
      \voiceThree s8
      \autoBeamOff
      % Esta negra en otra voz para poder ligarla con la corchea
      s4 dis'4~
      dis8 dis
      %esta negra en otra voz para poder ligar una negra del acorde
      e4
    }
  >>
}