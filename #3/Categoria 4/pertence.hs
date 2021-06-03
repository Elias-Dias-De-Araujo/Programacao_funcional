pertence a b = elem a b;


main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ pertence a b