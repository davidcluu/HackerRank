import Data.List (transpose)

main :: IO ()
main = getContents >>= putStrLn . concat . transpose . lines