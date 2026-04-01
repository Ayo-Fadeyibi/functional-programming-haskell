module ArmstrongNumbers (armstrong) where

digits' :: (Integral a) => a -> [a]
digits' 0 = []
digits' n = digits' (n `div` 10) ++ [n `mod` 10]

countdigits :: [a] -> Int
countdigits [] = 0
countdigits (_:xs) = 1 + countdigits xs

armcalculation :: (Integral a) => [a] -> Int -> a
armcalculation [] _ = 0
armcalculation (x:xs) b = x ^ b + armcalculation xs b 


armstrong :: Integral a => a -> Bool
armstrong a 
    | armcalculation (digits' a) (countdigits (digits' a)) == a = True
    | otherwise = False
