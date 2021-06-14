quadperf n = 
  if length [x | x<-[1..n], x * x == n] > 0 then True 
  else False

main = do
  a <- readLn :: IO Int
  print $ quadperf a