% sentence
s --> np(subj), vp.

% noun phrase
np(F) --> pro(F).
np(F) --> det, n(F).

% verb phrase with intransitive verb
vp --> v.

% verb phrase with transitive verb
vp --> v, np(obj).

% lexicon
det --> [the].
n(_) --> [dog].
n(_) --> [dogs].
pro(subj) --> [she].
pro(obj) --> [her].
pro(subj) --> [they].
pro(obj) --> [them].
pro(subj) --> [i].
pro(obj) --> [me].
pro(subj) --> [we].
pro(obj) --> [us].
v --> [arrived].
v --> [see].
v --> [sees].







