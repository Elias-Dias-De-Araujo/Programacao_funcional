total [] = 0
total (_:a) = 1 + total a


main = do
  a <- readLn :: IO [Int]
  print $ total a