module Exercises(
fizzBuzz,
isPrime
) where


fizzBuzz :: (Integral a, Show a) => a -> String
fizzBuzz x
  | x `mod` 3 == 0 && x `mod` 5 == 0 = "FizzBuzz"
  | x `mod` 3 == 0 = "Fizz"
  | x `mod` 5 == 0 = "Buzz"
  | otherwise = show x

isPrime :: Integral a => a -> Bool
isPrime x = all f list
  where
        f i = (x `mod` i) /= 0
        list = [p | p <- [2..10000000], p /= x]
