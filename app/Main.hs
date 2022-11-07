-- module Main where

-- import Lib
-- import Data.List
import System.Random
import Exercises
import Helper
import ValentinesDay

main :: IO ()





main = do
--  rounds <- randomList 10
--  print(rounds)
--
--  let buyerRounds = getOnly rounds (<)
--  let sellerRounds = getOnly rounds (>)
--  let decreases = [-2 | (d,s) <- buyerRounds]
--  let increases = [2 | (d,s) <- sellerRounds]
--  print (buyerRounds)
--  print (sellerRounds)
--  print (increases)
--  print (calcBmis [(225, 185)])
--  print (eachPlusOne [1,2,3,4,5])
  let c1 = change2 20 22
  print(c1)
  print (pixel 255 0 0)
  let redPixel = pixel 255
  let px = redPixel 50 50
  let looped = loopTill squared 10
  let squareTill = loopTill squared
  let fizzed = doFromTo fizzBuzz 1 100
  let p1 = isPrime 20
  let r1 = rateActivity (Walk 5)

  print (px)
  print (looped)
  print (squareTill 20)
  print (fizzed)
  print (p1)
  print (r1)
  
eachPlusOne :: [Int] -> [Int]
eachPlusOne xs = [plusOne x | x <- xs]
  where plusOne 1 = 1
        plusOne 2 = 2
        plusOne x = x + 1
        
loopTill :: (Num t, Enum t) => (t -> a) -> t -> [a]
loopTill f t = [f i | i <- [0..t]]

squared x = x * x


pixel :: Int -> Int -> Int -> (Int, Int, Int)
pixel r g b = (r,g,b)

change :: (Ord a, Fractional p) => a -> a -> p
change buyOrder sellOrder
  | buyOrder > sellOrder = 0.5
  | buyOrder < sellOrder = -0.5
  | otherwise = 0

change2 :: (Ord a, Fractional p, Num a) => a -> a -> p
change2 b s
  | d > 3 = 0.5
  | d > 0 = 0.2
  | d == 0 = 0
  | d < 0 = -0.2
  | d < 3 = -0.5
  where d = b - s



--calcBmis xs = [bmi w h | (w, h) <- xs, cmi w h]
--  where bmi weight height = weight / height ^ 2
--        cmi weight height = weight > 300
--
--getOnly rounds predicate = [(d, s) | (d, s) <- rounds, predicate d s]
--
--randValue = randomRIO (0,9) :: IO Int
--
--randomList :: Int -> IO([(Int,Int)])
--randomList 0 = return []
--randomList n = do
--  d  <- randomRIO (0,9)
--  s <- randomRIO (0,9)
--  rs <- randomList (n-1)
--  return ((d,s):rs)
