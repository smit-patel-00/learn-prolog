/**
* Define the rules to test if an element X is a member of a list
*/

member(E, [E | _]).
member(E, [_ | L]) :- member(E, L).