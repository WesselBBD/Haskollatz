module Lib
    ( collatzSeq,
      collatzDelay,
      collatzDelayMulti,
      collatzDelayMultiP
    ) where

import Control.Parallel.Strategies 


------------
-- The one and only:
------------
collatz :: Integer -> Integer
collatz 1 = 1
collatz num
--   | num < 1 = error "Main.collatz: Invalid Number! Positive integers only."
   | even num = num `div` 2
   | odd num = (num * 3) + 1
   | otherwise = error "Lib.collatz: TimeSpace Anomoly! You get a cookie!"


------------
--Generates a collatz Stepping sequence for a number
------------
collatzSeq :: Integer -> [Integer]
collatzSeq 1 = [1]
collatzSeq num = takeWhile (> 1) $ iterate collatz num


------------
--Calculates the Delay by counting the length of the stepping sequence  O(n) 
------------
collatzDelay :: Integer -> Int
collatzDelay num = length $ collatzSeq num



------------
--Calculates the Delay of multiple numbers using map (might be parallelized at run time)
------------
collatzDelayMulti :: [Integer] -> [Int]
collatzDelayMulti [] = []
collatzDelayMulti [1] = [1]
--collatzDekayMulti [x] = (collatzDelay x : [])
collatzDelayMulti nums = map collatzDelay nums



------------
--Calulates the Delay of multiple numbers using the explicitly parallel mapping operation.
------------
collatzDelayMultiP :: [Integer] -> [Int]
collatzDelayMultiP [] = []
collatzDelayMultiP [1] = [1]
--collatzDekayMultiP [x] = (collatzDelay x : [])
collatzDelayMultiP nums = parMap rdeepseq collatzDelay nums

