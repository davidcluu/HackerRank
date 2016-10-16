import Data.Array (Array, listArray, (!))
import Control.Monad (liftM)

memo :: Int -> Array Int Int
memo n = r
  where r = listArray (1,n) $ map f [1..n]
        f 1 = 1
        f i = r ! (i - 1) + (3*i - 2)

main :: IO ()
main = do
  ns <- getLine >> liftM (map (read :: String -> Int) . lines) getContents
  let memArr = memo $ maximum ns
  mapM_ (print . (!) memArr) ns