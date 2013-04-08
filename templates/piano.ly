\version "2.15.40"

mD = \relative f { c' }
mI = \relative f { c' }

\new PianoStaff <<
  \new Staff { \mD }
  \new Staff { \clef bass \mI }
>>