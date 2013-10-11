%%% @author Cameron Dykes
%%% @doc contains mult func
%%% @copyright 2013 Erlware

-module(ec_multiply).
-export([mult/2, mult/3]).

%% @doc multiplies two numbers together.
-spec mult(number(), number()) -> number().
mult(A, B) ->
  A * B.

%% @doc multiplies three numbers together.
-spec mult(number(), number(), number()) -> number().
mult(A, B, C) ->
  A * B * C.
