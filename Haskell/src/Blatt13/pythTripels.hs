-- a)
multOf :: (Int, Int, Int) -> (Int, Int, Int) -> Bool
multOf (x1,x2,x3) (y1,y2,y3) = (x1^2 + x2^2 == x3^2) && (y1^2 + y2^2 == y3^2) && (mod y1 x1 == 0) && (mod y2 x2 == 0) && (mod y3 x3 == 0)

-- b) aus Vorlesung
pyTriples :: [(Int,Int,Int)]
pyTriples = [(x,y,z)|z <- [5 ..], x <-[3 .. z-2], y <-[x+1 .. z-1], x*x + y*y == z*z]

sieve :: [(Int,Int,Int)] -> [(Int, Int, Int)]
sieve [] = []
sieve (x:xs) = x: (sieve (filter (\y -> not(multOf x y)) xs))

-- main function
dub :: [(Int, Int, Int)]
dub = sieve pyTriples


-- c) bigger then 1000
filters :: [(Int, Int, Int)] -> [(Int, Int, Int)]
filters [] = []
filters (x:xs) = x : (filters (filter (\(a,b,c) -> (bigger (a,b,c))) xs))

bigger :: (Int, Int, Int) -> Bool
bigger (a,b,c) = (a > 1000) && (b > 1000) && (c > 1000)

-- main function
duc :: [(Int, Int, Int)]
duc = filters (sieve pyTriples)

