%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in B♭ major"
  opus   = "K.331"
  source = "https://ks15.imslp.org/files/imglnks/usimg/4/47/IMSLP915028-PMLP524364-E4442_8-10-Scarlatti_-_Keyboard_Sonatas,_L.016-030.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (1 . -1) (0 . 9) (0.5 . 5)) \etc
slurShapeB = \shape #'(
                        ((0 . -0.5) (0 . 0.5) (3 . 0.5) (3 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . -0.5)) \etc
slurShapeD = \shape #'(
                        ((-1 . 1.25) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0.5 . 2.75) (0 . 2) (0 . 2))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 1) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeH = \shape #'((0 . -1.5) (0 . 0.5) (0 . 0.5) (0 . -1.5)) \etc
slurShapeI = \shape #'((0.4 . 0) (0.4 . 0) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'((0.4 . 0) (0.4 . 0) (0 . 0) (0 . 0)) \etc
slurShapeK = 
  \shape #'(
             ((-0.5 . -3.2) (-0.5 . -3.2) (-0.2 . -3.2) (-0.2 . -3.2))
             ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
           ) \etc
slurShapeL = \shape #'((0 . 2) (1 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeM = \shape #'(
                        ((0 . -2.75) (0 . -2) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeN = 
  \shape #'(
             ((-0.5 . -3.7) (-0.5 . -3.7) (-0.2 . -3.7) (-0.2 . -3.7))
             ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
           ) \etc
slurShapeO = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeP = \shape #'((0 . 0) (0 . 0) (0 . 1) (0.5 . -1)) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                      ) \etc

lhMarkA = \markup { 
  \path #0.1 #'((moveto -0.5 0)(rlineto 0 3.1)(rlineto 0.5 0))
}

lhMarkB = \markup { 
  \path #0.1 #'((moveto -0.5 0)(rlineto 0 3)(rlineto 0.5 0))
}

moveMarkA = 
  \tweak outside-staff-priority ##f 
  \tweak Y-offset -2.5
  \etc
  
moveMarkB = 
  \tweak outside-staff-priority ##f 
  \tweak Y-offset -3.5
  \etc

%
% Music
%

