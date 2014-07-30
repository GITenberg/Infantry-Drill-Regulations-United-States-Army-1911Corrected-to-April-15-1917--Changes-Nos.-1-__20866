\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "25. Officers' Call." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 6/8
  \tempomark 

  c8[ c16 e g8] e[ c16 e g8] |
  e[ c16 e g8] e4. |

  c8[ c16 e g8] e[ c16 e g8] |
  e[ c g] c4. \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
