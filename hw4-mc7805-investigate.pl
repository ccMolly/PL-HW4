[user].
 male(brian).
 male(kevin).
 male(zhane).
 male(fred).
 male(jake).
 male(bob).
 male(stephen).
 male(tom).
 male(paul).
 female(melissa).
 female(mary).
 female(jane).
 female(emily).
 female(sarah).
 parent(melissa,brian).
 parent(mary,sarah).
 parent(stephen,jennifer).
 parent(bob,jane).
 parent(paul,kevin).
 parent(tom,mary).
 parent(jake,bob).
 parent(zhane,melissa).
 parent(tom,stephen).
 parent(stephen,paul).
 parent(emily,bob).
 parent(zhane,mary).
 grandfather(X,Y) :- male(X), parent(X,Z),parent(Z,Y).
 sisOrbro(X,Y) :- parent(Z,X), parent(Z,Y),X \= Y.
 aunt(X,Y) :- female(X),sisOrbro(X,Z), parent(Z,Y).
 uncle(X,Y) :- male(X),sisOrbro(X,Z), parent(Z,Y).
