%%% @author Cameron Dykes
%%% @doc contains the a_is_a func
%%% @copyright 2013 Erlware

-module(ec_match).
-export([a_is_a/1]).

%% @doc verifies that value is a
-spec a_is_a(a | any()) -> boolean().
a_is_a(a) ->
  true;
a_is_a(_X) ->
  false.
