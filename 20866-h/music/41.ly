\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "41. Charge." }

tempomark = s1*0^\markup { \large { \italic Quick. } }
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
  \time 3/8
  \tempomark 

  c16.[ c32] c16.[ c32] c16.[ c32] |
  c16.[ c32] c16.[ c32] c16.[ c32] |
  g'16.[ e32] g16.[ e32] g16.[ e32] | \break

  c16.[ c32] c16.[ c32] c16.[ c32] |
  g'16.[ e32] g16.[ e32] g16.[ e32] |
  c4. \repeatadlib \bar "||"

 }
 \layout { }
 \midi { \tempo 4=100 }
}
