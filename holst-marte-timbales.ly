\version "2.13.18"

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

	gong = { g2.:32 \pp  g2:32 g2.:32 g2:32 g2.:32 g2:32 g2.\< :32 g2\!:32 g2.\>:32 g2:32 \! }

	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

incipitTimpaniGroup = \markup {
	\score{
		 \new PianoStaff << \set PianoStaff.instrumentName= \markup {
				\center-column {"6 Timpani" "(two players)"}
			}
			\new Staff { \set Staff.instrumentName = "I"
				\clef bass
				\time 3/2
				\cadenzaOn g,2 d2 bes,2
			}
			\new Staff { \set Staff.instrumentName = "II"
				\clef bass
				\time 3/2
				\cadenzaOn c2 es2 a,2
			}
		>>

	\layout {
		\context {
			\Staff \remove "Time_signature_engraver"
		}
		line-width=2.5\cm indent=1\cm
		margin-left=0\cm
	} %layout
  } %score
} %markup

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        #(set-global-staff-size 15.5)
	% #(set-default-paper-size "a3")

   \paper {  % ragged-right=##f
   	%	ragged-last-bottom=##f 
	%   page-count=2
	   system-count=1
   	}

   \layout { indent=4\cm
	   \context { \Staff
%               \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
%	       \override instrumentName #'font-size = #8.0
	   }
   }

\header {
	title = \markup { \fontsize #6 { \smallCaps {  "I. Mars, " } "the Bringer of War" } } 
	%	copyright = "Francisco Vila, sobre un trabajo de Guadalupe Cuevas Piñero"
}


\score {
    \new StaffGroup <<   \tempo "Allegro"       % main
	\time 5/4

    \new PianoStaff  <<  %timpani
    	\set PianoStaff.instrumentName =
		\markup {
			\incipitTimpaniGroup 
		}
	    \new Staff  {  \timpaniI }
	    \new Staff  { \timpaniII } >>

    \new RhythmicStaff		%gong
%	\with { \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)}
	{ \set Staff.instrumentName = "Gong"
	\gong }

>> %main
} %score
