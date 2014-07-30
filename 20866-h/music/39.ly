\version "2.8"
\paper{ line-width=10\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "39. Cease Firing." }

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

  g8[ c16 e] g8[ e] g[ e c g] |
  c2\fermata r \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
