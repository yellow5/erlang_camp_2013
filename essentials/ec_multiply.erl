%%% @author Cameron Dykes
%%% @doc contains mult func
%%% @copyright 2013 Erlware

-module(ec_multiply).
-export([mult/2]).

%% @doc multiplies two numbers together.
-spec mult(number(), number()) -> number().
mult(A, B) ->
  A * B.
