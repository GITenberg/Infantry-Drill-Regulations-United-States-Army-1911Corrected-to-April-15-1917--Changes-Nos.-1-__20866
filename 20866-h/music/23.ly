\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "23. Recall." }

tempomark = s1*0^\markup { \large { \italic Moderato. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \override Voice.Rest #'style = #'classical
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/4
  \tempomark 

  c8[ \times 2/3 { c16 c c] } c8[ c] |
  e4 c8[ e] |
  g8[ \times 2/3 { g16 g g] } g8[ e] |
  g[ e] c4 |

  c8[ \times 2/3 { c16 c c] } c8[ c] |
  e4 c8[ e] |
  g8[ \times 2/3 { g16 g g] } g8[ e] |
  c4 r \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
