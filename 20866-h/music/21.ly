\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "21. Sick." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/4
  \partial 4
  \tempomark 

  \times 2/3 { g8[ c e] } |
  g4 \times 2/3 { e8[ c g] } |
  c4 c |
  c8[ \times 2/3 { c16 c c] } \times 2/3 { c8[ g c] } |
  e4 \times 2/3 { g,8[ c e] } | \break

  g4 \times 2/3 { e8[ c g] } |
  c4 c |
  c8[ \times 2/3 { c16 c c] } \times 2/3 { c8[ g c] } |
  c8.[ c16 c8. c16] |
  c4 \fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
