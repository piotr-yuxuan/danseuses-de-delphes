\version "2.14.2"
\include "italiano.ly"

% Penser à rajouter :
%	→ des vérifications d'octave pour contrôler la hauteur absolue de la note : do=''.
%	→ des vérifications de mesure : time 4/4 do4 re mi fa | sol la si do.

mBreak = {
\break
}

global = {
	\key sol \minor % ou sib \major
}

hautUn = \relative do' { \override NoteHead #'color = #red
	sib4\( si8.[ do16] dod4\)
	sib_\( si8.[ do16] dod8.[ fa16]
	%\hideNotes sol'2\) \unHideNotes % 3
	sol8.--\)\([ la16-.]\) sol8.--\([ la16-.]\) sol8.--\([ la16-.]\)
	sol8.--\)\([ la16-.]\)
	s2.	s2.
	r8 <fa sib re fa>4-.\( <sol si mib sol>-. <la dod fa sib>8-.\) % 6
	r8 <fa sib re fa>4-.\( <sol si mib sol>-. <la dod fa sib>8-.\) % 7
	r8 <fa' sol sol'>4-. <fa sol sol'>4-. <fa sol sol'>8-. % 8
	r8 <fa sol sol'>4 <fa sib fa'>8-.\([ <re la' re>-. < la re la'>-. <fa la re fa>-. <sol sib re sol>-.]
	<mi sol do mi>8-.[ <re fa la re>-. <re fa sib re>-. < do mi sol do>-.] <fa la do fa>2--\) % 9
}

hautDeux = \relative do' { \override NoteHead #'color = #green
	s2. s2. s2.
	s1.. s1 % 7
	s1. % 9
	
}

hautTrois = \relative do' { \override NoteHead #'color = #blue
	s2.
	s2.
	s2. % 3
	r4 r8 <fa'' sib fa'>-.\([ <re la' re>-. < la re la'>-. <fa la re fa>-. <sol sib re sol>-.]
	<mi sol do mi>8-.[ <re fa la re>-. <re fa sib re>-. < do mi sol do>-.] <fa la do fa>4--\)
	s1. % 8
	s2. % 9
}

milieu = \relative do' {	
	<< { 
	<fa, re' fa>4-.\( <sol mib' sol>-. <la fa' la>-.\)
	<fa re' fa>4-.\( <sol mib' sol>-. <la fa' la>-.\)
	<fa sol mib'>4 <fa sol mib'> <fa sol mib'> % 3
	} \\ {
	<sib,, sib'>4-.\( <la la'>-. <sol sol'>-.\)
	<sib sib'>-.\( <la la'>-. <sol sol'>-.\)
	<sib sib'>-.\( <si si'>-. <do do'>-.\)
	} >>
}

basUn = \relative do { \override NoteHead #'color = #cyan
%	s2.
%	s2.
%	s2.
	<fa sol mi'>4 <fa sib fa>
	s1
	s4 <sib, sib'> <si si'>8.[ <do do'>16] <dod dod'>4 % 6
	<sib sib'> <si si'>8.[ <do do'>16] <dod dod'>8.[ \clef treble <fa fa'>16] % 7
	<fa sol re' sol>8._\([ <la la'>16]\) <fa sol re' sol>8._\([ <la la'>16]\) <fa sol mi' sol>8._\([ <la la'>16]\) % 8
	<fa sol mi' sol>8._\([ <sib sib'>16]\) <fa sib fa'>8 % 9
}

basDeux = \relative do { \override NoteHead #'color = #darkmagenta
	s2.
	s2.
	s2. % 3
	<dod dod'>-.\( <re re'>2-.\)
	s2. s4
	<sib sib'>-.\( <la la'>-. <sol sol'>-.\) % 6
	<sib sib'>-.\( <la la'>-. <sol sol'>-.\) % 7
	<sib sib'>-.\( <si si'>-. <do do'>-.\) % 8
	<dod dod'>-.\( <re re'>2-.\) % 9
}

basTrois = \relative do { \override NoteHead #'color = #magenta
	s2.
	s2.
	s2.
	s4 s2.
	s2.
	s8 <fa sib re>4_. <sol si mi>_. <la dod fa>8_. % 6
	s8 <fa sib re>4 <sol si mi> <la dod fa>8 % 7
	s8 <fa sib re>4 <sol si mi> <la dod fa>8 % 8
	s1 % 9
}

basQuatre = \relative do { \override NoteHead #'color = #darkgreen
	s2 s4
	s2 s4
	s2 s4
	s4. \change Staff = "up" <re' fa sib re>8-.\([ <la re fa la>-. \change Staff = "down" <fa la re fa>-. <re la' re>-. <sol sib re>-.]
	<do, sol' do>8-.[ <re la'>-. <sib fa'>-. <do sol'>-.] <sol do la'>4--\) % 6
	s2. s2. s2.
	s4. \change Staff = "up" <re'' fa sib re>8-.\([ <la re fa la>-. \change Staff = "down" <fa la re fa>-. <re la' re>-. <sol sib re>-.]
	<do, sol' do>8-.[ <re la'>-. <sib fa'>-. <do sol'>-.] <sol do la'>2--\) % 9
}

upper = \relative do' {
	\clef treble
	<< { \hautUn } \\ { \hautDeux } \\ { \hautTrois } >>
}

middle = \relative do' {
	\clef bass \milieu \basUn
}

lower = \relative do {
	\clef bass
	<< { %\basUn
	 } \\ { \basDeux } \\ { \basTrois } \\ { \basQuatre } >> 
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
	s1. \mBreak
	% 12
	
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
				\new Staff = "middle" << \global \middle >>
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
			make-footer=##t
		}
	}
}