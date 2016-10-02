import Data.List (group, sort, (\\))
import Control.Monad (liftM)

diff :: [String] -> [String] -> [String]
diff xs ys =
  let gather = group . sort
  in map head $ gather xs \\ gather ys

main :: IO ()
main = do
  l1 <- getLine >> liftM words getLine
  l2 <- getLine >> liftM words getLine
  putStrLn . unwords $ diff l1 l2