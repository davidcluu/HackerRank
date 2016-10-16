import Data.Array (Array, listArray, (!))
import Control.Monad (liftM)

memo :: Int -> Array Int Integer
memo n = r
  where r = listArray (0,n) $ 0:1:map f [2..n]
        f i = r ! (i - 1) + r ! (i - 2)

main :: IO ()
main = do
  ns <- getLine >> liftM (map (read :: String -> Int) . lines) getContents
  let memArr = memo $ maximum ns
  let factor n = n `mod` 100000007
  mapM_ (print . factor . (!) memArr) ns