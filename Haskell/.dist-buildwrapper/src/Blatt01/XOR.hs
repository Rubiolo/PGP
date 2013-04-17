module Blatt01.XOR where

xor :: Bool -> Bool -> Bool

xor a b = if (a == False) && (b == True) then True else
                if (a == True) && (b == False) then True else False
                


xor' :: Bool -> Bool -> Bool

xor' False  b = b
xor' a  False = a
xor' True b = not b
xor' a True = not a



-- Testarea
-- xor True True        //False
-- xor True False       //True
-- xor False True       //True
-- xor False False      //False

-- xor' True True        //False
-- xor' True False       //True
-- xor' False True       //True
-- xor' False False      //False
