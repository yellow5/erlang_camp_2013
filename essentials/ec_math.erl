%%% @author Cameron Dykes
%%% @doc contains op func
%%% @copyright 2013 Erlware

-module(ec_math).
-export([op/3, not_less_than_2/1]).

%% @doc performs the operation on two values
-spec op(add | sub, number(), number()) -> number().
op(add, A, B) ->
  A + B;
op(sub, A, B) ->
  A - B.

%% @doc identifies values that are not less than 2
-spec not_less_than_2(number()) -> string().
not_less_than_2(N) when N >= 2 ->
  "N is greather than 2";
not_less_than_2(_N) ->
  "N is less than 2".
