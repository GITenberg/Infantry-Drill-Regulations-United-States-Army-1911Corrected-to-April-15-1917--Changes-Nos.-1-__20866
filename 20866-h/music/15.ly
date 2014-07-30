\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "15. Reveille." }

tempomark = s1*0^\markup { \large \italic { Quick. } }
end       = { \mark \markup { \large \italic "End." } }
enddc     = { \mark \markup { \large \italic "D.C." } }

\score {
 \new Staff \relative c'' {
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #right

  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \clef treble
  \key c \major
  \autoBeamOff
  \time 2/4
  \tempomark 

  \partial 8 g8 |
  c8[ e16( c)] g8[ e'] |
  c[ e16( c)] g8[ e'] |
  c[ e16( c)] g8[ c] |
  e4( c8)[ g] | \break

  c[ e16( c)] g8[ e'] |
  c[ e16( c)] g8[ e'] |
  c[ e16( c)] g8[ g] |
  \partial 4. c4. \end \bar "||"
  \partial 8 e8 |
  e[ e e e] | \break

  g4( e8)[ c] |
  e[ c e c] |
  e4( c8)[ e] |
  e[ e e e] |
  g4( e8)[ c] |
  e[ c g g] |
  c4. \enddc \bar "||"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
