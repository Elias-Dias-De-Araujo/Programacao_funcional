max3 a b c = max c (max a b);


main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  print $ max3 a b c