\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "40. Fix Bayonets." }

tempomark = s1*0^\markup { \large { \italic Quick. } }
rit       = s1*0^\markup { \italic rit. }

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

  c8[ c16 c] g'4\fermata |
  c,8[ c16 c] g'4\fermata |
  c,8[ \times 2/3 { c16 c c] } c8[ c] | \break
  % Triplet mark missing throughout in original

  e8[ \times 2/3 { e16 e e] } e8[ e] |
  g8[ \times 2/3 { g16 g g] } \rit g8-^[ g-^] |
  g4\fermata r \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
