occursIn :: Eq a => a -> [a] -> Bool

occursIn value liste = helpfunktion /= []
	 where helpfunktion =  [n | n <- liste, n == value]

--list1 ist Teilmenge von list2
allOccurIn :: Eq a => [a] -> [a] -> Bool
allOccurIn list1 list2 = [value | value <- list1, not(occursIn value list2)] == []

sameElements :: Eq a => [a] -> [a] -> Bool
sameElements list1 list2 = (allOccurIn list1 list2 && allOccurIn list2 list1)

numOccurences :: Eq a => a -> [a] -> Int
numOccurences value list = lengthOfList [n | n <- list, n == value]

lengthOfList :: Eq a => [a] -> Int
lengthOfList [] = 0
lengthOfList (x:xs) = 1 + lengthOfList xs