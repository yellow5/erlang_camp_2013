%%% @author Cameron Dykes
%%% @doc contains op func
%%% @copyright 2013 Erlware

-module(ec_math).
-export([op/3]).

%% @doc performs the operation on two values
-spec op(atom(), number(), number()) -> number().
op(add, A, B) ->
  A + B;
op(sub, A, B) ->
  A - B.
