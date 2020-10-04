module Speller4 (speller) where

import Data.List

spell :: [Char] -> [Char]
spell (x : xs) = x : " is for " ++ (x : xs)

speller :: [[Char]] -> [Char]
speller = combine . map spell 

combine [] = ""
combine lst 
    | length lst > 1 = intercalate ", " (init lst) ++ ", and " ++ last lst
    | otherwise = last lst