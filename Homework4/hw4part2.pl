% homework 4 part 2
:- use_module(library(tabling)).
:- table s/3.
:- table np/3.
:- table vp/3.
:- table pp/3.

% enter your rules below
s(s(NP, VP)) --> np(NP), vp(VP).
np(np(DET, N)) --> det(DET), n(N).
np(np(NP, PP)) --> np(NP), pp(PP).
vp(vp(VP, PP)) --> vp(VP), pp(PP).
vp(vp(V, NP)) --> v(V), np(NP).
pp(pp(P, NP)) --> p(P), np(NP).



% the lexical rules (no need to edit below)
v(v(chased)) --> [chased].
v(v(saw)) --> [sees].

n(n(cats)) --> [cats].
n(n(dogs)) --> [dogs].
n(n(garden)) --> [garden].
n(n(house)) --> [house].

p(p(in)) --> [in].
p(p(behind)) --> [behind].
p(p(from)) --> [from].

det(det(the)) --> [the].


