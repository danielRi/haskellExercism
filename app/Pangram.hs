module Pangram where

import Data.List (isInfixOf)
import Data.Char (toUpper)


isPangram :: String -> Bool
isPangram text = containsLetter text ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

containsLetter :: String -> [String] -> Bool
containsLetter _ [] = True
containsLetter text (x:xs) = case hasLetter of
  True -> containsLetter text xs
  False -> False
  where hasLetter = x `isInfixOf` text || map toUpper x `isInfixOf` text

  -- Carlis commentar
  -- hjfjdfcgrgehtjhdhffhgffhkxhejjrjfhkvgjtfjgfmgdbkl jhkfgkfhjghbtjhjg fbjftkbv bgittjfkktmvigkju htjgjfgtlfjhkhlghgkj6mhtktg
  -- heshjedrndjkshkjffhf4crgvfdgfjrffkedrvhgjdtgfhfhujergejgcvffhjgjdg gudhfhgjrjcjvfkggk vkghjtik bgjhgjtggkhkhdfb vhtjbfj tgkghjrfejrrb fijrgjfb jgjrfmnr 555172