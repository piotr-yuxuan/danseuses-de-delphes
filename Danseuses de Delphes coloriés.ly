% http://www.amazon.com/Preludes-Books-1-2-Debussy/dp/B000002RZU/ref=lh_di_t
\version "2.14.2"
\include "italiano.ly"

% Penser à rajouter :
%	→ des vérifications d'octave pour contrôler la hauteur absolue de la note : do=''.
%	→ des vérifications de mesure : time 4/4 do4 re mi fa | sol la si do.

#(set-global-staff-size 20)

mBreak = {
%	\break
}

noir = {
%	\override NoteHead #'color = #black
}

global = {
	\key sol \minor % ou sib \major
}

hautUn = \relative do' { \override NoteHead #'color = #red \noir
	<fa, re' fa>4-.\( <sol mib' sol>-. <la fa' la>-.\)
	<fa re' fa>4-.\( <sol mib' sol>-. <la fa' la>-.\)
	sol'8.--\([ la16-.]\) sol8.--\([ la16-.]\) sol8.--\([ la16-.]\) % 3
	sol8.--\([ la16-.]\)
	s2.	s2.
	r8 <fa sib re fa>4-.\( <sol si mib sol>-. <la dod fa sib>8-.\) % 6
	r8 <fa sib re fa>4-.\( <sol si mib sol>-. <la dod fa sib>8-.\) % 7
	r8 <fa' sol sol'>4-. <fa sol sol'>4-. <fa sol sol'>8-. % 8
	r8 <fa sol sol'>4 <fa sib fa'>8-.\([ <re la' re>-. < la re la'>-. <fa la re fa>-. <sol sib re sol>-.]
	<mi sol do mi>8-.[ <re fa la re>-. <re fa sib re>-. < do mi sol do>-.] <fa la do fa>2--\) % 10
	<sol' sol'>4-.\( <fa fa'>8.[ <re re'>16]( <do do'>8.)[ <sib sib'>16](  % 11
	<sol sol'>8.)[ <fa fa'>16(] <re re'>2)\) % 12 % La blanche n'est pas à la bonne place.
	<do'' do'>4--\( <sib sib'>8.[ <sol sol'>16]( <fa fa'>8.[) <mib mib'>16](% 13
	<do do'>8.[) <sib sib'>16]( <sol sol'>2)\) % 14
	r8 <mib' do' mib>4-. <dod la' dod>-. <red sib' red>8-. % 15
	r8 <mi do' mi>-.^. r8 <sol la la'>4.^.  r8 <do, do'>8^. % 16
	r8 <sol' la la'>4-. <do, re do'>-. r8 % 17
	r8 <lab' do mib lab>8--~ <lab do mib lab>2 % 18
	r8 <sol sib re sol>8~ <sol sib re sol>2 % 19
	r8 <fa la do fa>8--~ <fa la do fa>2 % 20
	re,4\( fa do % 21
	mib2 sol4\) % 22
	<re re'>4\( <fa fa'> <la la'> <do do'> <mi mi'> <sold sold'>\) % 23 et 24
	s2 r8 <fa la dod fa>-.~ % 25
	\hideNotes <fa la dod fa>8 \unHideNotes s4. r8 <fa la dod fa>8^. % 26
	r4 r <fa fa'>^. % 27
	r r <fa fa'>^. % 28
	s2. % 29
	s2. % 30
	s2. % 31
}

