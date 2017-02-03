main :: IO ()
main = getLine >> getLine >>= print . sum . map (read :: String -> Int) . words