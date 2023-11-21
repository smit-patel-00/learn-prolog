rainy(boston).
rainy(stonybrook).
cold(stonybrook).
snowy(X) :- rainy(X), cold(X).
