paridade a 
  | length a == 0 = False
  | odd x = True 
  | otherwise = False
  where 
    x = length [x| x <-a, x == True]
 
main = do
  a <- readLn :: IO [Bool]
  print $ paridade a