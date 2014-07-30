\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "28. Fatigue." }

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

  c8[ e c] |
  g' \times 2/3 { g16[ g g] } g8 |
  c,[ e c] |
  g4 r8 |
  c[ e c] |

  g' \times 2/3 { g16[ g g] } g8 |
  c,[ e c] |
  g4 r8 | \break
  c[ e c] |

  g' \times 2/3 { g16[ g g] } g8 |
  c,[ e c] |
  g'4 r8 |
  c, \times 2/3 { c16[ c c] } c8 |
  c4\fermata r8 \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
