\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "27. First Sergeants' Call." }

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

  \times 2/3 { g16[ c e] } g8[ \times 2/3 { g16 g g } g8] |
  \times 2/3 { g,16[ c e] } g8[ \times 2/3 { g16 g g } g8] |
  \times 2/3 { g,16[ c e] } g8[ \times 2/3 { g16 g g } g8] \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
