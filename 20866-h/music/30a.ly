\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "30. The General." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \override Voice.Rest #'style = #'classical
  \clef treble
  \key c \major
  \autoBeamOff
  \time 3/4
  \tempomark 

  c8[ \times 2/3 { c16 c c] } c8[ c c c] |
  c[ \times 2/3 { c16 c c] } c8[ c e c] |
  g'[ \times 2/3 { g16 g g] } g8[ g e c] |

  g4 g r |
  c8[ \times 2/3 { c16 c c] } c8[ c c c] |
  c[ \times 2/3 { c16 c c] } c8[ c e g] |

  c,[ \times 2/3 { c16 c c] } c8[ c] g[ g] |
  c4 c r |
  g8.[ g16] g8.[ g16] g8.[ g16] |

  g8.[ e'16] \times 2/3 { c8[ g' e] } \times 2/3 { c8[ e c] } |
  g8.[ g16] g8.[ g16] g8.[ g16] |
  \times 2/3 { c8[ g e'] } c4 r |

  g8.[ g16] g8.[ g16] g8.[ g16] |
  \times 2/3 { c8[ g e'] } \times 2/3 { c8[ g e'] } \times 2/3 { g,8[ c e] } |
  g8[ \times 2/3 { g,16 g g] } g8[ g] g8.[ e'16] |

  c4 r8 \times 2/3 { g16[ g g] } g8.[ g16] |  % r4 in original
  c4 r8 \times 2/3 { g16[ g g] } g8.[ e'16] | % r4 in original
  c2 r4 \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
