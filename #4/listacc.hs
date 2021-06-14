listacc a = scanl1 (+) a

main = do
  a <- readLn :: IO [Int]
  print $ listacc a