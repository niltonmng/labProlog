contarLetra(LETRA, [], 0).
contarLetra(LETRA, [LETRA|L], X) :- contarLetra(LETRA, L, G), X is 1 + G.
contarLetra(LETRA, [D|L], X) :- contarLetra(LETRA, L, X).

:- initialization main.

main:-

  read_line_to_codes(user_input, A1),
  string_to_atom(A1, A),

  read_line_to_codes(user_input, L2),
  string_chars(L2, L),

  contarLetra(A, L, X),

  write(X).
