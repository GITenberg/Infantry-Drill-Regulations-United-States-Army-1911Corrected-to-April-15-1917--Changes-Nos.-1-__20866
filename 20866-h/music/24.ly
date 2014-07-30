\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "24. Issue." }

tempomark = s1*0^\markup { \large { \italic Allegro. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \override Voice.Rest #'style = #'classical
  \clef treble
  \key c \major
  \autoBeamOff
  \time 3/8
  \tempomark 

  g8[ c e] |
  g[ e c] |
  g \times 2/3 { g16[ g g] } g8 |
  c[ c16 e g8] |

  <g, c>[ <c e> <e g>] |
  g[ e c] |
  g \times 2/3 { g16[ g g] } g8 |
  c4 r8 \bar "||"
  % Mark over rest in original, which may be a misplaced half-inked fermata

 }
 \layout { }
 \midi { \tempo 4=120 }
}
