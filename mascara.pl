getElement(Ind, [H|T], C):-
Ind == 0 -> C = H;
Z is Ind-1, getElement(Z, T, C).

:- initialization main.

main:-

  %Numeros
  read_line_to_codes(user_input, A2),
  string_to_atom(A2,A1),
  atom_number(A1,A),

  read_line_to_codes(user_input, G2),
  string_to_atom(G2,G1),
  atom_number(G1,G),

  read_line_to_codes(user_input, L2),
  string_to_atom(L2,L1),
  atom_number(L1,L),

  read_line_to_codes(user_input, H2),
  string_to_atom(H2,H1),
  atom_number(H1,H),

  %Palavras
  read_line_to_codes(user_input, Z1),
  string_to_atom(Z1,Z),
  string_chars(Z, PALAVRA1),

  read_line_to_codes(user_input, E1),
  string_to_atom(E1,E),
  string_chars(E, PALAVRA2),

  read_line_to_codes(user_input, F1),
  string_to_atom(F1,F),
  string_chars(F, PALAVRA3),

  read_line_to_codes(user_input, X1),
  string_to_atom(X1,X),
  string_chars(X, PALAVRA4),


  getElement(A, PALAVRA1, LETRA1),
  getElement(G, PALAVRA2, LETRA2),
  getElement(L, PALAVRA3, LETRA3),
  getElement(H, PALAVRA4, LETRA4),

  string_concat(LETRA1, LETRA2, SAIDA3),
  string_concat(SAIDA3, LETRA3, SAIDA2),
  string_concat(SAIDA2, LETRA4, SAIDA1),

  write(SAIDA1).
