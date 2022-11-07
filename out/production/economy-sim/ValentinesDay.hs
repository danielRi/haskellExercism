module ValentinesDay where

-- Define the function and required algebraic data types (ADT) below.

data Approval = Yes | No | Maybe deriving Show
data Cuisine = Korean | Turkish
data Genre= Crime | Horror | Romance | Thriller
data Activity = BoardGame | Chill | Movie Genre | Restaurant Cuisine | Walk Int

rateActivity :: Activity -> Approval
rateActivity activity =
  case activity of
    BoardGame -> No
    Chill -> No
    Movie Romance -> Yes
    Movie _ -> No
    Restaurant Korean -> Yes
    Restaurant Turkish -> Maybe
    Walk km
      | km < 3 -> Yes
      | km >= 3 && km <= 5 -> Maybe
      | otherwise -> No


