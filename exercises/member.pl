/**
* Define the rules to test if an element X is a member of a list
*/
member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).