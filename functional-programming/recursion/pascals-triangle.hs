import Control.Monad (mapM_)

factorial :: Int -> Int
factorial n = product [1..n]

choose :: Int -> Int -> Int
choose n k = factorial n `div` (factorial k * factorial (n-k))

printPascal :: Int -> IO ()
printPascal n = mapM_ (\i -> (putStr . show . choose n) i >> putStr " ") [0..n] >> putStrLn ""

main :: IO ()
main = (readLn :: IO Int) >>= (\n -> mapM_ printPascal [0..n-1])