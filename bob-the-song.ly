\version "2.19.82"

\header {
  title = "Bob The Song"
  composer = "Kal'org"
}

first = \relative fis {
  fis4 cis' e cis d cis b cis
  fis, cis' e cis a b gis a
  fis cis' e cis d cis b cis
  fis, cis' fis e fis gis fis e fis
  d cis b a b gis fis1
}

chorus = \relative fis {
  cis4 fis gis a b cis d e
  d, fis gis a b cis d cis
  e, fis gis a b a gis a
  b, fis' gis a b a gis fis

  cis fis gis a b cis d e
  d, fis gis a b cis d cis
  e, fis gis a b a gis a
  b, fis' gis a b a gis fis1
}

second = \relative fis {
  fis4 cis' fis1
  fis,4 cis' e1
  fis,4 cis' d1
  fis,4 cis' b1

  fis4 cis' fis2
  fis,4 cis' e2
  fis,4 cis' d2

  fis,4 cis' fis e
  fis gis fis e
  fis d cis b
  a b gis fis1
}

epilogue = \relative fis {
  d'4 cis b a gis
  a fis2~ fis2
}

first_bass = \relative c {
  \mark "Theme I"
  fis,2.. fis8 |
  fis2.. fis8 |
  fis2.. fis8 |
  fis2.. fis8 |

  fis2.. fis8 |
  fis2.. fis8 |
  fis2.. fis8 |
  fis2.. fis8 | \bar "||"
}

chorus_bass = \relative c, {
  \mark "Chorus"
  a'4 fis8 gis8 a4 b4 |
  a4 fis8 gis8 a4 b4 |
  a4 fis8 gis8 a4 b4 |
  a4 fis8 gis8 a4 b4 |

  a4 fis8 gis8 a8 b8 a4 |
  a4 fis8 gis8 a8 b8 a4 |
  a4 fis8 gis8 a8 b8 a4 |
  a4 fis8 gis8 a8 b8 a4 |

  a1 |
  b1 |
  cis1 |
  d1~ |

  d2 fis | \bar "||"
}

second_bass = \relative c {
  \mark "Theme II"
  fis1~ |
  fis1 |
  fis1~ |
  fis1 |

  fis1~ |
  fis1 |
  fis1~ |
  fis1 |

  fis1~ |
  fis1 |
  fis1~ |
  fis1 |

  fis1 | \bar "||"
}

epilogue_bass = \relative c {
  \mark "Epilogue"
  d'4 cis b a |
  gis a fis2~ |
  fis2 r2 | \bar "|."
}

full = {
  \first
  \chorus
  \second
  \chorus
  \epilogue
}


\score {
  <<
    {
      \new Staff \with {
	instrumentName = #"Guitar"
	midiInstrument = #"electric guitar (clean)"
      }

      \key fis \minor
      \full
    }

    {
      \new Staff \with {
	instrumentName = #"Delay"
	midiInstrument = #"electric guitar (clean)"
      }

      \key fis \minor
      r2
      \full
    }

    {
      \new Staff \with {
        instrumentName = #"Bass"
        midiInstrument = #"electric bass (finger)"
      }
      \key fis \minor
      \clef bass

      %% If the bass sounds an octave higher in MIDI, uncomment this
      %% I think something is wrong with my soundfonts
      %% \transpose c c, {
        \first_bass
        \chorus_bass
        \second_bass
        \chorus_bass
        \epilogue_bass
      %% }
    }
  >>

  \layout {}
  \midi { \tempo 4 = 200 }
}
