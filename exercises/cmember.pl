/**
* Write a predicate cmember(X,L,N) which finds the first occurrence
* of X in L if X > N; otherwise finds the first occurrence of N in L.
*/

member1(X, [X | _]) :- !.
member1(X, [_ | T]) :- member1(X,T).

cmember(X, L, N) :- X > N, !, member1(X, L).
cmember(X, L, N) :- member1(N, L).

% ?- cmember(4, [2,4,6,8], 3).
% true.

% ?- cmember(4, [2,4,6,8], 5).
% false.

% ?- cmember(4, [2,4,6,8], 6).
% true.

% ?- cmember(4, [2,4,6,8], 2).
% true.

% ?- cmember(4, [2,4,6,8], 7).
% false.
