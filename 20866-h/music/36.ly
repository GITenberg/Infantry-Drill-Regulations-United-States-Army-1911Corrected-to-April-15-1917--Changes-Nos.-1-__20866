\version "2.8"
\paper{ line-width=10\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "36. Double Time. MARCH." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 3/8
  \tempomark 

  c8-.[ c-.] r |
  c-.[ c-.] r |
  c-.[ c-.] r |
  c4.\fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
