module Helper(
doFromTo
) where

-- Executes function f for each value from to
doFromTo :: Enum t => (t -> a) -> t -> t -> [a]
doFromTo f from to = [f i | i <- [from..to]]

