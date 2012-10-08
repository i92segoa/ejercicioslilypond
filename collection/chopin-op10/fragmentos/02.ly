\version "2.15.30"
\include "indice.ily"
\new Staff {
  \time 4/4
  \clef treble
  \tempo "Allegro"
  <<
    \new Voice
    \relative f {
      \voiceOne a'16 -\markup{\italic{ sempre legato}}
      ais b c
      cis d dis e
      f fis g gis
      a ais b c
      cis d dis e
      f e dis d
      cis c b bes
      a gis b a
    }
    \new Voice
    \relative f {
      \voiceTwo <c' e>16\p s8.
      <e a>16 s8.
      <a d>16 s8. -\markup{\italic cresc.}
      <d f>16 s8.
      <e a!>16 s8.
      <a c>16 s8.
      <e a>16 s8.
      <c! e>16 s8.
    }
  >>
}