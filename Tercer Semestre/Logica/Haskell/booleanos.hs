module Booleanos where
import Prelude (Show)

data Bool = True | False 
 deriving Show;

-- Conectiva unitaria Not.

--Pattern Matching -- Siempre los casos mas particulares arriba y los mas generales abajo.
not:: Bool -> Bool
not False = True
not True = False

not2:: Bool -> Bool
not2 a = case a of {
 			False -> True;
 			True -> False;
 }

 -- And, Or , Entonces Si solo si
 -- Usando case y usando pattern Matching

and:: Bool -> Bool -> Bool
and True b = b
and False _= False


and2:: Bool -> Bool -> Bool
and2 a b = case a of {
		True -> b;
		False -> False;
}

or:: Bool -> Bool -> Bool
or True _ = True
or False b = b

or2:: Bool -> Bool -> Bool
or2 a b = case a of {
		True -> True;
		False-> b;
}

entonces:: Bool -> Bool -> Bool
entonces a b = case a of {
				True -> b;
				False -> True;

}

entonces2:: Bool -> Bool -> Bool
entonces2 True b = b
entonces2 False _ = True


siSoloSi::  Bool -> Bool -> Bool
siSoloSi a b = case a of {
				True -> b;
				False ->  not b;
}


siSoloSi2::  Bool -> Bool -> Bool
siSoloSi2 a b = case a of {
				True -> b;
				False ->  not b;
}
