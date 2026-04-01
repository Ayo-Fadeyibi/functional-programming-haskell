module Scrabble (scoreLetter, scoreWord) where

scoreLetter :: Char -> Integer
scoreLetter letter
    | l `elem` "AEIOULNRST" = 1
    | l `elem` "aeioulnrst" = 1
    | l `elem` "DG"         = 2
    | l `elem` "dg"         = 2
    | l `elem` "BCMP"       = 3
    | l `elem` "bcmp"       = 3
    | l `elem` "FHVWY"      = 4
    | l `elem` "fhvwy"      = 4
    | l `elem` "K"          = 5
    | l `elem` "k"          = 5
    | l `elem` "JX"         = 8
    | l `elem` "jx"         = 8
    | l `elem` "QZ"         = 10
    | l `elem` "qz"         = 10
    | otherwise            = 0
    where l = letter

scoreWord :: String -> Integer
scoreWord [] = 0
scoreWord (x:xs) = scoreLetter x + scoreWord xs
