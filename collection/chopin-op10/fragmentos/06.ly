\version "2.15.30"
\include "indice.ily"
\new Staff  {
  \time 6/8
  \key es \minor
  \clef treble
  \tempo "Andante"
  \partial 8
  <<
    \new Voice \relative f { \voiceOne ges'8\p ^\markup\italic{con molta expressione}
                             ges4.~
                             _\markup\italic{sempre legatissimo}
                             ges4^\< f16 es _~ \!
                             \voiceTwo es2~ es8. f16~
                             f2.
                             fes2~fes8.es16}
    \new Voice \relative f { \voiceOne s8
    s2.
    bes'4. ^\> aes \!
    ces4.~ ^\> ces4 \! bes16 f
    bes2.
    }
    \new CueVoice \relative f { \voiceTwo s8 bes16
                                
                                c a c bes ges }
  >>
}