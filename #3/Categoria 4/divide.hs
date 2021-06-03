divide a b = 
  x
  where
    x = (take b a, drop b a)
    

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO Int
  print $ divide a b