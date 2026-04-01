module Clock (addDelta, fromHourMin, toString) where

data Clock = Clock Int Int deriving Eq

fromHourMin :: Int -> Int -> Clock
fromHourMin h m = 
    let totalMinutes = (h * 60 + m) `mod` 1440
        (h', m') = totalMinutes `quotRem` 60
    in Clock h' m'

toString :: Clock -> String
toString (Clock h m) = 
    let hStr = if h < 10 then '0' : show h else show h
        mStr = if m < 10 then '0' : show m else show m
    in hStr ++ ":" ++ mStr


addDelta :: Int -> Int -> Clock -> Clock
addDelta deltaH deltaM (Clock h m) = 
    let totalMinutes = (h * 60 + m + deltaH * 60 + deltaM) `mod` 1440
        (h', m') = totalMinutes `quotRem` 60
    in Clock h' m'

