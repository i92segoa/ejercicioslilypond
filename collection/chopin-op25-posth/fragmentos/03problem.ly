\version "2.15.32"  %complied for 2.15.34 latest git b63f205fea

{ \time 3/4
  b8 b b b b b }

{ \time 3/4
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1)
  b8 b b b b b }

{ \time 3/4
 \set Timing.beamWholeMeasure = ##f
 
 
 % \set Timing.beamExceptions = #'()
  b8 b b b b b }
