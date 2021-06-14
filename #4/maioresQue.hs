maioresQue a [] = []
maioresQue a b = [x | x <- b, x > a] 

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ maioresQue a b