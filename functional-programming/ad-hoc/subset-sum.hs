{-
  Incomplete, > half of the tests time out
-}

import Data.List (sort, minimumBy)
import Data.Ord (comparing)
import Control.Monad (liftM, replicateM, mapM_)
import Control.Arrow ((&&&))

reverseSublists :: [a] -> [[a]]
reverseSublists = map concat . scanl (\b a -> [a] : b) [] . reverse

main :: IO ()
main = do
  maxes <- getLine >> liftM (map (sum &&& length) . tail . reverseSublists . sort . map (read :: String -> Int) . words) getLine
  n <- readLn :: IO Int
  ss <- replicateM n (readLn :: IO Int)
  let filterMaxes s = case filter ((>= s) . fst) maxes of
                        [] -> print (-1)
                        xs -> print $ snd . minimumBy (comparing snd) $ xs
  mapM_ filterMaxes ss