import Data.Char (toLower, isSpace)
import Data.List (dropWhile, sort, group)

main :: IO ()
main = do
  xs <- getLine
  if (length . group . dropWhile isSpace . sort . map toLower $ xs) == 26
    then putStrLn "pangram"
    else putStrLn "not pangram"