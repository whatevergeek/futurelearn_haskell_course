module Speller3 (speller) where

spell :: [Char] -> [Char]
spell (x : xs) = x : " is for " ++ (x : xs)

speller :: [[Char]] -> [Char]
speller = combine "" . map spell

combine :: [Char] -> [[Char]] -> [Char]
combine _ [] = ""
combine acc (x : xs)
  | length (x : xs) == 1 = acc ++ x
  | otherwise = combine (acc ++ x ++ if length (x : xs) == 2 then ", and " else ", ") xs
