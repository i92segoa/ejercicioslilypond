\version "2.13.0"
               piccolo = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

               flute = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

               oboe =  { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

               horn =  { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

              bassoboe = { \time 5/4
                         \key c \major
		R1*5/4*4
		des'2.~ \mp \> des'2 \! \laissezVibrer % antes ~ \break
		% des'
	      }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

             clarinetes = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

             bassclarinet = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

		bassoonsI =  \relative  g, {
			\clef bass
			\oneVoice R1*5/4 R1*5/4
			\voiceOne g2. ^"I II a2" ~ ( \p  g2 ~
			g2. ^\< d'2 ) \!  des2. ^\> ~ des2 \! \laissezVibrer % ~ des
		}

		bassoonsIII =  \relative  d, {
			\clef bass
			s1*5/4 s1*5/4 R1*5/4
			<< R1*5/4 { s1 s8 s8_"III" \mp } >> des2. \>  ~ des2 \! \laissezVibrer % ~ des
		}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

             doble = \relative  g, { \key c \major
			\clef bass
			R1*5/4 R1*5/4
			g2.\p ~ ( g2 ~ g2. \< d'2 \! ) des2. \> ~ des2 \! \laissezVibrer % ~ des
	     }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

             hornsI = { R1*5/4*5 }

            hornsIV = \relative d { \key c \major
		    R1*5/4 R1*5/4
		    \clef bass d2. \p ^"V VI a2" ~ ( d2 ~ d2. \< a'2 \! ) aes2. \> ~ aes2 \! \laissezVibrer % ~ aes
	    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

              trompetaI = { R1*5/4*5 }

	      trompetaIII = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

              tenor = { \clef tenor
			 R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

             bass = { \clef bass
			R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

             tuba = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

            basstuba = { \clef bass
			R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

           timpaniI = \relative g, { \clef bass
                         \key c \major
   \times 2/3 { g8\p ^\markup { "wooden sticks" } g g }  g4 g g8 g g4
   \times 2/3 { g8 g g } g4 g g8 g g4
   \times 2/3 { g8 g g } g4 g g8 g g4
   \times 2/3 { g8 \< g g } g4 g g8 g g4\!
   \times 2/3 { g8 \> g g } g4 g g8 g g4\! }

           timpaniII = { \clef bass
                         \key c \major
	   R1*5/4 R1*5/4 R1*5/4 R1*5/4 R1*5/4 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	side  = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	cymbals  = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	drum  = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	gong = { g2.:32 \pp  g2:32 g2.:32 g2:32 g2.:32 g2:32 g2.\< :32 g2\!:32 g2.\>:32 g2:32 \! }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

         arpa  = { R1*5/4*5 }
         arpaI = \relative g, { \clef bass
   \times 2/3 { g8 g, g' } g,4 g' g,8 g' g,4
   \times 2/3 { g'8 g, g' } g,4 g' g,8 g' g,4
   \times 2/3 { g'8 g, g' } g,4 g' g,8 g' g,4
   \times 2/3 { g'8^\< g, g' } g,4 g' g,8 g' g,4 \!
   \times 2/3 { g'8^\> g, g' } g,4 g' g,8 g' g,4 \! }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        arpaII  = { R1*5/4*5 }
        arpaIII = \relative g, { \clef bass
	\times 2/3 { g,8 g' g, } g'4 g, g'8 g, g'4
	\times 2/3 { g,8 g' g, } g'4 g, g'8 g, g'4
	\times 2/3 { g,8 g' g, } g'4 g, g'8 g, g'4
	\times 2/3 { g,8^\< g' g, } g'4 g, g'8 g, g'4 \!
	\times 2/3 { g,8^\> g' g, } g'4 g, g'8 g, g'4 \! }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        organ  = { R1*5/4*5 }
        organII = { \clef bass R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

       violinI = \relative g {
	\times 2/3 { g8\p ^\markup { "col legno" } g g }  g4 g g8 g g4
	\times 2/3 { g8 g g } g4 g g8 g g4
	\times 2/3 { g8 g g } g4 g g8 g g4
	\times 2/3 { g8 \< g g } g4 g g8 g g4\!
	\times 2/3 { g8 \> g g } g4 g g8 g g4\! }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	violinII = \relative g {
		\times 2/3 { g8\p ^\markup { "col legno" } g g }  g4 g g8 g g4
		\times 2/3 { g8 g g } g4 g g8 g g4
		\times 2/3 { g8 g g } g4 g g8 g g4
		\times 2/3 { g8 \< g g } g4 g g8 g g4\!
		\times 2/3 { g8 \> g g } g4 g g8 g g4\! }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	viola = \relative g { \clef alto
	\times 2/3 { g8\p ^"col legno" g g }  g4 g g8 g g4
	\times 2/3 { g8 g g } g4 g g8 g g4
	\times 2/3 { g8 g g } g4 g g8 g g4
	\times 2/3 { g8 \< g g } g4 g g8 g g4\!
	\times 2/3 { g8 \> g g } g4 g g8 g g4\! }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

       violonchelo = \relative g, { \clef bass
	\times 2/3 { g8\p ^"col legno" g g }  g4 g g8 g g4
	\times 2/3 { g8 g g } g4 g g8 g g4
	\times 2/3 { g8 g g } g4 g g8 g g4
	\times 2/3 { g8 \< g g } g4 g g8 g g4\!
	\times 2/3 { g8 \> g g } g4 g g8 g g4\! }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

       base = \relative g, { \clef bass
	\times 2/3 { g8\p ^"col legno" g g }  g4 g g8 g g4
	\times 2/3 { g8 g g } g4 g g8 g g4
	\times 2/3 { g8 g g } g4 g g8 g g4
	\times 2/3 { g8 \< g g } g4 g g8 g g4\!
	\times 2/3 { g8 \> g g } g4 g g8 g g4\! }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


incipitTimpaniGroup = \markup {
	\score{
		 \new PianoStaff << \set PianoStaff.instrumentName= \markup {
				\center-column {"6 Timpani" "(two players)"}
			}
			\new Staff { \set Staff.instrumentName = "I"
				\clef bass
				\time 3/2
				\cadenzaOn s4 g,2 d2 bes,2
			}
			\new Staff { \set Staff.instrumentName = "II"
				\clef bass
				\time 3/2
				\cadenzaOn s4 c2 es2 a,2
			}
		>>

	\layout {
		\context { \Staff
			\remove "Time_signature_engraver"
			\remove "Clef_engraver"
		}
		line-width=2.5\cm indent=1\cm
		margin-left=0\cm
	} %layout
  } %score
} %markup

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        #(set-global-staff-size 10.5)  % antes 15.5 para a3
	#(set-default-paper-size "a4") % antes a3

\header {
	title = \markup { \fontsize #6 { \smallCaps {  "I. Mars, " } "the Bringer of War" } }
	%	copyright = "Francisco Vila, sobre un trabajo de Guadalupe Cuevas Piñero"
	tagline=##f
}


\score {

    % main
    \new StaffGroup <<   \tempo "Allegro"
	\time 5/4

    % piccolos, flutes
    \new PianoStaff <<
	\new Staff  \with { instrumentName = "2 Piccolos" } { \piccolo }
	\new Staff  \with { instrumentName = "2 Flutes"   } { \flute } >>

    % oboes
    \new PianoStaff  <<
	\new Staff  \with { instrumentName = "2 Oboes" } { \oboe }
	\new Staff  \with { instrumentName = "English Horn" } { \horn }
	\new Staff  \with { instrumentName = "Bass Oboe" }  { \bassoboe } >>

    %clarinets
    \new PianoStaff  <<
	\new Staff  \with { instrumentName = \markup { \line { "3 Clarinets in B" \smaller \flat } } }
                    { \clarinetes }
	\new Staff  \with { instrumentName = \markup { \line { "Bass Clarinet in B" \small \flat } } }
                    { \bassclarinet } >>

    %bassoons
    \new PianoStaff  <<
	\new Staff  \with { instrumentName = "3 Bassoons" } { << \bassoonsI \\ \bassoonsIII >> }
	\new Staff  \with { instrumentName = "Double Bassoon" } { \doble }  >>

    %horns
    \new PianoStaff  \with { instrumentName = "6 Horns in F" } <<
	\new Staff  \with { instrumentName = "I II III" } { \hornsI }
	\new Staff  \with { instrumentName = "IV V VI" } { \hornsIV } >>

    %trumpets
    \new PianoStaff \with { instrumentName = "4 Trumpets in C" } <<
	\new Staff  \with { instrumentName = "I II" }   { \trompetaI }
	\new Staff  \with { instrumentName = "III IV" } { \trompetaIII } >>

    %trombones
    \new PianoStaff  <<
	\new Staff  \with { instrumentName = "2 Tenor Trombones" } { \tenor }
	\new Staff  \with { instrumentName = "Bass Trombone" } { \bass } >>

    %tubas
    \new PianoStaff  <<
    	\new Staff  \with { instrumentName = \markup { \line { "Tenor Tuba in B" \smaller \flat } } }
          { \tuba }
	\new Staff  \with { instrumentName = "Bass Tuba" }
          { \basstuba } >>

    %timpani
    \new PianoStaff \with { systemStartDelimiter=#'SystemStartBar
    	 	    	    instrumentName = \markup { \incipitTimpaniGroup } } <<
                    \new Staff  { \timpaniI }
	            \new Staff  { \timpaniII } >>

    %side drum
    \new RhythmicStaff
         \with { \override VerticalAxisGroup #'next-staff-spacing =
                   #'((space . 6) (padding . 0))
                 instrumentName = "Side Drum" }
               { \side }

    % cymbals
    \new RhythmicStaff
         \with { \override VerticalAxisGroup #'next-staff-spacing =
                   #'((space . 6) (padding . 0))
                 instrumentName = "Cymbals" }
	       { \cymbals  }

    %bass drum
    \new RhythmicStaff
         \with { \override VerticalAxisGroup #'next-staff-spacing =
                   #'((space . 6) (padding . 0))
                 instrumentName = "Bass Drum" }
	{ \drum }

    %gong
    \new RhythmicStaff \with {
      \override VerticalAxisGroup #'next-staff-spacing =
        #'((space . 6) (padding . 0))
      instrumentName = "Gong" }
    { \gong }

    %harp 1
    \new PianoStaff  \with { instrumentName = "Harp I" }
    <<
	    \new Staff  { \arpa }
	    \new Staff  { \arpaI } >>

    %harp 2
    \new PianoStaff  \with { instrumentName = "Harp II" } <<
	    \new Staff  {  \arpaII }
	    \new Staff  { \arpaIII } >>

    %organ
    \new PianoStaff \with { instrumentName = "Organ" } <<
	    \new Staff  { \organ }
	    \new Staff  { \organII }  >>

    %violins
    \new PianoStaff  <<
	\new Staff \with { instrumentName = "1st Violins" }
		{ \violinI }
	\new Staff \with { instrumentName = "2nd Violins" }
		{ \violinII } >>

    %violas
    \new Staff  \with { instrumentName = "Violas" }
		{ \viola }

    %cellos&basses
    \new PianoStaff  <<
	    \new Staff \with { instrumentName = "Violoncellos" }
		{ \violonchelo }
	    \new Staff \with { instrumentName = "Doublebasses" }
		{ \base } >>
>> %main

   \layout { indent=2.5\cm %era 4 para a3
	   \context { \Staff
%               \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
%	       \override instrumentName #'font-size = #8.0
	    %  \override InstrumentName #'padding = #-4
	   }
	      \context { \Score
%               \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
%	       \override instrumentName #'font-size = #8.0
	      \override InstrumentName #'padding = #-2 %-2 para a3
	      \override StaffSymbol #'thickness = #(magstep -3)

	      }
   }


} %score


\paper { ragged-right=##f
         ragged-last-bottom=##f
	 page-count=1
	 system-count=1
}
