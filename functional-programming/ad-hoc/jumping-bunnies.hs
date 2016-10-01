import Control.Monad

main :: IO ()
main = getLine >> getLine >>= print . foldl1 lcm . map read . words