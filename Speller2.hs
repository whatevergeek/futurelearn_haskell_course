module Speller2 (speller) where

spell :: [Char] -> [Char]
spell (x : xs) = x : " is for " ++ (x : xs)

speller :: [[Char]] -> [Char]
speller = combine . map spell

combine :: [[Char]] -> [Char]
combine [] = ""
combine (x : xs)
  | length (x : xs) > 2 = x ++ ", " ++ combine xs
  | length (x : xs) == 2 = x ++ ", and " ++ combine xs
  | otherwise = x
