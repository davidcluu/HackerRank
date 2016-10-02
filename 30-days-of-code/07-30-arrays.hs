main :: IO ()
main = getLine >> getContents >>= putStrLn . unwords . reverse . words