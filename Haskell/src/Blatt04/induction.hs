--induction aus der Vorlesung
induction :: (Num a, Ord a) => b -> (a -> b -> b) -> a -> b
induction base comb n
 | n == 0 = base
 | n > 0 = comb n (induction base comb (n-1))


-- sumCubes n
sumCubes :: (Num a, Ord a) => a -> a

sumCubes n = induction 0 (\x y -> (x*x*x)+y) n

-- sumFromtTo n m
sumFromTo :: (Num a, Ord a) => a -> a -> a

sumFromTo n m
	 | m <= n = 0
	 | otherwise = induction 0 (\x y -> (x+y)) m

