progenitor(homero, bart).
progenitor(homero, lisa).
progenitor(homero, maggie).
progenitor(abe, homero).
progenitor(abe, jose).
progenitor(jose, pepe).
progenitor(mona, homero).
progenitor(jacqueline, marge).
progenitor(marge, bart).
progenitor(marge, lisa).
progenitor(marge, maggie).

%Resolver los predicados hermano, tío, primo y abuelo. 

hermano(Hermano1, Hermano2):-
    progenitor(Progenitor, Hermano1),
    progenitor(Progenitor, Hermano2),
    Hermano1 \= Hermano2.

tio(Tio, Sobrino):-
    progenitor(Progenitor, Sobrino),
    hermano(Progenitor, Tio).

primo(Primo1, Primo2):-
    progenitor(Progenitor, Primo1),
    tio(Progenitor, Primo2),
    Primo1 \= Primo2.

abuelo(Nieto, Abuelo):-
    progenitor(Progenitor, Nieto),
    progenitor(Abuelo, Progenitor).


