\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "29½. The General's March." }
% Period after "29½" missing in original, but present in number 30½.

tempomark = s1*0^\markup { \large { \italic { Quick time. } } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \tempomark 

  c4 g8.[ g16] g2 |
  e'4 g,8.[ g16] g2 |
  c4 c8.[ e16] g4 \times 2/3 { g,8[ c e] } |

  g4 g8.[ g16] g2 |
  e4 c8.[ g16] g'4 e8.[ c16] |
  g4 g8.[ g16] g4 g8.[ g16] |

  c4 c8.[ g16] e'2 |
  e4 e8.[ c16] g'2 |

  e4 \times 2/3 { g,8[ c e] } g4 \times 2/3 { g,8[ c g'] } |
  e4 c8.[ c16] c2\fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
\markup { \large { ( \italic{ C. I. D. R. No. 8, Sept. 3, 1914. } ) } }