hautDeux = \relative do' { \override NoteHead #'color = #green \noir
	sib4\( si8.[ do16] dod4\)
	sib\( si8.[ do16] dod8.[ fa16]
	\hideNotes sol'2\) \unHideNotes % 3
	s1.. s1 % 7
	s1. % 9
	s1 s1
	r8 <do,, mib sol do>4^. <re fa la re>^. <mib sol sib mib>8^.~ % 11
	<mib sol sib mib>8[ <fa la do fa>^. <sol sib re sol>^. <la do mi la>^. <sib re fa sib>^. <do mib sol do>^.] % 12
	r8 <lab, do mib lab>4^. <sib re fa sib>^. <do mib sol do>8^.~ % 13
	<do mib sol do>8[ <reb fa lab reb>^. <sol sib mib>^. <lab do fa>^. <sol si re sol>^. <sib reb fa sib>^.] % 14
	<sol, sol'>4_( <mi mi'>8.[ <fa fa'>16] <fad fad'>8.[ <si si'>16]_) % 15
	<sol sol'>8.[_\( <do do'>16]\) <do re do' re>4._\( <mi mi'>8[ <sol, la sol'>8. <do do'>16]\) % 16
	<do re do' re>8.[\( <mi mi'>16] <sol, la sol'>4\) <do do'>^-~\( % 17
	<do do'>4. <re re'>4 <fa fa'>8\) % 18
	<do do'>4.\( <re re'>4 <fa fa'>8\) % 19
	<do do'>2.^- % 20
	s2. % 21
	s2. % 22
	r8 <fa sib>4 <lab reb> <do fa>8 % 23
	r8 <mi la>4-. <sol do>-. <si mi>8-. % 24
	r8 <fa, sib re fa>8^.[ <sol si mib sol>8.^\( <lab do mi lab>16] <la dod fa la>4\) % 25
	r8 <fa sib re fa>8^.[ <sol si mib sol>8.^\( <lab do mi lab>16] <la dod fa la>4\) % 26
	r8 <fa sol la'>8^-^~ <fa sol la'>2 % 27
	r8 <sol la la'>8^-^~ <sol la la'>2 % 28
	\clef bass <re, fa sib re>2.^- % 29
	<re fa sib re>2.^-~ % 30
	<re fa sib re>2^\fermata r4 % 31
	
}

hautTrois = \relative do' { \override NoteHead #'color = #blue \noir
	s2.
	s2.
	<fa, sol mib'>4 <fa sol mib'> <fa sol mib'> % 3
	r4 r8 <fa'' sib fa'>-.\([ <re la' re>-. < la re la'>-. <fa la re fa>-. <sol sib re sol>-.]
	<mi sol do mi>8-.[ <re fa la re>-. <re fa sib re>-. < do mi sol do>-.] <fa la do fa>4--\)
	s1. % 8
	s2. % 9
	s1 s1
	s4 s8. \hideNotes re'16_[_( do8._]) \unHideNotes s16 s2.% 12
	s4 s8.
	\hideNotes
	sol'16[_( fa8.])
	\unHideNotes % 13 % Il manque un point
	\hideNotes mib16^[^( do8._]) \unHideNotes 
	\hideNotes 
	sib16_[_( sol2_]^) 
	\unHideNotes % 14 % Il manque un point
	s2. % 15
	s1 % 16
	s2. % 17
	s2. % 18
	s2. % 19
	s2. % 20
	s2. % 21
	s2. % 22
	s2. % 23
	s2. % 25
	s2. % 25
	s2. % 26
	s2. % 27
	s2. % 28
	s2. % 29
	s2. % 30
	s2. % 31
}

hautQuatre = \relative do' { \override NoteHead #'color = #grey \noir
	s1.. s1..
	s1.. s1..
	s1.. s1..
	s1. s4.
	<sol' la>4 s <do, re>8
	s8 <sol' la>4 <do, re>% 17
	s2. % 18
	s2. % 19
	s2. % 20
	s2. % 21
	s2. % 22
	s2. % 23
	s2. % 24
	s2. % 25
	s2. % 26
	s2. % 27
	s2. % 28
	s2. % 29
	s2. % 30
	s2. % 31
}

