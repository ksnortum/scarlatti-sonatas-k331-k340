%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in C major"
  opus   = "K.340"
  source = "https://s9.imslp.org/files/imglnks/usimg/4/46/IMSLP914538-PMLP525920-E4462_15-18-Scarlatti_-_Keyboard_Sonatas,_L.101-117.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.25 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 1.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0.2) (0 . 0.2))
                        ((-0.6 . 0.2) (-0.3 . 0.2) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 1.5))
                      ) \etc

moveTempo = \once \override Score.MetronomeMark.Y-offset = #5.75

%
% Music
%

global = {
  \time 6/8
  \key c \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    \partial 4. <e'' g>8->( c) \voiceDown c,-. |
    \oneVoiceUp <f' a>8->( c) \voiceDown c,-. \oneVoiceUp <e' g>->( c)
      \voiceDown c,-. |
    \staffUp \voiceOne f'4-> f8-. \oneVoice <c e>-. f-. g-. |
    a8( f) d-.  a8-. \afterGrace 15/16 b4-\slurShapeA (\trill { a32 b } |
    c4.) \voiceOne \csBracket <e g>4.\arpeggio |
    <b f'>4. <c e> |
    <g d'>4. <e' g> |
    <b f'>4. <c e> |
    \oneVoice d4.-\tag layout \prallprall -\tag midi \prall d |
    
    \barNumberCheck 9
    d4. d |
    d4. d( |
    f4. af) |
    af4. af |
    gs4. gs( |
    a4. b |
    cs4. <d, d'>~ |
    q8) b'-. g-.  e-. c-. a-. |
    
    \barNumberCheck 17
    fs4.-\tag layout \prallprall -\tag midi \prall \voiceOne \csBracket
      <b d>\arpeggio |
    <fs c'>4. <g b> |
    <d a'>4. <b' d> |
    <a c>4. <fs a> |
    b4. \oneVoice r4 r8 |
    r8 d'-. b->~  b g-. e->~ |
    e8 c-. a->~  a g-. e-. |
    d8.[\( e16]  fs32 g a b \grace { a32( } \afterGrace 15/16 a4.)\trill
      { g32 a } |
    
    \barNumberCheck 25
    g4.\) \voiceOne \osp #'(-0.5 . 0) g'(~ |
    g8 fs) g-. c4.-> |
    bf8( d) bf-. \osp #'(-0.5 . 0) g4.(~ |
    g8 fs) g-. c4.-> |
    bf8( d) bf->~ \oneVoice bf bf-. g->~ |
    g8 g-. ef->~  ef c-. a-. |
    fs4.-\tag layout \prallprall -\tag midi \prall \voiceOne \csBracket
      <b d>\arpeggio |
    <fs c'>4. <g b> |
    
    \barNumberCheck 33
    <d a'>4. <b' d> |
    <a c>4. <fs a> |
    b4. \oneVoice r4 r8 |
    r8 d'-. b->~  b g-. e->~ |
    e8 c-. a->~  a g-. e-. |
    d8.[-\slurShapeB \( e16]  fs32 g a b \grace { a32( }
      \afterGrace 15/16 a4.)\trill { g32 a } |
    \addStaccato { g8\) <b d> <a c>  <g b> q <d a'> } |
    <b g'>8\noBeam \addStaccato { <b' d> <a c>  <g b> q <d a'> } |
    
    \barNumberCheck 41
    <b g'>8\noBeam \addStaccato { <b' d> <a c>  <g b> <b g'> <a fs'> } |
    <b g'>4.->
  }
  \repeat volta 2 {
    b4.( |
    <a c>4. <a c ds> |
    <a c e>4. <a b fs'> |
    <b d gs>4.) <c e a>-\slurShapeC ( |
    <d b'>4. <e c'> |
    <e cs'>4. <d d'>~ |
    d'8) d-. bf->~  bf g-. e-. |
    
    \barNumberCheck 49
    cs4.-\tag layout \prallprall -\tag midi \prall \voiceOne \csBracket
      <f a>\arpeggio |
    <cs g'>4. <d f> |
    <a e'>4. <f' a> |
    <e g>4. <cs e> |
    \oneVoice f8(\prall e) d-. \voiceOne \csBracket <e g>4.\arpeggio |
    <b f'>4. <c e> |
    <g d'>4. <e' g> |
    <d f>4. <b d> |
    
    \barNumberCheck 57
    \oneVoice e8(\prall d) c-. <bf g'>4.-\slurShapeD ( |
    <af f'>4. <g ef'> |
    <f df'>4. <e c'> |
    <f bf>4. <ef a!> |
    <f bf>4.) <bf g'>( |
    <af f'>4. <g ef'> |
    <f df'>4. <e c'> |
    <f bf>4. a! |
    
    \barNumberCheck 65
    bf4. c) |
    df8(\prall ^\trillFlat c) bf-. e!4.( |
    f4. b! |
    c4.) <fs, c'>( |
    \override Parentheses.font-size = #-3
    <\parenthesize g b>8) d'( f,!  e c' g |
    gs8-.) a4->~  a8 f-. d-. |
    b4.\prall g' |
    f8(\prall e) f-.  e(\prall d) e-. |
    
    \barNumberCheck 73
    d4.-\tag layout \prallprall -\tag midi \prall \voiceOne \csBracket
      <e g>\arpeggio |
    <b f'>4. <c e> |
    <g d'>4. <e' g> |
    <d f>4. <b d> |
    e4. \oneVoice r4 r8 |
    r8 c'-. g->~  g e-. c->~ |
    c8 a-. f-.  a'-. f-. d-. |
    c8.[( d16] c32 b c d) d4(-\tag layout \prallprall -\tag midi \prall c8) |
    
    \barNumberCheck 81
    c4.-\tag layout \prallprall -\tag midi \prall \voiceOne \csBracket
      <e g>\arpeggio |
    <b f'>4. <c e> |
    <g d'>4. <e' g> |
    <d f>4. <b d> |
    e4. \oneVoice r4 r8 |
    r8 c'-. g->~  g e-. c->~ |
    c8 a-. f-.  a'-. f-. d-. |
    c8.[( d16] c32 b c d) d4(-\tag layout \prallprall -\tag midi \prall c8) |
    
    \barNumberCheck 89
    \addStaccato {
      c8 <e g> <d f>  <c e> q <g d'> |
      <e c'> <e' g> <d f>  <c e> q <g d'> |
      <e c'>8 <e' g> <d f>  <c e> <e c'> <d b'> |
    }
    <c \parenthesize e c'>4.
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    \partial 4. s4. |
    s2. |
    \voiceFour d''8( g,) d'-. s4. |
    s2. |
    s4. \crossStaff g,8\arpeggio s4 |
    \crossStaff { 
      f8 s4 e8 s4 |
      d8 s4 g8 s4 |
      f8 s4 e8 s4 |
    }
    s2. |
    
    \barNumberCheck 9
    s2.*8 |
    
    \barNumberCheck 17
    s4. \crossStaff d8\arpeggio s4 |
    \crossStaff {
      c8 s4 b8 s4 |
      a8 s4 d8 s4 |
      c8 s4 a8 s4 |
    }
    g'8-. g4 s4. |
    s2.*3 |
    
    \barNumberCheck 25
    s4. bf8( a) bf-. |
    g4.-> ef'8( d) ef-. |
    d4.-> bf8( a) bf-. |
    g4.-> ef'8( d) ef-. |
    d4.-> s |
    s2. |
    s4. \crossStaff d,8\arpeggio s4 |
    \crossStaff {
      c8 s4 b8 s4 |
      
      \barNumberCheck 33
      a8 s4 d8 s4 |
      c8 s4 a8 s4 |
    }
    g'8-. g4 s4. |
    s2.*5 |
    
    \barNumberCheck 41
    s2. |
    s4.
  }
  \repeat volta 2 {
    s4.|
    s2.*6 |
    
    \barNumberCheck 49
    s4. \crossStaff a8\arpeggio s4 |
    \crossStaff {
      g8 s4 f8 s4 |
      e8 s4 a8 s4 |
      g8 s4 e8 s4 |
      s4. g8\arpeggio s4 |
      f8 s4 e8 s4 |
      d8 s4 g8 s4 |
      f8 s4 d8 s4 |
    }
    
    \barNumberCheck 57
    s2.*16 |
    
    \barNumberCheck 73
    s4. \crossStaff g8\arpeggio s4 |
    \crossStaff {
      f8 s4 e8 s4 |
      d8 s4 g8 s4 |
      f8 s4 d8 s4 |
    }
    c'8-. c4 s4. |
    s2.*3 |
    
    \barNumberCheck 81
    s4. \crossStaff g8\arpeggio s4 |
    \crossStaff {
      f8 s4 e8 s4 |
      d8 s4 g8 s4 |
      f8 s4 d8 s4 |
    }
    c'8-. c4 s4. |
    s2.*3 |
    
    \barNumberCheck 89
    s2.*3 |
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

leftHandUpper = \relative {
  \repeat volta 2 {
    \partial 4. s4. |
    s2. |
    s4. \voiceThree c'4. |
    r4 r8 f-. e( d) |
    s2.*5 |
    
    \barNumberCheck 9
    s2.*16 |
    
    \barNumberCheck 25
    s4. g8( fs) g-. |
    ef8( d) ef-.  c( b) c-. |
    s4. g'8( fs) g-. |
    ef8( d) ef-.  c( b) c-. |
    s2.*4 |
    
    \barNumberCheck 33
    s2.*8 |
    
    \barNumberCheck 41
    s2. |
    s4.
  }
  \repeat volta 2 {
    s4. |
    s2.*6 |
    
    \barNumberCheck 49
    s2.*40 |
    
    \barNumberCheck 89
    s2.*3 |
    s4.
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    \partial 4. \voiceTwo c4. |
    c4. c |
    \oneVoice g4. \voiceTwo c8-. d-. e-. |
    f4. f8 g4 |
    \oneVoice <c, c'>4. \voiceTwo e'8( g,) g,-.
    d''8( g,) g,-.  c'( g) g,-. |
    b'8( g) g,-.  e''( g,) g,-. |
    d''8( g,) g,-.  c'( g) g,-. |
    \oneVoice g4. <g' g'>8-. q-. q-. |
    
    \barNumberCheck 9
    \addStaccato {
      <af f'>8 q q  q q q |
      % Second beat, af according to an urtext
      <bf f'>8 q q  <bf f' af> q q |
      q8 q q  q q q |
      <b! f' af>8 q q  q q q |
      <b d e gs>8 q q  q q q |
      <a d f>8 q q  <gs d' e> q q |
      <g! e'>8 q q  <fs d'> q q |
    }
    <g d'>4. <c, c'> |
    
    \barNumberCheck 17
    d4. \voiceTwo b'8 d, d,-. |
    a''8 d, d,-.  g' d d,-. |
    fs'8 d d,-.  b''8 d, d,-. |
    a''8 d, d,-.  fs'8 d d,-. |
    \oneVoice <g' b>8-. r g,-.  g-. g-. b-. |
    \osp #'(0.5 . 0) g4.(\prall g' |
    c,4. c') |
    d,,4._( d' |
    
    \barNumberCheck 25
    g,4.) \voiceTwo g'-> |
    g4.-> g-> |
    \oneVoice <g d'>4.-> \voiceTwo g-> |
    g4.-> g-> |
    \oneVoice <g d'>4. q |
    <ef c'>4. <c c'> |
    d4. \voiceTwo b'8 d, d,-. |
    a''8 d, d,-.  g' d d,-. |
    
    \barNumberCheck 33
    fs'8 d d,-.  b''8 d, d,-. |
    a''8 d, d,-.  fs'8 d d,-. |
    \oneVoice <g' b>8-. r g,-.  g-. g-. b-. |
    \osp #'(0.5 . 0) g4.(\prall g' |
    c,4. c') |
    d,,4._( d' |
    g,4.) g8-. g'-. d-. |
    g,4. g8-. g'-. d-. |
    
    \barNumberCheck 41
    g,4. g8-. g'-. d-. |
    g,4.
    \clefAfterBarAtEndOfLine
  }
  \repeat volta 2 {
    \clef treble
    \addStaccato {
      g''8 g g |
      g8 g g  fs fs fs |
      e8 e e  ds ds ds |
      d!8 d d  <c e> q q |
      \clef bass <b d e>8 q q  <a e'> q q |
      <g e'>8 q q  <f d'> q q |
      <g bf d>8 q q  <g g'> q q |
    }
    
    \barNumberCheck 49
    <a a'>4. \voiceTwo f'8( a,) a,-. |
    e''8( a,) a,-.  d'( a) a,-. |
    cs'8( a) a,-.  f''( a,) a,-. |
    e''8( a,) a,-.  cs'8( a) a,-. |
    \oneVoice d4. \voiceTwo e'8( g,) g,-. |
    d''8( g,) g,-.  c'( g) g,-. |
    b'8( g) g,-.  e''( g,) g,-. |
    d''8( g,) g,-.  b'8( g) g,-. |
    
    \barNumberCheck 57
    \oneVoice c4. \acciaccatura { b'!8 } c-. c-. c-. |
    \addStaccato {
      c8 c c  c c c |
      c8 c c  c c c |
      df8 df df  c c c |
      df8 df df  c c c |
      c8 c c  c c c |
      c8 c c  c c c |
      df8 df df  <c ef> q <c f> |
      
      \barNumberCheck 65
      <bf ef gf>8 q q  <a ef' f> q q |
      <bf f'>8 q q  <bf e! g> q q |
      <a c f>8 q q  <g d' f> q q |
      <c e>8 q q  <a c d> q q |
      <g d'>8 q q  <c e> q q |
      <f, e'>8 q q  <f d'> q q |
      q8 q q  <e c'> q q |
      <d b'>8 q q  <c g' c> q q |
    }
    
    \barNumberCheck 73
    g4.-> \voiceTwo e''8( g,) g,-. |
    d''8( g,) g,-.  c'( g) g,-. |
    b'8( g) g,-.  e''( g,) g,-. |
    d''8( g,) g,-.  b'8( g) g,-. |
    \oneVoice <c' e>-. r c,,  c-. c-. e-. |
    c4._(_\prall c' |
    f,4. f' |
    g4. g, |
    
    \barNumberCheck 81
    c,4.) \voiceTwo e''8( g,) g,-. |
    d''8( g,) g,-.  c'( g) g,-. |
    b'8( g) g,-.  e''( g,) g,-. |
    d''8( g,) g,-.  b'8( g) g,-. |
    \oneVoice <c' e>-. r c,,  c-. c-. e-. |
    c4._(_\prall c' |
    f,4. f' |
    g4. g, |
    
    \barNumberCheck 89
    c4.) c8-. c'-. g-. |
    c,4. c8-. c'-. g-. |
    \addStaccato { c,8 c c  c c g } |
    c,4. \clef treble 
    \clefThenBarAtEndOfLine
  }
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
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \partial 4. s4.-\tweak Y-offset #-5.5 \f |
    s2.*7 |
    s4. s\p |
    
    \barNumberCheck 9
    s2. |
    s4. s\cresc |
    s2. |
    s4.\mf s\cresc |
    s2.*2 |
    s4. s\f |
    s2. |
    
    \barNumberCheck 17
    s4. s-\tweak X-offset #-2 -\tweak Y-offset #-2  \f |
    s2.*3 |
    s4 s2^\sempreF |
    s2.*3 |
    
    \barNumberCheck 25
    s2.*8 |
    
    \barNumberCheck 33
    s2.*6 |
    s8 s\p s\cresc s4. |
    s2. |
    
    \barNumberCheck 41
    s2. |
    s4.\f
  }
  \repeat volta 2 {
    s4.\p |
    s2.\cresc |
    s2.*4 |
    s2.-\tweak Y-offset #0.5 \f |
    
    \barNumberCheck 49
    s2.*8 |
    
    \barNumberCheck 57
    s4. s\p |
    s2.*6 |
    s4. s\cresc |
    
    \barNumberCheck 65
    s2. |
    s4.\mf s\p |
    s2.\cresc |
    s2. |
    s2.\f |
    s2. |
    s4. s\p |
    s2. |
    
    \barNumberCheck 73
    s4.\mf s-\tweak X-offset #-2 \f |
    s2.*3 |
    s4 s2^\sempreF |
    s2.*3 |
    
    \barNumberCheck 81
    s2.*8 |
    
    \barNumberCheck 89
    s8 s4\p\cresc s4. |
    s2.*2 |
    s4.\f
  }
}

pedal = {
  \repeat volta 2 {
    \partial 4. s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud  |
    s4.-\tag layout \sd -\tag midi \sud s-\tweak Y-offset #-0.5 \su |
    s4. s8 s4\sd |
    s4.\su s4-\tweak Y-offset #-1 \sd s8-\tweak Y-offset #-2 \su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4.-\tweak Y-offset #2 \sd s-\tweak Y-offset #2 -\tag layout \sd
      -\tag midi \sud |
    
    \barNumberCheck 9
    s2.-\tweak Y-offset #2 -\tag layout \sd -\tag midi \sud |
    s2.-\tag layout \sd -\tag midi \sud |
    s2. |
    s2.-\tag layout \sd -\tag midi \sud |
    s2.-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s2.\su |
    
    \barNumberCheck 17
    s4.\sd s4-\tweak Y-offset #-1 -\tag layout \sd -\tag midi \sud
      s8-\tweak Y-offset #-3 \su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4.\sd |
    s2.-\tweak Y-offset #3 \su |
    s2.*3 |
    
    \barNumberCheck 25
    s2.*6 |
    s4.-\tweak Y-offset #2 \sd s4-\tag layout \sd -\tag midi \sud s8\su |
    s4\sd s8\su s4\sd s8\su |
    
    \barNumberCheck 33
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4.\sd |
    s2.\su |
    s2.*5 |
    
    \barNumberCheck 41
    s2. |
    s4.
  }
  \repeat volta 2 {
    s4.\sd |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tweak Y-offset #2 -\tag layout \sd -\tag midi \sud
      s-\tweak Y-offset #2 -\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 49
    s4.-\tweak Y-offset #2 \su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4. s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    
    \barNumberCheck 57
    s4. s-\tweak Y-offset #2 \sd |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 65
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.\su s\sd |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s4.\su s\sd |
    s4.-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s2.\su |
    
    \barNumberCheck 73
    s4.-\tweak Y-offset #1 \sd s4-\tag layout \sd -\tag midi \sud s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4.\sd |
    s2.-\tweak Y-offset #2 \su |
    s2.*3 |
    
    \barNumberCheck 81
    s4.\sd s4-\tag layout \sd -\tag midi \sud s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4\sd s8\su |
    s4\sd s8\su s4.\sd |
    s2.-\tweak Y-offset #2 \su |
    s2.*3 |
    
    \barNumberCheck 89
    s2.*3 |
    s4.
  }
}

tempi = {
  \repeat volta 2 {
    \moveTempo \tempo "Allegro" 4. = 132
    \partial 4. s4. |
    s2.*40 |
    
    \barNumberCheck 41
    \set Score.tempoHideNote = ##t
    \tempo 4. = 116 s4. \tempo 4. = 108 s |
    \tempo 4. = 92 s4.
  }
  \repeat volta 2 {
    \tempo 4. = 132
    s4. |
    s2.*6 |
    
    \barNumberCheck 49
    s2.*40 |
    
    \barNumberCheck 89
    s2.*2 |
    \tag layout { s2. | s4. }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 116 s4. \tempo 4. = 108 s |
          \tempo 4. = 92 s4.
        }
        {
          \tempo 4. = 112 s4. \tempo 4. = 96 s |
          \tempo 4. = 40 s4.
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. s2.*4 \break
  s2.*5 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \pageBreak
  
  % page 2
  s2.*5 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*3 s4. \pageBreak
  
  % page 3
  s4. s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \pageBreak
  
  % page 4
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
  s2.*5 \break
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
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \PianoStaff
      \consists "Span_stem_engraver"
    }  
  }
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
