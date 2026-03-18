module Darts (score) where

square :: Num a => a -> a
square x = x * x

score :: Float -> Float -> Int
score x y 
    | radius x y <= square 1 = 10
    | radius x y <= square 5 = 5
    | radius x y <= square 10 = 1
    | otherwise = 0
  where radius x y = square x + square y