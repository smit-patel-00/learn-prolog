/**
* Write a predicate cmember(X,L,N) which finds the first occurrence
* of X in L if X > N; otherwise finds the first occurrence of N in L.
*/

member1(X, [X | _]) :- !.
member1(X, [_ | T]) :- member1(X,T).