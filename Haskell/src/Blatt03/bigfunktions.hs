import Data.List

--[ x+1 | x <- xs ]
f1 xs = map (+1) xs

-- [ x+y | x <- xs, y <-ys ]
f2 xs ys = map sum $ transpose [xs, ys]

-- [ x+2 | x <- xs, x > 3 ]
f3 xs = map (+2) (filter (>3) xs)

-- [ x+3 | (x,_) <- xys ] --xys ist Liste von Tupeln
f4 xs = map (+3) (map (fst) xs)

-- [ x+4 | (x,y) <- xys, x+y < 5 ] --xys ist Liste von Tupeln
f5 :: [(Int, Int)] -> [Int]
f5 xys= [1]