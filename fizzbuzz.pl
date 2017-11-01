fizzbuzz(A, B) :- 
    A =:= B.

fizzbuzz(A, B) :- 
    A =\= B, 
    0 =:= mod(A, 3), 
    0 =:= mod(A, 5), 
    print('Fizzbuzz'), 
    nl, 
    C is A + 1, 
    fizzbuzz(C, B).

fizzbuzz(A, B) :-
    A =\= B,
    0 =\= mod(A, 3),
    0 =:= mod(A, 5),
    print('Buzz'),
    nl,
    C is A + 1,
    fizzbuzz(C, B).
    
fizzbuzz(A, B) :-
    A =\= B,
    0 =:= mod(A, 3),
    0 =\= mod(A, 5),
    print('Fizz'),
    nl,
    C is A + 1,
    fizzbuzz(C, B).

fizzbuzz(A, B) :-
    A =\= B,
    0 =\= mod(A, 3),
    0 =\= mod(A, 5),
    print(A),
    nl,
    C is A + 1,
    fizzbuzz(C, B).

program :- 
    fizzbuzz(1, 100).
    
:- program.