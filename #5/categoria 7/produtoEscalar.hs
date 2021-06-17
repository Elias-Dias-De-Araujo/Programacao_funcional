produtoEscalar as bs = sum [a * b | (a, b) <- (zip as bs)]

main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ produtoEscalar a b