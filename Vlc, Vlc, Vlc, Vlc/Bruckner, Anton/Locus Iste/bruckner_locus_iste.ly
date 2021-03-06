\version "2.14.2"
\include "deutsch.ly"

#(set-global-staff-size 21.5)

\header {
  title = "Locus Iste"
  composer = "Anton Bruckner"
  arranger = "(1824-1896)"
  enteredby = "cellist (2009-12-12)"
}

voiceconsts = {
 \key es \major
% \clef "treble"
 \clef "bass"
 %\numericTimeSignature
 \compressFullBarRests
 \time 4/4
 \tempo "Lento " 2=50
}

\include "v1.ily"
\include "v2.ily"
\include "v3.ily"
\include "v4.ily"

%minstr = "harpsichord"
mihi = "clarinet"
%minstr = "accordion"
milo = "bassoon"

music = \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = #"Vc I"
	\transpose es es { \va }
      }

      \new Staff {
	\set Staff.midiInstrument = \mihi
	\set Staff.instrumentName = #"Vc II"
	\transpose es es { \vb }
      }

      \new Staff {
	\set Staff.midiInstrument = \milo
	\set Staff.instrumentName = #"Vc III"
	\transpose es es { \vc }
      }

      \new Staff {
	\set Staff.midiInstrument = \milo
	\set Staff.instrumentName = #"Vc IV"
	\transpose es es { \vd }
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
