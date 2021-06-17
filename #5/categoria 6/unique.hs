unique [] = []
unique (a:as) = a : unique (filter (/=a) as)

main = do
  a <- readLn :: IO [Int]
  print $ unique a