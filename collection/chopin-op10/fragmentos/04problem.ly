\version "2.19.11"

\new Staff {
 \time 2/4
 <<
   \new Voice {
     \relative g'' {
       \voiceOne
       s4 g16( f e d |
       \stemDown
       \once \override Flag.style = #'no-flag
       c'16-!) s16*3
     }
   }
   \new Voice {
     \relative g' {
       \stemDown
       s4 g4 |
       c16( d bis c)
     }
   }
 >>
}
