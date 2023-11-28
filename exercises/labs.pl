meets_in(cs307,shillman).
meets_in(cs220,zoom).
is_lab(shillman).
takes(turing, cs307).
takes(hopper, cs307).
takes(alberuni, cs220).

takes_lab(S) :- takes(S, Z), is_lab(W), meets_in(Z, W).

% takes_lab(turing).
% takes_lab(alberuni).
% takes_lab(X).

takes_lab2(S) :- takes(S, C), has_lab(C).
has_lab(D) :- meets_in(D,R), is_lab(R).