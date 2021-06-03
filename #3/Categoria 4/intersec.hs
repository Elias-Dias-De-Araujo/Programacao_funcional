intersec a b = filter(`elem` b) a

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ intersec a b