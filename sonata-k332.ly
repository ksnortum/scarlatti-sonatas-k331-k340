%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in B♭ major"
  opus   = "K.332"
  source = "https://ks15.imslp.org/files/imglnks/usimg/b/b4/IMSLP915022-PMLP524436-E4464_34-37-Scarlatti_-_Keyboard_Sonatas,_L.133-145.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0.2) (0 . 0.2) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . -1) (3 . -1) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((0 . 0) (0 . -1) (0 . 0.5) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . -1) (3 . -1) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'((0.5 . 0) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeK = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc

%
% Music
%

global = {
  \time 2/2
  \key bf \major
  \override Timing.TimeSignature.style = #'numbered
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    bf'2( d4 c8 bf |
    f'4 ef8 d  a'4 g8 f |
    bf2) f2-\slurShapeA (~ |
    f2 ef |
    d2) bf'8( a bf d,) |
    d4( c) g'8( f g a,) |
    a4( \stemUp bf) \stemNeutral <d f>2(~ |
    q4 <c ef>) <bf d>2(~ |
    
    \barNumberCheck 9
    q4 <a c>)  f'8( e f <f, a>) |
    q4( <g bf>)  g'8( f g <g, bf>) |
    q4( \stemUp <a c>) \stemNeutral a'8( g a <a, c>) |
    \stemUp q4( \stemNeutral <g bf>)  g'8( f g <g, bf>~ |
    bf4) a8( bf  c32 a bf g a f g e) \acciaccatura { e8 }
      f8.-\slurShapeK (\prall e16 |
    f1) |
    \bar "||"
    r2 f'8(  ef df c |
    bf af gf f  ef df c bf |
    
    \barNumberCheck 17
    af2) f''8( ef f af,) |
    \graceSpacing \grace { bf16( } af4)-\slurShapeB (\trill gf)
      ef'8( df ef gf,) |
    \graceSpacing \grace { af16( } gf4)-\slurShapeC (\trill f)
      \osp #'(0 . -0.5) gf'8( f gf bf,) |
    \grace { c16( } \stemUp bf4)-\slurShapeD (\trill af) \stemNeutral
      \osp #'(0 . -0.5) f'8( ef f af,) |
    \graceSpacing \grace { bf16( } af4)-\slurShapeE (\trill gf)
      \osp #'(0 . -0.5) af'8( g! af c,) |
    \grace { df16( } c4)(\trill bf) \osp #'(0 . -0.5) g'8( f g bf,) |
    \grace { c16( } \stemUp bf4)-\slurShapeD (\trill af) \stemNeutral
      c'8( g af e |
    f8 c df bf  c g af f |
    
    \barNumberCheck 25
    e2) \grace { g'16( } g2)~\startTrillSpan |
    g1 <>\stopTrillSpan |
    g8( f g a  bf c d bf |
    g2) \grace { g16( } g2)~\startTrillSpan |
    g1 <>\stopTrillSpan |
    g8( f g a  bf c d bf) |
    a4(\prall g8 f)  g4(\prall f8 e |
    f2) \grace { g16( } g2)~\startTrillSpan |
    
    \barNumberCheck 33
    g1 <>\stopTrillSpan |
    g8( f g a  bf c d bf |
    g2) \grace { g16( } g2)~\startTrillSpan |
    g1 <>\stopTrillSpan |
    g8( f g a  bf c d bf) |
    a4(\prall g8 f)  g4(\prall f8 e |
    f2) a8( g a <a, c>) |
    \stemUp q4( \stemNeutral <g bf>) \osp #'(0 . -0.5) g'8( f g <g, bf>) |
    
    \barNumberCheck 41
    q4( <f a>) \osp #'(0 . -0.5) f'8( e f c |
    d8 a bf g  f4-.) e-.\prall |
    f2 \osp #'(0 . -0.5) a'8( g a <a, c>) |
    \stemUp q4( \stemNeutral <g bf>) \osp #'(0 . -0.5) g'8( f g <g, bf>) |
    q4( <f a>) \osp #'(0 . -0.5) f'8( e f c |
    d8 a bf g  f4-.) e-.\prall |
    f1 |
  }
  \repeat volta 2 {
    f2( a4 g8 f |
    
    \barNumberCheck 49
    c'8) c c c  c c c c |
    c8 c c c  c c c c |
    a'4( c,) c(\prall \stemDown bf8 a) |
    \stemUp bf4(\prall a8 g)  bf4-\slurShapeH (\prall a8 g |
    \stemNeutral d'8) d d d  d d d d |
    d8 d d d  d d d d |
    b'4( d,) d(\prall ^\trillNatural cs8 b) |
    cs4(\prall \stemDown b8 a)  a'( e c a |
    \stemNeutral g8 e cs a)  g'4(\prall f8 e |
    <d gs>4 <cs a'>)  a''8( e c a |
    g8 e cs a)  g'4(\prall f8 e |
    <d gs>4 <cs a'>) \stemDown e'8( d e) <cs, e>-. |
    \stemNeutral q4( <d f>) \stemDown f'8( e f) <d, f>-. |
    \stemNeutral q4( <e g>) g'8( f g) <e, g>-. |
    q4( <f a>)  a'8( g a) <f, a>-. |
    q4( <gs b>)  b'8( a b) <gs, b>-. |
    
    \barNumberCheck 65
    \stemUp q4( <a c>) \stemNeutral c'8( b c) <a, c>-. |
    q4( <b d>)  d'8( c d) <b, d>-. |
    q4( <c e>) \osp #'(0 . -0.5) g'8( f g <g, bf>) |
    q4( <f a>)  a'8( g a <a, c>) |
    \stemUp q4( <g bf>) \stemNeutral \osp #'(0 . -0.5) g'8( f g <g, bf>) |
    q4( <f a>)  a'8( g a <a, c>) |
    \stemUp q4( <g bf>) \stemNeutral \osp #'(0 . -1) g'8( fs g <g, bf>) |
    q4( <fs a>)  a'8( g a <a, c>) |
    
    \barNumberCheck 73
    \stemUp q4( <g bf>) \stemNeutral bf'8( a bf <bf, d>) |
    q4( <a c>)  c'8( bf c <c, ef>) |
    q4( <bf d>)  d'8( a bf f |
    g8 ef f d  ef c g' bf,) |
    \grace { c16( } \stemUp bf4)(\trill a) \stemNeutral \grace { c'16( }
      c2)~\startTrillSpan |
    c1 <>\stopTrillSpan |
    c8( a bf g  a f g e) |
    f4(\prall e8 d) \grace { c'16( } c2)~\startTrillSpan |
    
    \barNumberCheck 81
    c1 <>\stopTrillSpan |
    c8( a bf g  a d, ef! c |
    d8 f ef c  <bf d>4-.) <a c>-. |
    bf2 \grace { c'16( } c2)~\startTrillSpan |
    c1 <>\stopTrillSpan |
    c8( a bf g  a f g e) |
    f4(\prall e8 d) \grace { c'16( } c2)~\startTrillSpan |
    c1 <>\stopTrillSpan |
    
    \barNumberCheck 89
    c8( a bf g  a d, ef! c |
    d8 f ef c  <bf d>4-.) <a c>-. |
    bf2 d'8( c d <d, f>) |
    q4( <c ef>)  c'8( bf c <c, ef>) |
    q4( <bf d>)  bf'8( a bf f |
    g8 d ef c  <bf d>4-.) <a c>-.\prall |
    bf2 \stemDown f'8( ef f) <d,f>-. |
    \stemNeutral q4( <c ef>) \stemDown ef'8( d ef) <c, ef>-. |
    
    \barNumberCheck 97
    \stemNeutral q4( <bf d>)  f''8( a, bf f |
    g8 d ef c)  \grace { d'16( } \afterGrace 15/16 c2)-\slurShapeJ (\trill
      { bf16 c } |
    bf1) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R1*2 |
    bf2( d4 c8 bf |
    f'4 ef8 d \clef treble a'4 g8 f |
    bf2) d,( |
    ef) ef( |
    d2) \clef bass
    << 
      { 
        \voiceTwo bf8( a bf d, |
        \oneVoice <ef bf'>2) \voiceTwo bf'8( a bf e, |
      } 
      \new Voice {
        \voiceThree bf'2~ |
        \hideNoteHead bf2 bf2 |
      } 
    >>
    
    \barNumberCheck 9
    \oneVoice f2) f,( |
    c'2) c( |
    f,2) f'( |
    c2) 2( |
    f,1) |
    R1 |
    r2 f''8(  ef df c |
    bf af gf f  ef df c bf |
    
    \barNumberCheck 17
    af2) <df' f>( |
    <df ef>2) <c ef>( |
    df2) \clef treble <ef gf>( |
    <ef f>2) <d! f>( |
    ef2) <f af>( |
    <f g>2) <e g>( |
    f2) \clef bass f,( |
    df1 |
    
    \barNumberCheck 25
    c2) \clef treble c''8-\slurShapeG _( g e c |
    \clef bass \stemDown g8 e c g \stemNeutral c,4-.) c-. |
    c1 |
    r2 \clef treble c'''8-\slurShapeG _( g e c |
    \clef bass \stemDown g8 e c g \stemNeutral c,4-.) c-. |
    c2. e'4( |
    f4 bf c c, |
    f2) \clef treble c''8-\slurShapeF _( g e c |
    
    \barNumberCheck 33
    \clef bass \stemDown g8 e c g \stemNeutral c,4-.) c-. |
    c1 |
    r2 \clef treble c'''8-\slurShapeG _( g e c |
    \clef bass \stemDown g8 e c g \stemNeutral c,4-.) c-. |
    c2. e'4( |
    f4 bf c c, |
    f2) f( |
    c2) c( |
    
    \barNumberCheck 41
    <f, f'>2) <a f'>( |
    bf2 c |
    f,2) f'( |
    c2) c( |
    <f, f'>2) <a f'>( |
    bf2 c |
    f,1) |
  }
  \repeat volta 2 {
    f2 r |
    
    \barNumberCheck 49
    <f' a c>2 <ef! g c> |
    <d fs a c>2 <ef g c> |
    <d fs a c>2 q |
    <g, g'>2 r |
    <g' bf d>2 <f a d> |
    <e gs b d>2 <f a d> |
    <e gs b d>2 q |
    <a, a'>2 r |
    
    \barNumberCheck 57
    q2 q |
    q2 q |
    q2 q |
    q2 q( |
    d2) d( |
    c!2) c( |
    f,2) f'( |
    e2) e( |
    
    \barNumberCheck 65
    a,2) a'( |
    g2) g,( |
    c2) c( |
    f2) f( |
    c2) c( |
    f2 fs |
    g2) g,( |
    d'2) d( |
    
    \barNumberCheck 73
    g,2) g'( |
    f!2) f( |
    bf,2) bf( |
    ef2) ef( |
    f2) \clef treble c''8-\slurShapeI _( a f c |
    \clef bass a8 f c a  f4-.) f-. |
    f1 |
    r2 \clef treble c'''8_( a f c |
    
    \barNumberCheck 81
    \clef bass a8 f c a  f4-.) f-. |
    f2. a'4( |
    bf4 ef, f-.) f,-. |
    bf2 \clef treble c''8_( a f c |
    \clef bass a8 f c a  f4-.) f-. |
    f1 |
    r2 \clef treble c'''8-\slurShapeI _( a f c |
    \clef bass a8 f c a  f4-.) f-. |
    
    \barNumberCheck 89
    f2. a'4( |
    bf4 ef, f-.) f,-. |
    bf2 bf( |
    f'2) f( |
    bf2) bf,( |
    ef2 f |
    bf,2) bf( |
    f'2) f,( |
    
    \barNumberCheck 97
    bf2) d( |
    ef2 f4-.) f,-. |
    bf1-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2\f s\p\< |
    s2.. s8\! |
    s1-\tweak Y-offset #0 \f |
    s1 |
    s2 s\mf |
    s4\> s2.\! |
    s4\> s4\! s2-\tweak Y-offset #0 \f |
    s4\> s2.\! |
    
    \barNumberCheck 9
    s4\> s4\! s2\mf |
    s4\> s4\! s2\cresc |
    s4\> s2.\! |
    s4\> s4\! s2\f |
    s1*2 |
    s2 s\f |
    s1 |
    
    \barNumberCheck 17
    s2 s\p |
    s4\> s2.\! |
    s4-\tweak Y-offset #1 \> s\! s2\cresc |
    s4\> s2.\! |
    s4\> s2.\! |
    s4\> s2.\! |
    s4\> s4\! s2\f |
    s1 |
    
    \barNumberCheck 25
    s1*7 |
    s2 s\p |
    
    \barNumberCheck 33
    s1*4 |
    s1\cresc |
    s1 |
    s1\f |
    s4\> s2.\! |
    
    \barNumberCheck 41
    s4\> s2.\! |
    s1 |
    s2 s\p |
    s4\> s2.\! |
    s4\> s\! s2\f |
    s1*2 |
  }
  \repeat volta 2 {
    s2\f s\p |
    
    \barNumberCheck 49
    s1\cresc |
    s1 |
    s2\f\> s\mf |
    s2 s4.\> s8\! |
    s1\p\cresc |
    s1 |
    s2\f\> s\mf |
    s2 s\f |
    
    \barNumberCheck 57
    s1 |
    s4\> s\! s2\p |
    s1 |
    s4\> s\! s2\p |
    s4\> s2.\! |
    s4\> s\! s2\cresc |
    s4\> s2.\! |
    s4\> s2.\! |
    
    \barNumberCheck 65
    s4\> s2.\! |
    s4\> s\! s2\f |
    s4\> s\! s2\p |
    s4\> s2.\! |
    s4\> s\! s2\cresc |
    s4\> s2.\! |
    s4\> s2.\! |
    s4\> s2.\! |
    
    \barNumberCheck 73
    s4\> s2.\! |
    s4\> s2.\! |
    s4\> s\! s2\f |
    s1 |
    s2 s\f |
    s1*3 |
    
    \barNumberCheck 81
    s1*3 |
    s2 s\p |
    s1*4 |
    
    \barNumberCheck 89
    s1\cresc |
    s1 |
    s1\f |
    s1*3 |
    s2 s\p |
    s1 |
    
    \barNumberCheck 97
    s2 s\f |
    s1*2 |
  }
}

