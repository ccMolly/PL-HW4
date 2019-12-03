[user].
remove_item(I,[],[]):- !.
remove_item(I,[I|Xs],O) :- remove_item(I,Xs,O),!.
remove_item(I,[X|Xs],[X|O]) :- remove_item(I,Xs,O).
remove_items([],L,L).
remove_items([X|Xs],L,O):-remove_item(X,L,M),remove_items(Xs,M,O).
remove_dups([],[]).
remove_dups([X|Xs],[X|Ys]):-remove_item(X,Xs,O),remove_dups(O,Ys).
member(X, [X|Xs]).
member(X, [Y|Ys]) :- member(X,Ys).
intersection2(L1,L2,F):-remove_dups(L1,L1_set),remove_dups(L2,L2_set),intersection3(L1_set,L2_set,F).
intersection3([],L2,[]):- !.
intersection3(L1,[],[]):- !.
intersection3([X|Xs],L2,[X|Zs]):-member(X,L2),intersection3(Xs,L2,Zs),!.
intersection3([X|Xs],L2,Zs):-intersection3(Xs,L2,Zs).
is_set(L):-remove_dups(L,L).
append([], L, L).
append([H|T],L2,[H|L3]) :- append(T,L2,L3).
union(L1,L2,U):-append(L1,L2,L3),remove_dups(L3,U).
disjunct_union(L1,L2,U):-union(L1,L2,L3),intersection2(L1,L2,L4),remove_items(L4,L3,U).

