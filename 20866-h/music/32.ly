\version "2.10"
\paper{ line-width=8\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "32. Attention." }

tempomark = s1*0^\markup { \large { \italic Slow. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/4
  \tempomark 
  \partial 16

  c16 |
  e4.. g,16 |
  e'2\fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=84 }
}
