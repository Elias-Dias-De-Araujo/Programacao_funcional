intercal [] bs = bs
intercal as [] = as
intercal (a:as) (b:bs) = a : b : intercal as bs

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ intercal a b