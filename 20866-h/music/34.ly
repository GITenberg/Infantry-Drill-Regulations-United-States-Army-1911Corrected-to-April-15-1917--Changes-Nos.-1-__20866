\version "2.8"
\paper{ line-width=8\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "34. Forward. MARCH." }

tempomark = s1*0^\markup { \large { \italic Slow. } }

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

  c4 c r |
  c2.\fermata \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
