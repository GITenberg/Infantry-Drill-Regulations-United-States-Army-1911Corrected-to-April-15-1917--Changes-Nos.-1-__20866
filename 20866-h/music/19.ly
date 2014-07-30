\version "2.10"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "19. Taps." }

tempomark = s1*0^\markup { \large { \italic Slow. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \partial 4
  \tempomark 

  g8.[ g16] |
  c2. \fermata g8.[ c16] |
  e2. \fermata g,8[ c] |
  e4 g,8[ c] e4 g,8[ c] | \break

  e2. \fermata c8.[ e16] |
  g2 e4 c |
  g2. g8.[ g16] |
  c2. \fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4 = 84 }
}
