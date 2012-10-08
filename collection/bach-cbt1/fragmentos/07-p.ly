\include "indice.ily"
\version "2.15.33"
\new Staff \relative f {
  \time 4/4
  \clef treble
  \key es \major
  \tempo "Praeludium"
  <<
    \new Voice { \oneVoice r16 g' aes bes aes g f es~
                 \voiceTwo es2 \laissezVibrer }
    \new Voice { s2 \voiceOne des'2 \laissezVibrer }
    \new Voice { s2 \voiceTwo r16 g, aes bes aes g f es }
  >>
  %queremos ligaduras largas y el silencio en medio
}