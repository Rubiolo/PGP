module Blatt01.Median where

median :: Int -> Int -> Int -> Int

median a b c = if (a == b) && (b == c) then a
                else if (a == b) || (a == c) || (c == b) then
                        if (a == b) then a 
                                else if (a == c) then a
                                        else  b
                else if (a <= b) && (a > c)  || (a > b) && (a < c) then a
                         else if (b < a) && (b > c) || (b > a) && (b < c) then b
                                 else if (c < a) && (c > b) || (c > a) && (c < b) then c
                                         else -99999
                                         
                                         
-- Testarea
-- median 2 2 2         //2
-- median 25 11 33      //25
-- median 9 5 3         //5
-- median 8 6 8         //8