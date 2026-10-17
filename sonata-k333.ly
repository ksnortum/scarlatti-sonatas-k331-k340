%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.333"
  source = "https://ks15.imslp.org/files/imglnks/usimg/4/43/IMSLP914818-PMLP524574-E4488_42-44-Scarlatti_-_Keyboard_Sonatas,_L.259-271.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.5 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0 . -2.8) (0 . -2.5) (0.2 . -2.3) (0 . -2.3))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0.1) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -0.5)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -0.5)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . -2.5)) \etc
slurShapeH = \shape #'((0 . -1.5) (-2 . 1) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (-0.5 . 0) (-0.5 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . -0.5))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0.5 . 1) (0 . -1))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeN = \shape #'((0.5 . -1.5) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeO = \shape #'((0.5 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc

tieShapeA = \shape #'((-0.2 . 0.7) (-0.2 . 1) (1 . 1) (1 . 0.7)) \etc
tieShapeB = \shape #'((0 . -0.4) (0 . -0.5) (1 . -0.5) (1 . -0.4)) \etc

%
% Music
%

global = {
  \time 2/2
  \key d \major
  \override Timing.TimeSignature.style = #'numbered
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    r4 d''-. d( fs) |
    fs4( a)  a8( g fs e |
    d2) r |
    R1 |
    r4 a'-\slurShapeB ( g fs |
    b,4-.) e-. \afterGrace 15/16 cs2-\slurShapeA (\trill { b16 cs } |
    d4) a'( g fs |
    b,4-.) e-. \afterGrace 15/16 cs2-\slurShapeA (\trill { b16 cs } |
    
    \barNumberCheck 9
    d4) \osp #'(2.5 . 0) a( d fs) |
    fs4( e2.) |
    r4 \osp #'(2.5 . 0) g,( cs e) |
    e4( d2.) |
    r4 d( fs d) |
    r4 d( fs d) |
    r4 cs( e cs) |
    r4 cs( e cs) |
    
    \barNumberCheck 17
    r4 fs8( e  d cs b a |
    a'8 gs fs e  ds cs b a |
    gs4) \osp #'(-0.5 . 1.5) b( d! b |
    gs4) b( d b) |
    r4 e-. gs,( a) |
    r4 b'-. e,( d) |
    r4 \voiceOne cs8( cs  gs'4 a) |
    \oneVoice r4 \voiceOne cs,8( cs  gs'4 a) |
    
    \barNumberCheck 25
    \oneVoice r4 \voiceOne cs,8( cs  gs'4 a) |
    \oneVoice r4 \voiceOne cs,8-\slurShapeD ( cs  gs'4 a~ |
    \oneVoice a8) e\slurShapeE ( fs cs  d b e d |
    cs4 \stemDown b8 a \afterGrace 15/16 b2-\insideSlur \trill { a16 b) } |
    r4 \voiceOne cs8( cs  gs'4 a) |
    \oneVoice r4 \voiceOne cs,8( cs  gs'4 a) |
    \oneVoice r4 \voiceOne cs,8( cs  gs'4 a) |
    \oneVoice r4 \voiceOne cs,8( cs  gs'4 a~ |
    
    \barNumberCheck 33
    \oneVoice a8) e-\slurShapeF ( fs cs  d b e d |
    cs4 \stemDown b8 a \afterGrace 15/16 b2-\insideSlur \trill { a16 b } |
    \stemNeutral a4) e'8( d  \stemDown cs b a gs |
    fs'4-.) d2( cs8 b |
    cs4) \osp #'(0 . 3) e8( d  cs b a gs |
    \stemNeutral fs4-.) b-. \afterGrace 15/16 gs2(\trill { fs16 gs } |
    a4) a'8\slurShapeG ( gs  fs e d cs |
    b8 a gs fs  e d cs b |
    \alternative {
      { 
        \barNumberCheck 41
        a1) |
      }
      { 
        \time 6/8
        a4.-\tieShapeA ^\repeatTie
        \bar "!|"
      }
    }
  }
  \repeat volta 2 {
    r4 r8 |
    R2. |
    r4 r8 a'( b cs |
    d8 e fs  e d cs |
    d4.) <c d>( |
    <b d>4.) \voiceOne ds8( e ds |
    \oneVoice <g, e'>4.) b( |
    
    \barNumberCheck 49
    <as e'>4. <g! e'>) |
    \voiceOne fs'4. r4 r8 |
    g4. e |
    \oneVoice as,8 g'-\slurShapeJ ( e  as, b as |
    b8 g' e  as, b as |
    b8 cs d  e fs g |
    fs8 e d  cs b as |
    b8 fs' a,!  g fs g |
    
    \barNumberCheck 57
    fs8) fs'-\slurShapeK ( a,  g fs g |
    a8 e' g,  fs e fs |
    \stemDown e8) e'( g, \stemUp fs e fs |
    e8 fs g  a b cs |
    \stemNeutral d8 e fs  e4 d8 |
    cs8) a'-\slurShapeL \( d,  cs d cs |
    d8 a' d,  cs d cs |
    d8 fs a,  g e' g, |
    
    \barNumberCheck 65
    fs8 e' d  b a' g |
    fs8 e d \grace { e16( } \afterGrace 15/16 d4.)\trill { d16 e } |
    d8\) a'-\slurShapeL \( d,  cs d cs |
    d8 a' d,  cs d cs |
    d8 fs a,  g e' g, |
    fs8 e' d  b a' g |
    fs8 e d \grace { e16( } \afterGrace 15/16 d4.)\trill { d16 e } |
    d8\) a'-\slurShapeM ( fs  e a, g |
    
    \barNumberCheck 73
    fs8) a'( fs  e a, g |
    fs8) d'( cs  b a g |
    fs8 e d) \grace { e'16( } \afterGrace 15/16 e4.)-\slurShapeN (\trill
      { d16 e } |
    fs8 d cs  b a g |
    fs8 e d) \grace { e'16( } \afterGrace 15/16 e4.)-\slurShapeO (\trill
      { d16 e } |
    d4.)
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1*16 |
    
    \barNumberCheck 17
    s1*6 |
    s4 \voiceFour a'2. |
    s4 a2. |
    
    \barNumberCheck 25
    s4 a2. |
    s4 a2. |
    s1*2 |
    s4 a2. |
    s4 a2. |
    s4 a2. |
    s4 a2. |
    
    \barNumberCheck 33
    s1*8 |
    \alternative {
      { 
        \barNumberCheck 41
        s1 | 
      }
      { 
        \time 6/8
        s4.
      }
    }
  }
  \repeat volta 2 {
    s4. |
    s2.*4 |
    s4. a |
    s2. |
    
    \barNumberCheck 49
    s2. |
    e'8( d cs  d e fs) |
    fs8( e d)  d-\slurShapeI ( cs b |
    \hideNoteHead as8) s4 s4. |
    s2.*4 |
    
    \barNumberCheck 57
    s2.*16 |
    
    \barNumberCheck 73
    s2.*5 |
    s4.
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    d2 r |
    R1 |
    r4 \clef treble d'-. d( fs) |
    fs4( a)  a8( g fs e |
    d4) d( e fs |
    g4 e a g |
    fs4) d( e fs |
    g4 e a g |
    
    \barNumberCheck 9
    fs2) r |
    r4 g8( fs  e d cs b |
    a2) r |
    r4 fs'8( e  d cs d e |
    fs2) fs( |
    gs2) gs( |
    a2) a( |
    cs,2) cs( |
    
    \barNumberCheck 17
    d2) d( |
    ds2) ds( |
    e2) e( |
    d!2) d( |
    cs2) cs-\slurShapeC _( |
    \clef bass gs2) gs( |
    a2) a( |
    gs2) gs( |
    
    \barNumberCheck 25
    fs2) fs( |
    e2) e( |
    d2) \osp #'(0 . 2.5) d( |
    e2 e, |
    a2) a'( |
    gs2) gs( |
    fs2) fs( |
    e2) e( |
    
    \barNumberCheck 33
    d2) \osp #'(0 . 2.5) d( |
    e2 e, |
    a2) cs_( |
    d2 e |
    a,2) cs_( |
    d2 e |
    a,2) \osp #'(-2.5 . 0) d_( |
    e2 e, |
    \alternative {
      { 
        \barNumberCheck 41
        a1) |
      }
      { 
        \time 6/8
        a4.-\tieShapeB \repeatTie
      }
    }
  }
  \repeat volta 2 {
    \osp #'(-0.5 . 0) a'8( b cs |
    \clef treble d e fs  g a b) |
    cs,8_( d e \clef bass a,4 g8 |
    fs4 d8 g4 a8 |
    d,8) d'( e  fs e d |
    g8 g, g' fs4. |
    e8) e,( e'  d) d,( d' |
    
    \barNumberCheck 49
    cs8) cs,( cs'  b) b,-\slurShapeH ( b' |
    as4. b8 cs d |
    e4. g |
    fs4.~ fs8) g( fs |
    g4. fs8 g fs |
    g4.~ g8 fs e |
    d8 cs b  e4 fs8 |
    ds4. e8 ds e |
    
    \barNumberCheck 57
    ds4. e8 ds e |
    cs4. d!8 cs d |
    cs4. d8 cs d |
    cs4 b8 a4 g8 |
    fs8 e d  g a b |
    a4.) 
    << 
      { 
        \voiceThree e'8( fs e |
        fs4.) e8( fs e |
      } 
      \new Voice {
        \voiceTwo a,4. |
        a4. a |
      } 
    >>
    \oneVoice <a fs'>4.) <a e'>( |
    
    \barNumberCheck 65
    d4. g, |
    a4. a, |
    a'4.) << 
      { 
        \voiceThree e'8( fs e |
        fs4.) e8( fs e |
      } 
      \new Voice {
        \voiceTwo a,4. |
        a4. a |
      } 
    >>
    \oneVoice <a fs'>4.) <a e'>( |
    d4. g, |
    a4. a, |
    d4.) cs'( |
    
    \barNumberCheck 73
    d4. cs |
    d4.) g,( |
    a4. a, |
    d4.) g( |
    a4.) a,( |
    d,4.)
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\p |
    s1*3 |
    s4 s2.\mf |
    s1 |
    s4 s2.-\tweak Y-offset #0 \p |
    s1 |
    
    \barNumberCheck 9
    s1*5 |
    s2.\< s4\! |
    s1\mf |
    s1 |
    
    \barNumberCheck 17
    s1\cresc |
    s1 |
    s4\f s2.\p |
    s1\cresc |
    s1*2 |
    s1\f |
    s1 |
    
    \barNumberCheck 25
    s1*4 |
    s1\p |
    s1*3 |
    
    \barNumberCheck 33
    s1*2 |
    s4 s2.\f |
    s1 |
    s4 s2.\p |
    s1 |
    s4 s2.\f |
    s1 |
    \alternative {
      { 
        \barNumberCheck 41
        s1 | 
      }
      {  
        \time 6/8
        s4.-\tweak Y-offset #-1.5 \f
      }
    }
  }
  \repeat volta 2 {
    s4.\f |
    s2.*6 |
    
    \barNumberCheck 49
    s2.*3 |
    s8 s4\p s4. |
    s2.\cresc |
    s2.*2 |
    s2.\f |
    
    \barNumberCheck 57
    s2.*8 |
    
    \barNumberCheck 65
    s2.*2 |
    s8 s4-\tweak Y-offset #-5.5 \p s4. |
    s2.\cresc |
    s2.*3 |
    s2.-\tweak Y-offset #-2.5 \f |
    
    \barNumberCheck 73
    s2.*5 |
    s4.
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 112
    s1*32 |
    
    \barNumberCheck 33
    s1*7 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 2 = 104 s \tempo 2 = 96 s \tempo 2 = 88 s |
    \alternative {
      { 
        \barNumberCheck 41
        \tempo 2 = 80
        s1 |
      }
      {  
        \time 6/8
        \tempo "Allegrissimo" 4. = 144
        s4.
      }
    }
  }
  \repeat volta 2 {
    \tempo 4. = 144
    s4. |
    s2.*6 |
    
    \barNumberCheck 49
    s2.*24 |
    
    \barNumberCheck 73
    s2.*3 |
    \tag layout { s2.*2 | s4. }
    \tag midi {
      \alternative {
        {
          s4. \tempo 4. = 132 s |
          \tempo 4. = 120 s4. \tempo 4. = 112 s |
          \tempo 4. = 104 s4.
        }
        {
          s4. \tempo 4. = 126 s |
          \tempo 4. = 112 s4. \tempo 4. = 100 s |
          \tempo 4. = 40 s4.
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*5 \break
  s1*5 \break
  s1*6 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 2
  s1*5 \break
  s1*5 \break
  s1*5 s4. \break
  s4. s2.*5 \break
  s2.*5 \pageBreak
  
  % page 
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
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
