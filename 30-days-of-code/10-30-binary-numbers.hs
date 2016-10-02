import Data.List
import Data.Ord

decToBin :: Int -> [Int]
decToBin =
  let
    worker 0 = []
    worker n = let (q,r) = quotRem n 2 in r : worker q
  in reverse . worker

main :: IO ()
main = (readLn :: IO Int) >>= print . length . maximumBy (comparing length) . filter ((==1) . head) . group . decToBin