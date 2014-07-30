\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "9. Assembly." }

tempomark = s1*0^\markup { \large { \italic Moderate. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \tempomark 

  \partial 4 g8.[ g16] |
  c8.[ g16 c8. e16] c4 c8.[ c16] |
  e8.[ c16 e8. g16] e4 c8.[ e16] | \break

  g4 e8.[ c16] g4 g8.[ g16] |
  c4 c8.[ c16] c4\fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
