% sentence
% we need to enforce subject-verb agreement
% (person and number need to match for NP and VP),
% and we need the right case
s --> np(subj, Person, Number), vp(Person, Number).

% noun phrase
% ADD THE NP RULES

np(subj,Person, Number) --> det, n(_,Person, Number).
np(subj, Person, Number) --> det, n(_,_,Number).
np(subj,Person, Number) --> pro(subj, Person, Number).
np(subj,Person, Number) --> pro(_, Person, Number).

% verb phrase
% VP with intransitive verb
% the VP gets Person and Number from the V
vp(Person,Number) --> v(intransitive,Person,Number).
vp(Person,Number) --> v(transitive, Person, Number).
vp(Person,Number) --> v(transitive,Person,Number), pro(obj,_,_).
vp(Person, Number) --> v(transitive, Person, Number), det, n(_,_,_).


% VP with transitive verb
% ADD THE TRANSITIVE VP RULE

% lexicon

det --> [the].

% pronoun, subjective case, third person singular
pro(subj,third,singular) --> [she].

% WRITE THE LEXICAL ENTRIES FOR:
% her, they, them, i, me, we, us

pro(obj,third,singular) --> [her].
pro(subj,third,plural) --> [they].
pro(obj,third,plural) --> [them].
pro(subj,third,singular) --> [i].
pro(obj,third,singular) --> [me].
pro(subj,third,plural) --> [we].
pro(obj,third,plural) --> [us].

% here the underscore means that case can be
% anything. (dog is the same, whether it is
% subj or obj.)
n(_,third,singular) --> [dog].


% WRITE THE LEXICAL ENTRY FOR dogs
n(_,third,plural) --> [dogs].

% verb features:
% - transitive/instransitive
% - person: first, second, third
% - number: plural, singular

% the underscores here mean that Person can
% be anything, and Number can be anything
v(intransitive,_,_) --> [arrived].

% here we need to ensure person/number is
% third singular
% WRITE THE LEXICAL ENTRY FOR sees (transitive)
v(transitive, Person, Number) --> [sees],
{ Person = third; Number = singular }.

% here we use variables to indicate that
% person/number can be anything, except for
% third singular
v(transitive,Person,Number) --> [see],
{ Person \= third; Number \= singular }.

% ADD see/sees AS INTRANSITIVE

v(intransitive,Person,Number) --> [see],
{ Person \= third; Number \= singular }.

v(intransitive,Person,Number) --> [sees],
{ Person \= third; Number \= singular }.

