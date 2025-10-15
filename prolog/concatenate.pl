% re-implementation of append()

concatenate([], List, List).
% concatenate([Head|[]], List, [Head|List]).
% concatenate([Head1|[Head2|[]]], List, [Head1, Head2|List]).
% concatenate([Head1|[Head2|[Head3|[]]]], List, [Head1, Head2, Head3|List]).
concatenate([Head|HeadRest], List, [Head|ListRest]) 
    :- concatenate(HeadRest, List, ListRest).