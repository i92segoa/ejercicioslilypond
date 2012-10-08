\version "2.15.30"
\include "indice.ily"
\new Staff  {
  \time 4/4
  \key c \minor
  \clef treble
  \tempo "Allegro con fuoco"
  <<
    \new Voice \relative f {
      <b' d f g b>2*1/4 -> \f
      \clef bass
      aes16-> -\markup\italic{legatissimo} ( g
      f16-> d es d b-> g aes g f-> d es d
      %warnings here due to both voiceOne
      b16-> g aes g f-> d es d c-> g c g c-> g c g
      b8-.
      )
    }
    \new Voice \relative f {
      \voiceOne 
      s1
      % Fake notes! actual pitches are aes''8 g''16
      % necessary for f clef
      %but see http://lsr.dsi.unimi.it/LSR/Item?id=326
      s2. c'8.-> bes16
    }
  >>
}