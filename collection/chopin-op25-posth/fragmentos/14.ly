\version "2.15.30"
\include "indice.ily"
\new Staff  {
  \time 3/4
  \key des \major
  \clef treble
  \tempo "Allegretto"
  \partial 8
  
  <<
    \new Voice \relative f {
      aes'8-. -\markup\italic{dolce}
      bes8-. aes-.  bes-. aes-. bes-. aes-.
      g8-. aes-. g-. aes-. ges-. aes-.
      \voiceTwo
      f8-. -\markup\italic{staccato} aes-. f-. aes-. des,-. ges-.
      c,-. ges'-. c,-. ges'-. c,-. ges'-.
      f-. aes-. f-. aes-. g-. bes-.
    }
    \new Voice \relative f {
      \voiceOne
      s8
      s2. s
      f''4( -\markup\italic{legato} f8 des bes c
      bes8[ \acciaccatura {aes16[ bes]} aes8 g aes bes c]
      es8[ \acciaccatura{des16[ es]} des8 c des f es]
      
      )
    }
  >>
}