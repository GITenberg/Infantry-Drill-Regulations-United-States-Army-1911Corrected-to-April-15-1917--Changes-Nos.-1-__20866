\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "14. To Horse." }

tempomark = s1*0^\markup { \large { \italic Presto. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \tempomark 

  g8[ c16 e] g8[ e] g[ e c g] |
  c2 r8 \times 2/3 { c16[ c c } c8 c] |
  g'[ g] e[ e] c[ c] g4\fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
