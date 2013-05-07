interleave :: [a] -> [a] -> [a]

interleave [] [] = []
interleave [x] [y] = x:y:[]
interleave (x:xs) ys = x : (interleave ys xs)
