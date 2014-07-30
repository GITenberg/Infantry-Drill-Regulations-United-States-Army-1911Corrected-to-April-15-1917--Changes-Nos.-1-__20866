\version "2.10"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "18. Call to Quarters." }

tempomark = s1*0^\markup { \large { \italic Slow. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/2
  \tempomark 

  c4 e g2 |
  r2. g,4 |
  c c8.[ c16] c4 e8[ c] |
  g4 c2 c8.[ e16] |
  g4 \times 2/3 { g8[ e g] } e4 \times 2/3 { e8[ c e] } | \break

  c4 \times 2/3 { c8[ e c] } g2 |
  c4 e g e |
  c e g, c |
  c, \fermata g' \fermata c2 \fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4 = 84 }
}
