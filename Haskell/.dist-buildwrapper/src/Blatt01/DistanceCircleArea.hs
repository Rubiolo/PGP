module Blatt01.DistanceCircleArea where

distance :: (Float, Float) -> (Float, Float) -> Float

distance (ax,ay) (bx,by) = sqrt((bx - ax)^2 + (by - ay)^2)

circleArea :: Float -> Float

circleArea r = pi * r^2


-- Testarea
-- distance (3,7) (8,3)         //6.4031243
-- distance (2,2) (2,2)         //0
-- distance (2,0) (3,0)         //1

-- circleArea 1                 //3.14
-- circleArea 2.3               //16.919026
-- circleArea 100                               //31415.928
-- circleArea 10000000000000000000000000000     //Infinity


