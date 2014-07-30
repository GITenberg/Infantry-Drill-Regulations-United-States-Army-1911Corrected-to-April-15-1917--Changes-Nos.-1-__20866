\version "2.8"
\paper{ line-width=10\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "30½. Flourishes for Review." }

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

  g8[ g16 g] g8[ g16 g] |
  c2\fermata \bar "||" % Extra r4 at the end of this bar in original

 }
 \layout { }
 \midi { \tempo 4=120 }
}
\markup { \large { ( \italic{ C. I. D. R., No. 2. } ) } }
