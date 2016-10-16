import Data.Char (isUpper)

main :: IO ()
main = getLine >>= print . (+ 1) . length . filter isUpper