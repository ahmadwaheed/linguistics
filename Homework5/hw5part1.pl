% sentence
s --> np_sub_s, vp_s.
s --> np_sub_s, vp_s_s.
s --> np_sub_p, vp_p.
s --> np_sub_p, vp_p_s.
s --> np_sub_article, vp_p.

% noun phrase
np_sub_s --> pro_sub_s.
np_sub_p --> pro_sub_p.
np_sub_article --> pro_sub_article.
np_sub_s --> det, n_s.
np_sub_p --> det, n_p.
np_obj --> pro_obj.
np_obj --> det, n_s.
np_obj --> det, n_p.

% verb phrase with intransitive verb
vp_s --> v.
vp_p --> v.

% verb phrase with transitive verb
vp_s_s --> v_s.
vp_s --> v_s, np_obj.
vp_p_s --> v_p.
vp_p --> v_p, np_obj.


% lexicon
det --> [the].
n_s --> [dog].
n_p --> [dogs].
pro_sub_s --> [she].
pro_obj --> [her].
pro_sub_p --> [they].
pro_obj --> [them].
pro_sub_article --> [i].
pro_obj --> [me].
pro_sub_p --> [we].
pro_obj --> [us].
v --> [arrived].
v_p --> [see].
v_s --> [sees].
