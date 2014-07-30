\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "16. Retreat." }

tempomark = s1*0^\markup { \large { \italic Moderate. } }

global = {
 \set Staff.midiInstrument = #"trumpet"
 \set Score.barNumberVisibility = ##f
 \override Voice.Rest #'style = #'classical
 \clef treble
 \key c \major
 \autoBeamOff
 \time 2/4
}

top = \relative c'' {
 \global
 \tempomark
 c4 c8.[ c16] |
 g'2 |
 e4 g8.[ e16] |
 c4. g8 |
 c4 e |
 c4. g8 |

 c8.[ e16 g8. e16] |
 c4 g8.[ g16] |
 c8.[ g16] c[ g c e] |
 g2 |
 g4 g8.[ g16] |

 e4. e8 |
 g[ e g e] |
 c4 r |
 c g |
 c2 |
 c4 g |
 c2 |

 c4 g |
 c8.[ g16] c[ g c e] |
 g8.[ e16] g[ e g e] |
 c4 \fermata r \bar "||"
}

middle = \relative c'' {
 \global
 c4 c8.[ c16] |
 g2 |
 c4 g8.[ g16] |
 c4. g8 |
 c4 c |
 c4. g8 |

 c8.[ g16 c8. e16] |
 c4 g8.[ g16] |
 c4 c8[ e] |
 e2 |
 e4 e8.[ e16] |

 c4. c8 |
 e[ g e g] |
 e4 r |
 e g |
 e2 |
 e4 g |
 e2 |

 e4 g |
 e e8[ e] |
 e4 e8[ e] |
 e4 \fermata r \bar "||"
}

bottom = \relative c' {
 \global
 c4 c8.[ c16] |
 c2 |
 g'4 g8.[ g16] |
 c,4. g'8 |
 c,4 g' |
 c,4. g'8 |

 c8.[ c16 c8. c16] |
 c4 g8.[ g16] |
 c4 c8[ c] |
 c2 |
 g4 g8.[ g16] |

 c4. c8 |
 c[ c c c] |
 c4 r |
 g g |
 g2 |
 g4 g |
 g2 |

 g4 g |
 g g8[ g] |
 g4 g8[ g] |
 c,4 \fermata r \bar "||"
}

\score {
 <<
  \new Staff = "top" \top
  \new Staff = "middle" \middle
  \new Staff = "bottom" \bottom
 >>

 \layout { }
 \midi { \tempo 4=100 }
}
