\version "2.10"
\paper{ line-width=8\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "33. Attention to Orders." }

tempomark = s1*0^\markup { \large { \italic Slow. } }

\score {
 \new Staff \relative c'' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/4
  \once \override TextScript #'padding = #2
  \tempomark 

  g8.[ c16] e8 r |
  g,8.[ c16] e8 r \bar "||"

 }
 \layout { }
 \midi { \tempo 4=84 }
}
