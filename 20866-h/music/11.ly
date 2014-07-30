\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "11. To the Color." }

tempomark = { \once \override TextScript #'padding = #1
              s1*0^\markup { \large \italic { Quick time. } } }
end       = { \mark \markup { \large \italic "End." } }
enddc     = { \mark \markup { \hspace #0 \raise #1 \large \italic "D.C." } }

\score {
 \new Staff \relative c'' {
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #right

  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \tempomark 

  \partial 4 e8.[ e16] |
  g4 c,8.[ c16] e4 g,8.[ g16] |
  c4 c8.[ c16] c4 c8.[ e16] |

  g4 g8.[ g16] e4 c8.[ e16] |
  g2 g,4 e'8.[ e16] |
  g4 c,8.[ c16] e4 g,8.[ g16] |

  c4 c8.[ c16] c4 c8.[ e16] |
  g8[ e c g] g'[ e c g] |
  \partial 4*3 c4 c8.[ c16] c4 \end \bar "||" \break

  \partial 4 g8.[ g16] |
  c2 c8[ c16 c c8 c] |
  e2 e8[ e16 e e8 e] |
  g2 g8[ g16 g g8 g] |

  e8[ g e16( c g8)] e'[ g e16( c g8)] |
  g'[ g16 g g8 g] g4 \enddc \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
