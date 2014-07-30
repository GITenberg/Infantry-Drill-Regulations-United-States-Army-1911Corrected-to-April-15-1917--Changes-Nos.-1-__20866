\version "2.8"
\paper{ line-width=15\cm indent=0\mm }

\header{ tagline="" title=\markup \smallCaps "17. Tattoo." }

tempomark = s1*0^\markup { \large { \italic Quick. } }

global = {
 \set Staff.midiInstrument = #"trumpet"
 \set Score.barNumberVisibility = ##f
 \override Voice.Rest #'style = #'classical
 \clef treble
 \key c \major
 \autoBeamOff
 \time 4/4
}

top = \relative c'' {
 \global
 \tempomark
 c4. g8 c8.[ g16 c8. g16] |
 c4 g' e c |
 g g8.[ g16] g4 g |

 c e g r |
 c,4. g8 c8.[ g16 c8. g16] |
 c4 e g e8[ c] |

 g4 g8.[ g16] g4 g |
 c c8.[ c16] c2 \fermata \bar "||"
 r2 r4 g8.[ g16] |
 c4 c8.[ c16] c4 g8.[ c16] |

 e4 e8.[ e16] e4 c8.[ e16] |
 g4 g8.[ g16] g4 e8.[ c16] |
 g4 g8.[ g16] g4 \fermata r |

 e' g e c |
 g4 g8.[ g16] g4 c8[ e] |
 g4 e8[ c] g'[ g] e[ c] |

 g4 g8.[ g16] g4 r8. e'16 |
 c4( g8) r16 e' c4( g8) r16 e' |
 c8[ c] g[ e'] c4 g |

 \times 2/3 { c8[ c c] } \times 2/3 { e8[ e e] } c4 g \fermata |
 e' e c c |
 g g8.[ g16] g4 c8[ e] |

 g4 e8[ c] g'[ g] e[ c] |
 g4 g8.[ g16] g4 r8 c, |

 g'2. r8 c, |
 g'2. r8 c, |
 g'4 g8.[ g16] c4 e~ |
 \once \override Voice.Script #'padding = #1
 e2 \fermata \bar "||"
}

middle = \relative c'' {
 \global
 c4. g8 c8.[ g16 c8. g16] |
 c4 e c e |
 g, g8.[ g16] g4 g |

 c g e' r |
 c4. g8 c8.[ g16 c8. g16] |
 c4 g e' c |

 g4 g8.[ g16] g4 g |
 c e8.[ e16] e2 \fermata |
 r2 r4 g,8.[ g16] |
 c4 c8.[ c16] c4 g8.[ c16] |

 c4 c8.[ c16] c4 c8.[ c16] |
 e4 e8.[ e16] e4 c8.[ c16] |
 g4 g8.[ g16] g4 \fermata r |

 e' e c c |
 g4 g8.[ g16] g4 c8[ c] |
 e4 c8[ g] e'[ e] c[ g] |

 g4 g8.[ g16] g4 r8. e'16 |
 c4( g8) r16 e' c4( g8) r16 e' |
 c8[ c] g[ g] g4 g |

 \times 2/3 { c8[ c c] } \times 2/3 { e8[ e e] } c4 g \fermata |
 e' g e c |
 g g8.[ g16] g4 g8[ c] |

 e4 c8[ g] e'[ e] c[ g] |
 g4 g8.[ g16] g4 r8 c, |

 g'2. r8 c, |
 g'2. r8 c, |
 g'4 g8.[ g16] c4 c~ |
 c2 \fermata \bar "||"
}

bottom = \relative c' {
 \global
 c4. g'8 c,8.[ g'16 c,8. g'16] |
 c,4 c' g c |
 g g8.[ g16] g4 g |

 c, g' c r |
 c,4. g'8 c,8.[ g'16 c,8. g'16] |
 c,4 c' g c, |

 g'4 g8.[ g16] g4 g |
 c, c8.[ c16] c2 \fermata |
 r2 r4 g'8.[ g16] |
 c4 c8.[ c16] c4 c8.[ c16] |

 c4 c8.[ c16] c4 c8.[ c16] |
 c4 c8.[ c16] c4 c8.[ c16] |
 g4 g8.[ g16] g4 \fermata r |

 g c c, g' |
 g4 g8.[ g16] g4 g8[ g] |
 c4 c8[ c] c[ c] c[ c] |

 g4 g8.[ g16] g4 r8. c16 |
 c,4~ c8 r16 c' c,4~ c8 r16 c' |
 c,8[ c] g'[ g] g4 g |

 g c c g \fermata |
 g c c, g' |
 g g8.[ g16] g4 g8[ c] |

 e4 c8[ c] c[ c] c[ c] |
 g4 g8.[ g16] g4 r8 c, |

 g'2. r8 c, |
 g'2. r8 c, |
 g'4 g8.[ g16] g4 g~ |
 g2 \fermata \bar "||"
}

\score {
 <<
  \new Staff = "top" \top
  \new Staff = "middle" \middle
  \new Staff = "bottom" \bottom
 >>

 \layout { }
 \midi { \tempo 4=120 }
}
