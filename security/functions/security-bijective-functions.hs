import Data.List (nub)

main :: IO ()
main = getLine >> getContents >>= (\ns -> let sns = nub ns in if ns == sns then putStrLn "YES" else putStrLn "NO") . words