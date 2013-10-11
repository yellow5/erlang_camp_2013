%%% @author Cameron Dykes
%%% @doc concurrent functions to do the things
%%% @copyright 2013 Erlware

-module(ec_concurrent).
-export([bf_seq/1]).

%% @doc prints a list forward and backward at the same time
-spec bf_seq(list()) -> ok.
bf_seq(List) ->
  SortedList  = lists:sort(List),
  ReverseList = lists:reverse(SortedList),
  spawn(fun() -> print_seq(SortedList) end),
  spawn(fun() -> print_seq(ReverseList) end),
  ok.

-spec print_seq(list()) -> string().
print_seq([H]) ->
  io:format("~p", [H]);
print_seq([H|T]) ->
  io:format("~p", [H]),
  print_seq(T).
