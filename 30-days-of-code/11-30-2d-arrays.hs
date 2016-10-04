import Control.Monad (replicateM, liftM)

main :: IO ()
main = do
  arr <- replicateM 6 $ liftM (map (read :: String -> Int) . words) getLine
  let hourglassSum x y = let 
                            a = arr !! (x-1) !! (y-1)
                            b = arr !! (x-1) !! y
                            c = arr !! (x-1) !! (y+1)
                            d = arr !! x     !! y
                            e = arr !! (x+1) !! (y-1)
                            f = arr !! (x+1) !! y
                            g = arr !! (x+1) !! (y+1)
                          in a + b + c + d + e + f + g
  print . maximum $ concatMap (\r -> map (\c -> hourglassSum r c) [1..4]) [1..4]