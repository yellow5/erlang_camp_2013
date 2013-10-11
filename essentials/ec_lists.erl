%%% @author Cameron Dykes
%%% @doc list functions
%%% @copyright 2013 Erlware

-module(ec_lists).
-export([print_each/1]).

%% @doc recursivley print each element in the list
-spec print_each(list()) -> string().
print_each(List) ->
  print_each(List, 1).

-spec print_each(list(), integer()) -> string() | ok.
print_each([], _Count) ->
  ok;
print_each([H|Tail], Count) ->
  io:format("~p is ~p~n", [Count, H]),
  print_each(Tail, Count + 1).
