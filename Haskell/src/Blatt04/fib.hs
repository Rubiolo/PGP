fib3 :: Int -> Int

fib3 n  
     | n == 0 = 0
     | n == 1 = 1
     | n == 2 = 1
     | n > 2 = fib3(n-1) + fib3(n-2) + fib3(n-3)

fastFib3 :: Int -> Int

fastFib3 n
	 | n == 0 = 0
	 | n == 1 = 1
	 | n == 2 = 1
	 | otherwise = fastrec (0,1,1,2) n

fastrec :: (Int, Int, Int, Int) -> Int -> Int
fastrec t n
	| n == 3  = lastof t
	| otherwise = fastrec (tuple t) (n-1)

tuple :: (Int, Int, Int, Int) -> (Int, Int, Int, Int)
tuple (one,two,three,result) = (two, three, result, two + three + result)

lastof :: (Int,Int,Int,Int) -> Int
lastof (_,_,_,x) = x

--Antowrt auf 2.
--fastFib3 ist wie der Name schon sagt wesentlich schneller als fib3

--Antwort auf 3
--fastFib3 ist schneller als fib3, da sich die Komplexitaet nicht exponentiell verhaellt, sondern nur n gross ist.
--in fib3 (Rekursion) werden sehr viele gleich Operationen mehrfach ausgerechnet, und ist so nicht effektiv.
