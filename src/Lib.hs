module Lib
    ( sumWithRound,
      someFunc,
    ) where

import Text.Printf

myLength :: [t] -> Int
myLength [] = 0
-- (_ : t) is meaning of (head : tail)
myLength (_ : t) = 1 + myLength t

sumWithRound :: [Double] -> Integer
sumWithRound l =
  sum $ map round l

sumWithFloor :: [Double] -> Integer
sumWithFloor l =
  sum $ map floor l

targetList :: [Double]
targetList = [1.3, 2.7, 3.8, 4.2, 5.1]

someFunc :: IO ()
someFunc =
  printf "target list size: %d\nresult of sum used round: %d\nresult of sum used floor: %d\n\n" lengthOfList roundResult floorResult
  where
    roundResult = sumWithRound targetList
    floorResult = sumWithFloor targetList
    lengthOfList = myLength targetList
