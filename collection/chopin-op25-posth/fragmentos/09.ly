\version "2.15.30"
\include "indice.ily"
\new Staff  \relative f {
  \time 2/4
  \key ges \major
  \clef treble
  \tempo "Allegro assai"
  <<
  \new Voice { \voiceTwo
bes'16 _> ^(
-\markup\italic{leggiero}
<ges' bes> <aes, ces'>)^ . <a c'>^.
des _> ^(<aes' des> <es es'>)^ . <des des'>^.
ges, _> ^(<es' ges> <aes, aes'>)^ . <a a'>^.
bes _> ^(<f' bes> <ces ces'>)^ . <bes bes'>^.
es, _> ^(<ces' es> <e, e'>)^ . <f f'>^.
ges _> ^(<des' ges> <f, f'>)^ . <ges ges'>^.
aes _> ^(<es' aes> <bes bes'>)^ . <aes aes'>^.
  }
\new Voice { \voiceOne
bes8 s
des8 s
ges,8 s
bes8 s
es,8 s
ges8 s
aes8
}
  >>
}