module Speller1 (speller) where

spell :: [Char] -> [Char]
spell (x:xs) = x:" is for " ++ (x:xs)
speller ::[[Char]] -> [Char]
speller [] = ""
speller lst 
    | length lst > 1 = leader (init lst) ++ "and " ++ spell (last lst)
    | otherwise = spell (last lst)

leader lst 
    | length lst > 1 = foldr (\elt acc -> spell elt ++ ", " ++ acc) "" lst
    | otherwise = spell (last lst) ++ ", "


