likes(wallace, cheese).  % wallace likes cheese
likes(grommit, cheese).
likes(wendolene, sheep).

% X and Y are different, and X and Y like the same Z
friend(X, Y) :- \+(X = Y), likes(X, Z), likes(Y, Z).
