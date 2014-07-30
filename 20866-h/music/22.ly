\version "2.10"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "22. Church." }

tempomark = s1*0^\markup { \large { \italic Slow. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \tempomark 

  g4. c8 e2 \fermata |
  c4 e g,2 \fermata |
  c4. e8 g2 \fermata |
  e4 c g4. \fermata g8 |
  c8[ c16 e] c8[ e] g,[ g] g4 |

  c8[ c16 e] c8[ e] g[ g] g,4 |
  c8[ c16 e] c8[ e] g,[ g] g4 |
  c8[ c16 e] g8[ e] c2 \fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4 = 84 }
}
