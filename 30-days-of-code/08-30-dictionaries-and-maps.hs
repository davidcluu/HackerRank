import Data.Map (Map)
import qualified Data.Map as Map (fromList, lookup)
import Control.Monad (replicateM, liftM, mapM_)

main :: IO ()
main = do
  n <- readLn :: IO Int
  es <- replicateM n $ liftM ((\[x,y] -> (x,y)) . words) getLine
  let m = Map.fromList es
  let printRes k = case Map.lookup k m of
                    Just v  -> putStr k >> putStr "=" >> putStrLn v
                    Nothing -> putStrLn "Not found"
  getContents >>= mapM_ printRes . lines