module Blatt01.MaxThree where

maxThree :: Int ->  Int -> Int -> Int
maxThree x y z = if (x >= y) && (x >= z) then x
                else if (y >= z) && (y >= x) then y
                        else if (z >= x) && (z >= y) then z
                                 else -1
                                 
                                 
-- Testarea
-- maxThree 2 6 9               //9
-- maxThree 21 (-62) 89         //89
-- maxThree (-2) (-62) 1        //1

