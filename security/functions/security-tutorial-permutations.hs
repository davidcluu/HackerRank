import Control.Monad (liftM, mapM_)

main :: IO ()
main = do
  n <- readLn :: IO Int
  fxs <- liftM (map (read :: String -> Int) . words) getLine
  let fx n = fxs !! (n - 1)
  mapM_ (print . fx . fx) [1..n]