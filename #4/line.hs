line 0 = []
line a = firstElem : [firstElem + x | x <- [1..a-1]]
  where
    firstElem = sum [1..a-1] + 1

main = do
  a <- readLn :: IO Int
  print $ line a