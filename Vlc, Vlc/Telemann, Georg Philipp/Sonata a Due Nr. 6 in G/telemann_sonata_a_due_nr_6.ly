\version "2.14.2"
\include "deutsch.ly"

#(set-global-staff-size 16.75)

\header {
  title     = \markup \bold \italic "Sonata a Due, Nr. 6"
  subtitle  = "- aus den 6 Sonaten für zwei Violoncelli -"
  composer  = "Georg Philipp Telemann"
  arranger  = "(1681-1767)"
  enteredby = "cellist (2015-03-02)"
  piece     = "TWV 40:106 (1727)"
}

voiceconsts = {
  \key g \major
  \clef "bass"
  %\numericTimeSignature
  \compressFullBarRests
  % Set default beaming for all staves
%  \set Timing.beamExceptions = #'()
%  \set Timing.baseMoment     = #(ly:make-moment 1 4)
%  \set Timing.beatStructure  = #'(1 1 1)

}

%mihi = "clarinet"
mihi = "trumpet"
mist = "string ensemble 1"
miba = "drawbar organ"
%mikl = "acoustic grand"

introa = {            \tempo "1. Affettuoso " 4=70  \time  4/4 }
introb = { \break     \tempo "2. Presto "     4=200 }
introc = { \pageBreak \tempo "3. Soave "     4.=50  \time  3/8 }
introd = { \break     \tempo "4. Spirituoso " 4=90  \time  2/4 
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
}

\include "v1.ily"
\include "v2.ily"

music = \new StaffGroup <<
      \new Staff {
        \set Staff.midiInstrument = \mist
        \set Staff.instrumentName = \markup \center-column { "Violon-" "cello I" }
        \transpose g g { \va }
      }

      \new Staff {
        \set Staff.midiInstrument = \mist
        \set Staff.instrumentName = \markup \center-column { "Violon-" "cello II" }
        \transpose g g { \vb }
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
