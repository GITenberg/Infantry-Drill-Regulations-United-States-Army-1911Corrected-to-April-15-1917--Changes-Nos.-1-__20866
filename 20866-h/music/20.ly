\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "20. Mess." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

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

  c8[ e c e] |
  c4 c8 r |
  c8[ \times 2/3 { c16 c c] } c8[ e] |
  c4 r |

  e8[ g e g] |
  e4 e8 r |
  e8[ \times 2/3 { e16 e e] } e8[ g] |
  e4 r |

  g,8[ c g c] |
  g4 g8 r |
  g8[ \times 2/3 { g16 g g] } g8[ c] |
  g4 \fermata r \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
