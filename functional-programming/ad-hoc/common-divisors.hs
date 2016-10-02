divisors :: Int -> [Int]
divisors 1 = [1]
divisors n = 1 : n : filter ((== 0) . rem n) [2..n `div` 2]

commonDivisors :: [Int] -> Int
commonDivisors (x:y:[]) = length . divisors $ gcd x y

main :: IO ()
main = getContents >>= mapM_ (print . commonDivisors . map (read :: String -> Int) . words) . tail . lines