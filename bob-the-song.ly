\version "2.19.82"

\header {
  title = "Bob The Song"
  composer = "Kal'Rog"
}

first = \relative fis {
  fis4 cis' e cis d cis b cis
  fis, cis' e cis a b gis a
  fis cis' fis e d cis b cis
  a b a gis fis1
}

chorus = \relative fis {
  cis4 fis gis a b cis d e
  d, fis gis a b cis d e
  e, fis gis a b cis d e

  b, fis' gis a b a gis fis
  d fis gis a b a gis fis
  e fis gis a b cis d2 r1
}

second = \relative fis {
  fis4 cis' fis r1
  fis,4 cis' e r1
  fis,4 cis' d r1
  fis,4 cis' b r1

  fis4 cis' fis2
  fis,4 cis' e2
  fis,4 cis' d2
  fis,4 cis' b2
  a4 b a gis fis1
}

epilogue = \relative fis {
  d'4 cis b a gis a fis1
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
  >>

  \layout {}
  \midi { \tempo 4 = 200 }
}
