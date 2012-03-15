\version "2.15.30"
\include "indice.ily"
\new Staff  {
  %\time 4/4
  %\override Staff.TimeSignature #'Stencil = ##f
  \key cis \minor
  \clef bass
  \tempo "Lento"
  \cadenzaOn
  \new CueVoice \relative f {
    gis,4( \p \< dis'4. cis8 \> cis[ bis]\!
    a'4.
    gis8 \> fisis16[ gis a gis] b[ a e eis] fis[ eis gis fis]
    a[ gis cis, \! dis] \bar "||" 
    \time 3/4
    \cadenzaOff 
    \clef treble
    \override Flag  #'stroke-style = #"grace"
    \grace e8) 
    
  }
  
  << 
     \new Voice \relative f { s2. \voiceOne e''2( dis8.[ cis16] ) }
     \new Voice \relative f { \voiceOne r8 ^\pp <gis' cis>[ q q q q]
     \voiceTwo <e a>[ q q q q q] }
     \new Voice \relative f { \voiceTwo 
                              e'2(  dis8.[  cis16]
                               \voiceThree 
                               % should be stemDown
                               cis4) }
  >>
  
}