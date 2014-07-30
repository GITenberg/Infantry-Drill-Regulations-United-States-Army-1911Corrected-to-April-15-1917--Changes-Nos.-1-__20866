\version "2.10"
\paper{ line-width=12\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "37. To the Rear. MARCH." }

tempomark = s1*0^\markup { \large { \italic Slow. } }

\score {
 \new Staff \relative c''' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \override Voice.Rest #'style = #'classical
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/4
  \tempomark 

  g4 \times 2/3 { e8[ c g] } |
  g4 c |
  c r |
  c2\fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=84 }
}
