\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "13. To Arms." }

tempomark   = { \once \override TextScript #'padding = #2
                s1*0^\markup { \large \italic { Quick. } } }
repeatadlib = { \mark \markup { \hspace #0 \raise #1
                \large \italic "Repeat at will." } }

\score {
 \new Staff \relative c''' {
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'self-alignment-X = #right

  \set Staff.midiInstrument = #"trumpet"
  \set Score.barNumberVisibility = ##f
  \override Voice.Rest #'style = #'classical
  \clef treble
  \key c \major
  \autoBeamOff
  \time 4/4
  \tempomark 

  \partial 4 g4 |
  g2.\fermata g4 |
  g2.\fermata r4 \bar "|:"
  \times 2/3 { c,8[( g) e'] } \times 2/3 { c8[( g) e'] }
   \times 2/3 { c8[( g) e'] } \times 2/3 { c8[( g) e'] } |

  g8.[ g16 g8. g16] g2 |
  g8.[ g16 g8. g16] g2 \repeatadlib \bar ":|"

 }
 \layout { }
 \midi { \tempo 4=120 }
}
