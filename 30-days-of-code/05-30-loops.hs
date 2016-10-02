import Control.Monad (mapM_)

main :: IO ()
main = do
  n <- readLn :: IO Int
  mapM_ (\i -> (putStr . show) n >> putStr " x " >> (putStr . show) i >> putStr " = " >> print (n*i)) [1..10]