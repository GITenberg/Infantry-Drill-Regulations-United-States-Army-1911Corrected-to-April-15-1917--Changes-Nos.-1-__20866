\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "2. Guard Mounting." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \override Voice.Rest #'style = #'classical
  \clef treble
  \key c \major
  \autoBeamOff
  \time 6/8
  \tempomark 

  c8[ \times 2/3 { c16 c c } c8] e[ c e] |
  g[ e g] e[ c e] |
  g4 r8  c,[ \times 2/3 { c16 c c } c8] |
  e[ c e] g[ e g] |
  e[ c g] c4 r8 |

  c8[ \times 2/3 { c16 c c } c8] e[ c e] |
  g[ e g] e[ c e] |
  g4 r8  c,[ \times 2/3 { c16 c c } c8] |
  e[ c e] g[ e g] |
  c,4\fermata r r \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
