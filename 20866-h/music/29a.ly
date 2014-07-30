\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "29. School." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

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
  \partial 8 

  g16[ g] |
  c4 r |
  c\fermata r8 g16[ g] |
  c4 r |
  c\fermata r |
  g8[ g c c] |
  e4( c) | \break

  e8[ e] g,[ g] |
  c[ e] c4 |
  g8[ g c c] |
  e4( c) |
  e8[ e] g,[ g] |
  c4\fermata r8 \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
