rotEsq n xs = drop n xs ++ take n xs

main = do
  a <- readLn :: IO Int
  b <- getLine
  print $ rotEsq a b