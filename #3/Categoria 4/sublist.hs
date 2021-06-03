sublist i f xs = drop i' (take f' xs)
  where
    size = length xs
    i' = if i < 0 then i + size else i
    f' = if f < 0 then f + size else f

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO [Int]
  print $ sublist a b c