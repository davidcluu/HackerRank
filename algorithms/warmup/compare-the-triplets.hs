import Data.List (zip)

cmp :: (Int, Int) -> (Int, Int) -> (Int, Int)
cmp (scorea, scoreb) (curra, currb) = 
  if (curra > currb) then (scorea + 1, scoreb)
    else if (currb > curra) then (scorea, scoreb + 1)
    else (scorea, scoreb)


main :: IO ()
main = do
  a <- getLine >>= return . map (read :: String -> Int) . words
  b <- getLine >>= return . map (read :: String -> Int) . words
  let (resa, resb) = foldl cmp (0,0) $ zip a b
  putStr . show $ resa
  putStr " "
  putStr . show $ resb