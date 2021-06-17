indices v xs = map snd (filter((==v).fst) tuple)
  where 
    tuple = zip xs [0..]


main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ indices a b