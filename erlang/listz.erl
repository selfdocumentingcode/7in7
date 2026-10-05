-module(listz).
-export([run_calcualte_totals/0, run_what_is_it/1]).

calculate_totals(Shopping_list) ->
    [{Item, Quantity * Price} || {Item, Quantity, Price} <- Shopping_list].

run_calcualte_totals() ->
    calculate_totals([{pencil, 4, 0.25}, {pen, 3, 1.20}, {paper, 2, 0.20}]).

what_is_it(Prog_langs, Prog_lang) ->
    Result = [{What} || {Lang, What} <- Prog_langs, Lang == Prog_lang],
    if 
        Result == [] ->
            {"i dunno"};
        true -> [The_What | _ ] = Result, The_What
    end.

run_what_is_it(Lang) ->
    what_is_it([{erlang, "a functional language"}, {ruby, "an OO language"}], Lang).
