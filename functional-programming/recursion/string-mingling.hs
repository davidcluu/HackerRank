import Data.List

main :: IO ()
main = getContents >>= putStrLn . concat . transpose . lines