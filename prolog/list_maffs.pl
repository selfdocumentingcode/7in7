count([], 0).
count([Head|Tail], Count) :- count(Tail, TailCount), Count is TailCount + 1.
 
sum([], 0).
sum([Head|Tail], Total) :- sum(Tail, Sum), Total is Head + Sum.
 
average(List, Average) :- sum(List, Sum), count(List, Count), Average is Sum/Count.

add_one([], []).
add_one([Head|Tail], [HeadPlus1|Result]) :-
    HeadPlus1 is Head+1,
    add_one(Tail, Result).