basUn = \relative do { \override NoteHead #'color = #cyan \noir
	s2.
	s2.
	s2.
	<fa sol mi'>4 <fa sib fa>
	s1
	s4 <sib, sib'> <si si'>8.[ <do do'>16^] <dod dod'>4 % 6
	<sib sib'> <si si'>8.[ <do do'>16] <dod dod'>8.[ <fa fa'>16] % 7
	<fa sol re' sol>8._\([ <la la'>16]\) <fa sol re' sol>8._\([ <la la'>16]\) <fa sol mi' sol>8._\([ <la la'>16]\) % 8
	<fa sol mi' sol>8._\([ <sib sib'>16]\) <fa sib fa'>8 % 9
	s1 s2 s8
	r8 <do mib sol>4_. <re fa la>4_. <mib sol sib>8_.~ % 11
	<mib sol sib>8[ <fa la do>_. <sol sib re>_. <la do mi>_. <sol sib re>_. <do mib sol>] % 12
	r8 <lab, do mib_.>4 <sib re fa>_. <do mib sol>8_.~ % 13
	<do mib sol>8[ <reb fa lab>_. <mib sol sib mi>_. <fa la do fa>_. <sol si re>_. <sib reb fa>_.] % 14
	sol,4^\( mi8.[ fa16] fad8.[ si16]\) % 15
	sol8.[^\( do16]\) <do re>4.\( mi8[ sol,8. do16]\) % 16
	<do re>8.[\( mi16] <sol, la>4\) do4--~\( % 17
	do4. re4 fa8\) % 18
	do4.\( re4 fa8\) % 19
	do2._- % 20
	re4\( fa do % 21
	mi2 sol4\) % 22
	re4 fa la % 23
	\clef treble dod mi sold % 24
	\clef bass r8 % 25
	s8 s2 % 26
	r8 s8 s2 % 27
	r8 s8 s2 % 28
	r8 s8 s2 % 29
	<sib,,, fa' sib>2. % 30
	<sib fa' sib>2.~
	<sib fa' sib>2 \fermata r4 % 31
}

basDeux = \relative do { \override NoteHead #'color = #darkmagenta \noir
	<sib, sib'>4-.\( <la la'>-. <sol sol'>-.\)
	<sib sib'>-.\( <la la'>-. <sol sol'>-.\)
	<sib sib'>-.\( <si si'>-. <do do'>-.\)
	<dod dod'>-.\( <re re'>2-.\)
	s2. s4
	<sib sib'>-.\( <la la'>-. <sol sol'>-.\) % 6
	<sib sib'>-.\( <la la'>-. <sol sol'>-.\) % 7
	<sib sib'>-.\( <si si'>-. <do do'>-.\) % 8
	<dod dod'>-.\( <re re'>2-.\) % 9
	s1 s4
	<fa, fa'>2.~ % 11
	<fa fa'>2. % 12
	<fa fa'>~
	<fa fa'>
	r8 <do' do'>4_. <la la'>_. <si si'>8_. % 15
	r8 do8 sol'2 <mi la>4 % 16
	fa4 mi s4 % 17
	r8 <lab, mib' lab>8_-~ <lab mib' lab>2 % 18
	r8 <sol re' sol>8~ <sol re' sol>2 % 19
	r8 <fa do' fa>8~ <fa do' fa>2 % 20
	r8 <sib' fa' sib>4_. <reb lab' reb>_. <lab mib' lab>8_. % 21
	r8 <dob solb' dob>4._. r8 <mib sib' mib>_. % 22
	r8 <sib fa' sib>4-. <reb lab' reb>-. <fa do' fa>8-. % 23
	\clef treble r8 <la mi' la>4-. <do sol' do>-. <mi si' mi>8-. % 24
	\clef bass % 25
	s8 <fa, sib re>8^.[ <sol si mib>8.^\( <lab do mi>16] <la dod fa>4\) % 26
	s8 <fa sib re>8^.[ <sol si mib>8.^\( <lab do mi>16] <la dod fa>4\) % 27
	s8 <sol dod fa>8^~^- <sol dod fa>2 % 28
	s8 <sol dod fa>8^~^- <sol dod fa>2 % 29
	s2. % 30
	s2. % 31
}

basTrois = \relative do { \override NoteHead #'color = #magenta \noir
	s2.
	s2.
	s2.
	s4 s2.
	s2.
	r8 <fa sib re>4_. <sol si mi>_. <la dod fa>8_. % 6
	r8 <fa sib re>4 <sol si mi> <la dod fa>8 % 7
	s2. %r8 <fa sib re>4 <sol si mi> <la dod fa>8 % 8
	s1 % 9
	s1
	s2. % 11
	s2. % 12
	s2. % 13
	s2. % 14
	s2. % 15
	s1 % 16
	s2. % 17
	s2. % 18
	s2. % 19
	s2. % 20
	s2. % 21
	s2. % 22
	s2. % 23
	s2. % 24
	s2. % 25
	s2. % 26
	s2. % 27
	s2. % 28
	s2. % 29
	s2. % 30
	s2. % 31
}

