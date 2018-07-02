% Second FST from Jurafsky & Martin
% two-level morphology example
%
% FILL IN THE FST SPECIFICATION WHERE
% INDICATED THROUGHOUT THE FILE.

% Transitions out of state 0

transition(0, '#', 0, '#').

transition(0, '^', 0, eps).

% S below can be anything, except for #, ^, z, s, x, eps
% Pay close attention to how to interpret J&M's use of
% "other" and "#" in transitions.
% "other" means anything not used in any transitions
% going out of this state, excluding "#".
transition(0, S, 0, S) :-
    S \= '#',
    S \= '^',
    S \= z,
    S \= s,
    S \= x,
    S \= eps.

% S below must be one of z, s, x
transition(0, S, 1, S) :-
    S = z;
    S = s;
    S = x.

% Transitions out of state 1
transition(1, '#', 0, '#'). %added this for transition out of state 1

transition(1, S, 0, S) :-
    % FILL IN LINES HERE THAT RESTRICT WHAT S CAN BE
    S \= z,
    S \= s,
    S \= x,
    S \= '^',
    S \= '#',  % added this which S can be
    S \= eps.

transition(1, S, 1, S) :-
    % FILL IN LINES HERE THAT ALLOW S TO BE OTHER SYMBOLS
    S = s;
    S = z;
    S = x.

transition(1, '^', 2, eps).

% Transitions out of state 2

% ADD YOUR TRANSITIONS HERE
transition(2, S, 3, e) :-
    S = eps.
transition(2, S, 5, S) :-
    S = 's'.
transition(2, S, 1, S) :-
    S = x;
    S = z.
transition(2, S, 0, S) :-
    S \= z,
    S \= x,
    S \= '#',
    S \= s,
    S\= eps.

% transitions out of state 3

transition(3, s, 4, s).

% transitions out of state 4

transition(4, '#', 0, '#').

% transitions out of state 5

transition(5, S, 1, S) :-
    S = z;
    S = s;
    S = x.

transition(5, S, 0, S) :-
    S \= z,
    S \= s,
    S \= x,
    S \= '^',
    S \= '#',
    S \= eps.

transition(5, '^', 2, eps).

initial(0).

final(0).
final(1).
final(2).
