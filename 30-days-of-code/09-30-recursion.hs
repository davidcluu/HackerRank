factorial :: Int -> Int
factorial n = product [1..n]

main :: IO ()
main = getLine >>= print . factorial . (read :: String -> Int)