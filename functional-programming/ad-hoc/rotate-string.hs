rotate :: String -> [String]
rotate (x:xs) = let curr = xs ++ [x] in curr : rotate curr

solve :: [String] -> [[String]]
solve = map (\x -> let len = length x in (take len . rotate $ x))

main :: IO ()
main = getContents >>= mapM_ (putStrLn . unwords) . solve . tail . lines