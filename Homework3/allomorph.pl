transition(1, S, 1, S) :-
    S \= eps,
    S \= '^',
    not(voiced(S)),
    nonsibilant(S)).


% ENTER ADDITIONAL TRANSITIONS HERE

% Phase 1
transition(1,'^',2,eps) :-
    S \= eps,
    S \= '^'.

transition(1,S,3,S) :-
    S \= eps,
    S \= '^',
    S \= sibilant(S).

transition(1,S,4,S).

transition(1,S,5,S):-
    voiced(S).

% Phase 2
transition(2,s,7,s).

% Phase 3
transition(3,S,1,S):-
    not(voiced(S)),
    nonsibilant(S).

transition(3,'^',4,ah).

transition(3,S,5,S) :-
    voiced(S).

% Phase 4
transition(4,s,7,z).

% Phase 5
transition(5,S,1,S) :-
    not(voiced(S)),
    nonsibilant(S).

transition(5,S,3,S) :-
    sibilant(S).

transition(5,S,5,S) :-
    voiced(S).

transition(5,'^',6,eps).

% Phase 6
transition(6,s,7,z).

% Phase 7
transition(7,'#',1,'#').

initial(1).
final(1).

% potentially useful features from IPA

voiced(S) :-
S = aa;
S = ae;
S = ah;
S = ao;
S = aw;
S = ay;
S = b;

% fill in more
S = zh,
S = g,
S = d.

sibilant(S) :-
S = ch;
S = s;
S = sh;
S = jh;
S = z;
S = zh.

nonsibilant(S) :-
S \= eps,
S \= '^',
S \= '#',
not(sibilant(S)).


