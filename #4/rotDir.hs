rotDir 0 xs = xs
rotDir x xs = rotDir (x-1) (last xs : init xs)
main = do
  a <- readLn :: IO Int
  b <- getLine
  print $ rotDir a b