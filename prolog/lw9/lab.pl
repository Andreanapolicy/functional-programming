% факты male
male(bill).
male(paul).
male(joe).
male(bob).
male(jim).

% факты female
female(sue).
female(mary).
female(ann).
female(tammy).

% факты parent
parent(bill, joe).
parent(sue, joe).
parent(bill, ann).
parent(sue, ann).
parent(paul, jim).
parent(mary, jim).
parent(joe, tammy).
parent(ann, bob).
parent(jim, bob).

% правило для поиска бабушки
grandmother(X, Y) :- parent(X, Z), parent(Z, Y), female(X).

% правило для поиска внука
grandchild(X) :- parent(Y, X), parent(Z, Y), male(X).

% правило для поиска сестер
sister(X, Y) :- parent(Z, Y), parent(Z, X), female(X), different(X, Y).

% правило для разных людей
different(X, Y) :- X \= Y.

% правило для тети
aunt(X, Y) :- parent(Z, Y), sister(X, Z).

% правило для тети
aunt(X, Y) :- parent(Z, Y), sister(X, Z).

% правило для кузина
cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B), different(X, Y).

% правило для брата или сестры
sibling(X, Y) :- parent(Z, X), parent(Z, Y), different(X, Y).

% использование правил

/*
grandmother(X, bob).
grandchild(X).
sister(X, jim).
aunt(X, tammy).
cousin(X, bob).
*/