concatena [][] = [] 
concatena a b = a ++ b

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ concatena a b