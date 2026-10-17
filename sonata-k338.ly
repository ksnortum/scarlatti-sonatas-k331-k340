%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"

\header { 
  title  = "Sonata in G major"
  opus   = "K.338"
  source = "https://s9.imslp.org/files/imglnks/usimg/6/64/IMSLP914430-PMLP525547-E4446_8-10-Scarlatti_-_Keyboard_Sonatas,_L.085-100.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeB = \shape #'((-0.2 . 0) (-0.2 . 0) (-0.4 . 0) (-0.4 . 0)) \etc

%
% Music
%

global = {
  \time 3/8
  \key g \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    \voiceOne g''32( a b a g4) |
    \oneVoice e8-. d-. c-. |
    \voiceOne g'4. |
    \oneVoice <c, a'>8-. <b g'>-. <a fs'>-. |
    \voiceOne g'32( a b a g4) |
    \oneVoice e8-. d-. c-. |
    \voiceOne g'4. |
    \oneVoice <a, c>8-. <g b>-. <fs a>-. |
    
    \barNumberCheck 9
    g32( a b a g4) |
    d'4 d8 |
    d8( c b |
    d4) d8 |
    d8( cs b |
    <cs e>4) q8 |
    q8( <b d> <as cs> |
    <cs e>4) q8 |
    
    \barNumberCheck 17
    q8( <b d> <as cs> |
    <cs e>4) q8-. |
    \voiceOne \osp #'(0 . -1) fs8( g a |
    \oneVoice <cs, e>4) q8-. |
    fs16( e fs g a b |
    \addStaccato {
      a8) fs d |
      b8 g e |
      \voiceDown cs8 a fs |
      
      \barNumberCheck 25
      d8 gs b |
      \oneVoiceUp d8 gs b |
      d8 b' gs |
    }
    \voiceOne d4 s8 |
    s4. |
    \oneVoice R4.\fermata |
    \voiceOne cs32( d e d cs4) |
    \oneVoice <f, d'>8-. <g e'>-. <a f'>-. |
    
    \barNumberCheck 33
    \voiceOne cs32( d e d cs4) |
    \oneVoice <f, d'>8-. <g e'>-. <a f'>-. |
    \voiceOne \osp #'(0 . -1) e'32( f g f e4) |
    <d f>8-. <e g>-. <f a>-. |
    e8( g-.) f-. |
    \oneVoice <g, e'>8-. <f d'>( <e cs'>) |
    \override Parentheses.font-size = #-3
    \appoggiatura { <\parenthesize d cs'> } <d d'>4. |
    \voiceOne cs'32( d e d cs4) |
    
    \barNumberCheck 41
    \oneVoice <f, d'>8-. <g e'>-. <a f'>-. |
    \voiceOne cs32( d e d cs4) |
    \oneVoice <f, d'>8-. <g e'>-. <a f'>-. |
    \voiceOne \osp #'(0 . -1) e'32( f g f e4) |
    <d f>8-. <e g>-. <f a>-. |
    e8( g-.) f-. |
    \oneVoice <g, e'>8-. <f d'>( <e cs'>) |
    \voiceOne d'4. |
    
    \barNumberCheck 49
    d4 e8-. |
    fs32( g a g fs4) |
    \oneVoice <g, e'>8-. <fs d'>-. <e cs'>-. |
    \voiceOne d'4. |
    d4 e8-. |
    fs32( g a g fs4) |
    \oneVoice <g, e'>8( <fs d'>-.) <e cs'>-. |
    <d d'>4.-> |
  }
  \repeat volta 2 {
    \barNumberCheck 57
    \voiceOne d'4. |
    \oneVoice g,8-. a-. b-. |
    \voiceOne c32( d e d c4) |
    d8-. e-. f-. |
    \osp #'(0 . -1) e32( fs! g fs e4) |
    fs8-. g-. a-. |
    \osp #'(0 . -1) gs32( a b a gs4) |
    a8-. b-. c-.(~ |
    
    \barNumberCheck 65
    \oneVoice <e, c'> <f d'>-.) <e c'>(~ |
    q8 <d b'>-.) <c a'>(~ |
    \voiceOne a'8 gs16 fs e8) |
    e4.^\aTempo |
    \oneVoice a,8-. b-. c-. |
    \voiceOne e4. |
    c8-. d-. e-. |
    fs32( g a g fs4) |
    
    \barNumberCheck 73
    a4. |
    fs32( g a g fs4) |
    a4. |
    fs32( g a g fs4) |
    g8-. a-. b-. |
    c16( b a g fs e |
    \oneVoice a16 g fs e d c |
    b16 a b c d e |
    
    \barNumberCheck 81
    \addStaccato {
      d8) b g |
      e8 c a |
      fs8 d' fs, |
      g8 cs e |
      g8 cs e |
      g8 e cs |
    }
    s8 \voiceOne g'4(~ |
    g8 fs16 e d8) |
    
    \barNumberCheck 89
    \oneVoice R4.\fermata |
    \voiceOne fs32( g a g fs4) |
    \oneVoice <bf, g'>8-. <c a'>-. <d bf'>-. |
    \voiceOne fs32( g a g fs4) |
    \oneVoice <bf, g'>8-. <c a'>-. <d bf'>-. |
    \voiceOne \osp #'(0 . -0.5) a'32( bf c bf a4) |
    <g bf>8 <\parenthesize a c>-. <\parenthesize bf d>-. |
    <fs a>8( c') <g bf>-. |
    
    \barNumberCheck 97
    \oneVoice <c, a'>8-. <bf g'>-. <a fs'>-. |
    \voiceOne g'4. |
    \oneVoice c,8-. d-. ef-. |
    \voiceOne a32( bf c bf a8-.)\noBeam \oneVoice <d, bf'>-.\noBeam |
    <c a'>8-. <bf g'>-. <a f'>-. |
    \voiceOne g'4. |
    \oneVoice c,8-. d-. ef-. |
    \voiceOne a32( bf c bf a8-.)\noBeam \oneVoice <d, bf'>-.\noBeam |
    
    \barNumberCheck 105
    <c a'>8-. <bf g'>-. <a f'>-. |
    \voiceOne g'4. |
    g4 a8-. |
    \osp #'(0 . -0.5) b32( c d c b4) |
    \oneVoice <c, a'>8-. <b g'>-. <a fs'>-. |
    \voiceOne g'4. |
    g4 a8-. |
    \osp #'(0 . -0.5) b32( c d c b4) |
    
    \barNumberCheck 113
    \oneVoice <c, a'>8-. <b g'>-. <a fs'>-. |
    g'16( d b g e c |
    a8-.) \grace { a'16-\slurShapeB ( } \afterGrace 15/16<fs a)>4)(\trill
      { g32 a } |
    g4.) |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    \voiceFour b'4.|
    s4. |
    b32( c d c b4) |
    s4. |
    b4.|
    s4. |
    b32( c d c b4) |
    s4. |
    
    \barNumberCheck 9
    s4.*8 |
    
    \barNumberCheck 17
    s4.*2 |
    d4. |
    s4.*5 |
    
    \barNumberCheck 25
    s4.*3 |
    d8( gs,) \oneVoice d'(~ |
    d8 cs16 b a8) |
    s4. |
    \voiceFour e4. |
    s4. |
    
    \barNumberCheck 33
    e4. |
    s4. |
    <a cs>4. |
    a4. |
    <a cs>4 r8 |
    s4.*2 |
    e4. |
    
    \barNumberCheck 41
    s4. |
    e4. |
    s4. |
    <a cs>4. |
    a4. |
    <a cs>4 r8 |
    s4. |
    \osp #'(0 . 0.5) fs!32( g a g fs4) |
    
    \barNumberCheck 49
    b8( g-.) cs-. |
    a4. |
    s4. |
    \osp #'(0 . 0.5) fs32( g a g fs4) |
    b8( g-.) cs-. |
    a4. |
    s4.*2 |
  }
  \repeat volta 2 {
    \barNumberCheck 57
    \osp #'(0 . 0.5) fs32( g a g fs4) |
    s4. |
    g4. |
    g4. |
    c4. |
    ds4. |
    e4. |
    e4. |
    
    \barNumberCheck 65
    s4.*2 |
    b4. |
    gs32( a b a gs4) |
    s4. |
    b32( c d c b4) |
    a4. |
    c4. |
    
    \barNumberCheck 73
    c32( d e d c4) |
    c4. |
    c32( d e d c4) |
    b4. |
    e4. |
    e4 s8 |
    s4.*2 |
    
    \barNumberCheck 81
    s4.*6 |
    g,8^. g' cs,-. |
    a4. |
    
    \barNumberCheck 89
    s4. |
    a4. |
    s4. |
    a4. |
    s4. |
    <d fs>4. |
    d4. |
    d4. |
    
    \barNumberCheck 97
    s4. |
    b!32( c d c b4) |
    s4. |
    d4 s8 |
    s4. |
    b!32( c d c b4) |
    s4. |
    d4 s8 |
    
    \barNumberCheck 105
    s4. |
    b!32( c d c b4) |
    e8( c-.) fs-. |
    <d g>4. |
    s4. |
    b32( c d c b4) |
    e8( c-.) fs-. |
    <d g>4. |
    
    \barNumberCheck 113
    s4.*4 |
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
    g4 \clef treble g'8( |
    c8-.) b-. a-. |
    g4 \clef bass g,8( |
    c8-.) d-. d,-. |
    g4 \clef treble g'8( |
    c8-.) b-. a-. |
    g4 \clef bass g,8( |
    c8-.) d-. d,-. |
    
    \barNumberCheck 9
    \osp #'(0 . 2.5) g4( g,8) |
    r16 d'( fs a d fs |
    g4.) |
    r16 d,( fs a d fs |
    g4.) |
    r16 fs,( as cs e fs |
    g4.) |
    r16 fs,( as cs e fs |
    
    \barNumberCheck 17
    g4.) |
    r16 a,,!( cs e a cs |
    d4.) |
    \clef treble r16 a( cs e a cs |
    d4.) |
    fs16_( e d cs b a |
    g16 fs e d cs b |
    \clef bass \voiceTwo a16 g fs e d cs |
    
    \barNumberCheck 25
    b4.) |
    \oneVoice <b d e gs>4. |
    q4. |
    q4. |
    <a e' a>4. |
    R4.\fermata |
    a8( a' g! |
    f8-.) e-. d-. |
    
    \barNumberCheck 33
    \osp #'(-1.5 . 0) a8( a' g |
    f8-.) e-. d-. |
    \osp #'(-1.5 . 0) a8( a' g |
    f8-.) e-. d-. |
    \osp #'(-1.5 . 0) a8( a'-.) bf,-. |
    g8-. a4 |
    d,4. |
    \osp #'(-1.5 . 0) a'8( a' g |
    
    \barNumberCheck 41
    f8-.) e-. d-. |
    \osp #'(-1.5 . 0) a8( a' g |
    f8-.) e-. d-. |
    \osp #'(-1 . 0) a8( a' g |
    f8-.) e-. d-. |
    \osp #'(-2 . 0) a8( a'-.) bf,-. |
    g8-. a4 |
    d8( d' cs |
    
    \barNumberCheck 49
    b8 a-.) g-. |
    fs8( d' fs, |
    g8-.) a-. a,-. |
    d8(_~ <d d'>) <cs cs'>-. |
    \addStaccato {
      <b b'>8 <a a'> <g g'> |
      <fs fs'>8 <e e'> <d d'> |
    }
    g8( a-.) a-. |
    d,4.-> |
  }
  \repeat volta 2 {
    \barNumberCheck 57
    d'8( d' c! |
    b8-.) a-. g-. |
    << 
      { \voiceTwo e8( d c | } 
      \new Voice { \voiceThree g'4. } 
    >>
    \oneVoice b,8-.) a-. g-. |
    \osp #'(2.5 . 0) c4( a'8) |
    \osp #'(2.5 . 0) b,4( b'8) |
    e,8( e' d |
    c8-.) b-. a-. |
    
    \barNumberCheck 65
    <gs b>4 a8-. |
    d,4 d'8-. |
    e,4. |
    e8( e' d |
    c8-.) b-. a-. |
    e8( e' d |
    c8-.) b-. a-. |
    <d, c'>8 q q |
    
    \barNumberCheck 73
    q8 q q |
    q8 q q |
    q8 q q |
    <ds a' b>8 q q |
    \addStaccato {
      e8 fs g |
      a8 b c |
      d8 e fs |
    }
    g4. |
    
    \barNumberCheck 81
    b16-\slurShapeA ( a g fs e d |
    c16 b a g fs e |
    d16 c b a g fs |
    e4.) |
    e'4. |
    <e g a cs>4. |
    q4. |
    \override Parentheses.font-size = #-3
    <d \parenthesize a' d>4. |
    
    \barNumberCheck 89
    R4.\fermata |
    d8( d' c! |
    bf8-.) a-. g-. |
    d8( d' c |
    bf8-.) a-. g-. |
    d8( d' c |
    bf8-.) a-. g-. |
    fs8( d) g-. |
    
    \barNumberCheck 97
    c8-. d-. d,-. |
    g8( g' f |
    ef8-.) d-. c-. |
    <fs, c' d>4 g8-. |
    c8-. d-. d,-. |
    g8( g' f |
    ef8-.) d-. c-. |
    <fs, c' d>4 g8-. |
    
    \barNumberCheck 105
    c8-. d-. d,-. |
    g8 g' fs! |
    e8-. d-. c-. |
    b8( a g |
    c8-.) d-. d,-. |
    g8(_~ <g g'>-.) <fs fs'>-. |
    \addStaccato {
      <e e'>8 <d d'> <c c'> |
      <b b'>8 <a a'> <g g'> |
    }
    
    \barNumberCheck 113
    c8( d-.) d,-. |
    g8( b c |
    d4) d,8( |
    g4.) |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4.\p |
    s4.-\tweak Y-offset #-2 \f |
    s4.-\tweak Y-offset #0 \p |
    s4.\f |
    s4.\p |
    s4.-\tweak Y-offset #-2 \f |
    s4.\p |
    
    \barNumberCheck 9
    s4. |
    s4\< s16 s\! |
    s4\> s8\! |
    s4\< s16 s\! |
    s4\> s8\! |
    s4\< s16 s\! |
    s4-\tag layout \sf -\tag midi \mf \> s8-\tag midi \p \! |
    s4\< s16 s\! |
    
    \barNumberCheck 17
    s4-\tweak Y-offset #1 -\tag layout \sf -\tag midi \mf
      -\tweak Y-offset #1.5 \> s8-\tag midi \p \! |
    s4.\cresc |
    s4.*3 |
    s8\f s4\dim |
    s4.*2 |
    
    \barNumberCheck 25
    s4.-\tweak Y-offset #0 \p |
    s4.-\tweak Y-offset #-1 \cresc |
    s4. |
    s4 s8-\tweak Y-offset #-1.5 \f |
    s4\>-\rit s8\! |
    s4. |
    s4.-\tweak Y-offset #-1.5 \f |
    s4.\p |
    
    \barNumberCheck 33
    s4.\f |
    s4.\p |
    s4.\f |
    s4.*4 |
    s4.\mf |
    
    \barNumberCheck 41
    s4.\p |
    s4.\mf |
    s4.\p |
    s4.\mf |
    s4.*4 |
    
    \barNumberCheck 49
    s4.\cresc |
    s4.\f |
    s4.-\tweak Y-offset #0 \p |
    s4.-\tweak Y-offset #-2 \f |
    s4.*4 |
  }
  \repeat volta 2 {
    \barNumberCheck 57
    s4.-\tweak Y-offset #-2 \mf |
    s4.-\tweak Y-offset #0.5 \p |
    s4.-\tweak Y-offset #0 \mf |
    s4.\p |
    s4.-\tweak Y-offset #0 \mf |
    s4.-\tweak Y-offset #1 \cresc |
    s4.*2 |
    
    \barNumberCheck 65
    s4.\f |
    s4. |
    s4\>-\pocoRit s8\! |
    s4.-\tweak Y-offset #-2.5 \mf |
    s4.\p |
    s4.-\tweak Y-offset #-2.5 \mf |
    s4.\p |
    s4.\mf |
    
    \barNumberCheck 73
    s4.\p |
    s4.*3 |
    s4.\cresc |
    s4.*3 |
    
    \barNumberCheck 81
    s8-\tweak Y-offset #2 \f s4-\tweak Y-offset #2 \dim |
    s4.*2 |
    s4.\p |
    s4.\cresc |
    s4. |
    s8 s4-\tweak Y-offset #-1 \f |
    s8\> s-\rit s\! |
    
    \barNumberCheck 89
    s4. |
    s4.\f |
    s4.-\tweak Y-offset #0.5 \p |
    s4.\f |
    s4.-\tweak Y-offset #0.5 \p |
    s4.\f |
    s4.*2 |
    
    \barNumberCheck 97
    s4. |
    s4.-\tweak Y-offset #-2 \f |
    s4.-\tweak Y-offset #1 \p |
    s4\f s8\p |
    s4. |
    s4.\f |
    s4.-\tweak Y-offset #2 \p |
    s4-\tweak Y-offset #1 \f s8-\tweak Y-offset #1 \p |
    
    \barNumberCheck 105
    s4. |
    s4.-\tweak Y-offset #-1 \cresc |
    s4. |
    s4.-\tweak Y-offset #1 \f |
    s4.-\tweak Y-offset #2 \p |
    s4.-\tweak Y-offset #0 \f |
    s4.*2 |
    
    \barNumberCheck 113
    s4.*2 |
    s4.\tweak extra-offset #'(0 . -1) ^\moltoRit |
    s4. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 88
    s4.*24 |
    
    \barNumberCheck 25
    s4.*4 |
    \set Score.tempoHideNote = ##t
    \tempo 4. = 80 s8 \tempo 4. = 72 s \tempo 4. = 66 s |
    \tempo 4. = 60 s4. |
    \tempo 4. = 88
    s4.*2 |
    
    \barNumberCheck 33
    s4.*16 |
    
    \barNumberCheck 49
    s4.*6 |
    \tempo 4. = 80 s8 \tempo 4. = 72 s \tempo 4. = 66 s |
    \tempo 4. = 60 s4. |
  }
  \repeat volta 2 {
    \barNumberCheck 57
    \tempo 4. = 88
    s4.*8 |
    
    \barNumberCheck 65
    s4.*2 |
    \tempo 4. = 80 s8 \tempo 4. = 72 s \tempo 4. = 66 s |
    \tempo 4. = 88
    s4.*5 |
    
    \barNumberCheck 73
    s4.*8 |
    
    \barNumberCheck 81
    s4.*7 |
    \tempo 4. = 80 s8 \tempo 4. = 72 s \tempo 4. = 66 s |
    
    \barNumberCheck 89
    \tempo 4. = 60 s4. |
    \tempo 4. = 88
    s4.*7 |
    
    \barNumberCheck 97
    s4.*16 |
    
    \barNumberCheck 113
    s4.*2 |
    \tag layout { s4.*2 | }
    \tag midi {
      \alternative {
        {
          \tempo 4. = 80 s8 \tempo 4. = 72 s \tempo 4. = 66 s |
          \tempo 4. = 60 s4. |
        }
        {
          \tempo 4. = 76 s8 \tempo 4. = 66 s \tempo 4. = 58 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4.*8 \break
  s4.*8 \break
  s4.*7 \break
  s4.*8 \break
  s4.*8 \pageBreak
  
  % page 2
  s4.*8 \break
  s4.*9 \break
  s4.*7 \break
  s4.*8 \break
  s4.*7 \pageBreak
  
  % page 3
  s4.*7 \break
  s4.*8 \break
  s4.*8 \break
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
