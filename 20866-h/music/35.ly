\version "2.8"
\paper{ line-width=3\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "35. Halt." }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 3/4

  c2.\fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
