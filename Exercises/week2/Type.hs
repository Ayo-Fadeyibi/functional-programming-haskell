--typeA :: (a -> b, a) -> b
typeA (f, a) = f a

--typeB :: ((a, a) -> [b]) -> a -> (a, [b])
typeB f g = (g, [head (f (g, g))])

--typeC :: (a -> b -> c -> d -> r) -> ((a, b) -> (c, d) -> r)
typeC f a b = f (fst a) (snd a) (fst b) (snd b)

--typeD :: (c -> a -> b) -> (c -> a) -> (c -> b)
typeD f g c = f c (g c)

--typeE :: ((c -> a) -> b) -> (c -> a) -> (c -> b)
typeE f g = f (\a -> g a)

--typeF :: (a -> b) -> ((a -> c) -> d) -> ((b -> c) -> [d])
typeF f g = undefined 