prefix :: String -> String -> (String, String, String)
prefix x y =
  let
    loop [] [] acc          = (acc, "", "")
    loop xs [] acc          = (acc, xs, "")
    loop [] ys acc          = (acc, "", ys)
    loop (x:xs) (y:ys) acc = if x == y then loop xs ys (y:acc) else (acc, x:xs, y:ys)
    (p', x', y') = loop x y ""
  in (reverse p', x', y')

print' :: (Show a) => a -> IO ()
print' = putStr . show

main :: IO ()
main = do
  x <- getLine
  y <- getLine
  let (p, x', y') = prefix x y
  print' (length p)  >> putStr " " >> putStrLn p
  print' (length x') >> putStr " " >> putStrLn x'
  print' (length y') >> putStr " " >> putStrLn y'