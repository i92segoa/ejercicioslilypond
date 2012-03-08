\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 12/16
  \clef treble
  \key fis \major
  \tempo "Praeludium"
  <<
    \new Voice {
      \voiceOne
      fis'16 ais cis ais fis cis' cis4. \prall \laissezVibrer
    }
    % ligadura larga
    \new Voice {
      \voiceTwo r4. fis,,16 ais cis ais fis dis'
    }
  >>
}