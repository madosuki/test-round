module Lib
    ( sumWithRound,
      someFunc,
    ) where

sumWithRound :: [Float] -> Integer
sumWithRound l =
  sum $ map round l

someFunc :: IO ()
someFunc =
  putStrLn $ show v
  where
    v = sumWithRound [1.3, 2.7, 3.8, 4.2, 5.1]
