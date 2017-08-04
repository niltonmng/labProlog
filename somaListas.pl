insere(X, L, [X|L]).

ler(0, []).
ler(T, L) :- read_line_to_codes(user_input, X2),
             string_to_atom(X2,X1),
             atom_number(X1,X),
             insere(X, LF, L),
             G is T - 1,
             ler(G, LF).

soma([], []).
soma([H|T], [H2|T2]) :- S is H + H2, write(S),nl, soma(T, T2).

:- initialization main.

main:-
  read_line_to_codes(user_input, T2),
  string_to_atom(T2,T1),
  atom_number(T1,T),
  ler(T, L1),
  ler(T, L2),
  soma(L1, L2).
