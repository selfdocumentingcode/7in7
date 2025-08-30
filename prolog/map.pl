different(red, green). different(red, blue).
different(green, red). different(green, blue).
different(blue, red). different(blue, green).
 
coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
  different(Mississippi, Tennessee),
  different(Mississippi, Alabama),
  different(Alabama, Tennessee),
  different(Alabama, Mississippi),
  different(Alabama, Georgia),
  different(Alabama, Florida),
  different(Georgia, Florida),
  different(Georgia, Tennessee).

/* 
| ?- coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) 
Alabama = blue
Florida = green
Georgia = red
Mississippi = red
Tennessee = green

| ?- coloring(A, M, G, T, F).
A = blue
F = green
G = red
M = red
T = green

| ?- coloring(A, G, F, M, T).
A = blue
F = red
G = red
M = green
T = green

| ?- coloring(A, B, C, D, E).
A = blue
B = red
C = red
D = green
E = green
*/