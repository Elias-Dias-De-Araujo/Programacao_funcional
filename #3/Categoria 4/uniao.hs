uniao a b = a ++ filter(`notElem` a) b
   
main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ uniao a b