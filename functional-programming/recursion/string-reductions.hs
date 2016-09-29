reduce :: String -> String
reduce w =
  let
    loop [] _        = []
    loop (x:xs) elim = if x `elem` elim then loop xs elim else x : loop xs (x:elim)
  in loop w []

main :: IO ()
main = getLine >>= putStrLn . reduce