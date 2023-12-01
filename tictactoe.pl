ordered_line(1, 2, 3).
ordered_line(4, 5, 6).
ordered_line(7, 8, 9).
ordered_line(1, 4, 7).
ordered_line(2, 5, 8).
ordered_line(3, 6, 9).
ordered_line(1, 5, 9).
ordered_line(3, 5, 7).
line(A, B, C) :- ordered_line(A, B, C).
line(A, B, C) :- ordered_line(A, C, B).
line(A, B, C) :- ordered_line(B, A, C).
line(A, B, C) :- ordered_line(B, C, A).
line(A, B, C) :- ordered_line(C, A, B).
line(A, B, C) :- ordered_line(C, B, A).

move(A) :- good(A), empty(A).
full(A) :- player_x(A).
full(A) :- player_o(A).
empty(A) :- \+(full(A)).

% strategy
good(A) :- win(A).
good(A) :- block_win(A).
good(A) :- split(A).
good(A) :- strong_build(A).
good(A) :- weak_build(A).
good(5).
good(1).
good(3).
good(7).
good(9).
good(2).
good(4).
good(6).
good(8).

win(A) :- player_x(B), player_x(C), line(A, B, C).
block_win(A) :- player_o(B), player_o(C), line(A, B, C).
split(A) :- player_x(B), player_x(C), different(B, C), line(A, B, D), line(A, C, E), empty(D), empty(E).
same(A,A).
different(A,B) :- \+(same(A, B)).
strong_build(A) :- player_x(B), line(A, B, C), empty(C), \+risky(C).
risky(C) :- player_o(D), line(C, D, E), empty(E).
weak_build(A) :- player_x(B), line(A, B, C), empty(C), \+double_risky(C).
double_risky(C) :- player_o(D), player_o(E), different(D, E), line(C, D, F), line(C, E, G), empty(F), empty(G).