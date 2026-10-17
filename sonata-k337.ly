%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.26"
\include "globals.ily"
\include "initial-clef-engraver.ily"

\header { 
  title  = "Sonata in G major"
  opus   = "K.337"
  source = "https://s9.imslp.org/files/imglnks/usimg/b/b6/IMSLP914786-PMLP525317-E4612_45-48-Scarlatti_-_Keyboard_Sonatas,_Supp_17-29.pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.1 . 0) (-0.1 . 0) (-0.3 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (-0.3 . 0) (-0.3 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (-0.3 . 0) (-0.3 . 0)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.3 . 0) (0.1 . 0) (-0.1 . 0) (-0.3 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (-0.3 . 0) (-0.3 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc

%
% Music
%

global = {
  \time 2/2
  \key g \major
  \override Timing.TimeSignature.style = #'numbered
  \beamEighths.22
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    g''4 b,8( c  d b e c |
    g'4-.) b,8( c  d b e c |
    d8 b') b( d,)  d( c) a'( c,) |
    c8( b) g'( b,)  b( a) g'( fs |
    g8 d b g  d) r r4 |
    g'8( e c g  e) r r4 |
    g'8( d b g  d) r r4 |
    g'8( e c g  e) r r4 |
    
    \barNumberCheck 9
    g'8( d b g)  r4 r8 b'-. |
    b8( a) d,( a')  a( g) cs,( g') |
    fs8( d e) a(~  a b a gs |
    a8 e cs a  e) r r4 |
    a'8( fs d a  fs) r r4 |
    a'8( e cs a  e) r r4 |
    a'8( fs d a  fs) r r4 |
    a'8( e cs a  e) r r4 |
    
    \barNumberCheck 17
    R1\fermata |
    \bar "||"
    <fs a b ds>4-> q8-. q-. q4-. \voiceOne <g e'> |
    a'4 g fs e |
    \oneVoice <fs, a b ds>4-> q8-. q-. q4-. \voiceOne <g e'> |
    a'4 g fs e |
    \oneVoice <fs, a b ds>4-> q8-. q-. q4-. fs'-. |
    g8( e b g  b g') b,( fs') |
    g8( e b g  e g b) b'( |
    
    \barNumberCheck 25
    c8 g e c  g e c) c''( |
    b8 g d b g d g) b'( |
    a8 fs d a  fs d fs) a'( |
    as8 b) fs( g)  ds( e) as,( b |
    cs8 d! e fs  g a! b g |
    gs8 a) e( fs)  cs( d) gs,( a |
    b8 cs d e fs g! a fs) |
    fs8( g) ds( e)  as,( b) fs( g |
    
    \barNumberCheck 33
    a!8 b cs d! e fs g e |
    fs4.) <a, a'>8-. \voiceOne a'4->( e8) a-. |
    a4->( fs8) a-. a4->( e8) a-. |
    a4->( fs8) a-. a4->( e8) a-. |
    a8( fs) b4 a g |
    \oneVoice <d fs>4. <a a'>8-. \voiceOne a'4->( e8) a-. |
    a4->( fs8) a-. a4->( e8) a-. |
    a4->( fs8) a-. a4->( e8) a-. |
    
    \barNumberCheck 41
    a8( fs) b4 a g |
    fs4 b,8( e)  a,( d) g,( cs) |
    d8( a) b4 a g |
    \oneVoice <d fs>1-> |
  }
  \repeat volta 2 {
    fs8-\slurShapeB ( g a b  c! d e fs |
    g8 fs e d  c b a g |
    fs8)( g a b  c d e fs |
    g8 fs e d  c b a g |
    
    \barNumberCheck 49
    fs8 d') fs,^( a \voiceOne g b c a) |
    \oneVoice b,8^( c d e  fs g a b |
    c8 b a g  fs e d c |
    b8)^( c d e  fs g a b |
    c8 b a g  fs e d c |
    b8 g') b,( d \voiceOne c8-.) c'4( b8) |
    \oneVoice e8( c g e  c) r r4 |
    g''8( d b g  d) r r4 |
    
    \barNumberCheck 57
    c''8( g e c  g) r r4 |
    g'8( d b g  d) r r4 |
    c''8( g e c  g) r r4 |
    R1*2 |
    \bar "||"
    <b e gs b>4-> q8-. q-. \voiceOne e8( b) a'[( e]) |
    d'4 c b a |
    \oneVoice <b, e gs b>4-> q8-. q-. \voiceOne e8( b) a'[( e]) |
    
    \barNumberCheck 65
    d'4 c b a |
    \oneVoice <b, e gs b>4-> q8-. q-. q4-. b'-. |
    b8( c) gs( a)  ds,( e) b( c |
    d!8 e fs gs  a b c) a( |
    as8 b) fs( g!)  ds( e) as,( b |
    cs8 ds e fs  g a b) g( |
    gs8 a) e( fs)  b,( c!) gs( a |
    b8 cs ds e fs g! a fs |
    
    \barNumberCheck 73
    g4.) <b, b'>8-. \voiceOne b'4->( fs8) b-. |
    b4->( g8) b-.  b4->( fs8) b-. |
    b4->( g8) b-.  b4->( f8) b-. |
    c4->( g8) c-.  c4->( g8) c-. |
    c4->( fs,!8) c'-.  b4->( g8) b-. |
    b4->( e,8) b'-.  b4-> a8-. g-. |
    \oneVoice fs4. d8-.  d8(\prall c16 d  a8-.) d-. |
    d8(\prall c16 d  b8-.) d-.  d8(\prall c16 d  a8-.) d-. |
    
    \barNumberCheck 81
    d8(\prall c16 d  b8-.) d-.  d8(\prall c16 d  a8-.) d-. |
    s4 \voiceOne e d c |
    \oneVoice <g b>4. d''8-. \voiceOne d4->( a8) d-. |
    d4->( b8) d-.  d4->( a8) d-. |
    d4->( b8) d-.  d4->( a8) d-. |
    d8( b) c( a)  b( g) a( fs) |
    g8( d) e( c  d b c a |
    b4.) a4( g fs8 |
    
    \barNumberCheck 89
    \oneVoice <b, d g>1) |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1*16 |
    
    \barNumberCheck 17
    s1 |
    s2. \voiceFour b'8( g) |
    fs'8( c) e( b)  ds( a) b( g) |
    s2. b8( g) |
    fs'8( c) e( b)  ds( a) b( g) |
    s1*3 |
    
    \barNumberCheck 25
    s1*8 |
    
    \barNumberCheck 33
    s1 |
    s2 a2 |
    a2 a |
    a2 a |
    a4 g'8( e)  fs( d) e( cs) |
    s2 a2 |
    a2 a |
    a2 a |
    
    \barNumberCheck 41
    a4 g'8( e)  fs( d) e( cs) |
    d8( a) g4 fs e |
    fs4 g8( e)  fs( d) e( cs) |
    s1 |
  }
  \repeat volta 2 {
    s1*4 |
    
    \barNumberCheck 49
    s2 g'4.( fs8) |
    s1*4 |
    s2 c4 d |
    s1*2 |
    
    \barNumberCheck 57
    s1*5 |
    s2 <b' gs' b>4 <c c'> |
    b'8( f) a( e)  gs( d) e( c) |
    s2 <b gs' b>4 <c c'> |
    
    \barNumberCheck 65
    b'8( f) a( e)  gs( d) e( c) |
    s1*7 |
    
    \barNumberCheck 73
    s2 b |
    b2 b |
    b2 b |
    c2 c |
    c2 b |
    c2 b4 cs |
    s1*2 |
    
    \barNumberCheck 81
    s1 |
    d8^( b) c( a)  b( g) a( fs) |
    s2 d'2 |
    d2 d |
    d2 d |
    d4 e d c |
    b4. a4 g fs8 |
    g8 d( e4 d) <a c> |
    
    \barNumberCheck 89
    s1 |
  }
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef treble % Initial bass clef, see initial-clef-engraver.ily
  \repeat volta 2 {
    g'2 r |
    g2 r |
    r4 g( a fs |
    g4) b,( c d |
    g,2) \clef bass r8 g( d g,) |
    r2 r8 c'( g c,) |
    r2 r8 g'( d g,) |
    r2 r8 c'( g c,) |
    
    \barNumberCheck 9
    r2 \stemDown g'8-\slurShapeA ( d g, g' |
    \override Parentheses.font-size = #-3
    \parenLeft \parenthesize fs2)( e |
    d2 e4-.) \stemNeutral e,-. |
    \parenRight \parenthesize a2 r8 a'( e a,) |
    r2 r8 a'( d, a) |
    r2 r8 a'( e a,) |
    r2 r8 a'( d, a) |
    r2 r8 cs'( a e |
    
    \barNumberCheck 17
    a,1)\fermata |
    <b fs' b>1 |
    q1 |
    q1 |
    q1 |
    q2. q4-. |
    <e b'>2. <b b'>4-. |
    <e b'>2. d4-. |
    
    \barNumberCheck 25
    <c c'>2. fs4-. |
    g2. cs,4-. |
    d2. fs4-. |
    \osp #'(0 . 2.5) g4( g,) r2 |
    r4 \osp #'(0 . 2.5) g'( g,) g'-. |
    fs2 r |
    r4 \osp #'(0 . 2.5) fs( fs,) fs'-. |
    e2 r |
    
    \barNumberCheck 33
    r4 \osp #'(0 . 2.5) e( e,) e'-. |
    d,8( d' fs) d-.  a( a' cs) a-. |
    d,,8( d' fs) d-.  a( a' cs) a-. |
    d,,8( d' fs) d-.  a( a' cs) a-. |
    d,,4-> g'( a-.) a,-. |
    d,8( d' fs) d-.  a( a' cs) a-. |
    d,,8( d' fs) d-.  a( a' cs) a-. |
    d,,8( d' fs) d-.  a( a' cs) a-. |
    
    \barNumberCheck 41
    d,,4-> g'( a-.) a,-. |
    d4-. g( a-.) a,-. |
    d4-. g( a-.) a,-. |
    <d, d'>1-> |
  }
  \repeat volta 2 {
    \clef treble d''8-\slurShapeC _( e fs g  a b c! d |
    e8 d c b  a g fs e |
    d8)_( e fs g  a b c d |
    e8 d c b  a g fs e |
    
    \barNumberCheck 49
    \clef bass d4) c-\slurShapeD ( b a |
    g8)-\slurShapeE ( a b c  d e fs g |
    a8 g fs e  d c b a |
    g8)( a b c  d e fs g |
    a8 g fs e  d c b a |
    g4) f-\slurShapeF ( e d |
    c2) r8 g'( e c |
    g2) r8 g'( d g, |
    
    \barNumberCheck 57
    c,2) r8 c''( g c, |
    g2) r8 g'( d g, |
    c,2) r8 e''( c g |
    e8 c g e c2) |
    R1 |
    <e b' e>1 |
    q1 |
    q1 |
    
    \barNumberCheck 65
    q1 |
    q2. e4-. |
    a1-> |
    r4 \osp #'(0 . 2.5) a'( a,) a'-. |
    g2 r |
    r4 \osp #'(0 . 2.5) g( g,) g'-. |
    fs2 r |
    r4 \osp #'(0 . 2.5) fs( fs,) fs'-. |
    
    \barNumberCheck 73
    e,8( e' g) e-.  b( b' ds) b-. |
    e,,8( e' g) e-.  b( b' ds) b-. |
    e,,8( e' g) e-.  d,( d' f) d-. |
    c,8( c' e) c-.  c,8( c' e) c-. |
    d,8( d' fs!) d-.  g,( g' b) g-. |
    c,,8( c' e) c-.  e,( e' g) e-. |
    d,8( d' fs) d-.  d,8( d' fs) d-. |
    g,8( g' b) g-.  d,8( d' fs) d-. |
    
    \barNumberCheck 81
    g,8( g' b) g-.  d,8( d' fs) d-. |
    g,4-. c( d-.) d,-. |
    g8( g' b) g-.  d8( d' fs) d-. |
    g,,8( g' b) g-.  d,8( d' fs) d-. |
    g,8( g' b) g-.  d,8( d' fs) d-. |
    g,4-. c( d) d,-. |
    g4-. c( d) d,-. |
    g4 <c c'>( <d b'>-.) d,-. |
    
    \barNumberCheck 89
    g1 \clef treble  |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f |
    s1*5 |
    s1\p |
    s1 |
    
    \barNumberCheck 9
    s1\f |
    s1*4 |
    s1\p |
    s1 |
    s1\f |
    
    \barNumberCheck 17
    s1 |
    s2.\f s4-\tweak Y-offset #-2 \mf |
    s8-\tag layout \sf -\tag midi \ff s2..-\tag midi \mf |
    s2.\f s4-\tweak Y-offset #-1.5 \mf |
    s8-\tag layout \sf -\tag midi \ff s2..-\tag midi \mf |
    s2.\f s4-\tweak Y-offset #0.5 \mf |
    s1 |
    s2.. s8\f |
    
    \barNumberCheck 25
    s1*3 |
    s2 s\mf |
    s2 s4.\< s8\! |
    s4.\> s8\! s2 |
    s2 s4.\< s8\! |
    s4.\> s8\! s2 |
    
    \barNumberCheck 33
    s2 s4.\< s8\! |
    s1\f |
    s1*3 |
    s4. s8\p s2 |
    s1*2 |
    
    \barNumberCheck 41
    s4 s2.\cresc |
    s1*2 |
    s1\f |
  }
  \repeat volta 2 {
    s2..\p\< s8\! |
    s2..\> s8\! |
    s2..\< s8\! |
    s2..\> s8\! |
    
    \barNumberCheck 49
    s4. s8\mf s2 |
    s2..\p\< s8\! |
    s2..\> s8\! |
    s2..\< s8\! |
    s2..\> s8\! |
    s4 s2.-\tweak Y-offset #-3 \f |
    s1\f |
    s1 |
    
    \barNumberCheck 57
    s1*5 |
    s1\f |
    s8-\tag layout \sf -\tag midi \fff s2..-\tag midi \f |
    s1 |
    
    \barNumberCheck 65
    s1 |
    s2. s4\mf |
    s1 |
    s2.. s8\< |
    s8 s4\> s8\! s2 |
    s2.. s8\< |
    s8 s4\> s8\! s2 |
    s2 s4.\< s8\! |
    
    \barNumberCheck 73
    s1\f |
    s1*5 |
    s4. s8\p s2 |
    s2 s\cresc |
    
    \barNumberCheck 81
    s1 |
    s4\f s2.-\tweak Y-offset #-1 \mf |
    s4. s8-\tweak Y-offset #0.5 \f s2 |
    s1*5 |
    
    \barNumberCheck 89
    s1 |
  }
}

