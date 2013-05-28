module Blatt01.Mitternachtsformel where

mitternacht1, mitternacht2 :: Float -> Float -> Float -> Float

mitternacht1 a b c = if (a == 1)
                        then if (b/2)^2 - c < 0 then -99999
                                else (-1) * b/2 + sqrt((b/2)^2 -c)
                        else if (b/2/a)^2 - c/a < 0 then -99999
                                else (-1) * b/2/a + sqrt((b/2/a)^2 -c/a)
                                
mitternacht2 a b c = if (a == 1)
                        then if (b/2)^2 - c < 0 then -99999
                                else (-1) * b/2 - sqrt((b/2)^2 -c)
                        else if (b/2/a)^2 - c/a < 0 then -99999
                                else (-1) * b/2/a - sqrt((b/2/a)^2 -c/a)
                                
-- Testarea
-- mitternacht1 1 (-3) (-4)     //4.0
-- mitternacht2 1 (-3) (-4)     //-1.0
-- mitternacht1 3 (-9) (-12)    //4.0
-- mitternacht1 2 (-16) (-40)   //10.0
-- mitternacht2 2 (-16) (-40)   //-2.0

