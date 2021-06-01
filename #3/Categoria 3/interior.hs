interior a = init (tail a)


main = do
  a <- readLn :: IO [Int]
  print $ interior a