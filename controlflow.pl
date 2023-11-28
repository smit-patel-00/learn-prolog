member1(X, [X | _]) :- !.
member1(X, [_ | T]) :- member1(X,T).

cmember(X,L,N) :- X > N, !, member1(X,L). % if statement
cmember(X,L,N) :- X =< N, member1(N,L).   % else statement

append([], A, A).
append([H | T], A, [H | L]) :- append(T, A, L).

print_partitions(L) :- append(A, B, L), write(A), write(' '), write(B), nl, fail.
print_partitions(_).

natural(1).
natural(N) :- natural(M), N is M+1.

my_loop(N) :- natural(I), write(I), nl, I = N, !.