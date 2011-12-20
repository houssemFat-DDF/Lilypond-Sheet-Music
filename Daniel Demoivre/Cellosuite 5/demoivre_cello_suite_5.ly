\version "2.14.2"
\include "deutsch.ly"

#(set-global-staff-size 17.4)

\header {
  title = "Suite Nr. V"
  subtitle = "für Violoncello solo"
  composer = "Daniel Demoivre (1687-1731)"
  enteredby = "cellist (2011-12-20)"
}

voiceconsts = {
 \clef "bass"
 \numericTimeSignature
 \compressFullBarRests
}

%minstr = "harpsichord"
%minstr = "clarinet"
%minstr = "accordion"
minstr = "bassoon"

iifour = { \bar "||" \partial 4 }

\include "v1.ily"

music = \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \minstr
	\set Staff.instrumentName = #"Cello"
	\transpose g g { \va }
      }
>>

\book {
  \score {
    \music
    \layout {}
  }

  \score {
    \unfoldRepeats \music

    \midi {
      \context {
        \Score
      }
    }
  }
}
