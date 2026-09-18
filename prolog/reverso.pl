% Reverse a list...

% This kind works, but the result is wonky:
% ?- reverso2([1,2,3],What).
% What = [[[_|3]|2]|1].
reverso([],[]).
reverso([Head|Tail1], [Tail2|Head]) :- 
    reverso(Tail1, Tail2).

% Reverse with append. Works, but kinda cheating a bit
reverso_app([],[]).
reverso_app([Head|Tail], Result) :- 
    reverso_app(Tail, RevT),
    append(RevT, [Head], Result).
% This works
reverso_acc([],Acc, Acc).
reverso_acc([Head|Tail], Acc, Result) :-
    reverso_acc(Tail, [Head|Acc], Result).