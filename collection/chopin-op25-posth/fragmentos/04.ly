\version "2.15.30"
\include "indice.ily"
\new Staff {
  \time 4/4
  \key a \minor
  \clef treble
  \tempo "Agitato"
  \partial 4
  <<
    \new Voice
    \relative f {
      \voiceOne \stemDown r4
      r8 <e' a e'>-| \p r <a e' a>-| r <a d a'>-| r <gis e' gis>-| 
      r8 <a e'>-| r <c e c'>-| \< r <c f c'>-| r <b f' b>-|       
      r8 <a f' a>-| r <e' a e'>-| r <d a' d>-| \! r <e gis e'>-|       
    }
    \new CueVoice \relative f {
      \voiceTwo e'4 ->(
      a,8) s c s b s e s
      c8 s a s
    }
    
  >>
}