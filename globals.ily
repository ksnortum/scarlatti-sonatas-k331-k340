%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\language "english"

#(set-global-staff-size 18)

\header { 
  composer = "Domenico Scarlatti (1685-1757)"
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = \markup { 
    \center-column { \concat {
      "Copyright © 2026 " \with-url #"https://github.com/ksnortum" 
      "Knute Snortum." " Licensed under " 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "CC BY-SA 4.0"
    } }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = #5

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1))
    
  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 60))

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30))
    
  top-system-spacing.minimum-distance = #10
    
  #(set-paper-size "letter")

  two-sided = ##t
  inner-margin = 11\mm
  outer-margin = 9\mm
}

\layout {
  \context {
    \Score
    % \omit BarNumber
    \override Slur.details.free-head-distance = #0.75
    \override PhrasingSlur.details.free-head-distance = #0.75
    \override Stem.details.beamed-lengths = #'(3.5 3.9)
  }
  \context {
    \Voice
    \override Tie.minimum-length = #2.5
  }
  % Helps keep dynamics from intersecting the span bar line.
  \context { 
    \Dynamics
    \consists Pure_from_neighbor_engraver
    \remove Bar_engraver
  }
}

\midi {
  % Dynamics are mostly in the staff, not the voice
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }        
  \context {
    \Score
    midiMinimumVolume = #0.01
    midiMaximumVolume = #0.99
  }
}

%
% Definitions
%

addArticulation =
#(define-music-function (articul music) (symbol? ly:music?)
   (for-some-music
     (lambda (m)
       (if (or (music-is-of-type? m 'note-event)
               (music-is-of-type? m 'event-chord))
           (begin
             (ly:music-set-property!
               m
               'articulations
               (cons
                 (make-music 'ArticulationEvent 'articulation-type articul)
                 (ly:music-property m 'articulations)))
             #t)
           #f))
     music)
   music)
%% Usage:
% \addArticulation #'staccato { c' d' <e' f'> }

addStaccato =
#(define-music-function (music) (ly:music?)
  (addArticulation 'staccato music)) 
%% Usage:
% \addStaccato { c' d' <e' f'> }

parenLeft =
\once\override Parentheses.stencils =
#(grob-transformer 'stencils
                    (lambda (grob stils)
                      (list (first stils) empty-stencil)))
parenRight =
\once\override Parentheses.stencils =
#(grob-transformer 'stencils
                    (lambda (grob stils)
                      (list empty-stencil (second stils))))
%%%%%% Example:
% {
%   \override Parentheses.font-size = #5
%   \parenLeft <c \parenthesize c'>
%   d' e' f'
%   \parenRight \parenthesize g'
% }

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd  = \sustainOn
su  = \sustainOff
sud = \sustainOff\sustainOn

voiceUp = {
  \change Staff = "upper"
  \voiceFour 
}
voiceDown = {
  \change Staff = "lower"
  \voiceThree 
}
oneVoiceUp = {
  \change Staff = "upper"
  \oneVoice
}

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}
tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}

% Offset slur positions
osp =
#(define-music-function (offsets) (number-pair?)
  #{
     \once \override Slur.control-points =
       #(lambda (grob)
          (match-let ((((_ . y1) _ _ (_ . y2))
                       (ly:slur::calc-control-points grob))
                      ((off1 . off2) offsets))
            (set! (ly:grob-property grob 'positions)
                  (cons (+ y1 off1) (+ y2 off2)))
            (ly:slur::calc-control-points grob)))
  #})
%% Usage:
%
% \relative c'' {
%   \osp #'(0 . 2)
%   c4( c, d2)
% }

beamTriplets.22 = \set Timing.beamExceptions = \beamExceptions {
   8[ 8 8 8] 8[ 8 8 8] | 
   \tuplet 3/2 { 8[ 8 8]  8[ 8 8]  8[ 8 8]  8[ 8 8] } |
   16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16]
}
beamEighths.22 = \set Timing.beamExceptions = \beamExceptions {
  8[ 8 8 8] 8[ 8 8 8] | 
  16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] 16[ 16 16 16] |
}

trillAbove = \tweak outside-staff-priority #9999 \etc
insideSlur = \tweak avoid-slur #'inside \etc
graceSpacing = \once \override Score.GraceSpacing.spacing-increment = 0
csBracket = 
  \once \override PianoStaff.Arpeggio.stencil = #ly:chord-bracket::print
\defineBarLine "!|" #'("!|" ".|:" "!|")

clefThenBarAtEndOfLine =
  \breakAlignInsert #end-of-line-visible clef before staff-bar
  
clefAfterBarAtEndOfLine =
  \breakAlignInsert #end-of-line-visible clef after staff-bar

%
% Markup
%

trillNatural = \markup \teeny \concat { " " \natural }
trillFlat = \markup \teeny \concat { " " \flat }
rit = \markup \large \italic rit.
pocoRit = \markup \large \italic "poco rit."
moltoRit = \markup \large \italic "molto rit."
aTempo = \markup \large \italic "a tempo"
sempreF = \markup { \large \italic sempre \dynamic f }