pedal = {
  \repeat volta 2 {
    s1*6 |
    s2..\sd s8\su |
    s2..\sd s8\su |
    
    \barNumberCheck 9
    s1*5 |
    s2..\sd s8-\tweak Y-offset #-1 \su |
    s2..\sd s8-\tweak Y-offset #-1 \su |
    s1\sd |
    
    \barNumberCheck 17
    s1-\tag layout \sd -\tag midi \sud |
    s2.-\tag layout \sd -\tag midi \sud s4\su |
    s1 |
    s2.\sd s4\su |
    s1 |
    s2.-\tweak Y-offset #-1 \sd s4-\tweak Y-offset #-1 \su |
    s1*2 |
    
    \barNumberCheck 25
    s1*8 |
    
    \barNumberCheck 33
    s1 |
    s2\sd s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s1\su |
    s2\sd s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 41
    s1\su |
    s1*2 |
    s2.\sd s4-\tag midi \su |
  }
  \repeat volta 2 {
    s1-\tag layout \su |
    s1*3 |
    
    \barNumberCheck 49
    s1*6 |
    s1\sd |
    s1-\tag layout \sd -\tag midi \sud |
    
    \barNumberCheck 57
    s1-\tweak Y-offset #-2 -\tag layout \sd -\tag midi \sud |
    s1-\tag layout \sd -\tag midi \sud |
    s1-\tweak Y-offset #-2 -\tag layout \sd -\tag midi \sud |
    s2 s-\tweak Y-offset #-1 \su |
    s1 |
    s2.\sd s4\su |
    s1 |
    s2.\sd s4\su |
    
    \barNumberCheck 65
    s1 |
    s2.\sd s4\su |
    s1*6 |
    
    \barNumberCheck 73
    s2\sd s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s2.-\tag layout \sd -\tag midi \sud s4-\tweak Y-offset #1 \su |
    s4\sd s\su s\sd s-\tweak Y-offset #1 \su |
    
    \barNumberCheck 81
    s4\sd s-\tweak Y-offset #1 \su s\sd s-\tweak Y-offset #1 \su |
    s1 |
    s2\sd s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s2-\tag layout \sd -\tag midi \sud s-\tag layout \sd -\tag midi \sud |
    s1-\tweak Y-offset #1 \su |
    s1*2 |
    
    \barNumberCheck 89
    s1 |
  }
}

