\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "10. Adjutant's Call." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

\score {
 \new Staff \relative c''' {
  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/4
  \tempomark 

  g8[ e16 c] g'4 |
  g8[ e16 c] g'4 |
  g8[ e16 c] g8[ g'] |
  e[ g16 e] c4 | \break

  g'8[ e16 c] g'4 |
  g8[ e16 c] g'4 |
  g8[ e16 c] g8[ g'] |
  e[ g16 e] c4 \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