pedal = {
  \repeat volta 2 {
    s1*24 |
    
    \barNumberCheck 25
    s2 s\sd |
    s1 |
    s1-\tweak Y-offset #-1 \su |
    s2 s\sd |
    s1 |
    s1-\tweak Y-offset #-1 \su |
    s1 |
    s2 s\sd |
    
    \barNumberCheck 33
    s1 |
    s1-\tweak Y-offset #-1 \su |
    s2 s\sd |
    s1 |
    s1-\tweak Y-offset #-1 \su |
    s1*3 |
    
    \barNumberCheck 41
    s1*7 |
  }
  \repeat volta 2 {
    s1 |
    
    \barNumberCheck 49
    s1*24 |
    
    \barNumberCheck 73
    s1*4 |
    s2 s\sd |
    s1 |
    s1\su |
    s2 s\sd |
    
    \barNumberCheck 81
    s1 |
    s1\su |
    s1 |
    s2 s\sd |
    s1 |
    s1\su |
    s2 s\sd |
    s1 |
    
    \barNumberCheck 89
    s1\su |
    s1*7 |
    
    \barNumberCheck 97
    s1*3 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 2 = 116
    s1*8 |
    
    \barNumberCheck 9
    s1*4 |
    \set Score.tempoHideNote = ##t
    \tempo "(Adagio)" 2 = 66
    s1*2 |
    \tempo "Allegro" 2 = 116
    s1*2 |
    
    \barNumberCheck 17
    s1*24 |
    
    \barNumberCheck 41
    s1*5 |
    s4 \tempo 2 = 108 s \tempo 2 = 100 s \tempo 2 = 92 s |
    \tempo 2 = 84 s1 |
  }
  \repeat volta 2 {
    \tempo 2 = 116
    s1 |
    
    \barNumberCheck 49
    s1*48 |
    
    \barNumberCheck 97
    s1 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 108 s \tempo 2 = 100 s \tempo 2 = 92 s |
          \tempo 2 = 84 s1 |
        }
        {
          s4 \tempo 2 = 104 s \tempo 2 = 92 s \tempo 2 = 80 s |
          \tempo 2 = 69 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*5 \break
  s1*5 \break
  s1*4 \break
  s1*4 \break
  \grace { s16 } s1*4 \pageBreak
  
  % page 2
  \grace { s16 } s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 3
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \pageBreak
  
  % page 4
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*6 \break
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
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