tempi = {
  % TODO \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    \tempo "Allegro" 2 = 108
    s1*16 |
    
    \barNumberCheck 17
    \tempo 2 = 60
    s1 |
    \tempo 2 = 108
    s1*7 |
    
    \barNumberCheck 25
    s1*16 |
    
    \barNumberCheck 41
    s1*2 |
    s4 \tempo 2 = 100 s \tempo 2 = 92 s \tempo 2 = 84 s |
    \tempo 2 = 72 s1 |
  }
  \repeat volta 2 {
    \tempo 2 = 108
    s1*4 |
    
    \barNumberCheck 49
    s1*32 |
    
    \barNumberCheck 81
    s1*7 |
    \tag layout { s1*2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 2 = 100 s \tempo 2 = 92 s \tempo 2 = 84 s |
          
          \barNumberCheck 89
          \tempo 2 = 76 s1 |
        }
        {
          s4 \tempo 2 = 96 s \tempo 2 = 84 s \tempo 2 = 72 s |
          
          \barNumberCheck 89
          \tempo 2 = 60 s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1*4 \break
  s1*5 \break
  s1*4 \break
  s1*5 \break
  s1*4 \pageBreak
  
  % page 2
  s1*5 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*5 \pageBreak
  
  % page 3
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*4 \pageBreak
  
  % page 4
  s1*4 \break
  s1*4 \break
  s1*4 \break
  s1*4 \break
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
    \new Staff = "lower" \with { \clef bass } \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \consists #initial-clef-change-engraver
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
