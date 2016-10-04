import Data.List (elemIndex)
import Control.Monad (replicateM_, liftM)

main :: IO ()
main = do
  n <- readLn :: IO Int
  fxs <- liftM (map (read :: String -> Int) . words) getLine
  mapM_ (\i -> let Just f1x = elemIndex i fxs in print $ f1x + 1) [1..n]