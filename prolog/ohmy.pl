cat(lion). % lion is a cat
cat(tiger). % tiger is a cat
 
dorothy(X, Y, Z) :- X = lion, Y = tiger, Z = bear.
twin_cats(X, Y) :- cat(X), cat(Y).
