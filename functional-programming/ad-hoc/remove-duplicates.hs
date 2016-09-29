import Data.List

main :: IO ()
main = getLine >>= putStrLn . nub