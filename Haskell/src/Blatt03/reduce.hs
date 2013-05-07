--reduce fuer die automatische Ueberpruefung
reduce :: (a -> b -> b) -> [a] -> b -> b
reduce _ []     v = v
reduce f (x:xs) v = f x (reduce f xs v)



mylength xs    = reduce (\_ y -> y + 1) xs 0
myappend xs ys = reduce (:) xs ys
myfilter p xs  = reduce (\ x y -> if (p x) then x : y else y) xs []
mymap f xs     = reduce (\x y -> (f x) : y) xs []
