\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "4. Overcoats." }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/4

  g8[( c]) c4 |
  g8[( c]) c4 |
  g8[( c]) c4\fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
