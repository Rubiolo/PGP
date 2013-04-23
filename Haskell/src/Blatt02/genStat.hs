genStat :: [[Int]] -> [(Int,Int,Int)]


genStat list = [(minimum n ,maximum n, length n) | n <- list ]