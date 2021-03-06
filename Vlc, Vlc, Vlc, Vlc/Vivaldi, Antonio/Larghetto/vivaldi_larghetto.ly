\version "2.12.3"
\include "deutsch.ly"

#(set-global-staff-size 14)

\header {
  title = "Larghetto"
  composer = "Antonio Lucio Vivaldi (1678-1741)"
  arranger = "arr.: Bruce Evans"
  enteredby = "cellist (2011-06-11)"
}

voiceconsts = {
 \key f \major
 \time 4/4
 \clef "bass"
% \clef "treble"
% \numericTimeSignature
 \compressFullBarRests
 \tempo "Larghetto " 4=70
}

%minstr = "harpsichord"
%minstr = "clarinet"
%minstr = "accordion"
minstr = "bassoon"

rit = \markup \bold \italic "ritardando"

\include "v1.ily"
\include "v2.ily"
\include "v3.ily"
\include "v4.ily"

\book {
  \score {
    \new StaffGroup <<
      \new Staff {
	\set Staff.midiInstrument = \minstr
	\set Staff.instrumentName = #"Vc 1"
	\transpose f f, { \va }
      }

      \new Staff {
	\set Staff.midiInstrument = \minstr
	\set Staff.instrumentName = #"Vc 2"
%	\transpose f c' { \vb }
	\transpose f f, { \vb }
      }

      \new Staff {
	\set Staff.midiInstrument = \minstr
	\set Staff.instrumentName = #"Vc 3"
	\transpose f f, { \vc }
      }

      \new Staff {
	\set Staff.midiInstrument = \minstr
	\set Staff.instrumentName = #"Vc 4"
%	\transpose f c' { \vd }
	\transpose f f, { \vd }
      }
    >>

    \layout {}

    \midi {
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 70 4)
      }
    }
  }
}
