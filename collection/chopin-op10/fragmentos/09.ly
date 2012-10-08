\version "2.15.30"
\include "indice.ily"
\new Staff {
  \time 6/8
  \key f \minor
  \clef treble
  \tempo "Allegro, molto agitato"
  <<
    \new Voice \relative f {
      \voiceOne
      \ottava #0
      % fake octave! due to simultaneous 8vb cue
      % a fix does exist. See cues in their octave LSR? snippet
      r8 _\markup\italic{legatissimo} f-.( g-.)
      r8 aes'-.( bes-.)
      \oneVoice 
      r8 _\markup\italic{cresc.} c-.( des-. \< c-. aes'-. g-. \!
      f-. _\markup\italic{con forza} c-. des-. c-. aes-. f-.
      c2.^^ )\sf
    }
    \new CueVoice \relative f {
      \voiceTwo
      \ottava #-1 %affects also to voice One :-(
      f,16 \p c' aes' c, bes' c,
      \ottava #0
    }
  >>
}