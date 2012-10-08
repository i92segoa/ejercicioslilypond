%Coro a 4 voces

\version "2.15.40"

\header { title = "[Título]"
          subtitle = "4 v.m."
          composer = "[Autor]"
}

soprano = \relative f { c'1 }
letraSoprano = \lyricmode { "Ky" }
alto = \relative f { c'1 }
letraAlto = \lyricmode { "Ky" }
tenor = \relative f { c'1 }
letraTenor = \lyricmode { "Ky" }
bajo = \relative f { c'1 }
letraBajo = \lyricmode { "Ky" }

\new ChoirStaff <<
  \new Staff { \soprano }
    \addlyrics { \letraSoprano }
  \new Staff { \alto }
    \addlyrics { \letraAlto }
  \new Staff { \clef "G_8" \tenor }
    \addlyrics { \letraTenor }
  \new Staff { \clef bass \bajo }
    \addlyrics { \letraBajo }
>>