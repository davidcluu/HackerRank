import Data.List (group)

reduce :: String -> String
reduce xs =
  let reducedString = concatMap (\xs -> if length xs `mod` 2 == 0 then [] else take 1 xs) (group xs)
  in case reducedString of
    ""        -> "Empty String"
    otherwise ->
      if xs == reducedString then reducedString
      else reduce reducedString

main :: IO ()
main = getLine >>= putStrLn . reduce