%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in D major"
  opus   = "K.336"
  source = "https://ks15.imslp.org/files/imglnks/usimg/0/0b/IMSLP914731-PMLP525176-E4525_26-28-Scarlatti_-_Keyboard_Sonatas,_L.331-345.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . -0.5) (-1 . 0.5) (1 . 0.5) (0 . -1)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -0.5))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.3 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc
slurShapeF = \shape #'((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc
slurShapeG = \shape #'((0 . 0.2) (0 . 0) (0 . -1) (0 . 0)) \etc
slurShapeH = \shape #'((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -1))
                      ) \etc
slurShapeJ = \shape #'((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc
slurShapeK = \shape #'((0 . -0.5) (0 . 0.75) (0 . 0.5) (0 . -1)) \etc

%
% Music
%

global = {
  \time 3/8
  \key d \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    a''4.-> |
    fs4.-> |
    d4.-> |
    b4.-> |
    g'16( fs e d cs b |
    a8-.) \grace { a32( } \afterGrace 15/16 g4)-\slurShapeA (\trill { a32 g } |
    fs8-.) a16( fs d' a |
    fs'8-.) e8.( fs32 g |
    
    \barNumberCheck 9
    fs8-.) e8.( fs32 g |
    fs8-.) e8.( fs32 g |
    fs16 e d cs d8-.) |
    g16( b, fs' b, a' b, |
    g'16 b, fs' b, a' b, |
    g'16 b, fs' b, a' b, |
    g'16 fs e) a g fs |
    s4. |
    
    \barNumberCheck 17
    \voiceOne g8-. s4 |
    g8-. s4 |
    s4.*3 |
    e8-. s4 |
    e8-. s4 |
    \oneVoice gs,16-\slurShapeD ( a b cs d e |
    
    \barNumberCheck 25
    fs16 d e cs d b |
    cs8-.) b8.( cs32 d |
    cs8-.) b8.( cs32 d |
    cs8-.) b8.( cs32 d |
    cs16 a d b e cs |
    fs16 d gs e a fs |
    b16 gs e b gs b) |
    \voiceOne b'4-> cs8-. |
    
    \barNumberCheck 33
    b4-> cs8-. |
    b4-> cs8-. |
    \oneVoice b16( a gs fs e d |
    cs16 gs' a ds, e a, |
    fs'8-.) \afterGrace 15/16 b,4(\trill { a32 b } |
    cs8-.) b8.( cs32 d |
    cs8-.) b8.( cs32 d |
    cs8-.) b8.( cs32 d |
    
    \barNumberCheck 41
    cs16-.) gs'( a ds, e a, |
    fs'8-.) \afterGrace 15/16 b,4(\trill { a32 b } |
    cs8-.) b8.( cs32 d |
    cs8-.) b8.( cs32 d |
    cs8-.) b8.( cs32 d |
    cs16-.) gs'( a ds, e a, |
    fs'8-.) \afterGrace 15/16 b,4_(\trill { a32 b } |
    a4.) |
  }
  \repeat volta 2 {
    \barNumberCheck 49
    \addStaccato {
      a8 a a |
      <g! e'>8 q q |
      <f d'>8 q q |
      <e c'>8 q q |
      <d bf'>8 q q |
    }
    a'16( bf a g f e) |
    f8(\prall e16 f d8-.) |
    \addStaccato {
      f'8 f f |
      
      \barNumberCheck 57
      <e c'>8 q q |
      <c bf'>8 q q |
      <c a'>8 q q |
    }
    \voiceOne a'8( g16 f e d) |
    \oneVoice e8(\prall ^\trillNatural d16 e c8-.) |
    \addStaccato {
      a'8 a a |
      <g a>8 q q |
      <f d'>8 q q |
      
      \barNumberCheck 65
      <e c'>8 q q |
    }
    <d b'>8( <c a'>) <d b'>-. |
    <c a'>8( <b gs'>) <c a'>-\slurShapeG (~ |
    \voiceOne a'8 gs16 fs e8) 
    b8( e) c-. |
    b8( e) c-. |
    b8( e) c-. |
    \oneVoice b16( a gs fs e8-.) |
    
    \barNumberCheck 73
    \voiceOne e'8( a) fs-. |
    e8( a) fs-. |
    e8( a) fs-. |
    \oneVoice e16( d cs b a8-.) |
    fs'16( a, e' a, g' a, |
    fs'16 a, e' a, g' a, |
    fs'16 a, e' a, g' a, |
    fs'16 e d c b a |
    
    \barNumberCheck 81
    b8-.) a8.( b32 c |
    b8-.) a8.( b32 c |
    b8-.) a8.( b32 c |
    b16 d cs! e d fs |
    e16 g fs e d cs |
    fs8-.) e8.( fs32 g |
    fs8-.) e8.( fs32 g |
    fs8-.) e8.( fs32 g |
    
    \barNumberCheck 89
    fs16-.) cs'( d gs, a d, |
    b'8-.) \afterGrace 15/16 e,4_(\trill { d32 e } |
    d8-.) e,8.( fs32 g |
    fs8-.) e8.( fs32 g |
    fs8-.) e8._( fs32 g |
    fs16-.) d'( cs e d a |
    b16 g) e'8.(\trill d32 e |
    fs16-.) a( cs, e d a |
    
    \barNumberCheck 97
    b8-.) \afterGrace 15/16 e,4(\trill { d32 e } |
    d4.) |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4.*8 |
    
    \barNumberCheck 9
    s4.*6 |
    s8. \voiceFour \hideNoteHead a''16-\slurShapeC ( s8 |
    e16 d cs b as b |
    
    \barNumberCheck 17
    as16 b as b as b |
    as16 b as b as b |
    as16 b cs d e fs |
    g16 e fs d e cs |
    fs16 e d cs b a! |
    gs16 a gs a gs a |
    gs16 a gs a gs a |
    \hideNoteHead gs16) s s4 |
    
    \barNumberCheck 25
    s4.*7 |
    gs'8( e) a |
    
    \barNumberCheck 33
    gs8( e) a |
    gs8( e) a |
    s4.*6 |
    
    \barNumberCheck 41
    s4.*8 |
  }
  \repeat volta 2 {
    \barNumberCheck 49
    s4.*8 |
    
    \barNumberCheck 57
    s4.*3 |
    b,4. |
    s4.*4 |
    
    \barNumberCheck 65
    s4.*2 |
    s4 \hideNoteHead c8-\slurShapeH ( |
    b4) s8 |
    gs4 a8-. |
    gs4 a8-. |
    gs4 a8-. |
    s4. |
    
    \barNumberCheck 73
    cs4 d8-. |
    cs4 d8-. |
    cs4 d8-. |
    s4.*5 |
    
    \barNumberCheck 81
    s4.*16 |
    
    \barNumberCheck 97
    s4.*2 |
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
    \addStaccato {
      r8 fs' d |
      r8 d b |
      r8 b g |
      r8 g e |
    }
    e8( fs g |
    a8 b cs |
    d8-.) d,4-> |
    d'16-\slurShapeB ( a' cs, a' a, a' |
    
    \barNumberCheck 9
    d,16 a' cs, a' a, a' |
    d,16 a' cs, a' a, a' |
    d,8-.) d,4-> |
    e'8( ds fs |
    e8 ds fs |
    e8 ds fs |
    e8-.) e,4-> |
    e'8( fs g |
    
    \barNumberCheck 17
    e8 fs g |
    e8 fs g |
    fs8-.) fs,-. fs'-. |
    e8( d cs |
    b8 cs d) |
    <e, d'>8 q q |
    q8 q q |
    q8 q q |
    
    \barNumberCheck 25
    q8-. <e cs'>-. <e b'>-. |
    a16-\slurShapeE ( e' gs, e' e, e' |
    a,16 e' gs, e' e, e' |
    a,16 e' gs, e' e, e' |
    \addStaccato {
      a,8) b cs |
      d8 e fs |
    }
    e8-. e,4-> |
    \osp #'(-0.5 . 0) e'16( d cs b cs d |
    
    \barNumberCheck 33
    e16 d cs b cs d |
    e16 d cs b cs d |
    e8-.) fs-. gs-. |
    a,8( b cs |
    d8-.) e( e,) |
    a16-\slurShapeF ( e' gs, e' e, e' |
    a,16 e' gs, e' e, e' |
    a,16 e' gs, e' e, e' |
    
    \barNumberCheck 41
    a,8-.) b-. cs-. |
    d8-. e( e,) |
    a16-\slurShapeF ( e' gs, e' e, e' |
    a,16 e' gs, e' e, e' |
    a,16 e' gs, e' e, e' |
    a,8-.) b-. cs-. |
    d,8-. e( e,) |
    a4.-> |
  }
  \repeat volta 2 {
    \barNumberCheck 49
    a4. |
    a4. |
    a4. |
    a4. |
    a4. |
    a'8-. b-. cs-. |
    d4. |
    d4.( |
    
    \barNumberCheck 57
    c4. |
    e4. |
    f4. |
    g4. |
    c,4.) |
    a4. |
    a4. |
    a4. |
    
    \barNumberCheck 65
    a4. |
    d4.( |
    f4. |
    e4.) |
    e16( d c b c d |
    e16 d c b c d |
    e16 d c b c d |
    e4.) |
    
    \barNumberCheck 73
    a,16( g fs e fs g |
    a16 g fs e fs g |
    a16 g fs e fs g |
    a4.) |
    d8-\slurShapeI ( cs e |
    d8 cs e |
    d8 cs e |
    d,8-.) e-. fs-. |
    
    \barNumberCheck 81
    g16-\slurShapeJ ( d' fs, d' d, d' |
    g,16 d' fs, d' d, d' |
    g,16 d' fs, d' d, d' |
    g,8-.) e-. fs-. |
    g8( a-.) a,-. |
    d'16-\slurShapeK ( a' cs, a' a, a' |  
    d,16 a' cs, a' a, a' |  
    d,16 a' cs, a' a, a' |
    
    \barNumberCheck 89
    d,8-.) e-. fs-. |
    g,8-. a( a,) |
    d16( a' cs, a' a, a' |  
    d,16 a' cs, a' a, a' |  
    d,16 a' cs, a' a, a' |
    d,8-.) e-. fs-. |
    g8-. a( a, |
    d8-.) e-. fs-. |
    
    \barNumberCheck 97
    g8-. a( a,) |
    d,4.-> |
  }
}

