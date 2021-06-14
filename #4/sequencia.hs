sequencia n m = [x | x<-[m, m+1..(m+n-1)]] 

main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  print $ sequencia a b