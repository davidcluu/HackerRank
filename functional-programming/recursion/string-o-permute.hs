solve :: String -> String
solve [] = []
solve (x:y:rest) = y : x : solve rest

main :: IO ()
main = getContents >>= mapM_ (putStrLn . solve) . tail . lines