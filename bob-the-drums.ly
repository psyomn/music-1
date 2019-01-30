\version "2.19.82"

\header {
  title = "Bob The Drums"
  composer = "Bob The Composer"
}


% . . . . . . . _
% o  ox o   o x

d_main_u = \drummode {
  \time 4/4
  cymc8 hhc hhc hhc hhc hhc hhc hho |
  hhc8 hhc hhc hhc hhc hhc hhc hho |

  \time 2/4
  r2 |
}

d_main_d = \drummode {
  \time 4/4
  \repeat unfold 2 { bd8. bd16 sn8 bd4 bd8 sn4 | }

  \time 2/4
  sn16 sn8.~ sn8 sn8 |
}

d_main = {
  \repeat unfold 2 <<
    \new DrumVoice { \voiceOne \d_main_u }
    \new DrumVoice { \voiceTwo \d_main_d }
  >>
}


d_fill = \drummode {
  tomh16 tomh8.~ tomh8 tomh8 |
  tommh16 tommh8.~ tommh8 tommh8 |
  tomfl16 tomfl8.~ tomfl8 tomfl8 |
}


\score {
  {
    \new DrumStaff \with { instrumentName = #"Drums" }
    \repeat unfold 8 {
      \d_main
      \d_fill
    }
  }

  \layout {}
  \midi { \tempo 4 = 120 }
}
