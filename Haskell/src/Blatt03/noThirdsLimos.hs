noThirds :: [a] -> [a]

noThirds [] = []
noThirds (x:[]) = [x]
noThirds (x:y:[]) = [x,y]
noThirds (x:y:z:xs) = x:y:noThirds xs



limos :: [a] -> Bool

limos [] = True
limos (x:[]) = False
limos (x:y:[]) = False
limos (x:y:z:[]) = False
limos (a:b:c:d:[]) = False
limos (a:b:c:d:e:[]) = False
limos (a:b:c:d:e:f:[]) = False
limos (a:b:c:d:e:f:g:xs) = True && limos xs
