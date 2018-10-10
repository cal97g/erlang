-module(main).
-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/2, to_upper/1]).

-export([main/0, what_grade/1, say_hello/1, string_manip/0]).

main() ->
  compare(1, 2).

show_atom() ->
  an_atom,
  'an atom with spaces'.

do_math(A, B) ->
  A + B,
  A / B,
  A - B,
  A * B,
  A rem B,
  A + B + random:uniform(10).

% more math functions
% sin, cos, log, log10, sqrt

nursery() ->
  'Go to nursery'.

reception() ->
  'Go to reception'.

primary_school() ->
  'Go to Primary School'.

compare(A, B) ->
  A =:= B, % equality of value and type
  A =/= B, % inequality in value or type not equal type and value
  A == B, % equality disregard type
  A /= B, % inequality disregard type not equaLs (VALUE)

  Age = 18,
  (Age >= 5) or (Age =< 18).

what_grade(X) ->
  if X < 5 -> nursery(); X == 5 -> reception(); X > 5 -> primary_school()
  end.

say_hello(Country) ->
  case Country of
    french -> 'Bonjour';
    german -> 'Hallo';
    english -> 'Wag 1 Bruv'
  end.

string_manip() ->
  StringA = "Some String",
  StringB = "Some Other String",

  io:fwrite("String ~p ~p\n", [StringA, StringB]),

  StringC = io_lib:format("It's a ~s and ~s\n", [StringA, StringB]),

  io:fwrite(StringC),
  len(StringC),
  StringD = concat(StringA, StringB),
  StringD,

  CharIndex = chr(StringD, $n),
  CharIndex,

  StringE = substr(StringD, 8, 6),
  StringE,

  New_string = to_upper(StringE).

tuples() ->
  MyData = {42, 123, 42.34},
  io:fwrite(MyData),

  % put a tuple into a tuple?
  {A, B, C} = My_Data,
  io:fwrite(C),

  % ignore the others? Anonymous values.
  {D, _, _} = My_Data,
  io:fwrite(D)

  % tagged tuple
  MyData2 = {height, 6.25, }
