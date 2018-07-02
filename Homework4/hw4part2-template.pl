:- use_module(library(tabling)).
:- table s/3.
:- table np/3.
:- table vp/3.
:- table pp/3.

% enter your rules below
s(s(NP, VP)) --> np(NP), vp(VP).


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


