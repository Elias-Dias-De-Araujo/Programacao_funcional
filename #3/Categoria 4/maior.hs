maior [a] = a
maior (a:as) = if a > maiorT then a
 else maiorT
  where maiorT = maior as
  
main = do
  a <- readLn :: IO [Int]
  print $ maior a
