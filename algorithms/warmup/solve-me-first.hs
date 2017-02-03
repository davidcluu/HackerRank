main :: IO ()
main = getContents >>= print . sum . map (read :: String -> Int) . lines