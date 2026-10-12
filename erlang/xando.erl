-module(xando).
-include("xando_efficiency.hrl").
-export([run_xando/0]).

power_or_not({Index, Value}, Char) when Value == Char ->
    math:pow(2, Index);
power_or_not({_Index, _Value}, _Char) ->
    0.

to_map(Board) ->
    #{
        "A1" => {1, lists:nth(1, Board)},
        "A2" => {2, lists:nth(2, Board)},
        "A3" => {3, lists:nth(3, Board)},
        "B1" => {4, lists:nth(4, Board)},
        "B2" => {5, lists:nth(5, Board)},
        "B3" => {6, lists:nth(6, Board)},
        "C1" => {7, lists:nth(7, Board)},
        "C2" => {8, lists:nth(8, Board)},
        "C3" => {9, lists:nth(9, Board)}
    }.

sum_list(List) -> ?sum_list(List).

get_power_sum_for(Board_map, Unit_keys, Char) ->
    Unit_values = maps:values(maps:with(Unit_keys, Board_map)),
    Unit_encoded_values = lists:map(fun(T) -> power_or_not(T, Char) end, Unit_values),
    sum_list(Unit_encoded_values).

get_is_winner(Board_map, Char) ->
    Line_1_power_sum = get_power_sum_for(Board_map, ?LINE_1_KEYS, Char),
    Line_2_power_sum = get_power_sum_for(Board_map, ?LINE_2_KEYS, Char),
    Line_3_power_sum = get_power_sum_for(Board_map, ?LINE_3_KEYS, Char),
    Colm_1_power_sum = get_power_sum_for(Board_map, ?COLM_1_KEYS, Char),
    Colm_2_power_sum = get_power_sum_for(Board_map, ?COLM_2_KEYS, Char),
    Colm_3_power_sum = get_power_sum_for(Board_map, ?COLM_3_KEYS, Char),
    Diag_1_power_sum = get_power_sum_for(Board_map, ?DIAG_1_KEYS, Char),
    Diag_2_power_sum = get_power_sum_for(Board_map, ?DIAG_2_KEYS, Char),

    Line_1_power_winner = ?LINE_1_POWER_WINNER,
    Line_2_power_winner = ?LINE_2_POWER_WINNER,
    Line_3_power_winner = ?LINE_3_POWER_WINNER,
    Colm_1_power_winner = ?COLM_1_POWER_WINNER,
    Colm_2_power_winner = ?COLM_2_POWER_WINNER,
    Colm_3_power_winner = ?COLM_3_POWER_WINNER,
    Diag_1_power_winner = ?DIAG_1_POWER_WINNER,
    Diag_2_power_winner = ?DIAG_2_POWER_WINNER,

    if
        Line_1_power_sum == Line_1_power_winner -> {true, "Line 1"};
        Line_2_power_sum == Line_2_power_winner -> {true, "Line 2"};
        Line_3_power_sum == Line_3_power_winner -> {true, "Line 3"};
        Colm_1_power_sum == Colm_1_power_winner -> {true, "Column 1"};
        Colm_2_power_sum == Colm_2_power_winner -> {true, "Column 2"};
        Colm_3_power_sum == Colm_3_power_winner -> {true, "Column 3"};
        Diag_1_power_sum == Diag_1_power_winner -> {true, "Diagonal 1"};
        Diag_2_power_sum == Diag_2_power_winner -> {true, "Diagonal 2"};
        true -> {false, ""}
    end.

xando(Board) ->
    Board_map = to_map(Board),

    {X_is_winner, X_winner_pos} = get_is_winner(Board_map, $x),
    {O_is_winner, O_winner_pos} = get_is_winner(Board_map, $o),
    Board_has_moves_left = lists:member($_, Board),

    if
        X_is_winner ->
            io:format("x is winner at ~p~n", [X_winner_pos]);
        O_is_winner ->
            io:format("o is winner at ~p~n", [O_winner_pos]);
        Board_has_moves_left ->
            io:format("no winner (yet)~n");
        true ->
            io:format("cat~n")
    end.

run_xando() ->
    Board = [
        $x,$o,$o,
        $x,$o,$x,
        $o,$x,$o
    ],
    xando(Board).
