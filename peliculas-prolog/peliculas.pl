% predicado poliádico: expresa relaciones entre individuos
% actuo/2 es el predicado
% hay varias cláusulas
actuo(leoDiCaprio, wolfOfWallStreet).
actuo(margotRobbie, wolfOfWallStreet).
actuo(jonahHill, wolfOfWallStreet).
actuo(leoDiCaprio, onceUponATimeInHollywood).
actuo(bradPitt, onceUponATimeInHollywood).
actuo(margotRobbie, onceUponATimeInHollywood).
actuo(joePesci, goodFellas).
actuo(robertDeNiro, goodFellas).
actuo(rayLiotta, goodFellas).
actuo(lorraineBracco, goodFellas).
actuo(leoDiCaprio, catchMeIfYouCan).
actuo(tomHanks, catchMeIfYouCan).
actuo(michaelKeaton, birdman).
actuo(emmaStone, birdman).

% predicado monádico: expresa una característica de un individuo
% qué película ganó el Oscar
% ganoElOscar/1
ganoElOscar(birdman).

% un suertude es aquel que actuó en una película que ganó el Oscar
% p ^ q => r
% p -> actuó en una película
% q -> ganó el Oscar
% r -> es suertude
% predicado monádico
% suertude/1
suertude(Persona) :-
  actuo(Persona, Pelicula) ,
  ganoElOscar(Pelicula).


:- begin_tests(peliculas).

  test(consultaIndividualFuncionaOk, nondet):-
    actuo(leoDiCaprio, onceUponATimeInHollywood).

:- end_tests(peliculas).
