corpo a = 
  if length a == 1 then []
  else [x | x<-[1..((length a)-1)]]


main = do
  a <- readLn :: IO [Int]
  print $ corpo a