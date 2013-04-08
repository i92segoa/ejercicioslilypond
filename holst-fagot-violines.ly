\version "2.13.0"

juntaPentagrama = \with { \override VerticalAxisGroup #'next-staff-spacing =
                   #'((space . 6) (padding . 0)) 
		   }


		bassoonsI =  \relative  g, {
			\clef bass
			\oneVoice R1*5/4 R1*5/4
			\voiceOne g2. ^"I II a2" ~ ( \p  g2 ~
			g2. ^\< d'2 ) \!  des2. ^\> ~ des2 \! \laissezVibrer % ~ des
		}

		bassoonsIII =  \relative  d, {
			\clef bass
			s1*5/4 s1*5/4 R1*5/4*2
			%  \once \override Voice.DynamicText #'extra-offset = #'(-2.9 . 2.9 ) 
			\override TextScript #'whiteout = ##t
			\override DynamicText #'whiteout = ##t
			\once \override DynamicText #'X-offset = #-4.5
			\once \override DynamicText #'extra-offset = #'(-0.1 . 2.3 )
			\once \override TextScript #'outside-staff-priority = ##f
			\once \override TextScript #'X-offset = #-4
			des2.
			-"III"
			 \mp
			 \>  ~ des2 \! \laissezVibrer % ~ des
		}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

             doble = \relative  g, { \key c \major
			\clef bass
			R1*5/4 R1*5/4
			g2.\p ~ ( g2 ~ g2. \< d'2 \! ) des2. \> ~ des2 \! \laissezVibrer % ~ des
	     }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	side  = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	cymbals  = { R1*5/4*5 }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	drum  = { R1*5/4*5 }


       violinI = \relative g {
	\once \override DynamicText #'extra-offset = #'(-0.8 . 1 )
	\once \override DynamicText #'X-offset = #-2.5
	\times 2/3 { g8\p ^"col legno" g g }  g4 g g8 g g4
	\times 2/3 { g8 g g } g4 g g8 g g4
	\times 2/3 { g8 g g } g4 g g8 g g4
	\times 2/3 { g8 \< g g } g4 g g8 g g4\!
	\times 2/3 { g8 \> g g } g4 g g8 g g4\! }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	violinII = \relative g {
		\once \override DynamicText #'extra-offset = #'(-0.8 . 1 )
		\once \override DynamicText #'X-offset = #-2.5
		\times 2/3 { g8 \p ^"col legno" g g }  g4 g g8 g g4
		\times 2/3 { g8 g g } g4 g g8 g g4
		\times 2/3 { g8 g g } g4 g g8 g g4
		\times 2/3 { g8 \< g g } g4 g g8 g g4\!
		\times 2/3 { g8 \> g g } g4 g g8 g g4\! }


        #(set-global-staff-size 10.5)  % antes 15.5 para a3
	#(set-default-paper-size "a4") % antes a3

\header {
	title = \markup { \fontsize #6 { \smallCaps {  "I. Mars, " } "the Bringer of War" } }
	tagline=##f
}


\score {

    % main
    \new StaffGroup <<   \tempo "Allegro"
	\time 5/4

    %bassoons
    \new PianoStaff  <<
	\new Staff  \with { instrumentName = "3 Bassoons" } { << \bassoonsI \\ \bassoonsIII >> }
	\new Staff  \with { instrumentName = "Double Bassoon" } { \doble }  >>

    %side drum
    \new RhythmicStaff
         \with { \juntaPentagrama
                 instrumentName = "Side Drum" }
               { \side }

    % cymbals
    \new RhythmicStaff
         \with { \juntaPentagrama
                 instrumentName = "Cymbals" }
	       { \cymbals  }

    %bass drum
    \new RhythmicStaff
         \with { \juntaPentagrama
                 instrumentName = "Bass Drum" }
	{ \drum }


    %violins
    \new PianoStaff  <<
	\new Staff \with { instrumentName = "1st Violins" }
		{ \violinI }
	\new Staff \with { instrumentName = "2nd Violins" }
		{ \violinII } >>

>> %main

   \layout { indent=2.5\cm %era 4 para a3

	      \context { \Score
	      \override StaffSymbol #'thickness = #(magstep -3)

	      }
   }


} %score


\paper { ragged-right=##f
	 page-count=1
	 system-count=1
}
