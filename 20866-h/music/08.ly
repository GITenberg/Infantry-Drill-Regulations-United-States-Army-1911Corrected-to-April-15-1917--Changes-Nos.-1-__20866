\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "8. Boots and Saddles." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \tempomark 

  \times 2/3 { g8[ c e] } g8[ e]
    \times 2/3 { c8[ g c] } \times 2/3 { c16[ c c] } c8 |
  \times 2/3 { c8[ g c] } c8.[ c16] c8.[ c16] c4 \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
