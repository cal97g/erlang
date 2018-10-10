module(patternmatch).
export([thing/2]).

%%% Playing around with pattern matching!

thing(english, Name) ->
  io:fwrite("Hello ~p\n", [Name]).

thing(spanish, Name) ->
  io:fwrite("Ola ~p\n", [Name]).
