main :: IO ()
main = getLine >> getContents >>= mapM_ ((\(x,y) -> putStr x >> putStr " " >> putStrLn y) . foldr (\x (y2,y1) -> (x:y1, y2)) ([],[])) . lines