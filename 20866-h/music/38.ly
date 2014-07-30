\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "38. Commence Firing." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/4
  \tempomark 
  \partial 8

  e8 |
  c4. e16[ c] |
  g4. e'8 |
  c4. e16[ c] |
  g4. \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
