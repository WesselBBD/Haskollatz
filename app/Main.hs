module Main where

import Lib

import System.Environment
import System.Exit

main :: IO ()
main = getArgs >>= parse >> exit

parse :: [String] -> IO ()
parse ["-h"] = help
parse []     = help
parse [s]    = putStrLn . show . collatzDelay . read $ s
parse ss     = putStrLn . show . collatzDelayMulti $ map read ss  
 
help = putStrLn "Usage: Cosllatz [-h] [numbers ..]"
exit = exitWith ExitSuccess
die = exitWith (ExitFailure 1)

