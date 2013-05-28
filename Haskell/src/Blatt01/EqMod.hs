module Blatt01.EqMod where

eqMod :: Int -> Int -> Int -> Bool
eqMod x y n = if ((x `mod` n) == (y `mod` n)) then True else False



-- Testarea
-- eqMod 28 42 14 //True
-- eqMod 7 18 9 //False
-- eqMod 91 91 9 //False
-- eqMod 10 91 9 //True