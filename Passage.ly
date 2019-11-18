\version "2.18.2"



\header {
  title = "Le passage de la mer rouge"
  subtitle = "Deuxième cantate à voix seule, avec symphonie"
  composer = "E. J. De la Guerre"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

%%%%%%%%%%%%%%%%%% DEBUT
\layout {

  \context {
    
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


global = {
  #(set-global-staff-size 17)

  \key bes \major
  \time 4/4
  
}

violinVoice =  { \relative c'' {
  \global
  \dynamicUp
  
  r8 bes f'4 r16 f c d ees4 (ees8.) d32 c d8. ees16 c4 (c16) c g a bes8 f' bes4 (bes16) bes f g aes4 (aes8.) g16 g4 (g8.) f16 f8 g16 aes e8. d32 c bes8. aes32 g aes8 f des' c f e g f aes g16 f e8. f16
  f8 f, c'4 (c16) c g a bes8 c d bes f'4 (f16) f c d ees8 f g4 a8 g16 f bes8 a16 g f8 ees16 d ees8 c f4 (f8) ees16 d c8 bes16 a bes8 g ees'4 (ees8.) d16 c bes a g a8 f bes16 g c a d8. c16 c8. bes16 bes1
  \bar "||"
  \break

  
                  }
}

sopranoVoice =  { \relative c'' {
  \global
  \dynamicUp


}
}
verseSopranoVoice = \lyricmode {

}


%------------------

bcMusic =   { \relative c' {
  \global
bes4 r8 f aes4 r16 aes g aes bes4 r8 bes,8 f'16 f c d ees4 d4. bes8 f4 (f16) f' g aes bes,4 ees8 f16 g aes,4 (aes8) bes16 c g8. aes16 e8 c f4 f'8 ees des c bes aes16 g d8 bes' c c,
f4. c'8 ees4 d8 c bes4. f'8 aes4 g8 f ees d16 c f8 ees16 d g8 f16 ees d8 g c, f16 ees d8 ees16 f g8 a16 bes ees,8 f d ees16 d c8 d16 ees a,8 bes ees,4 ees' d8 c bes ees, f4 bes1
\break

}
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
s2. 

}


violinPart = \new Staff \with  {
  instrumentName = "Violon"
  shortInstrumentName = "V."
} { \violinVoice }

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basse continue"
    shortInstrumentName = "B.c."
  } { \clef bass \bcMusic }
  \new FiguredBass \bcFigures
>>

\score {
  <<
    \violinPart
  
    \bassoContinuoPart
  >>
  \layout { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ISRAEL

\layout {

  \context {
    
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


global = {
  #(set-global-staff-size 17)

  \key bes \major
  \time 4/4
  
}



sopranoVoice =  { \relative c'' {
  \global
  \dynamicUp

r4 r8 f,16 f bes4 r8 d16 bes f'8. ees16 d f bes, d g,8 g16 a bes8 c16 d ees4. g,8 bes bes bes a a a r4 c r8 f b,b16 b c8 d ees2
r8 c f f g, g g c f, f       
r8^"Violons" r32 c' d ees d8 (d32) d e f e f e d c bes aes g aes bes c bes aes g f ees d8. bes'32 aes g8. c32 bes aes8. d32 c b c b a g f ees d ees16. d32 d16. c32 c4 r
r8 r16 c' a a a a d4 r8 bes16 bes ees32 f ees d c d c bes a8 a16 a fis4^"+" r r8 d'16 d a8 a16 a 
bes16 bes bes d f,8. ees16 ees8 ees r c'16 c e,8 e16 e f8 g a4 a8 f bes c16 d a8 a16 bes bes1


}
}
verseSopranoVoice = \lyricmode {

Is -- ra -- ël dont le Ciel vou -- lait bri -- ser les fers, fu -- yait moint du Ti -- ran la tris --  te ser -- vi -- tu -- de, Mais il sent à l'as -- pect des mers,
Re -- naî -- tre son in -- cer -- ti -- tu -- de.
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
\skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 
Mo -- yse en -- tend dé -- jà ces mur -- mu  __ _ _ _ _ _ _ _ _  res nou -- veaux: De -- vais- tu nous con -- duire à ces af -- freux a -- bî -- mes?
Et l'É -- gy -- pte pour les vic -- ti -- mes eût- el -- le man -- qué de tom -- beaux?
}


%------------------

bcMusic =   { \relative c' {
  \global


bes,2.bes'4 a bes8 d, ees2 c e, f4 (f16) f' ees f a,4 aes g8 g'16 f ees8 d c (c32) c bes c g8 (g32) g aes bes

aes4.(aes32) g aes bes c4 c, d8(d32) d' c bes a8 (a32) a bes c bes8 (bes32) bes c d c8 c, f f' bes,32 c d c bes a g16 ees'32 f g f ees d c16 f32 g a g f ees d16 g8 g, c16. f,32 g8 c32 b c d e d e d d e f d e f g e
f4f, bes16 bes'32 aes g aes g f ees aes g f ees f ees d c8 ees'32 f ees d c d c bes a bes c a d d c bes a bes a g fis g fis e d e d c bes4 fis g b c2 bes4 a8 g f4 f'4 d8 ees f f, bes1
  \bar "||"
}
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
s2. 

}



sopranoVoicePart = \new Staff \with {
  instrumentName = "Melle Bougy"
  shortInstrumentName = ""
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basse continue"
    shortInstrumentName = "B.c."
  } { \clef bass \bcMusic }
  \new FiguredBass \bcFigures
>>

\score {
  <<
    \sopranoVoicePart
    \bassoContinuoPart
  >>
  \layout { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INGRATS

\layout {

  \context {
    
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


global = {
  #(set-global-staff-size 17)

  \key bes \major
  \time 3/4
  
}



sopranoVoice =  { \relative c'' {
  \global
  \dynamicUp

r2. r r r r^"#" r r2 f,4 bes2. r2 d8. f16

a,4. bes8 c d ees2 d8 c d4 \grace {c8} bes4 r r ees d c^"+" c bes a2^"+" bes4 c r2 r r8 f,
f8. g16 a8. bes16 c8. d16 ees2 r4 r r8 d d g e4 (e16) f e d c d e c f2 (f8) e d16 c bes a a4 (g^"+") f2 r4 r2 bes4
g2^"+" r4 r2 ees'4 c2^"+" aes8. c16 e,4. (f8) g a bes2 bes8. c16 a4 a r r f' e d^"+" d c
bes2^"+" a4 g2^"+" r8 a bes8. c16 d8. e16 f8. d16 g4. g8 d^"+" e f4 (f8.) e16 d c bes a bes8. c16 \grace {c16 d} d2^"+" c4 r8 f, f8. bes16 g4 (g16) f g a bes c d bes

ees4 (ees8.) d16 c d bes c a4 (a16) g a bes c d ees c f2 (f8.) c16 ees8. d16 d4 (c^"+") bes^"Fin" r2 r2. r
r r4 r2 r d4 \grace {c8} bes4 \grace {a8} g4 a bes c8 bes a g d'2 r4 r2. r r4 r8 a fis d bes'4. d8 bes8 c16 d
g,4^"+" g d'8. d16 ees2 (ees8) f g f ees d c bes a4. a8 a8. a16 d4. d8 bes c16 d fis,4 (fis8) a16 g fis8^"+" e16 d g4. d'8 c d16 ees a,2. (a8.) c16 bes4 (a^"+")
g4 r2 r2. r r r4 r8 d' bes a16 g ees'4. c8 a bes16 c f,4 f bes8. c16 d2 (d8) ees

f8 ees d c bes a g4.^"+" bes8 c8. d16 ees4. ees8 c d16 ees a,4 (a8) c16 bes a8^"+" g16 f bes4 (bes8) f'16 ees d8 g16 f e8 d16 c f2 (f) (e4) f r2 r2.
r^"On reprend l'air jusqu'au mot fin" r

}
}
verseSopranoVoice = \lyricmode {

In -- grats, que vos

plain __ _ _ _ _ tes fi -- ni -- ssent, Re -- pre -- nez un plus doux es -- poir, Il
est un sou -- ve -- rain pou -- voir A qui les On __ _ _ _ _ _ _ _ _ des o __ _ bé __ _ is -- sent
In -- 
grats, In -- grats, que vos plain __ _ _ _ tes fi -- ni -- ssent, Re -- pre -- nez un plus 
doux es -- poir, Il est un sou -- ve -- rain pou -- voir A qui les On __ _ _ _ des \skip 4 o -- bé -- is -- sent, A qui les On __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ des 

o -- bé -- is -- sent
Il s'ar -- me pour vo -- tre__ _ se __ _ cours,
Les flots ou -- verts vont vous ap __ _ pren -- dre que la main qui ré __ _ gla__ _ leur__ _ cours
A le pou -- voir de les__ _ sus -- pen __ _ _ _ _ _ _ _ _ _ _ _ _ _ dre
Les flots ou __ _ verts vont vous ap __ _ pren -- dre que la main qui ré __ _ gla __ _ leur __ _ cours
A le pou -- voir de les sus __ _ pen __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ dre
}


%------------------

bcMusic =   { \relative c' {
  \global


r4 bes a g8. bes16 f8. bes16 ees,8. bes'16 d,8. bes'16f8. bes16 d,8 ees16 f bes,8. d16 bes8. d16 g,8 a16 bes f8.^"#" f'16 d8. f16 ees8. f16 g8 f16 ees f4 f, bes8. f'16 d8. f16 bes,8. d16 g,8. bes'16 f8. bes16 ees,8. bes'16 d,8. bes'16 f8. bes16 bes,8. bes'16
 f8. f16 c8. f16 a,4 (a8.) c16 f,4 f' bes8. f'16 d8. f16 a,8. d16 g,8. bes16 g8. bes16 f8. bes16 ees,8. g16 ees8. g16 d8. f16 c8. f16 c8. f16 bes,8. f'16 f,8. f''16 d8. f16 c8. f16 bes,8. f'16 d8. f16 bes,8. d16
 a8. g16 f8. g16 a8. b16 c,8. d16 ees8. f16 g8. a16 bes8. d16 bes8 a16 bes g8 a16 bes c8. g16 c8. bes16 a8. a16 d4 (d16) d c bes a bes c a bes c d bes c4 c, f8. c'16 f,8. c'16 ees,8. c'16 d,8. bes'16 f8. bes16 d,8. bes'16
 ees,8. g16 ees8. g16 d8. g16 c,8. g'16 c,8. g'16 g,8. g'16 aes,8. c'16 aes8. c16 f,8. aes16 c,4. c8 bes a g8. bes16 e,8. g16 c,4 f8. c'16 f,8. c'16 ees,8. c'16 d,8. f''16 d8. f16 c8. f16 bes,8. d16 bes8. d16 c8. f16
 g,8. bes16 g8. bes16 d,8. f16 ees8. g16 ees8. g16 c,8. c16 g8. a16 bes8. c16 d8. bes16 ees8. f16 g4 r8 g d8. f16 c8. f16 bes,8. d16 g,8. a16 bes8. bes'16 d,8. bes16 f' g f ees d8. bes'16 d,8 c16 bes ees8. g16 ees8. g16 d8. g16
 
 c, g a bes c8. d16 ees8. c16 f8. c'16 f,8. c'16 ees,8. c'16 d,ees d c bes c d ees f8. f16 a,8. bes16 f'4 f, bes16^"Fin" ees d c bes c bes a g a bes g ees' aes g f ees f ees d c d ees c f bes a g f g f ees d ees f d
 g a bes ees, f4 f, bes
 \bar "||"
 d' c bes8. d16 bes8. d16 a8. d16 g,8. d'16 bes8. d16 fis,8. d16 g8 fis16 g ees2 d d'4 bes8. a16 g8. bes16 a8. c16 bes8 c16 d c8. d16 ees8. c16 d2 r4 r8 d, bes a16 g g'8. g16
 ees8 f16 g b,8 c16 d g,4 c8. g'16 c,8. g'16 d8. f16 ees8 d c bes a g d'4 d'8 c d ees bes4. bes8 g a16 bes c,2 c4 bes8. bes'16 g8 a16 bes ees,8 f16 g c,4. ees8 d8. f16 ees8. c16 d4 d,
 g8. d''16 bes8. d16 g,8 a16 bes fis8. d'16 f,8 a16 d f,8 a16 d e,8. c'16 ees,8 g16 c c,8 d16 ees d8 e16 fis g8 a16 bes d,8. d,16 g2 r8 g' c, d16 ees f4. f8 d ees16 f bes,4 r r8. bes'16 g8. bes16 f8. bes16
 
 d,8 c bes c d bes ees8. f16 g8. f16 ees8. d16 c8. g'16 c,8 d16 ees ees,4 ees'2. d8 f16 ees d8 d16 c bes4 bes a8 c16 bes a8 g16 f bes8 c16 d c4 c, f bes' a g8. bes16 f8. bes16 ees,8. bes'16
 d,8. bes'16 f8. bes16 d,8 ees16 f bes,8. d16 bes8. d16 g,8 a16 bes
  \bar "||"

}
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
s2. 

}



sopranoVoicePart = \new Staff \with {
  instrumentName = "Melle Bougy"
  shortInstrumentName = ""
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basse continue"
    shortInstrumentName = "B.c."
  } { \clef bass \bcMusic }
  \new FiguredBass \bcFigures
>>

\score {
  <<
    \sopranoVoicePart
    \bassoContinuoPart
  >>
  \layout { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RITOURNELLE

\layout {

  \context {
    
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


global = {
  #(set-global-staff-size 17)

  \key bes \major
  \time 9/8
  
}

violinVoice =  { \relative c'' {
  \global
  \dynamicUp
  
  r4 f8 d4 c8 bes c d g,4 g'8 ees4 d8 c d ees a, g f bes a g c bes a d4 bes8 ees4 f8 g4 g8 c,4 c8 d4 ees8 f4 f8 b,8 a g c d ees d ees f ees4 d8 c4 bes8 a g f 
  f'4 ees8 d4 c8 bes a g g'4 f8 ees d c a' g f bes a g f ees d c4 bes8 bes4. r8 c bes a g f f'4 ees8 d4 c8 bes a g g'4 f8 ees d c a' g f bes a g f ees d c4 bes8 bes2. (bes4.)
  
  \bar "||"
  \break

  
                  }
}


%------------------

bcMusic =   { \relative c' {
  \global
r4. bes4 a8 g4 d8 ees4 ees8 c4 bes8 a bes c f,4 f'8 d4 ees8 c4 f8 bes,4 bes'8 g4 f8 ees f g aes,4 aes'8 f4 ees8 d ees f g,4 g'8 ees d c g'4 g,8 c4 (d8) ees4 c8 f ees f 
d4 c8 bes4 a8 g4 g'8 ees4 d8 c4. f8 ees d g f ees d c bes f'4 f,8 bes c bes a4 g8 f4 f'8 d4 c8 bes4 a8 g4 g'8 ees4 d8 c4. f8 ees d g f ees d c bes f4. bes2. (bes4.)
\break

}
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
s2. 

}


violinPart = \new Staff \with  {
  instrumentName = "Violon"
  shortInstrumentName = "V."
} { \violinVoice }


bassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basse continue"
    shortInstrumentName = "B.c."
  } { \clef bass \bcMusic }
  \new FiguredBass \bcFigures
>>

\score {
  <<
    \violinPart
  
    \bassoContinuoPart
  >>
  \layout { }
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% MOYSE DONNE L'ORDRE

\layout {

  \context {
    
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


global = {
  #(set-global-staff-size 17)

  \key bes \major
  \time 2/2
  
}



sopranoVoice =  { \relative c'' {
  \global
  \dynamicUp

r1^"Mouvement marqué" bes4 r f' r r bes,8 ees c4^"+" c r c8 f d^"+" \grace {c8} bes8 r d c8.^"+" c16 c8 a bes4. bes8 g a16 bes c8 bes16 c (a8.^"+") a16 a8 bes c4 r2.
f,8. (e16) f g a f bes8. bes16 bes8 d g,4 g8 a fis4 fis r2 r4 a8 d bes bes r8. g16 d'8. (c16) d e f d (g8) g c, bes a4^"+" a8 bes \grace {a8} g4 r4 r2

r2 c8 bes16 a g a bes c a4^"+" a f'8 ees16 d c d ees f d8.^"+" d16 d8 bes ees4 ees8 g c, c r4 r f8 d bes g r4 r ees'8 c a^"+" f  r8. f16
f8. (g16) a bes c a d8. c16 bes c d ees f2 (f8) f c d bes4^"+" bes8 a bes1
}
}
verseSopranoVoice = \lyricmode {

Ciel! Ciel! quel pro -- di -- ge! quel spec -- ta -- cle! On voit au sein des mers flot -- ter \skip 4 \skip 4 \skip 4 \skip 4 \skip 4 ses é -- tan -- darts,
L'on  __ _ _ _ _ _ de qu'il cro -- yait un obs -- ta -- cle se par -- ta -- ge, s'é -- lè __ _ _ _ _ ve, & luy sert de ram -- parts.
L'on  __ _ _ _ _ _ _ _ de L'on  __ _ _ _ _ _ _ _ de qu'il cro -- yait un obs -- ta -- cle se par -- ta -- ge, se par -- ta -- ge, s'é -- lè __ _ _ _ _ _ _ _ _ _ _ _ ve, & luy sert de ram -- parts.

}


%------------------

bcMusic =   { \relative c' {
  \global

bes,8 d f bes, a c f a, g bes d bes d, f bes d, ees g' ees c f f a, c f, c' f f, bes bes' d, bes a c f a, g g16 a bes8 g ees'4 c8 d16 ees f4 f8 bes, f' g16 a bes8 a16 bes g8 a16 bes c8 c,
f4. f8 d f d bes ees d ees c d fis a d, c fis a c, bes d fis, d g4 g'8 bes f4 f,8 f' ees8. d16 ees8 c d4 d, g16 a bes c d e f d g8 c, d d
g8 f16 e d e f g e2 f8 ees16 d c d ees f d4 a bes8 f' bes4 g8 bes g ees aes aes c aes f2 r4 g8 ees c2 f4 r f,2 bes bes8. a16 bes c d ees f4. d8 g ees f f, bes1
    \bar "||"

}
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
s2. 

}



sopranoVoicePart = \new Staff \with {
  instrumentName = "Melle Bougy"
  shortInstrumentName = ""
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "B.c."
    shortInstrumentName = "B.c."
  } { \clef bass \bcMusic }
  \new FiguredBass \bcFigures
>>

\score {
  <<
    \sopranoVoicePart
    \bassoContinuoPart
  >>
  \layout { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% QUE FERA LE TYRAN TEMOIN DE CE MIRACLE ????????

\layout {

  \context {
    
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


global = {
  #(set-global-staff-size 17)

  \key bes \major
  \time 2/2
  
}



sopranoVoice =  { \relative c'' {
  \global
  \dynamicUp

r8 c16 c a8^"+" a16 c f,8 f' b,16 b b c c8 c r4 r2
}
}
verseSopranoVoice = \lyricmode {

Que fe -- ra le ty -- ran té -- moin de ce mi -- ra -- cle?

}


%------------------

bcMusic =   { \relative c' {
  \global

f,,4 f' d2 c1
    \bar "||"

}
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
s2. 

}



sopranoVoicePart = \new Staff \with {
  instrumentName = "Melle Bougy"
  shortInstrumentName = ""
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "B.c."
    shortInstrumentName = "B.c."
  } { \clef bass \bcMusic }
  \new FiguredBass \bcFigures
>>

\score {
  <<
    \sopranoVoicePart
    \bassoContinuoPart
  >>
  \layout { }
}

%%%%%%%%%%%%%%%%%% DEBUT
\layout {

  \context {
    
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


global = {
  #(set-global-staff-size 17)

  \key f \major
  \time 3/8
  
}

violinVoice =  { \relative c'' {
  \global
  \dynamicUp
  r4. r4 c8 a bes c f, g a d,4^"#" f8 bes c d g, c16 bes a8 g c, e f4 a8^"Doux" f g a g4 f8 f f e f f a d f f d4 d8 g g g g4.
  
  r4. r8 bes,16 c bes a g8 c c c b4 c16 b c d ees f g aes g f ees d ees8 c ees c d ees a,4 g8 g g fis g g g e f g a4 a8
  f8 g a g g e' f g a g g r r4. r4 g8 d d e f4. r r4 f8 g a16 g f e a8 a f f e16 f g a f8 e4 f a,8
  bes16 a g f d'8 c8. d16 c bes a4\fermata_"Fin"
  \bar "||"
  r8 r4 a8 f g a e f g cis,4 cis8 d e f d4 f8 f g f e e a d e f e f e d cis d a a cis, d e f e f f
  
  f g g a cis d d4. r8 d e f f e f f,^"Fort" g a b c b cis d d a cis d4 r8 r4. r4 g8 c, c d e e e,8. d16 e8 fis
  g4. (g8) f g a d c bes bes c a4 d8 a bes c bes4 f'8 f4. (f8) f d d d c d d ees f g a bes f16 ees d8 g8 c,8. bes16 bes4 r8 r4 g'8 e f g
  c,4 e8 f4 r8 r4 d8 b8 c d c8. d16 e8 e4 d8 c e, f g a b c d e f d g e4 r8 r4^"On reprend l'air jusqu'au mot Fin" c8 a bes c f, g a
  \bar "||"

  
                  }
}

sopranoVoice =  { \relative c'' {
  \global
  \dynamicUp

r4. r r r r^"#" r r r r4 c8 a bes c ees,4 bes'8 d c bes a^"+" f c' f a, d b4 g8 c b c d g, d'

ees8 d ees f4 f8 g f16 ees d c ees8 (d4^"+") c4 r8 r4. r4 c8 a bes c fis,4 d'8 ees d c bes g bes g a bes c4 c8
d e f e e r r4. r4 c8 g g a bes4 bes8 f f g a^"+" a bes c c16 d ees c f8 f r r4. r4 c8 d16 c bes a g f a8 (g4) f4 c'8
d16 c bes a g f a8 (g4^"+") f r8 r4. r r r4 a8 f e d a'4 a8 d e d cis a r r4. r r r4 a8 f e d a'4 a8

d e d cis a f8. e16 f8 g a b cis d a cis d r4 r4. r r r4 d8 b a g c4 bes8  a g f g e g8. f16 g8 a
bes bes c d d e f4. (f4.) r4 f8 c d ees d4^"+" d8 c d bes c f, bes bes f a^"+" bes4. (bes) (bes) (bes4) r8 r4 d8 bes c d g,4 r8 
r4 c8 a bes c f,4 f'8 d e f e8.^"+" d16 c8 c g b^"+" c4. (c) (c) (c4) r8 r4. r r r
}
}
verseSopranoVoice = \lyricmode {

Le trouble & l'ho -- reur re -- gnent dans son â -- me, l'a -- veu -- gle fu -- reur l'ir -- rite et l'en -- flâ -- me

l'a -- veu -- gle fu -- reur l'ir -- rite & __ _ l'en __ _ flâ -- me. Le trouble & l'ho -- reur re -- gnent dans son â -- me, l'a -- veu -- gle fu -- reur l'ir -- rite
& l'en -- flâ -- me L'a -- veu -- gle fu -- reur l'ir -- rite & l'en -- flâ -- me, l'ir -- rite &__ _ l'en __ _ flâ -- me. L'ir __ _ rite &__ _ l'en __ _ flâ -- me, l'ir -- 
rite __ _ &__ _ l'en __ _ flâ -- me. 
Il o -- se ten -- ter le mê -- me pas -- sa -- ge, Il o -- se ten -- ter le mê -- me pas -- sa -- ge, 
Mais en vain sa ra -- ge cherche à se flat -- ter: Il o -- se ten -- ter le mê -- me pas -- sa -- ge, 
Mais en vain sa ra -- ge cherche à se flat -- ter: 
Peut -- il é -- vi -- ter le cru -- el nauf -- fra -- ge Qui va l'ar -- rê -- ter? 
Peut -- il é -- vi -- ter Peut -- il é -- vi -- ter le cru -- el nauf -- fra -- ge Qui va l'ar -- rê -- ter? 
}


%------------------

bcMusic =   { \relative c' {
  \global

r4 c8 a bes c f, g a d, e f bes,^"#" c d g, a bes e,4 f8 bes c c, f4. f' c4 d8 bes c c, f4 f'8 d4 d8 g d g ees d c b4 b8

c4 c8 d c d ees ees f g g,4 c4 c8 ees, f g c,4. c' c4 bes8 c d d, g4 g'8 c c bes a g f
bes g f c'4 c8 d e f c4. r4 c,8 g4 g8 bes4 bes8 f f g a a16 bes c a d4 d8 e f16 e d c f8 f16 g a8 bes16 a g f e d c8 c,4 f f'8
bes,16 c d8 bes c c,4 f4\fermata_"Fin" a'8 f g a d, e f cis d e a,4 a8 d4 d8 f e d bes'4 g8 a4 a8 f e d a'4 a8 d e d cis a4^"+"  d,4 d8 c4 c8

bes4. a4 d8 (d) d e f f e d a' a, d4 e8 f4 fis8 g4 d8 a'4 a,8 d4 d8 g4 g8 e d e f e d c4. c8 bes a
g8 g a bes bes g d' bes c d d e f4 r8 r4 f8 bes,4 bes'8 a bes g f d g g d16 ees f8 bes, bes c d ees f g a bes ees, f f, bes4 bes'8 g a bes c4 c8
a8 bes c f, g a d,4 d8 g4 g8 c8. b16 a8 a e16 f g8 c, c d e f g a b c f, g g, c4 c'8 a^"On reprend l'air jusqu'au mot Fin" bes c f, g a d, e f

}
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
s2. 

}


violinPart = \new Staff \with  {
  instrumentName = "Violon"
  shortInstrumentName = "V."
} { \violinVoice }

sopranoVoicePart = \new Staff \with {
  instrumentName = "Melle Bougy"
  shortInstrumentName = ""
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basse continue"
    shortInstrumentName = "B.c."
  } { \clef bass \bcMusic }
  \new FiguredBass \bcFigures
>>

\score {
  <<
    \violinPart
  \sopranoVoicePart
    \bassoContinuoPart
  >>
  \layout { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% BRUIT DE GUERRE

\layout {

  \context {
    
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


global = {
  #(set-global-staff-size 17)

  \key f \major
  \time 3/4
  
}

violinVoice =  { \relative c'' {
  \global
  \dynamicUp
  
  r8^"Bruit de guerre" c,16 c f8 f16 f a8 a16 a c8 c16 c f8 a f a g g,16 g c8 c16 c e8 e16 e g8 g16 g bes8 bes g bes a a16 g f g f e d e d c b8 g'16 f e f g f e d c b a8 f'16 e d e f e d c b a
  b16 g a b c b c d d8. c16 c8 g16 g c8 c16 c e8 e16 e g8 g16 g c8 a f a d, f,16 f bes8 bes16 bes d8 d16 d f8 f16 f bes8 g e g c, f16 e d ees d c bes a g f e8 c'16 bes a bes c bes a g f e
  d8 bes'16 a g a bes a g f e d e8. c16 f e f d g f g e a g a f c'4 d e8 f16 e d c bes a g8. f16 f2.
  
  \bar "||"
  \break

  
                  }
}


%------------------

bcMusic =   { \relative c' {
  \global
f,,4. f8 f f f4. f16 f f8 f c'4. c16 c c8 c c4 r8 g16 g g8 g d4. d'16 e f8 d g4 c, c16 d e c f4 f, f'
f4 e8 c g4 c,4. c8 c c c c'16 c a8 a16 a a8 a bes4. bes8 bes bes bes bes16 bes g8 g16 g c8 c a a' bes8. a16 g a bes g c4 f, f16 g a f
bes4 bes, bes' bes a g f a,16 g a f bes a bes g c8 a bes f c' c, f2.

}
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
s2. 

}


violinPart = \new Staff \with  {
  instrumentName = "Violon"
  shortInstrumentName = "V."
} { \violinVoice }


bassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basse continue"
    shortInstrumentName = "B.c."
  } { \clef bass \bcMusic }
  \new FiguredBass \bcFigures
>>

\score {
  <<
    \violinPart
  
    \bassoContinuoPart
  >>
  \layout { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% La mer, pour engloutir son armée insensée

\layout {

  \context {
    
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


global = {
  #(set-global-staff-size 17)

  \key f \major
  \time 4/4
  
}



sopranoVoice =  { \relative c'' {
  \global
  \dynamicUp

r8 f, c'16 c c f a,8 a16 c a8 a16 f bes8 bes r16 d d c bes8 a g c f,4 r r16 a a a bes8 c d8. f16 d8 (ees16 f bes,8) bes r bes16 d

g,4 g r r8 c16 bes a8 g16 f e4^"+" r8 c'16 f d8^"+" d16 e f1
                  
        }
}
verseSopranoVoice = \lyricmode {

La mer, pour en -- glou -- tir son ar -- mée in -- sen -- sé -- e, A ré -- u -- ni les flots van -- geurs Et la mon -- trant au loin flot -- tan -- te, 
dis -- per -- sé -- e, Du dé -- bris des vain -- cus, as -- sou -- vit les vain -- queurs.

}


%------------------

bcMusic =   { \relative c' {
  \global

f,2 ees d4 bes g c a8. d16 bes8 c f, f' d c bes4 bes' g d8. bes16

c4. c'16 bes a8 g16 f e4 f8 e16 d c8 c16 bes a4 bes8 g16 c f,1

\bar "||"

}
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
s2. 

}



sopranoVoicePart = \new Staff \with {
  instrumentName = "Melle Bougy"
  shortInstrumentName = ""
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "B.c."
    shortInstrumentName = "B.c."
  } { \clef bass \bcMusic }
  \new FiguredBass \bcFigures
>>

\score {
  <<
    \sopranoVoicePart
    \bassoContinuoPart
  >>
  \layout { }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Peuples, chantez la main puissante

\layout {

  \context {
    
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}


global = {
  #(set-global-staff-size 17)

  \key bes \major
  \time 2/2
  
}



sopranoVoice =  { \relative c'' {
  \global
  \dynamicUp

r1 r r r r r r r f,2 f4 bes g2. c4 a^"+" bes c a d c8 d bes4 c8 d ees4 d8 ees c4 d8 ees (f2) d^"+" r2 g4 g
f2.^"+" f4 ees (d8) ees c4 ees d2^"+" \grace {c8} bes4 d c^"+" bes8 c a4 c (bes2) \grace {a8} g4 bes a2 r r1 c2 c4 f d2.^"+" g4 e^"+" f g e f2 f r f,4 bes g2.^"+" c4
a4.^"+" bes8 c4 d8 c bes4. c8 d4 ees8 d c2^"+" c r r4 f g4. (f8) ees d ees c f4. (ees8) d c bes a (d2) bes4 d \grace {c8} bes2 r r1 r2 r4 f' g8 f ees d c d ees c f ees d c

bes d c ees d4. (ees16) f ees8 d c bes bes2^"Fin" r r1 r r r r g4. fis8 g4 a bes2 bes4 g d'1 d2 r
r4 d g f ees d c bes a2^"+" r r r4 f' d4.^"+" ees8 f4 d g2. g4 g1 r4 g f8 ees d c b4.^"+" c8 d ees f d ees2 (d^"+") c4 r r2 r1
r1 r r r2 r4 f d4.^"+" c8 d4 bes f'2. f4 f1 (f) r4 g8 f ees d c bes a4.^"+" a8 a4 bes c2 c r4 f8 ees d c bes a d4. d8 e4 f
a,2 (g^"+") f2. r4^"On reprend l'air jusqu'au mot fin" r1 r
                  
        }
}
verseSopranoVoice = \lyricmode {

Peu -- ples, chan -- tez, chan -- tez la main puis -- san __ _ _ _ _ _ _ _ _ _ _ _ te, Qui pour vous, en -- chaî __ _ _ _ _ _ _ _ _ _ _ _  ne les mers.
Peu -- ples, chan -- tez, chan -- tez la main puis -- san -- te, Qui pour vous, en -- chaî __ _ _ _ _ _ _ _ _ _ _ ne en -- chaî __ _ _ _ _ _ _ _ _ _ ne les mers 
en -- chaî __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ne__ _ les__ _ mers.
Que de la trom -- pette é -- cla -- tan -- te, le bruit se mêle à vos con -- certs,
Et fai -- tes re -- ten -- tir les airs De vo __ _ tre__ _ sui -- te tri __ _ om __ _ phan -- te 
Et fai -- tes re -- ten -- tir les airs De __ _ vo __ _ tre__ _ sui -- te tri -- om -- phan -- te 
De __ _ vo __ _ tre__ _ sui -- te tri -- om -- phan -- te 
}


%------------------

bcMusic =   { \relative c' {
  \global

r2. bes4 a bes c a bes c d bes c^"#" d e c d e f d e f g e f4. e8 d c bes a g4 ees f f, bes c d bes ees f g ees f g a f bes c d bes c d ees c d ees f d ees d ees c 
d c d bes c bes a f bes c d bes a bes c a g a bes g f2. f4 e f g e f g a f bes a bes g c2. c4 a bes c a bes c d d, ees f g ees
f g a f g a bes g a bes c a bes, c d bes ees f g ees d4. ees8 f ees d c bes4 ees, f2 bes r4 f'' g8 f ees d c d ees c f ees d c bes c d bes ees d c bes a bes c a d c bes a

g8 bes a c bes4 ees, f f, bes8_"Fin" c d bes c d ees c d ees f d ees f g ees f ees d c bes a g f ees f g ees f2 bes2. g'4 fis g a fis g1 g,4. fis8 g4 a bes4. a8 bes4 g d' a' d c
bes g ees' d c bes a bes f2. f4 d ees f d bes2. bes'4 ees, f g ees b c d b c c' f,8 g aes f g4 ees f2 g g, c4 g'' f8 ees d c b4 c b8 aes g f e4. e8 f g aes f g4 c, g2 c2. c'4 a bes c a bes2. bes4 d, c d bes f'2. f'4 d ees f d ees c,8 d c d ees c f2 f4 bes, f2. f'8 ees d4 d8 c bes a g f bes4 a g f c'2 c, f2. bes'4 a bes c a bes c d bes
\bar "||"

}
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
s2. 

}



sopranoVoicePart = \new Staff \with {
  instrumentName = "Melle Bougy"
  shortInstrumentName = ""
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

bassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "B.c."
    shortInstrumentName = "B.c."
  } { \clef bass \bcMusic }
  \new FiguredBass \bcFigures
>>

\score {
  <<
    \sopranoVoicePart
    \bassoContinuoPart
  >>
  \layout { }
}
