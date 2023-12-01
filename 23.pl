% Facts about relationships in the family
parent(john, jim).
parent(john, ann).
parent(jim, bob).
parent(jim, lily).
parent(ann, mike).

% Rules to define different relationships
father(Father, Child) :- parent(Father, Child), male(Father).
mother(Mother, Child) :- parent(Mother, Child), female(Mother).

% Define genders for individuals
male(john).
male(jim).
male(bob).
male(mike).
female(ann).
female(lily).

% Rules to define siblings
sibling(Sibling1, Sibling2) :-
    parent(Parent, Sibling1),
    parent(Parent, Sibling2),
    Sibling1 \= Sibling2.

% Rule to define grandparent relationship
grandparent(Grandparent, Grandchild) :-
    parent(Parent, Grandchild),
    parent(Grandparent, Parent).
