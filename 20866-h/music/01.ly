\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "1. First Call." }

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

  \partial 8
  \times 2/3 { g16[ c e] } |
  g8 \times 2/3 { g16[ g g] } g8 |
  e8 \times 2/3 { e16[ e e] } e8 |
  c[ e c] | g r \bar "" \break

  \times 2/3 { g16[ c e] } |
  g8 \times 2/3 { g16[ g g] } g8 | g[ e c] |
  g8 \times 2/3 { g16[ g g] } g8 | c\fermata r \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
