main :: IO ()
main = (readLn :: IO Int) >>= (\i -> if odd i then putStrLn "Weird" else if i > 20 then putStrLn "Not Weird" else if i >= 6 then putStrLn "Weird" else putStrLn "Not Weird")