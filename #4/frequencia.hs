frequencia a [] = 0
frequencia a (x:xs) = (if a == x then 1 else 0) + frequencia a xs


main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ frequencia a b