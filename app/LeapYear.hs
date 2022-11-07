module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year = devisableBy4 && (except100 || also400)
  where devisableBy4 = year `mod` 4 == 0
        except100 = year `mod` 100 /= 0
        also400 = year `mod` 400 == 0