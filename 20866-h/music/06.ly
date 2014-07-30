\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "6. Stable." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 6/8
  \tempomark 

  g8[ g16 g g g] c8[ g c] |
  e[ e16 e e e] e8[ c e] |
  g[ g16 g g g] g8[ e c] |

  g[ g16 g g g] g4\fermata r8 |
  c[ c16 c c c] c4 e8 |
  g,[ g16 g g g] g4 r8 |

  e'[ e16 e e e] e4 g8 |
  e[ c16 c c c] c4\fermata r8 |
  g[ g16 g g g] c8[ g c] |

  e[ e16 e e e] e8[ g, e'] |
  g[ g16 g g g] g8[ e c] |
  g[ g16 g g g] c4\fermata r8 \bar "||" % Fermata misplaced in original

 }
 \layout { }
 \midi { \tempo 4=120 }
}
