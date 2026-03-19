--typeA :: (a -> b, a) -> b
typeA (f, a) = f a

--typeB :: ((a, a) -> [b]) -> a -> (a, [b])
typeB f g = (g, [head (f (g, g))])

--typeC :: (a -> b -> c -> d -> r) -> ((a, b) -> (c, d) -> r)
typeC f = undefined

--typeD :: (c -> a -> b) -> (c -> a) -> (c -> b)
typeD f g = undefined

--typeE :: ((c -> a) -> b) -> (c -> a) -> (c -> b)
typeE = undefined

--typeF :: (a -> b) -> ((a -> c) -> d) -> ((b -> c) -> [d])
typeF = undefined