global = {
  \time 3/4
  \key bf \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    bf'4-.( bf-. bf-.) |
    f'8-\slurShapeA _( ef d c bf a |
    \voiceDown \hideNoteHead bf8) \oneVoiceUp g'4( f ef8 |
    d8) g4( f ef8 |
    d4) bf'-\slurShapeB ( g |
    \appoggiatura { f8-\insideSlur ^> } ef2. |
    d4) bf'\slurShapeC ( g |
    \appoggiatura { f8-\insideSlur ^> } ef2. |
    
    \barNumberCheck 9
    d4~ d8) c4( bf8 |
    g8 a bf4. a8 |
    d4~d8) c4( bf8 |
    g8 a bf4. a8 |
    \voiceOne d4.) ef8-\slurShapeD ( \appoggiatura { \once \slurDown d16 }
      c8 bf16 a |
    d4.) \osp #'(1.5 . 1) ef8( \appoggiatura { \once \slurDown d16 }
      c8 bf16 a |
    ef'4.) \osp #'(1.5 . 1) f8( \appoggiatura { \once \slurDown ef16 }
      d8 c16 b |
    ef4.) \osp #'(2 . 0.5) f8( \appoggiatura { \once \slurDown ef16 }
      d8 c16 b |
    
    \barNumberCheck 17
    \oneVoice c4.) \osp #'(-0.5 . -1) g8( a bf! |
    a8 b4 c bf16 a |
    g4.) g8( a bf! |
    a8 b4 c bf16 a) |
    c'8-. c,-. c,2 |
    c''8-. c,-. c,2 |
    c''8-. c,-. c,4 c |
    c''8-. c,-. c,4 r |
    
    \barNumberCheck 25
    df''8-. f,-. f,4 f |
    df''8-. f,-. f,4 f |
    bf'8-. g-. c,,2 |
    bf''8-. g-. c,,4 bf''(~ |
    bf8 af) af( g) g( f) |
    f8( ef) ef( df c b |
    c4.) g8-\slurShapeE ^( af bf |
    \voiceOne af8) b( c e f-.) af, |
    
    \barNumberCheck 33
    g4. g8( af bf |
    af8) b( c e f af,) |
    s2 g'4->~ |
    g8 g-\slurShapeF ( f e d c |
    \oneVoice \tuplet 3/2 { d8 c bf } <f a>4-. <e g>-.) |
    f'8-. f,-. f,2 |
    f''8-. f,-. f,2 |
    d'''8-. bf-. bf,,2 |
    
    \barNumberCheck 41
    d''8-. bf-. bf,,2 |
    bf''8-. g-. c,,4. bf''8-. |
    \osp #'(-1 . -0.5)a8( d c bf a g |
    \tuplet 3/2 { f8 e d } \stemDown c bf a g) |
    r8 c'-\slurShapeG ( a f \afterGrace 15/16 g4-\insideSlur \trill { f32 g } |
    f8) c\slurShapeH ( a f \stemNeutral \afterGrace 15/16 g4-\insideSlur
      \trill { f32 g } |
    f8) c( a f \afterGrace 15/16 g4 \trill { f32 g } |
    f2.) |
  }
  \repeat volta 2 {
    \barNumberCheck 49
    R2. |
    f'4-.( f-. f-.) |
    \osp #'(0 . 3) ef'8( d c bf a g |
    f4-.)( f-. f-.) |
    \osp #'(0 . 3) ef'8( d c bf a g |
    fs4-.)( fs-.) s4 |
    s2 \voiceOne g'4->~ |
    g8 \osp #'(0 . 1.5) a( g f! ef d |
    
    \barNumberCheck 57
    \oneVoice ef8 d c bf a g |
    fs4.) \osp #'(-0.5 . -0.5) a8^( bf a |
    \voiceOne bf4. cs8 d e |
    a,4.) c8( bf a |
    bf4. cs8 d e) |
    \oneVoice d'8-. d,-. d,2 |
    d''8-. d,-. d,2 | 
    d''8-. d,-. d,2 |
    
    \barNumberCheck 65
    d''8-. d,-. d,2 |
    c''8-. c,-. c,2 |
    c''8-. c,-. c,2 |
    c''8-. af-. af,4. s8 |
    s2. |
    \voiceOne af'4.-\slurShapeL ( gf8 f ef |
    \oneVoice <df f>4.) <bf g'!>8( <c af'> <bf g'> |
    <c af'>4.) <ef gf>8( <df f> <c ef> |
    
    \barNumberCheck 73
    <df f>4.) <bf g'!>8( <c af'> <bf g'> |
    <c af'>4) s2 |
    s2 \voiceOne bf'4->( |
    \oneVoice <c, a'!>4.) \osp #'(0 . -0.5) ef8( df c |
    \voiceOne df4. e8 f g |
    c,4.) \osp #'(0 . -1) ef!8( df c |
    df4. e8 f g |
    c,4~ \parenthesize c8) s4. |
    
    \barNumberCheck 81
    s2 \voiceOne f4( |
    \oneVoice ef8 d16 c <bf d>4-. <a c>-.) |
    bf'8-. bf,-. bf,2 |
    bf''8-. bf,-. bf,2 |
    bf''8-. g-. bf,,2 |
    bf''8-. g-. bf,,2 |
    bf''8-. g-. bf,,4. s8 |
    s2 \voiceOne c''4->~ |
    
    \barNumberCheck 89
    \override Parentheses.font-size = #-3
    \oneVoice <\parenthesize d, c'>8 c'( bf a g f |
    ef8 d16 c <bf d>4-. <a c>-.) |
    bf8-. f'( d bf \afterGrace 15/16 c4-\insideSlur \trill { bf32 c } |
    bf8[) d8( f, d]) ef(\prall d16 c |
    d8[) f8( d bf]) c8(\prall bf16 a |
    bf2.) |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s2.*2 |
    r8 s s2 |
    s2.*5 |
    
    \barNumberCheck 9
    s2.*4 |
    \voiceFour r8 f'2~ f8 |
    r8 f2~ f8 |
    r8 g2~ g8 |
    r8 g2~ g8 |
    
    \barNumberCheck 17
    s2.*8 |
    
    \barNumberCheck 25
    s2.*7 |
    f2~ f8 f-. |
    
    \barNumberCheck 33
    f4( e2) |
    f2~ f8 f-. |
    g8-. f'( e f g bf, |
    a!4) r r |
    s2.*4 |
    
    \barNumberCheck 41
    s2.*8 |
  }
  \repeat volta 2 {
    \barNumberCheck 49
    s2.*5 |
    s2 <fs d'>4_(^~ |
    <g d'>8) ef'( d c bf a) |
    bf2. |
    
    \barNumberCheck 57
    s2.*2 |
    g2. |
    g4( fs2) |
    g2. |
    s2.*3 |
    
    \barNumberCheck 65
    s2.*3 |
    s2 s8 c'-\slurShapeK ( |
    bf8 af g f ef df |
    c2. |
    \hideNoteHead df4) s2 |
    s2. |
    
    \barNumberCheck 73
    s2. |
    s4 ef-\slurShapeM ( f |
    gf8 f ef df c bf-\moveMarkA ^\lhMarkA |
    \hideNoteHead c4) s2 |
    bf2. |
    bf4( a2) |
    bf2. |
    bf4( a8) g'( f ef! |
    
    \barNumberCheck 81
    d8 c bf af g f)-\moveMarkB ^\lhMarkB |
    s2.*5 |
    s2 s8 d''8-\slurShapeN ( |
    c8 bf a g f ef |
    
    \barNumberCheck 89
    \hideNoteHead d8) s s2 |
    s2.*5 |
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
    s2.*8 |
    
    \barNumberCheck 9
    \voiceTwo bf4 s2 |
    s2. |
    bf4 s2 |
    s2.*5 |
    
    \barNumberCheck 17
    s2.*4 |
    \override Parentheses.font-size = #-3
    \oneVoice <c, \parenthesize g'>4.( <d f>8 <e g> <f a> |
    \voiceThree g2) g4( |
    \hideNoteHead af4) s2 |
    s2 c4( |
    
    \barNumberCheck 25
    \hideNoteHead df4) s2 |
    s2. |
    \parenthesize g,2 g4 |
    s2 g4( |
    \hideNoteHead af4) s2 |
    s2.*3 |
    
    \barNumberCheck 33
    s2.*16 |
  }
  \repeat volta 2 {
    \barNumberCheck 49
    s2.*32 |
    
    \barNumberCheck 81
    s2.*2 |
    \voiceTwo bf4 s2 |
    f4 s2 |
    g4 s2 |
    bf4 s2 |
    f4 s2 |
    s2. |
    
    \barNumberCheck 89
    s2.*6 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R2.*2 |
    \clef treble \stemUp bf'4( a f |
    bf4 a f) |
    \stemNeutral bf8_( f g d ef bf |
    \clef bass c8 g a f g bf) |
    \clef treble bf'8( f g d ef bf |
    \clef bass c8 g a f g a) |
    
    \barNumberCheck 9
    \voiceThree bf8( d \oneVoice <c ef>4 <d f> |
    ef4. <d f>8 <c ef>4 |
    \voiceThree bf8)( d \oneVoice <c ef>4 <d f> |
    ef4. <d f>8 <c ef>4 |
    bf8-.) bf,-. f2 |
    bf'8-. bf,-. f2 |
    c''8-. c,-. g2 |
    c'8-. c,-. g2 |
    
    \barNumberCheck 17
    c'8-. c,-. c,2 |
    c''8-. c,-. c,2 |
    c''8-. c,-. c,2 |
    c''8-. c,-. c,2 |
    s2. |
    \voiceTwo \osp #'(-2.5 . -2) c'4.( d8 e c |
    \oneVoice <f af>4.) <g bf>8( af <g bf> |
    <f c'>4.) \voiceTwo <g bf>8( af f |
    
    \barNumberCheck 25
    \oneVoice <bf df>4.) <c ef>8( df <c ef> |
    \override Parentheses.font-size = #-3
    <bf df>4. <c ef>8 df <c \parenthesize ef>) |
    \voiceTwo c,4.( d!8 e d |
    <c g'>4. <d f>8 e c |
    \oneVoice <f af>4) <g bf>( <af c> |
    <bf df>4 <c ef> <df f> |
    c8-.) c,-. c,2 |
    c''8-. c,-. c,2 |
    
    \barNumberCheck 33
    c''8-. c,-. c,2 |
    c''8-. c,-. c,2 |
    c'4._( d8 e4 |
    f4 g a |
    bf4 c-. c,-.) |
    \osp #'(0 . 1) f,4.( g8 a g |
    f4. g8 a f |
    bf4.) c8( d c |
    
    \barNumberCheck 41
    bf4. c8 d bf |
    c4.) d8( e c |
    <f a>4) <g bf>( <a c> |
    bf4 c-. c,-.) |
    f4.( a8 c c, |
    f4. a8 c c, |
    f4.) a,8( c c, |
    f2.) |
  }
  \repeat volta 2 {
    \barNumberCheck 49
    f'4-.( f-. f-.) |
    ef'8( d c bf a g |
    f4-.)-\slurShapeI ( f-. f-.) |
    ef'8( d c bf a g |
    fs4-.)-\slurShapeJ ( fs-. fs-.) |
    d'8( ef d c bf a |
    bf8 c bf a g fs |
    g4 a bf |
    
    \barNumberCheck 57
    c4 d ef |
    d8-.) d,-. d,2 |
    d''8-. d,-. d,2 |
    d''8-. d,-. d,2 |
    d''8-. d,-. d,2 |
    d'4.( e8 fs e |
    d4. e8 fs d |
    g4.) a8( b a |
    
    \barNumberCheck 65
    g4. a8 b g |
    c,4.) d8( ef! d |
    c4. bf'8 af g |
    <af c>4.) bf8( c bf |
    df4 ef ef, |
    af'8-.) af,-. af,2 |
    af''8-. af,-. af,2 |
    af''8-. af,-. af,2 |
    
    \barNumberCheck 73
    af''8-. af,-. af,2 |
    af'4. af'8( gf f |
    ef4 f gf |
    f8-.) f,-. f,2 |
    f''8-. f,-. f,2 |
    f''8-. f,-. f,2 |
    f''8-. f,-. f,2 |
    f''8-. f,-. f,4 a'-\slurShapeQ ( |
    
    \barNumberCheck 81
    bf4 c d |
    ef4 f-. f,-.) |
    \voiceTwo \osp #'(0 . 0.5) bf,4.( c8 d c |
    bf4. c8 d bf |
    ef4.) \osp #'( 0 . -1) f8( g f |
    ef4. f8 g ef |
    bf4.) \oneVoice \stemDown c8( d bf |
    ef8 c f g a f |
    
    \barNumberCheck 89
    <bf d>4) <c ef>-\slurShapeO ( <d f> |
    ef4 f-. f,-.) |
    bf4.-\slurShapeP ( d8 f f,) |
    \stemNeutral bf,4.( d8 f f,) |
    bf4.( d8 f f,) |
    bf2.-> |
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
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2.\p |
    s2. |
    s8 s\> s2 |
    s8\! s\> s2 |
    s2.\! |
    s2. |
    s4 s2-\tweak Y-offset #-1 \pp |
    s2. |
    
    \barNumberCheck 9
    s2\< s4\! |
    s2\> s8 s\! |
    s2\< s4\! |
    s2. |
    s8 s8-\tweak Y-offset #-2 \cresc s2 |
    s2.*3 |
    
    \barNumberCheck 17
    s2.\mf |
    s2. |
    s4. s\p |
    s2. |
    s2.\mf |
    s2.*3 |
    
    \barNumberCheck 25
    s2.*3 |
    \override DynamicLineSpanner.Y-offset = #0.75
    s2 s4\f\> |
    s8 s\p s2 |
    s2.*2 |
    s8 s4\< s\! s8\p |
    
    \barNumberCheck 33
    s2. |
    s8 s4\< s\! s8\p |
    s4 s-\tweak Y-offset #-1 \< s8\! s-\tweak Y-offset #-1 \> |
    s2.\! |
    s2. |
    s4.\f s4-\tweak Y-offset #-0.5 \> s8\! |
    s2.\mf |
    s4.-\tweak Y-offset #0 \f s4\> s8\! |
    
    \barNumberCheck 41
    s2.-\tweak Y-offset #0 \mf |
    s2.*2 |
    s4 s4.\> s8\! |
    s2.\p |
    s2.*3 |
  }
  \repeat volta 2 {
    \barNumberCheck 49
    s2.\p |
    s2.*4 |
    s2 s8.-\tweak X-offset #-1 -\tag layout \sf -\tag midi \f \> s16\! |
    s2. |
    s2.-\tweak Y-offset #1 \p |
    
    \barNumberCheck 57
    s2.*2 |
    s4. s\mf |
    s8 s4\> s4.\p |
    s4. s4\< s8\! |
    s4.\f s4\> s8\! |
    s2.\mf |
    s2. |
    
    \barNumberCheck 65
    s2. |
    s4.\f s4\> s8\! |
    s2.\mf |
    s2.*2 |
    s4.\f s4\> s8\! |
    s2.\p |
    s4.\f s4\> s8\! |
    
    \barNumberCheck 73
    s2.\p |
    s4. s4\< s8\! |
    s4\> s2\! |
    s2.\p |
    s4. s4\< s8\! |
    s4\> s2\! |
    s4. s4\< s8\! |
    s4\> s2\! |
    
    \barNumberCheck 81
    s2.*2 |
    \override DynamicLineSpanner.Y-offset = #-6
    s4.\f s4\> s8\! |
    s2.\mf |
    s4.\f s4\> s8\! |
    s2.\mf |
    s2.\f |
    s2. |
    
    \barNumberCheck 89
    s2.*2 |
    s2.-\tweak Y-offset #0.5 \p |
    s2.\cresc |
    s2. |
    s2.-\tweak Y-offset #-1.5 \f |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Andante" 4 = 112
    s2.*40 |
    
    \barNumberCheck 41
    s2.*6 |
    \set Score.tempoHideNote = ##t
    \tempo 4 = 104 s4 \tempo 4 = 96 s \tempo 4 = 88 s |
    \tempo 4 = 80 s2. |
  }
  \repeat volta 2 {
    \tempo 4 = 112
    \barNumberCheck 49
    s2.*40 |
    
    \barNumberCheck 89
    s2.*4 |
    \tag layout { s2.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4 = 104 s4 \tempo 4 = 96 s \tempo 4 = 88 s |
          \tempo 4 = 80 s2. |
        }
        {
          \tempo 4 = 100 s4 \tempo 4 = 88 s \tempo 4 = 76 s |
          \tempo 4 = 66 s2. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2.*6 \break
  s2.*7 \break
  s2.*6 \break
  s2.*6 \break
  s2.*6 \pageBreak
  
  % page 2
  s2.*5 \break
  s2.*6 \break
  s2.*6 \break
  s2.*6 \break
  s2.*7 \pageBreak
  
  % page 3
  s2.*7 \break
  s2.*6 \break
  s2.*6 \break
  s2.*7 \break
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
