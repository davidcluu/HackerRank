main :: IO ()
main = do
  mealCost <- readLn :: IO Double
  tipPercent <- readLn :: IO Double
  taxPercent <- readLn :: IO Double
  putStr "The total meal cost is " >> (putStr . show . round) (mealCost + (tipPercent * mealCost / 100.0) + (taxPercent * mealCost / 100.0)) >> putStr " dollars."