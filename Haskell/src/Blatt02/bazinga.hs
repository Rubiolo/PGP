bazinga :: [a] -> [[a]]
bazinga [] = [[]]
bazinga (x:xs) = sets ++ (map (x:) sets) 
                 where sets = bazinga xs