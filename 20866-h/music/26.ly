\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "26. Captains' Call." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 6/8
  \tempomark 

  c8[ c16 e g8] e[ c16 e g8] |
  e[ c16 e g8] e4 c8 |
  e4.~ e4 g,8 |
  e'2\fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
