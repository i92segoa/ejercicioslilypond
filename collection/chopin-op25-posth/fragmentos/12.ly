\version "2.15.30"
\include "indice.ily"
\new Staff  \relative f {
  \time 4/4
  \key c \minor
  \clef treble
  \tempo "Molto allegro, con fuoco"
%  \set Timing.baseMoment = #(ly:make-moment 1 4)
%  \set Timing.beatStructure = #'(1 1 1 1)
%  \override TupletBracket #'stencil = ##f
%  \override TupletNumber #'stencil = ##f
\stemUp es16->( \f g es' es
g es' es g
es'-> g, es es
g, es es g,)
d( -> aes' d d
aes' d d aes'
d->  aes d, d
aes d, d aes)
}