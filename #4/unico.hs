unico a b = if length[x | x <- b, x == a] == 1 then True else False

main = do 
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ unico a b