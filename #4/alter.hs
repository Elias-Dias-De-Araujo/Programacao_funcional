alter a = intercal xs ys
  where 
    xs = [1..a]
    ys = [x * (-1) | x <- [1..a]]

intercal xs [] = xs
intercal [] ys = ys
intercal (x:xs) (y:ys) = [x,y] ++ intercal xs ys

main = do
  a <- readLn :: IO Int
  print $ alter a