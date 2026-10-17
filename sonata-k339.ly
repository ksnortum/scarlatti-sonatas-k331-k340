%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C major"
  opus   = "K.339"
  source = "https://s9.imslp.org/files/imglnks/usimg/2/22/IMSLP914091-PMLP525720-E4487_20-23-Scarlatti_-_Keyboard_Sonatas,_L.246-258.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0.5) (0 . -0.5) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1.5)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0.25) (0 . 0.5))
                        ((0 . 0.5) (0 . 0.25) (0.25 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'((0 . -0.3) (0 . 0.3) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((0 . -0.2) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0.25 . -1) (0 . 2) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . -1))
                      ) \etc
slurShapeG = \shape #'(
                        ((0.25 . -0.5) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . -1))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0.2) (0 . 0.5) (0 . 0) (0 . 0))
                        ((0 . 3.2) (0 . 3.2) (0 . 3.2) (0 . 3.2))
                      ) \etc
slurShapeI = \shape #'((0 . 2.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0.5 . -0.25) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 2/2
  \key c \major
  \override Timing.TimeSignature.style = #'numbered
  \beamTriplets.22
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    r4 \osp #'(-0.5 . 0) c''( b c |
    e8 c g' f  e4-.) d-. |
    c2 g'(~ |
    g4 b, c-.) d-. |
    e8-\slurShapeA \( g, a e \grace { g16( } f2)\trill |
    e2\) r4 \grace { b'16(\( } \stemUp \afterGrace 15/16 b4)\trill { a16 b } |
    c8 g a e \grace { g16( } f2)\trill |
    e2\) r4 \grace { f'16( g } \stemNeutral a4) |
    
    \barNumberCheck 9
    g8( e f d  e c d b |
    c2) r4 \grace { g'16( a } b4) |
    a8( fs g e  fs d e cs |
    d2) r4 e( |
    d4) c-. b-. a-. |
    d2-\tag layout \prallprall -\tag midi \prall r4 e( |
    d4) c-. b-. a-. |
    d2-\tag layout \prallprall -\tag midi \prall r4 d---\slurShapeC ( |
    
    \barNumberCheck 17
    d4-.) <d f>( <d ef>-.) <c ef>( |
    <b d>4 c) af'2-\slurShapeD (~ |
    af4 g8 f  ef d c b) |
    \appoggiatura { b4 } c2 r4 e!--( |
    e4-.) <e g>( <e f>) <d f>( |
    <cs e> d4) bf'2-\slurShapeE (~ |
    bf4 a8 g  f e d cs) |
    a'16( g fs e  d c! b a  g fs e d) r4 |
    
    \barNumberCheck 25
    a''16( g fs e  d c b a  g fs e d) r4 |
    r2 r4 <e' c'>( |
    <d b'>4 <b g'> <c a'> <g e'> |
    <a fs'>4 <b g'>8 <a fs'> <b g'>4) <e c'>( |
    <d b'>4 <b g'> <c a'> <g e'> |
    <a fs'>4 <b g'>8 <a fs'> <b g'>4) d4 |
    \grace { d16( } d4)-\slurShapeF \(~\trill d16 c b32 c d e \grace { d16( }
      d4)~\trill d16 c b32 c d e |
    \grace { d16( } d4)~\trill d16 c b32 c d e d4.-\insideSlur \trill c16 d |
    
    \barNumberCheck 33
    \tuplet 3/2 4 { e8 d c  b a g } g4-.\) fs-.\prall |
    g2 r4 d' |
    \grace { d16( } d4)-\slurShapeG \(~\trill d16 c b32 c d e \grace { d16( }
      d4)~\trill d16 c b32 c d e |
    \grace { d16( } d4)~\trill d16 c b32 c d e d4.-\insideSlur \trill c16 d |
    \tuplet 3/2 4 { e8 d c  b a g } g4-.\) fs-.\prall |
    \stemDown \osp #'(-2.5 . 0) g16( a b c  d e fs g  \stemNeutral g,4-.)
      fs-.\prall |
    \stemDown \osp #'(-2.5 . 0) g16( a b c  d e fs g  \stemNeutral g,4-.)
      fs-.\prall |
    \stemDown \osp #'(-2.5 . 0) g16( a b c  d e fs g  \stemNeutral g,4-.)
      fs-.\prall |
    
    \barNumberCheck 41
    \alternative {
      { g1-\tag layout \prallprall -\tag midi \prall | }
      { g1~-\tag layout \prallprall -\tag midi \prall | }
    }
  }
  g4
  \repeat volta 2 {
    \csBracket gs4(^\<\arpeggio a2~\! |
    a4 gs^\< a2\! |
    gs4) <gs e'>( <a fs'>) <d a'>(_~ |
    <d b'>4 <e c'>2 \voiceOne b'8 a |
    \override Parentheses.font-size = #-3
    \oneVoice <\parenthesize d, b'>4 e) r \grace { a16( b }
      c4)-\slurShapeH (~ |
    c16 b a gs  fs e d c  b a gs fs  e d c b |
    
    \barNumberCheck 49
    a4-.) s2. |
    s4 \voiceOne d'-\slurShapeI ( g4. f16 e |
    \hideNoteHead f4) s2 a4( |
    g2*1/2) \oneVoice c,4\( d e |
    \grace { f16( } f4.)\trill e16 d \grace { e16( } e4.)\trill d16 c |
    d4-.\) g2( e4 |
    d16 g f e  d c b a  g f e d  c b a g) |
    r4 g'' g2-\tag layout \prallprall -\tag midi \prall |
    
    \barNumberCheck 57
    r4 g g2-\tag layout \prallprall -\tag midi \prall |
    r16 c( b a  g f e d  c b a g  f e d c |
    a'16 g f e  d c b a \clef bass d c b a  g f e d) |
    r4 \clef treble g'' g2-\tag layout \prallprall -\tag midi \prall |
    r4 g g2-\tag layout \prallprall -\tag midi \prall |
    r16 \osp #'(0 . -0.5) c( b a  g f e d  c b a g  f e d c |
    a'16 g f e  d c b a \clef bass d c b a  g f e d) |
    r4 \clef treble g'' \grace { g16( } g4)-\slurShapeJ \(~\trill
      g16 f e32 f g a |
    
    \barNumberCheck 65
    \grace { g16( } g4)~\trill g16 f e32 f g a \grace { g16( } g4.)\trill
      f16 g |
    \tuplet 3/2 4 { a8 g f  e d c\) }  c4-. b-.\prall |
    \osp #'(-3 . 0) c16( d e f  g a b c  c,4-.) b-.\prall |
    \osp #'(-3 . 0) c16( d e f  g a b c  c,4-.) b-.\prall |
    \osp #'(-3 . 0) c16( d e f  g a b c  c,4-.) b-.\prall |
    \alternative {
      { c4-. }
      { c1-\tag layout \prallprall -\tag midi \prall | }
    }
  }
  \fine
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1*40 |
    
    \barNumberCheck 41
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
  s4
  \repeat volta 2 {
    s2. |
    s1*2 |
    s2. \voiceFour d''4 |
    s1*2 |
    
    \barNumberCheck 49
    s4 \osp #'(-3 . -2.5) e2( d4 |
    cs4 bf a2 |
    f'4) e2( d8 c |
    b4) s2. |
    s1*4 |
    
    \barNumberCheck 57
    s1*8 |
    
    \barNumberCheck 65
    s1*5 |
    \alternative {
      { s4 }
      { s1 | }
    }
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s1*24 |
    
    \barNumberCheck 25
    s1*2 |
    s2. \voiceThree cs'4( |
    d4 c! b2) |
    s2. \voiceThree cs4( |
    d4 c! b2) |
    \oneVoice <g b>4( <a c> <b d> <c e> |
    \voiceThree d2) d |
    
    \barNumberCheck 33
    s1*2 |
    \oneVoice <g, b>4( <a c> <b d> <c e> |
    \voiceThree d2) d |
    s1*4 |
    
    \barNumberCheck 41
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
  r4
  \repeat volta 2 {
    \csBracket d2(\arpeggio c4 |
    b4 d2 c4 |
    b4) e2( d!4~ |
    d4 c2 d4) |
    s1*2 |
    
    \barNumberCheck 49
    s4 \hideNoteHead e4( s2 |
    e4 d cs) \oneVoice a( |
    <d f>4 <e g> \voiceThree a2) |
    s1*5 |
    
    \barNumberCheck 57
    s1*7 |
    s2. b,4( |
    
    \barNumberCheck 65
    c2) c |
    s1*4 |
    \alternative {
      { s4 }
      { s1 | }
    }
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R1*2 |
    r4 \osp #'(-0.5 . 0) c'( b c |
    e8 c g' f  e4-.) d-. |
    c2 r4 \grace { b16( } \afterGrace 15/16 b4)-\slurShapeB \(\trill
      { a16 b } |
    c8 g a e \grace { g16( } f2)\trill |
    e2\) r4 \grace { b'16( } \afterGrace 15/16 b4)\(\trill { a16 b } |
    c8 g a e \grace { g16( } \afterGrace 15/16 f2)\trill { g16 f } |
    
    \barNumberCheck 9
    e2\) r4 e'-. |
    
    a8( fs g e  fs d e cs |
    d2) r4 g-. |
    fs8( d e c  d b c a |
    b8 g a fs  g g, d' d,) |
    \osp #'(0 . -0.5) fs''8( d e c  d b c a |
    b8 g a fs  g g, d' d,) |
    <d d'>2 r |
    
    \barNumberCheck 17
    R1 |
    \addStaccato {
      r4 <af'' f'>( q q) |
      <g ef'>4( q) <g d'>( q) |
    }
    \osp #'(2.5 . 0) c,2( c') |
    R1 |
    \addStaccato {
      r4 <bf g'>( q q) |
      <a f'>4( q) <a e'>( q) |
    }
    d,2 r4 c'16( b a g) |
    
    \barNumberCheck 25
    <d, d'>2 r4 c''16( b a g) |
    <d, d'>2 r |
    r2 r4 \voiceTwo d'4~ |
    d2 r |
    \oneVoice r2 r4 \voiceTwo d4~ |
    d2 r |
    s1 |
    g4( a b g) |
    
    \barNumberCheck 33
    \oneVoice c,( c' d-.) d,-. |
    g4( d g,2) |
    s1|
    \voiceTwo g'4( a b g) |
    \oneVoice \osp #'(1 . 0) c,( c' d-.) d,-. |
    \osp #'(-0.5 . 0) b'4( c d-.) c-. |
    b4( c d-.) c-. |
    b,4( c d-.) d,-. |
    
    \barNumberCheck 41
    \alternative {
      { g1-> | }
      { g1->~ | }
    }
  }
  g4
  \repeat volta 2 {
    \voiceTwo r4 r ds'( |
    e2. ds4 |
    e4) r r2 |
    gs4( a d,) r |
    \oneVoice e16( fs gs a  b c d e  a, b c d e fs gs a) |
    e,2._( e,4 |
    
    \barNumberCheck 49
    a4-.) <a' e'>_~ <a f'>2_~ |
    \voiceTwo a2~ a4 s |
    s2 f'4 f |
    \oneVoice <g, f'>4( <g e'> <g d'> <g c> |
    b4 g c c,) |
    g'16( a b c  d e f g \clef treble c, d e f  g a b c) |
    \clef bass g,2 r |
    c,16( d e f  g a b c  g a b c  d e f g |
    
    \barNumberCheck 57
    \clef treble c, d e f  g a b c  g a b c  d e f g) |
    \clef bass c,,,,1( |
    f2 g) |
    c16( d e f  g a b c  g a b c  d e f g |
    \clef treble c, d e f  g a b c  g a b c  d e f g) |
    \clef bass c,,,,1( |
    f2 g |
    c2) r4 \voiceTwo d( |
    
    \barNumberCheck 65
    e4 d e c) |
    \oneVoice f4( f' g-.) f-. |
    e4( f g-.) f-. |
    e4( f g-.) f-. |
    e,4( f g-.) g,-. |
    \alternative {
      { c,4-. }
      { c1-> | }
    }
  }
  \fine
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4 s2.\p |
    s1 |
    s4 s2.-\tweak Y-offset #0 \mf |
    s1*4 |
    s2. s4\f |
    
    \barNumberCheck 9
    s1*7 |
    s2. s4\p |
    
    \barNumberCheck 17
    s1 |
    s2 s\mf |
    s4 s2.\p |
    s1*2 |
    s2 s\f |
    s4 s2.\p |
    s1-\tweak Y-offset #-3 \f |
    
    \barNumberCheck 25
    s1 |
    \override DynamicLineSpanner.Y-offset = #-5
    s2. s4\mf |
    s1 |
    s2. s4\p |
    s1*2 |
    s1\cresc |
    s1 |
    
    \barNumberCheck 33
    s1\f |
    s2\> s4\! s\p |
    s1\cresc |
    s1 |
    s1-\tweak extra-offset #'(0 . 1) \f |
    s1*3 |
    
    \barNumberCheck 41
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
  s4
  \repeat volta 2 {
    s2.\p |
    s1 |
    s4 s2.\cresc |
    s4 s2.-\tweak Y-offset #0 \f |
    s4\> s2\! \grace { s8-\tweak Y-offset #0 \f } s4 |
    s1 |
    
    \barNumberCheck 49
    s1*2 |
    s4 s2.\mf |
    s4 s2.\< |
    s1\! |
    s1-\tweak extra-offset #'(0 . 1) \f |
    s1 |
    s4\p s2.\cresc |
    
    \barNumberCheck 57
    s1 |
    s1\f |
    s1 |
    s4\p s2.\cresc |
    s1 |
    s1\f |
    s1 |
    s4 s\p s2\cresc |
    
    \barNumberCheck 65
    s1 |
    s1\f |
    s1*3 |
    \alternative {
      { s4 }
      { s1 | }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 88
    s1*32 |
    
    \barNumberCheck 33
    s1*7 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 2 = 80 s \tempo 2 = 72 s \tempo 2 = 66 s |
    
    \barNumberCheck 41
    \alternative {
      { \tempo 2 = 60 s1 | }
      { \tempo 2 = 60 s1 | }
    }
  }
  s4
  \repeat volta 2 {
    \tempo 2 = 88
    s2. |
    s1*5 |
    
    \barNumberCheck 49
    s1*16 |
    
    \barNumberCheck 65
    s1*4 |
    \tag layout {
      s1 |
      \alternative {
        { s4 }
        { s1 | }
      }
    }
    \tag midi {
      \alternative  {
        {
          s4 \tempo 2 = 80 s \tempo 2 = 72 s \tempo 2 = 66 s |
          \tempo 2 = 60 s4
        }
        {
          s4 \tempo 2 = 76 s \tempo 2 = 66 s \tempo 2 = 58 s |
          \tempo 2 = 52 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*5 \pageBreak
  
  % page 2
  s1*3 \break
  s1*4 \break
  s1*4 \break
  s1*3 \break
  \grace { s16 } s1*3 \pageBreak
  
  % page 3
  s1*4 s4 \break
  s2. s1*3 \break
  s1*2 \break
  s1*4 \break
  \grace { s16 } s1*3 \pageBreak
  
  % page 4
  s1*3 \break
  s1*3 \break
  s1*3 \break
  \grace { s16 } s1*3 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
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
