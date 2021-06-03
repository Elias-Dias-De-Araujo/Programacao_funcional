splitints a = 
  (x, y)
  where 
    x = [x| x <- a, odd x]
    y = [y| y <- a, even y]


main = do
  a <- readLn :: IO [Int]
  print $ splitints a