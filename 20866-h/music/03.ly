\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "3. Full Dress." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 3/8
  \once \override TextScript #'padding = #2
  \tempomark 

  g8 \times 2/3 { g16[ g g] } g8 | % Triplet mark missing in original
  e'4\fermata r8 |
  c8 \times 2/3 { c16[ c c] } c8 |
  g'4\fermata r8 |
  e8\staccatissimo[ g\staccatissimo e\staccatissimo] |
  c4\fermata r8 \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
