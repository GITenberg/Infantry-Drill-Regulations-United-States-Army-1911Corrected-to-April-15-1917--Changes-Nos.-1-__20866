\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "5. Drill." }

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

  \partial 8 c16[ c] |
  c8[ g16 g] g8[ e'16 e] |
  e8[ c16 c] c8 r8 |
  g8[ c16 e] g8[ e] | \break

  g4. c,16[ c] |
  c8[ g16 g] g8[ e'16 e] |
  e8[ c16 c] c4 |
  g8[ g16 g] \times 2/3 {g8[ g g]} |
  c4 r8 \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
