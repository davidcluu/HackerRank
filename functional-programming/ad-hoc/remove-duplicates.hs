import Data.List (nub)

main :: IO ()
main = getLine >>= putStrLn . nub