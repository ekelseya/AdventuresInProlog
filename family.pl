man(adam).
man(peter).
man(paul).
woman(rose).
woman(mary).
woman(ann).
woman(ashley).
spouse(adam, rose).
spouse(peter, mary).
spouse(paul, ann).
spouse(A, B):-spouse(B, A).
husband(H, W):-man(H), spouse(H, W).
wife(W, H):-woman(W), spouse(W, H).
parent(adam, peter).
parent(rose, peter).
parent(peter, paul).
parent(mary, paul).
parent(paul, ashley).
parent(ann, ashley).
father(F, C):-man(F), parent(F, C).
mother(M, C):-woman(M), parent(M, C).
son(S, P):-man(S), parent(P, S).
daughter(D, P):-woman(D), parent(P, D).
