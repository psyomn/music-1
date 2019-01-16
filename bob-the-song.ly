\version "2.19.82"

\header {
  title = "Bob The Song"
  composer = "Kal'org"
}

first = \relative fis {
  \time 4/4
  fis4 cis' e cis |
  d cis b cis |
  fis, cis' e cis |
  a b gis a |

  fis cis' e cis |
  d cis b cis |
  fis, cis' fis e |
  fis gis fis e |

  fis d cis b |

  \time 3/4
  a b gis |

  \time 4/4
  fis1 |
}

chorus = \relative fis {
  \time 4/4
  cis4 fis gis a |
  b cis d e |
  d, fis gis a |
  b cis d cis |

  e, fis gis a |
  b a gis a |
  b, fis' gis a |
  b a gis fis |

  cis fis gis a |
  b cis d e |
  d, fis gis a |
  b cis d cis |

  e, fis gis a |
  b a gis a |
  b, fis' gis a |

  \time 3/4
  b4 a gis |

  \time 4/4
  fis1 |
}

second = \relative fis {
  \time 6/4
  fis4 cis' fis1 |
  fis,4 cis' e1 |
  fis,4 cis' d1 |
  fis,4 cis' b1 |

  \time 4/4
  fis4 cis' fis2 |
  fis,4 cis' e2 |
  fis,4 cis' d2 |

  fis,4 cis' fis e |
  fis gis fis e |
  fis d cis b |

  \time 3/4
  a b gis |

  \time 4/4
  fis1 |
}

epilogue = \relative fis {
  \time 4/4
  d'4 cis b a |
  gis a fis2~ |
  fis2
}

first_bass = \relative c {
  \time 4/4
  fis,2.. fis8 |
  fis2.. fis8 |
  fis2.. fis8 |
  fis2.. fis8 |

  fis2.. fis8 |
  fis2.. fis8 |
  fis2.. fis8 |
  fis2.. fis8 |

  fis2.. fis8 |

  \time 3/4
  fis2. |

  \time 4/4
  fis1 |
}

chorus_bass = \relative c, {
  \time 4/4
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
  d1 |

  e1 |
  b1 |
  b,1 |

  \time 3/4
  b4 a gis |

  \time 4/4
  fis1 |
}

%% WIP
second_bass = \relative c {
  \time 6/4
  fis1. |
  fis1. |
  fis1. |
  fis1. |

  \time 4/4
  fis1 |
  fis1 |
  fis1 |

  fis1 |
  fis1 |
  fis1 |

  \time 3/4
  fis2. |

  \time 4/4
  fis1 |
}

epilogue_bass = \relative c {
  d'4 cis b a |
  gis a fis2~ |
  fis2 r2 |
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

      \mark "First"
      \first

      \mark "Chorus"
      \chorus

      \mark "Second"
      \second

      \mark "Chorus"
      \chorus

      \mark "Epilogue"
      \epilogue

      r2 \bar "|."
    }


    %% TODO: have to rethink how to introduce delay in a nicer way...
    %%
    %% {
    %%   \new Staff \with {
    %%     instrumentName = #"Delay"
    %%     midiInstrument = #"electric guitar (clean)"
    %%   }
    %%   \key fis \minor
    %%   r2
    %%   \full
    %% }

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
