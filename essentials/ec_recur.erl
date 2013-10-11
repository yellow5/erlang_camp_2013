%%% @author Cameron Dykes
%%% @doc provides recursive functions
%%% @copyright 2013 Erlware

-module(ec_recur).
-export([hr/1, sum_seq/1]).

%% @doc returns a string of dashes
-spec hr(number()) -> string().
hr(N) ->
  hr(N, "").

-spec hr(number(), string()) -> string().
hr(0, Acc) ->
  Acc;
hr(N, Acc) ->
  hr(N-1, Acc ++ "-").

%% @doc returns the sum of values less than a number
-spec sum_seq(number()) -> number().
sum_seq(N) ->
  sum_seq(N, 0).

-spec sum_seq(number(), number()) -> number().
sum_seq(0, Sum) ->
  Sum;
sum_seq(N, Sum) ->
  sum_seq(N - 1, Sum + N).
