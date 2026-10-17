%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in B♭ major"
  opus   = "K.334"
  source = "https://s9.imslp.org/files/imglnks/usimg/1/1c/IMSLP914464-PMLP524730-E4446_41-43-Scarlatti_-_Keyboard_Sonatas,_L.085-100.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0.2) (0 . 0.2) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . -0.25) (0 . 0.5) (0 . 1) (0 . -1.5)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
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
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'((0 . 0.5) (0 . 0) (0 . 0.5) (0 . -1)) \etc
slurShapeI = \shape #'((0 . -0.5) (0 . 0) (0 . 0.5) (0 . -0.75)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . -1.5) (0 . 0) (0 . 0)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 0))
                        ((0.3 . 2) (0 . 1.5) (5 . 3.5) (4 . -5.5))
                      ) \etc
slurShapeL = \shape #'((0 . 0) (0 . 0.5) (0 . 1) (0 . 0)) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0.1) (0.3 . 0.1) (0 . 0.1) (0 . 0.1))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 2.5))
                      ) \etc
slurShapeR = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 1) (0 . -0.2))
                      ) \etc
slurShapeS = \shape #'((0 . -2.5) (0 . -1.5) (0 . 0) (0 . 0)) \etc

%
% Music
%

global = {
  \time 6/8
  \key bf \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \partial 4. bf'8( c d) |
    d8( ef f)  f( g a |
    bf4.) f(~ |
    f4. ef |
    d4.) d8( ef f |
    ef8 d c)  c-\slurShapeC ( bf a |
    bf4.) bf-\slurShapeA (~ |
    bf4. c |
    d4.) d8( ef f |
    
    \barNumberCheck 9
    ef8 d c) c(\prall bf c |
    d4.) d8( ef f |
    ef8 d c) c-\slurShapeD (\prall b c |
    d4.) d8-\slurShapeB ( e f |
    e8 d c  \stemDown bf!-\insideSlur \prall a! bf |
    a8) a'( g~  g f e~ |
    e8 d c~  c bf a |
    \stemNeutral g4.)\prall g'8( e bf |
    
    \barNumberCheck 17
    a8) a'-\slurShapeE ( f~  f d b |
    % First beat, source has a duration of 4 (no dot)
    c4.)^\trillNatural -\trillAbove \mordent g'8( e bf! |
    a8) a'( f~  f d b |
    c8 g' e~  e c bf! |
    a8) a'( f~  f d bf |
    a8 bf c  bf a g |
    f4.) f'8-\slurShapeE ( d b |
    c4.)^\trillNatural -\trillAbove \mordent g'8( e bf! |
    
    \barNumberCheck 25
    a8) a'( f~  f d b |
    c8 g' e~  e c bf! |
    a8) a'( f~  f d bf |
    a8 bf c  bf a g |
    f8) bf-\slurShapeF ( g  a d bf |
    c8 g' e)  f(\prall e f) |
    g,8( a bf)  bf( c d |
    c8 bf a  g f e |
    
    \barNumberCheck 33
    f8) bf( g  a d bf |
    c8 g' e)  f(\prall e f) |
    g,8( a bf)  bf-\slurShapeG ( c d |
    c8 bf a  g f e |
    f8 a c~  c bf g |
    f8 a c~  c bf g |
    f8 a c~  c bf g |
    a8 c f  g, f' e |
    
    \barNumberCheck 41
    f4.)
  }
  \repeat volta 2 {
    f,8( g a) |
    a8( bf c) \acciaccatura { f } ef!-\slurShapeI ( d c |
    \stemDown bf8-\insideSlur \prall a bf) f'8( ef d) |
    d8-\slurShapeJ ( c bf \stemNeutral af\prall g af |
    g8) f'( d~  d b g) |
    af8(\prall g af)  af8(\prall g af |
    g8) f'( d~  d b g) |
    af'4.-\slurShapeK (~ af8 g f~ |
    
    \barNumberCheck 49
    f8 ef d~  d c b |
    c8 g' f  ef d c |
    bf8 d c  bf a g |
    a8 c bf  a g fs) |
    bf'4.-\slurShapeL (~ bf8 a g~ |
    g8 f e~  e d cs |
    d8) a'( fs~  fs d c! |
    bf8) bf'-\slurShapeM ( g~  g ef d |
    
    \barNumberCheck 57
    c8) c'( a~  a f ef |
    d8) d'( c~  c bf a~ |
    a8 g f~  f ef d |
    c4.)\prall c'8( a ef |
    d8) d'( bf~  bf g e |
    f4.)^\trillNatural -\trillAbove \mordent c'8-\slurShapeN ( a ef! |
    d8) d'( bf~  bf g e |
    f8) c'( a~  a f ef! |
    
    \barNumberCheck 65
    d8) d'( bf~  bf g ef |
    d8 ef f  ef d c |
    bf4.) bf'8( g e |
    f4.)^\trillNatural -\trillAbove \mordent c'8-\slurShapeP ( a ef! |
    d8) d'( bf~  bf g e |
    f8) c'( a~  a f ef! |
    d8) d'( bf~  bf g ef |
    d8 ef f  ef d c |
    
    \barNumberCheck 73
    bf8) \osp #'(0 . -0.5) ef( c  d g ef |
    f8 c' a)  bf(\prall a bf) |
    c,8( d ef) \osp #'(-0.5 . 0) ef( f g |
    f8 ef d  c bf a |
    bf8) \osp #'(0 . -0.5) ef( c  d g ef |
    f8 c' a)  bf(\prall a bf) |
    c,8( d ef)  ef-\slurShapeR ( f g |
    f8 ef d  c bf a |
    
    \barNumberCheck 81
    bf8 d f~  f ef d |
    bf8 d f~  f ef d |
    bf8 d f~  f ef d |
    d8 f bf,  c bf a |
    bf4.)
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    \partial 4. r4 r8 |
    R2. |
    r4 r8 \clef treble bf8( c d) |
    d8( ef f)  f_( g a |
    bf4.) bf,( |
    c4. ef |
    d4.) d8( ef f |
    ef8 d c)  c( bf a |
    bf4.) \clef bass bf( |
    
    \barNumberCheck 9
    c4. a |
    fs4.) g( |
    c4. af |
    g4.) b( |
    c4. e |
    f4. a, |
    bf4.) bf( |
    c4.) e( |
    
    \barNumberCheck 17
    f4.) f( |
    e4.) e( |
    f4.) f( |
    e4.) e( |
    f4. bf, |
    c4. c, |
    f4.) f'( |
    e4.) e( |
    
    \barNumberCheck 25
    f4.) f( |
    e4.) e( |
    f4. bf, |
    c4. c, |
    f4.) f( |
    g4. a |
    bf4.) bf( |
    c4. c, |
    
    \barNumberCheck 33
    f4.) f( |
    g4. a |
    bf4.) bf( |
    c4. c, |
    f4.) c-\slurShapeH ( |
    f4. c |
    f4. c |
    f4. c |
    
    \barNumberCheck 41
    f,4.)
  }
  \repeat volta 2 {
    r4 r8 |
    f'4.( ef |
    d4. d') |
    d4.( c |
    b4.) b( |
    c4.) c( |
    b4.) b( |
    c4.) c( |
    
    \barNumberCheck 49
    d4.) d( |
    ef4.) ef( |
    d4.) d( |
    c4.) c( |
    <bf) g'>4. q_( |
    <a g'>4.) g( |
    fs4.) fs( |
    g4.) g( |
    
    \barNumberCheck 57
    a4.) a( |
    bf4. d |
    ef4.) \clef treble \osp #'(-0.5 . -1) ef( |
    f4. a |
    \stemUp bf4.) bf( |
    a4.) a-\slurShapeO ( |
    bf4.) bf( |
    a4.) a( |
    
    \barNumberCheck 65
    bf4. ef, |
    f4.) \clef bass \stemNeutral f,( |
    <bf, bf'>4.) \clef treble \stemUp bf''( |
    a4.) a( |
    bf4.) bf( |
    a4.) a( |
    bf4. ef, |
    f4.) \clef bass \stemNeutral f,( |
    
    \barNumberCheck 73
    bf4.) bf( |
    c4. d |
    ef4.) ef( |
    f4. f, |
    bf4.) bf( |
    c4. d |
    ef4.) ef-\slurShapeQ ( |
    f4. f, |
    
    \barNumberCheck 81
    bf,4.) f'-\slurShapeS _( |
    bf,4. f' |
    bf4. f |
    bf,4. f |
    bf4.)
  }
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    \partial 4. s4.\p |
    s2.\cresc |
    s2.\f |
    s2.\dim |
    s2.-\tweak Y-offset #0 \p |
    s2. |
    s4. s\mf |
    s2. |
    s4. s-\tweak Y-offset #0 \p |
    
    \barNumberCheck 9
    s2. |
    s4. s-\tweak Y-offset #0.5 \cresc |
    s2.*3 |
    s4\f s8-\tag layout \sf -\tag midi \ff s4.-\tag midi \f |
    s2.-\tweak Y-offset #-1 \dim |
    s2.-\tweak Y-offset #-1 \p |
    
    \barNumberCheck 17
    s4 s8-\tag layout \sf -\tag midi \ff s4.-\tag midi \f |
    s2. |
    s4 s8-\tweak Y-offset #-1 -\tag layout \sf -\tag midi \ff
      s4.-\tag midi \f |
    s2.\cresc |
    s4 s8-\tag layout \sf -\tag midi \ff s4.-\tag midi \f |
    s2. |
    s4.-\tweak Y-offset #-1 \f s\p |
    s2. |
    
    \barNumberCheck 25
    s4 s8-\tag layout \sf -\tag midi \mf s4.-\tag midi \mp |
    s2. |
    s4 s8-\tweak Y-offset #0.5 -\tag layout \sf -\tag midi \ff
      s4.-\tag midi \f |
    s2. |
    s2.\cresc |
    s4. s\f |
    s2.\p |
    s2. |
    
    \barNumberCheck 33
    s2.\cresc |
    s4. s\f |
    s2.\p |
    s2. |
    s4\< s8\f s4\> s8\! |
    s4.-\tweak Y-offset #0 \p s-\tweak Y-offset #0.5 \cresc |
    s2. |
    s4. s-\tweak Y-offset #-1 ^\pocoRit |
    
    \barNumberCheck 41
    s4.\f
  }
  \repeat volta 2 {
    s4.-\tweak Y-offset #-1 \p |
    s4. s-\tweak Y-offset #-1 \f |
    s4. s\p |
    s2. |
    s4 s8-\tweak Y-offset #-1 -\tag layout \sf -\tag midi \mf
      s4.-\tag midi \p |
    s2.\f |
    s4\p s8-\tag layout \sf -\tag midi \mf s4.-\tag midi \p |
    s4.-\tweak Y-offset #0 \f s-\tweak Y-offset #0 \p |
    
    \barNumberCheck 49
    s2.*4 |
    s4.-\tweak Y-offset #1 \f s-\tweak Y-offset #1 \p |
    s2. |
    s4\cresc s8-\tag layout \sf -\tag midi \mf s4.-\tag midi \p |
    s4 s8-\tag layout \sf -\tag midi \f s4.-\tag midi \mp |
    
    \barNumberCheck 57
    s4 s8-\tag layout \sf -\tag midi \ff s4.-\tag midi \mf |
    s4-\tweak Y-offset #0.5 \f s8-\tweak Y-offset #0.5 -\tag layout \sf
      -\tag midi \ff s4.-\tag midi \f |
    s2.*2 |
    s4 s8-\tag layout \sf -\tag midi \ff s4.-\tag midi \f |
    s4. s\p |
    s4 s8-\tag layout \sf -\tag midi \mf s4.-\tag midi \p |
    s2.\cresc |
    
    \barNumberCheck 65
    s4 s8-\tag layout \sf -\tag midi \f s4.-\tag midi \mp |
    s2. |
    s2.\f |
    s4. s\p |
    s4 s8-\tag layout \sf -\tag midi \mf s4.-\tag midi \p |
    s2. |
    s4 s8-\tag layout \sf -\tag midi \mf s4.-\tag midi \p |
    s2. |
    
    \barNumberCheck 73
    s2.\cresc |
    s4. s-\tweak Y-offset #1 \f |
    s2.\p |
    s2. |
    s2.-\tweak Y-offset #-1.5 \cresc |
    s4. s\f |
    s2.\p |
    s2. |
    
    \barNumberCheck 81
    s4\< s8\f s4\> s8\! |
    s2.\p |
    s2.\cresc |
    s4. s-\tweak Y-offset #-1 ^\pocoRit |
    s4.\f
  }
}

tempi = {
  \repeat volta 2 {
    % Source has 4. = 168, but this seems too fast
    \tempo "Allegro" 4. = 144
    \partial 4. s4. |
    s2.*32 |
    
    \barNumberCheck 33
    s2.*7 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 132 s4. \tempo 4. = 120 s |
    
    \barNumberCheck 41
    \tempo 4. = 104 s4.
  }
  \repeat volta 2 {
    \tempo 4. = 144
    s4. |
    s2.*7 |
    
    \barNumberCheck 49
    s2.*32 |
    
    \barNumberCheck 81
    s2.*3 |
    \tag layout { s2. | s4. }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 132 s4. \tempo 4. = 120 s |
          \tempo 4. = 104 s4.
        }
        {
          \tempo 4. = 126 s4. \tempo 4. = 112 s |
          \tempo 4. = 40 s4.
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. s2.*5 \break
  s2.*6 \break
  s2.*6 \break
  s2.*6 \break
  s2.*6 \pageBreak
  
  % page 2
  s2.*6 \break
  s2.*5 s4. \break
  s4. s2.*5 \break
  s2.*5 \break
  s2.*5 \pageBreak
  
  % page 3
  s2.*6 \break
  s2.*6 \break
  s2.*6 \break
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
