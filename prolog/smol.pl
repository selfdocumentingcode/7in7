smallest_list([], Acc, Acc).
smallest_list([Head|Tail], Acc, Min) :-
    Head < Acc,
    smallest_list(Tail, Head, Min).
smallest_list([Head|Tail], Acc, Min) :-
    Head >= Acc,
    smallest_list(Tail, Acc, Min).

smallest_list_find(List, Min) :-
    List = [Head|_],
    smallest_list(List, Head, Min).