basQuatre = \relative do { \override NoteHead #'color = #darkgreen \noir
	s2 s4
	s2 s4
	s2 s4
	s4. \change Staff = "up" <re' fa sib re>8-.\([ <la re fa la>-. \change Staff = "down" <fa la re fa>-. <re la' re>-. <sol sib re>-.]
	<do, sol' do>8-.[ <re la'>-. <sib fa'>-. <do sol'>-.] <sol do la'>4--\) % 6
	s2. s2. s2.
	s4. \change Staff = "up" <re'' fa sib re>8-.\([ <la re fa la>-. \change Staff = "down" <fa la re fa>-. <re la' re>-. <sol sib re>-.]
	<do, sol' do>8-.[ <re la'>-. <sib fa'>-. <do sol'>-.] <sol do la'>2--\) % 10
	s2. % 11
	s2. % 12
	s2. % 13
	s2. % 14
	s2. % 15
	s1 % 16
	s2. % 17
	s2. % 18
	s2. % 19
	s2. % 20
	s2. % 21
	s2. % 22
	s2. % 23
	s2. % 24
%	s2. % 25
	<sib,, sib'>4 s4 r8 <fa' fa'>^\(_( % 26
	<sib sib'>4\)) s4 r8 <fa fa'>^\(_( % 27
	<sib sib'>2\)) <fa fa'>4-.^\(_( % 28
	<sib sib'>2\)) <fa fa'>4_. % 29
	s2. % 30
	s2. % 31
	sib,4 \portato r r
}

upper = \relative do' {
	\clef treble
	<< { 
	\hautUn 
	} \\ { 
	\hautDeux 
	} \\ { 
	\hautTrois 
	} \\ { 
	\hautQuatre
	} >>
}

lower = \relative do {
	\clef bass
	<< { 
	\basUn 
	} \\ { 
	\basDeux 
	} \\ { 
	\basTrois 
	} \\ { 
	\basQuatre 
	} >>
}

dynamics = {
	\time 3/4 s2
	s1.. \mBreak % 3
	\time 4/4 s1
	\time 3/4 s2. \bar "||"
	s2. \mBreak % 6
	s1. % 8
	\time 4/4 s1 \mBreak % 9
	s1 \bar "||" \time 3/4
	s2. 
	s2. \mBreak % 12
	s2. s2. s2. \bar "||" \time 4/4 \mBreak
	s1 % 16
	\bar "||" \time 3/4
	s2. % 17
	s2. \mBreak % 18
	s2. % 19
	s2. % 20
	s2. % 21
	s2. \mBreak % 22
	s2. % 23
	s2. % 24
	s2. % 25
	s2. \mBreak % 26
	s2. % 27
	s2. % 28
	s2. % 29
	s2. % 30
	s2. \bar "|." % 31
}

%pedal = {
%	s2\sustainOn s\sustainOff
%}

\book{
	\header {
%		dedication = "dedicated to me"
%		title = \markup \center-column { "Title first line" "Title second line, longer" }
%		subtitle = "the subtitle,"
%		subsubtitle = #(string-append "subsubtitle LilyPond version " (lilypond-version))
%		poet = "Poet"
%		composer =  \markup \center-column { "composer" \small "(1847-1973)" }
%		texttranslator = "Text Translator"
%		meter = \markup { \teeny "m" \tiny "e" \normalsize "t" \large "e" \huge "r" }
%		arranger = \markup { \fontsize #8.5 "a" \fontsize #2.5 "r" \fontsize #-2.5 "r" \fontsize #-5.3 "a" \fontsize #7.5 "nger" }
%		instrument = \markup \bold \italic "piano"
%		piece = "Piece"
%		tagline = "" % Music engraving by LilyPond 2.14.2—www.lilypond.org
	}
  
	\score {
		\new PianoStaff = "PianoStaff_pf" {
			<<
				\new Staff = "up" << \global \upper >>
				\new Dynamics = "Dynamics_pf" \dynamics
				\new Staff = "down" << \global \lower >>
%				\new Dynamics = "pedal" \pedal
			>>
		}

		\header {
			piece = "I…"
%			opus = "opus1"
	    }
	    
		\layout {
			\context {
		    	\Score
%				\remove "Bar_number_engraver"
			}
%			make-footer=##t
%			ragged-last=##t
		}
	}
}