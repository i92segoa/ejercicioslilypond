\version "2.15.30"
\include "indice.ily"
\new Staff {
  \time 3/4
  \key f \major
  \clef treble
  \tempo "Allegro"
  \partial 4
  <<
    \new Voice
    \relative f {
      c''4 -\markup{\italic leggiero}
      \voiceOne d16( c8. g16( f8. d'16( c8.
      d16( c8. a16( g8. d'16( c8.
      d16( c8. d16( c8. a'16( g8.
    }
    \new Voice
    \relative f { 
      s4
      \voiceTwo
      %needs 2.15.34
      \set Timing.beamWholeMeasure = ##f
      f'8 f') c, c') f, f')
      g,8 g') c,, c') g g')
      a,8 a') f, f') d d')
    }
  >>
}
\layout {
  \context {
    % Thanks to Xavier Scheuer for this idea
    % It allows slurs between voices
    \Voice
    \remove "Slur_engraver"
    \remove "Slur_performer"
  }
  \context {
    \Staff
    \consists "Slur_engraver"
    \consists "Slur_performer"
  }
}