dynamics = {
  \override TextScript.Y-offset = #-0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4.*7 |
    
    \barNumberCheck 9
    s4.*8 |
    
    \barNumberCheck 17
    s16 s\p s4 |
    s4. |
    s4\< s16 s\! |
    s4-\tweak Y-offset #1.5 \> s16 s\! |
    s4. |
    s4.\p |
    s4. |
    s16 s-\tweak Y-offset #1 \< s8. s16\! |
    
    \barNumberCheck 25
    s4.-\tweak Y-offset #1 \cresc |
    s4.-\tweak X-offset #-0.5 \f |
    s4.*5 |
    s4.^\sempreF |
    
    \barNumberCheck 33
    s4.*5 |
    s16 s\p s4 |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 41
    s4.\f |
    s4. |
    s16 s\p s4 |
    s4.\cresc |
    s4. |
    s4.\f |
    s4.*2 |
  }
  \repeat volta 2 {
    \barNumberCheck 49
    s4.\p |
    s4.*4 |
    s4\< s16 s\! |
    s4\mf\> s8\! |
    s4.-\tweak Y-offset #0 \p |
    
    \barNumberCheck 57
    s4.*3 |
    s4.-\tweak Y-offset #0.5 \mf |
    s4\> s8\! |
    s4.\p |
    s4.*2 |
    
    \barNumberCheck 65
    s4. |
    s4.\mf |
    s4. |
    s4\> s8\! |
    s4.\mf |
    s4.*3 |
    
    \barNumberCheck 73
    s4.\f |
    s4.*3 |
    s4.\p |
    s4.\cresc |
    s4.*2 |
    
    \barNumberCheck 81
    s4.\mf |
    s4.*2 |
    s4.\cresc |
    s4. |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 89
    s4.*2 |
    s16 s-\tweak Y-offset #-1 \p s4 |
    s4.-\tweak Y-offset #0.5 \cresc |
    s4. |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 97
    s4.*2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 76
    s4.*40 |
    
    \barNumberCheck 41
    s4.*6 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 69 s8 \tempo 4. = 63 s \tempo 4. = 58 s |
    \tempo 4. = 54 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 76
    \barNumberCheck 49
    s4.*48 |
    
    \barNumberCheck 97
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 69 s8 \tempo 4. = 63 s \tempo 4. = 58 s |
          \tempo 4. = 54 s4. |
        }
        {
          \tempo 4. = 66 s8 \tempo 4. = 58 s \tempo 4. = 52 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*7 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \break
  s4.*6 \pageBreak
  
  % page 2
  s4.*6 \break
  s4.*5 \break
  s4.*6 \break
  s4.*7 \break
  s4.*8 \pageBreak
  
  % page 3
  s4.*8 \break
  s4.*7 \break
  s4.*6 \break
  s4.*7 \break
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
