\header{ title = "The title"            % (1)
         composer = "J. S. Bach" }
\language "deutsch"                     % (2)
music = \relative f { b'1 a c h! }      % (3)
\new Staff { \music }                   % (4)
\addlyrics { B A C H }                  % (5)