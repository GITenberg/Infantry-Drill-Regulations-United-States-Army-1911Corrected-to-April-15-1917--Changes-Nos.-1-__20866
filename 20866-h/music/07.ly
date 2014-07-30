\version "2.8"
\paper{ line-width=12\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "7. Water." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \override Voice.Rest #'style = #'classical
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \tempomark 

  \times 2/3 { g8[ c e] } g8[ e] g[ e c e] |
  g,4\fermata r \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
