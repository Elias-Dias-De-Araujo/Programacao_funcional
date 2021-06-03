elemento a b = 
  if a >= 0 then b !! a
  else b !! x
    where x = a + length b


main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ elemento a b