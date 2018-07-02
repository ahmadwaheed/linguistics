% sentence
s --> np_subj, vp.

% noun phrase
np_subj --> pro_subj.
np_subj --> det, n.
np_obj --> pro_obj.
np_obj --> det, n.

% verb phrase with intransitive verb
vp --> v.

% verb phrase with transitive verb
vp --> v, np_obj.

% lexicon
det --> [the].
n --> [dog].
n --> [dogs].
pro_subj --> [she].
pro_obj --> [her].
pro_subj --> [they].
pro_obj --> [them].
pro_subj --> [i].
pro_obj --> [me].
pro_subj --> [we].
pro_obj --> [us].
v --> [arrived].
v --> [see].
v --> [sees].


