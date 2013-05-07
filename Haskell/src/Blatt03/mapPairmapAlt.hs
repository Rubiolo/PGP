mapPair :: (a -> a -> b) -> [a] -> [b]

mapPair _ [] = []
mapPair _ (_:[]) =[] 
mapPair f (x:y:[]) = [f x y]
mapPair f (x:y:ys) = (f x y) : mapPair f (y:ys)

mapAlt :: (a -> b) -> (a -> b) -> [a] -> [b]

mapAlt _ _ [] = []
mapAlt f _ (x:[]) = [f x]
mapAlt f g (x:y:[]) = [f x] ++ [g y]
mapAlt f g (x:y:xs) = [f x] ++ [g y] ++ ( mapAlt f g xs)
