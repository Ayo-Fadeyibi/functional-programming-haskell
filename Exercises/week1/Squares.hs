module Squares (difference, squareOfSum, sumOfSquares) where

difference :: Integral a => a -> a
difference n = squareOfSum n - sumOfSquares n

totalSum :: Integral a => a -> a
totalSum 0 = 0  
totalSum n = n + totalSum (n - 1)

squareOfSum :: Integral a => a -> a
squareOfSum n = totalSum n ^ 2

sumOfSquares :: Integral a => a -> a
sumOfSquares 0 = 0
sumOfSquares n = n^2 + sumOfSquares(n - 1)