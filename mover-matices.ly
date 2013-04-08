%#(set-global-staff-size 13)
\new PianoStaff <<\new Staff 
\with {
	 % \override VerticalAxisGroup #'next-staff-spacing = #'((space . 0) (padding . -4))
}
	{ 
	\voiceTwo c'1 
	\override TextScript #'whiteout = ##t
	\override DynamicText #'whiteout = ##t
	
	\once \override TextScript #'outside-staff-priority = ##f
	\once \override TextScript #'X-offset = #-4

	\once \override DynamicText #'X-offset = #-4.5
	\once \override DynamicText #'extra-offset = #'(0 . 1.4 )
	 c'2  
	\mf

	-"III"
	\>
	c'2 
	c'
	% -"III"
	c' c'  \!
}

\new Staff { c'1 c' c' c'  }
>>


<< \new Staff 
\with {
	\override VerticalAxisGroup #'next-staff-spacing = #'((padding . -2))
}	{
	\once \override DynamicText #'extra-offset = #'(-2.8 . 1.8 )
	g1 
	^"col legno. Moviendo el siguiente pentagrama"
	\p
}
   \new Staff { c'1 
   ^"col legno"
   }
>>


<< \new Staff 
\with {
	%\override VerticalAxisGroup #'next-staff-spacing = #'((padding . -2))
}	{
	\once \override DynamicText #'extra-offset = #'(-0.8 . 1 )
	\once \override DynamicText #'X-offset = #-2.5
	g1 
	^"col legno. Sin mover el siguiente pentagrama"
	\p
}
   \new Staff { c'1 
   ^"col legno"
   }
>>
