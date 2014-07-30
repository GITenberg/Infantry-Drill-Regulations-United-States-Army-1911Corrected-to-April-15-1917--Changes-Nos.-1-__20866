\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "12. Fire." }

tempomark   = s1*0^\markup { \large \italic { Quick. } }
repeatadlib = { \mark \markup { \hspace #0 \raise #1
                \large \italic "Repeat at will." } }

\score {
 \new Staff \relative c'' {
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #right

  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \override Voice.Rest #'style = #'classical
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \once \override TextScript #'padding = #2
  \tempomark 

  \partial 4 g8.[ g16] |
  e'2\fermata r4 g,8.[ g16] |
  e'2\fermata r8. g,16[ c8. e16] |
  g2 e8.[ e16] c8.[ c16] |

  g2 r4 r8 e' |
  c8.[ e16 g,8. e'16] c8.[ e16 g,8. e'16] |
  c8.[ e16 g8. e16] c4 g |

  c8.[ e16 g,8. e'16] c8.[ e16 g,8. e'16] |
  c8.[ g16 e'8. g,16] c2\fermata \repeatadlib \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
