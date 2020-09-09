module Musica where

data Nota = Do | DoS | Re | ReS | Mi | Fa | Fas | Sol | SolS | La | LaS | Si
 deriving Show;

ord::Nota->Int
ord x = case x of {
 		Do-> 0;
 		DoS-> 1; 
 		Re-> 2;
 		ReS-> 3;
 		Mi-> 4;
 		Fa-> 5;
 		Fas-> 6;
 		Sol-> 7;
 		SolS-> 8;
 		La-> 9;
 		LaS-> 10;
 		Si-> 11;
		}

type Octava = Int

type Sonido = (Nota,Octava)

data Duracion = R | B | N | C | SC | F | SF
	deriving Show;

data Musica = Silencio Duracion
			| Son Sonido Duracion
			| Seq Musica Musica
			| Par Musica Musica
	deriving Show;

m1:: Musica
m1 = Seq (Seq (Son (Do,4) B) (Silencio R)) (Son (Re,3) N) 

data Color = Rojo | Azul | Amarillo | Verde | Negro | Blanco 
data Semana = Lunes | Martes | Miercoles 
 deriving Show;

