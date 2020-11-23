// 1 
entra_numero1(N1) :-
    nl,
    write('Digite o primeiro número'), nl,
    read(N1).

entra_numero2(N2) :-
    nl,
    write('Digite o segundo número'), nl,
    read(N2).

entra_numero3(N3) :-
    nl,
    write('Digite o terceiro número'), nl,
    read(N3).

calcula_media(MEDIA, N1, N2, N3) :-
    MEDIA is (N1+N2+N3)/3.
    
calcula_maior(M, N1, N2, N3) :-
    N1>=N2 , N1>=N3 ->  M is N1;
    N2>=N3 ->  M is N2;
    M is N3.

decisao:-
    entra_numero1(N1),
    entra_numero2(N2),
    entra_numero3(N3),
    calcula_maior(M, N1, N2, N3),
    calcula_media(MEDIA, N1, N2, N3),
    nl,
    write('O maior número é o '),
    write(M),
    nl,
    write('A média entre os 3 números é igual a '),
    write(MEDIA).

// 2
fibonacci(0,0).
fibonacci(1,1).
fibonacci(N, R) :-
    N1 is N-1,
    N2 is N-2,
    fibonacci(N1,R1),
    fibonacci(N2, R2),
    R is R1+R2.

// 3
union([], L1, L1).

union(L1, [], L1).

union([E|T], L2, L1) :- member(E, L2), union(T, L2, L1).

union([E|T], L2, [E|L1]) :- union(T, L2, L1).

// 4

intersecao([], _, []).
intersecao([X|T], L, I) :-
    	membro(X, L),
    	!,
    	I = [X|R],
    	intersecao(T, L, R).
intersecao([_|T], L, R) :-
     	intersecao(T, L, R).
 	membro(X,[X|_]).
membro(X,[_|C]) :- 
	membro(X,C).
