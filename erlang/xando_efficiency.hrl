-define(POWER_BOARD, #{
    "A1" => math:pow(2, 1),
    "A2" => math:pow(2, 2),
    "A3" => math:pow(2, 3),
    "B1" => math:pow(2, 4),
    "B2" => math:pow(2, 5),
    "B3" => math:pow(2, 6),
    "C1" => math:pow(2, 7),
    "C2" => math:pow(2, 8),
    "C3" => math:pow(2, 9)
}).

-define(LINE_1_KEYS, ["A1", "A2", "A3"]).
-define(LINE_2_KEYS, ["B1", "B2", "B3"]).
-define(LINE_3_KEYS, ["C1", "C2", "C3"]).
-define(COLM_1_KEYS, ["A1", "B1", "C1"]).
-define(COLM_2_KEYS, ["A2", "B2", "C2"]).
-define(COLM_3_KEYS, ["A3", "B3", "C3"]).
-define(DIAG_1_KEYS, ["A1", "B2", "C3"]).
-define(DIAG_2_KEYS, ["A3", "B2", "C1"]).

-define(sum_list(List), (lists:foldl(fun(X, Sum) -> X + Sum end, 0, List))).

-define(LINE_1_POWER_WINNER, sum_list(maps:values(maps:with(?LINE_1_KEYS, ?POWER_BOARD)))).
-define(LINE_2_POWER_WINNER, sum_list(maps:values(maps:with(?LINE_2_KEYS, ?POWER_BOARD)))).
-define(LINE_3_POWER_WINNER, sum_list(maps:values(maps:with(?LINE_3_KEYS, ?POWER_BOARD)))).
-define(COLM_1_POWER_WINNER, sum_list(maps:values(maps:with(?COLM_1_KEYS, ?POWER_BOARD)))).
-define(COLM_2_POWER_WINNER, sum_list(maps:values(maps:with(?COLM_2_KEYS, ?POWER_BOARD)))).
-define(COLM_3_POWER_WINNER, sum_list(maps:values(maps:with(?COLM_3_KEYS, ?POWER_BOARD)))).
-define(DIAG_1_POWER_WINNER, sum_list(maps:values(maps:with(?DIAG_1_KEYS, ?POWER_BOARD)))).
-define(DIAG_2_POWER_WINNER, sum_list(maps:values(maps:with(?DIAG_2_KEYS, ?POWER_BOARD)))).