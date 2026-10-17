%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.335"
  source = "https://s9.imslp.org/files/imglnks/usimg/8/8c/IMSLP914595-PMLP476185-E4611_37-40-Scarlatti_-_Keyboard_Sonatas,_Supp_01-16.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.5))
                        ((0 . 0.2) (0 . 0.5) (0 . 1) (0 . -1.5))
                      ) \etc
slurShapeB = \shape #'((0 . -1) (0 . 0.5) (0 . 1) (0 . -1)) \etc
slurShapeC = \shape #'(
                        ((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0.75) (0 . 0) (0 . 0) (0 . 0.5))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -0.5))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 2.5) (0.3 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeH = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -1)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -2)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . -0.75) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . -0.75) (0 . 1) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeO = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -1)) \etc
slurShapeP = \shape #'((0.5 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc

moveNoteA = \tweak NoteHead.extra-spacing-width #'(-1 . 0) \etc

%
% Music
%

global = {
  \time 2/2
  \key d \major
  \override Timing.TimeSignature.style = #'numbered
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    r4 \osp #'(-0.5 . 0) d''8( a d4-.) e-. |
    fs4( a8 d, e4-.) cs-. |
    r4 \osp #'(-0.5 . 0) d8( a d4-.) e-. |
    fs4( a8 d, e4-.) cs-. |
    d2 a'-\slurShapeA \(~ |
    a2 \grace { g8( } \afterGrace 15/16 g2)\trill { fs16 g } |
    fs2\) a-\slurShapeB \( |
    a2 \grace { g8( } \afterGrace 15/16 g2)\trill { fs16 g } |
    
    \barNumberCheck 9
    fs4-.\) d8( a fs'4-.) a,( |
    g4-.) \stemDown cs8( g e'4-.) \stemNeutral g,( |
    fs4-.) fs'8( d a'2~ |
    a4 b8 d, cs4-.) d-. |
    e4( fs8 g a2~ |
    a4 b8 d, cs4-.) d-. |
    e4( a8 e  a4-.) a8( e |
    a4-.) a8( e a4-.) e-. |
    
    \barNumberCheck 17
    a1\fermata |
    \bar "||"
    R1 |
    r4 a8( d, cs4 d8 e) |
    \appoggiatura { e8 } f2 r |
    r4 a8( d, cs4 d8 e) |
    \appoggiatura { e8 } f2 r |
    f4(\prall e8 f  g e f d) |
    \appoggiatura { d8 } e2 r |
    
    \barNumberCheck 25
    r4 g8( c, b4 c8 d) |
    \appoggiatura { d8 } e2 r |
    r4 g8( c, b4 c8 d |
    e4) \osp #'(-0.5 . 0) c'8( e, c'4-.) e,( |
    d4) \osp #'(-0.5 . 0) b'8( d, b'4-.) d,( |
    c4-.) \osp #'(-0.5 . 0) a'8( c, a'4-.) \osp #'(-1 . 0) c,4( |
    b8 a' f d  b4-.) a-. |
    gs4-. \osp #'(-0.5 . 0) e'8( b e4-.) e8( b |
    
    \barNumberCheck 33
    e4-.) \osp #'(-0.5 . 0) e8( b e4-.) b-. |
    e1\fermata |
    \bar  "||"
    R1 |
    r4 a8( e d4 c8 b) |
    \appoggiatura { b8 } c2 r |
    r4 a'8-\slurShapeE ( e d4 c8 b |
    c4-.) ds2( e8 fs |
    b,4-.) b'8( e, d!4 c8 b |
    
    \barNumberCheck 41
    c4-.) ds2( e8 fs |
    b,4-.) b'8( e, d!4 cs!8 b |
    cs8)-\slurShapeD ( a a' a,  cs a a' a, |
    cs8 a a' a,  cs a a' a, |
    fs'8 d e cs  d b cs a' |
    cs,8 a' gs fs  e d cs b |
    cs8)-\slurShapeC ( a a' a,  cs a a' a, |
    cs8 a a' a,  cs a a' a, |
    
    \barNumberCheck 49
    fs'8 d e cs  d b cs a' |
    cs,8 a' gs fs  e d cs b |
    a4-.) ds2( e8 fs |
    e,4) d'!2( cs8 b |
    cs4-.) ds2-\slurShapeG ( e8 fs |
    e,4) d'!2-\slurShapeH \( cs8 b |
    cs8 a' e cs  fs d b a' |
    a,2 \grace { gs8( } \afterGrace 15/16 gs2)-\insideSlur \trill { fs16 gs } |
    
    \barNumberCheck 57
    a8\) cs-\slurShapeI ( b a  fs d' cs b |
    e,2 \afterGrace 15/16 b'-\insideSlur \trill { a16 b } |
    a1) |
  }
  \repeat volta 2 {
    r4 \osp #'(-0.5 . 0) cs8( a cs4-.) d-. |
    e4-. \stemDown \osp #'(-0.5 . 0) cs8( g cs4-.) e-. |
    \moveNoteA g4( fs8 e d4 cs |
    d2) fs |
    fs2( e |
    
    \barNumberCheck 65
    d2) fs |
    \osp #'(-0.5 . 0) fs2( e |
    d4-.) \osp #'(-0.5 . 0) b'8( d, b'4-.) d,-. |
    r4 \osp #'(-0.5 . 0) b'8( d, b'4-.) d,-. |
    r4 \osp #'(-0.5 . 0) g8( cs, g'4-.) cs,-. |
    r4 \osp #'(-0.5 . 0) g'8( b, g'4-.) b,-. |
    \stemNeutral r4 \osp #'(-0.5 . 0) g'8( a, g'4-.) a,-. |
    r4 \osp #'(-0.5 . 0) fs'8( a, fs'4-.) a,-. |
    
    \barNumberCheck 73
    r4 \osp #'(-0.5 . 0) e'8( g, e'4-.) g,-. |
    r4 \osp #'(-0.5 . 0) e'8( g, e'4-.) g,-. |
    fs4-. \stemDown \osp #'(-0.5 . 0) d'8( fs, d'4-.) \stemNeutral fs,-. |
    e4-. as2( b4~ |
    b8 a! g fs  e'4-.) d-. |
    cs4-. \osp #'(0.5 . 0) a8( e a4-.) \osp #'(0.5 . 0) a8( e |
    a4-.) \osp #'(0.5 . 0) a8( e a4-.) e-. |
    a1\fermata |
    \bar "||"
    
    \barNumberCheck 81
    R1 |
    % Source does not have the slur
    r4 d'8( a g4 f8 e) |
    \appoggiatura { e8 } f2 r |
    r4 d'8( a g4 f8 e |
    f4-.) gs2-\slurShapeL ( a8 b |
    a,4-.) g'!2( f8 d |
    f4-.) gs2( a8 b |
    a,4-.) g'!2( fs!8 d |
    
    \barNumberCheck 89
    fs8)-\slurShapeM ( d d' d,  fs d d' d, |
    fs8 d d' d,  fs d d' d, |
    b'8 g a fs  g e fs d' |
    fs, d' cs b  a g fs e |
    fs8)-\slurShapeN ( d d' d,  fs d d' d, |
    fs8 d d' d,  fs d d' d, |
    b'8 g a fs  g e fs d' |
    fs, d' cs b  a g fs e |
    
    \barNumberCheck 97
    d4-.) a'8( d, a'4-.) \osp #'(-2 . 0) c,4( |
    b8 b' g e cs!4 d8 e |
    a,4-.) e'-. \grace { e16( } e2)\trill |
    e8-. b'-\slurShapeO ( g e  cs4 d8 e |
    a,8 fs' e d \afterGrace 15/16 e2-\insideSlur \trill { d16 e } |
    d8-.) a'( g fs  b g fs e |
    a,2) \afterGrace 15/16 e'2-\slurShapeP (\trill { d16 e } |
    d1) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R1*4 |
    r4 \osp #'(-0.5 . 0) d'8( a d4-.) e-. |
    fs4( a8 d, e4-.) cs-. |
    r4 \osp #'(-0.5 . 0) d8( a d4-.) e-. |
    fs4( e8 d  e4 d8 cs |
    
    \barNumberCheck 9
    d2) d( |
    e2 cs |
    d2.) fs,4( |
    g4 fs e-.) d-. |
    a2. fs'4( |
    g4 fs e-.) d-. |
    a2 a |
    a2 a |
    
    \barNumberCheck 17
    a1_\fermata |
    d4( f) a-. d-. |
    f2( e) |
    d,4( f) a-. d-. |
    f2( e) |
    d,4( f) a-. d-. |
    g,2 g |
    c,4( e) g-. c-. |
    
    \barNumberCheck 25
    e2( d) |
    c,4( e) g-. c-. |
    e2( d |
    c2) \osp #'(2 . 0) c,( |
    g'2 gs |
    a2) \osp #'(2.5 . 0) a,( |
    d2) d( |
    e2) e |
    
    \barNumberCheck 33
    \osp #'(0 . 2.5) e2( e,) |
    e1_\fermata |
    a4( c) e-. a-. |
    c2( b) |
    a,4( c) e-. a-. |
    c2( b |
    a2) \osp #'(0 . 3) a( |
    gs2 e |
    
    \barNumberCheck 41
    a,2) a'( |
    gs2 e |
    a2) gs( |
    fs2 e |
    d2) d( |
    e2 e,) |
    a'2-\slurShapeF ( gs |
    fs2 e |
    
    \barNumberCheck 49
    d2) \osp #'(-2.5 . 0) d_( |
    e2 e, |
    a2) a'( |
    gs2 e |
    a,2) a'( |
    gs2 e |
    a2) \osp #'(-0.5 . 1) d,_( |
    e2 e, |
    
    \barNumberCheck 57
    a2) \osp #'(-0.5 . 1) d_( |
    e2 e, |
    a1) |
  }
  \repeat volta 2 {
    a'2 a( |
    g!2) g( |
    fs2) fs |
    r4 b8 fs b4-. cs-. |
    d4( cs8 b cs4 b8 as |
    
    \barNumberCheck 65
    b4) b8 fs b4-. cs-. |
    d4( cs8 b cs4 b8 as |
    b2) b2( |
    g2) g( |
    e2) e2-\slurShapeJ ( |
    d2) d( |
    cs2) cs( |
    ds2) ds( |
    
    \barNumberCheck 73
    e2) e( |
    cs2) cs-\slurShapeK ( |
    d2) d( |
    g2) g |
    \osp #'(0 . 2) g2( g, |
    a2) a |
    a2 a |
    a1_\fermata |
    
    \barNumberCheck 81
    \osp #'(-0.5 . 0) d4( f) a-. d-. |
    f2( e) |
    \osp #'(-0.5 . 0) d,4( f) a-. d-. |
    f2( e |
    d2) d( |
    cs2 a |
    d,2) d'( |
    cs2 a |
    
    \barNumberCheck 89
    d2) cs( |
    b2 a |
    g2) g( |
    a2 a,) |
    d'2( cs |
    b2 a |
    g2) g( |
    a2 a, |
    
    \barNumberCheck 97
    d2) fs( |
    g2) g( |
    a2) a( |
    g2) g( |
    a2 g |
    fs2) g( |
    a2) a,( |
    <d, d'>1) |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4 s2.\f |
    s1 |
    s4 s2.\p |
    s1 |
    s1-\tweak Y-offset #1.5 \cresc |
    s1*3 |
    
    \barNumberCheck 9
    s1\mf |
    s1 |
    s4 s2.\f |
    s1*5 |
    
    \barNumberCheck 17
    s1 |
    s1\mf |
    s1*4 |
    s1\f |
    s1\mf |
    
    \barNumberCheck 25
    s1*3 |
    s4 s2.\f |
    s1*4 |
    
    \barNumberCheck 33
    s1*2 |
    s1\mf |
    s1*5 |
    
    \barNumberCheck 41
    s1*6 |
    s1\p |
    s1 |
    
    \barNumberCheck 49
    s1*2 |
    s4 s2.\mf |
    s1*5 |
    
    \barNumberCheck 57
    s1*3 |
  }
  \repeat volta 2 {
    s1\mf |
    s2 s\< |
    s1\f |
    s4 s2.\p |
    s1 |
    
    \barNumberCheck 65
    \override DynamicLineSpanner.Y-offset = #0.5
    s1\cresc |
    s1 |
    s1\mf |
    s1*5 |
    
    \barNumberCheck 73
    s1*5 |
    s1\f |
    s1*2 |
    
    \barNumberCheck 81
    s1\mf |
    s1*7 |
    
    \barNumberCheck 89
    s1*4 |
    s1\p |
    s1*3 |
    
    \barNumberCheck 97
    s4 s2.\mf |
    s1*4 |
    s1\cresc |
    s1 |
    s1\f |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 120
    s1*16 |
    
    \barNumberCheck 17
    \set Score.tempoHideNote = ##t
    \tempo 2 = 80
    s1 |
    \tempo 2 = 120
    s1*7 |
    
    \barNumberCheck 25
    s1*8 |
    
    \barNumberCheck 33
    s1 |
    \tempo 2 = 80
    s1 |
    \tempo 2 = 120
    s1*6 |
    
    \barNumberCheck 41
    s1*16 |
    
    \barNumberCheck 57
    s1 |
    \tempo 2 = 108 s2 \tempo 2 = 96 s |
    \tempo 2 = 84 s1 |
  }
  \repeat volta 2 {
    \tempo 2 = 120
    s1*5 |
    
    \barNumberCheck 65
    s1*8 |
    
    \barNumberCheck 73
    s1*7 |
    \tempo 2 = 80
    s1 |
    
    \barNumberCheck 81
    \tempo 2 = 120
    s1*16 |
    
    \barNumberCheck 97
    s1*6 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 2 = 108 s2 \tempo 2 = 96 s |
          \tempo 2 = 84 s1 |
        }
        {
          \tempo 2 = 104 s2 \tempo 2 = 88 s |
          \tempo 2 = 60 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*6 \break
  \grace { s8 } s1*5 \pageBreak
  
  % page 2
  s1*6 \break
  s1*6 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 3
  s1*6 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*6 \pageBreak
  
  % page 4
  s1*5 \break
  s1*5 \break
  s1*4 \break
  s1*5 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
