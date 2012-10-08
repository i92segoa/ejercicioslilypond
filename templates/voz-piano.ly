\version "2.15.40"

voz = \relative f { c' }
letra = \lyricmode { Aaah }
mD = \relative f { c' }
mI = \relative f { c' }

<<
  \new Staff { \voz } \addlyrics { \letra }
  \new PianoStaff <<
    \new Staff { \mD }
    \new Staff { \clef bass \mI }
  >>
>>