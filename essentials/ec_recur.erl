%%% @author Cameron Dykes
%%% @doc provides recursive functions
%%% @copyright 2013 Erlware

-module(ec_recur).
-export([hr/1]).

%% @doc returns a string of dashes
-spec hr(integer()) -> string().
hr(1) ->
  "-";
hr(N) ->
  "-" ++ hr(N - 1).
