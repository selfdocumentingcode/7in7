-module(homework).
-export([
    count_to_ten/0,
    count_words/1,
    success_or_fail/1
]).
% 32
-define(space_character, $\s).

count_to_ten() -> count_to(10).

count_to(1) ->
    io:format("1~n");
count_to(N) ->
    count_to(N - 1),
    io:format("~w~n", [N]).

count_words(String) -> count_words(String, 0).

count_words([], Acc) ->
    Acc;
count_words([Head | Rest], Acc) when Head == ?space_character ->
    count_words(Rest, Acc + 1);
count_words([_ | Rest], Acc) ->
    count_words(Rest, Acc).

success_or_fail({error, Message}) ->
    io:format("error: ~p~n", [Message]);
success_or_fail(success) ->
    io:format("Great success!!~n");
success_or_fail(_) ->
    io:format("I don't know what to do~n").
