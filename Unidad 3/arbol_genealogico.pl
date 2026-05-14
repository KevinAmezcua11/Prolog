% Arbol genealógico
% Nombre: Amezcua Kevin Elias

% =============================================
% HOMBRES
% =============================================

% Generación 1 - abuelos
hombre(miguel).
hombre(trinidad).

% Generación 2 - hijos de los abuelos
hombre(oscar).
hombre(miguel_a).
hombre(ernesto).
hombre(emmanuel).
hombre(cristian).

% Generación 3 - nietos
hombre(kevin).
hombre(oscar_g).
hombre(yossuel).
hombre(leonardo).
hombre(emmanuel_a).
hombre(christian).
hombre(luis).
hombre(yahir).

% Cónyuges externos
hombre(alejandro).

% =============================================
% MUJERES
% =============================================

% Generación 1 - abuelas
mujer(maria).
mujer(ofelia).

% Generación 2 - hijas de los abuelos
mujer(betty).
mujer(yadira).
mujer(yosuni).
mujer(yoselin).
mujer(damaris).

% Cónyuges externas
mujer(paty).
mujer(olga).
mujer(claudia).
mujer(lourdes).

% =============================================
% PADRES
% =============================================

% Hijos de Miguel (abuelo paterno)
padre(miguel, oscar).
padre(miguel, miguel_a).
padre(miguel, betty).
padre(miguel, ernesto).

% Hijos de Trinidad (abuelo materno)
padre(trinidad, yadira).
padre(trinidad, yosuni).
padre(trinidad, yoselin).
padre(trinidad, emmanuel).
padre(trinidad, cristian).

% Hijos de Oscar
padre(oscar, kevin).
padre(oscar, oscar_g).
padre(oscar, yossuel).

% Hijos de Cristian
padre(cristian, leonardo).

% Hijos de Emmanuel
padre(emmanuel, emmanuel_a).

% Hijos de Alejandro
padre(alejandro, christian).

% Hijos de Ernesto
padre(ernesto, luis).
padre(ernesto, yahir).

% Hijos de Miguel A.
padre(miguel_a, damaris).

% =============================================
% MADRES
% =============================================

% Hijos de Maria (abuela paterna)
madre(maria, oscar).
madre(maria, miguel_a).
madre(maria, betty).
madre(maria, ernesto).

% Hijos de Ofelia (abuela materna)
madre(ofelia, yadira).
madre(ofelia, yosuni).
madre(ofelia, yoselin).
madre(ofelia, emmanuel).
madre(ofelia, cristian).

% Hijos de Yosuni
madre(yosuni, kevin).
madre(yosuni, oscar_g).
madre(yosuni, yossuel).

% Hijos de Paty
madre(paty, leonardo).

% Hijos de Olga
madre(olga, emmanuel_a).

% Hijos de Yadira
madre(yadira, christian).

% Hijos de Claudia
madre(claudia, luis).
madre(claudia, yahir).

% Hijos de Lourdes
madre(lourdes, damaris).

% =============================================
% REGLAS
% =============================================

% --- Progenitor (padre o madre) ---
progenitor(P, H) :- padre(P, H).
progenitor(P, H) :- madre(P, H).

% --- Hijo / Hija ---
hijo(X, Y) :-
    hombre(X),
    ( padre(Y, X) ; madre(Y, X) ).

hija(X, Y) :-
    mujer(X),
    ( padre(Y, X) ; madre(Y, X) ).

% --- Hermano / Hermana ---
hermano(X, Y) :-
    hombre(X),
    padre(P, X),
    padre(P, Y),
    X \= Y.

hermana(X, Y) :-
    mujer(X),
    padre(P, X),
    padre(P, Y),
    X \= Y.

% --- Abuelo / Abuela ---
abuelo(X, Y) :-
    hombre(X),
    progenitor(X, P),
    progenitor(P, Y).

abuela(X, Y) :-
    mujer(X),
    progenitor(X, P),
    progenitor(P, Y).

% --- Nieto / Nieta ---
nieto(X, Y) :-
    hombre(X),
    ( abuelo(Y, X) ; abuela(Y, X) ).

nieta(X, Y) :-
    mujer(X),
    ( abuelo(Y, X) ; abuela(Y, X) ).

% --- Tío / Tía ---
tio(X, Y) :-
    hombre(X),
    progenitor(P, Y),
    hermano(X, P).

tia(X, Y) :-
    mujer(X),
    progenitor(P, Y),
    hermana(X, P).

% --- Primo / Prima ---
primo(X, Y) :-
    hombre(X),
    progenitor(PX, X),
    progenitor(PY, Y),
    ( hermano(PX, PY) ; hermana(PX, PY) ),
    X \= Y.

prima(X, Y) :-
    mujer(X),
    progenitor(PX, X),
    progenitor(PY, Y),
    ( hermano(PX, PY) ; hermana(PX, PY) ),
    X \= Y.

% --- Ancestro ---
% Caso base: el progenitor directo ya es ancestro.
% Caso recursivo: asciende por la cadena de progenitores.
ancestro(X, Y) :-
    progenitor(X, Y).
ancestro(X, Y) :-
    progenitor(X, Z),
    ancestro(Z, Y).

% --- Descendiente ---
descendiente(X, Y) :-
    ancestro(Y, X).

% =============================================
% CONSULTAS DE EJEMPLO
% hijo(X, miguel).
% hija(X, trinidad).
% hermano(X, oscar).
% hermana(X, cristian).
% abuelo(X, kevin).
% abuela(X, kevin).
% nieto(X, trinidad).
% tio(X, kevin).
% tia(X, kevin).
% primo(X, kevin).
% prima(X, kevin).
% ancestro(X, kevin).
% descendiente(X, miguel).
% abuelo(X, Y).
% primo(X, Y).
% =============================================
