import Data.List

compress :: String -> String
compress w = concatMap stringify . group $ w
  where
    stringify str =
      let
        c:cs = str
        len  = length str
      in case len of
        1 -> [c]
        n -> c : show n

main :: IO()
main = getLine >>= putStrLn . compress