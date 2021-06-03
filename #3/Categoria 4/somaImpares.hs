somaImpares a = sum [x | x <- a,  x `mod` 2 /= 0];


main = do
  a <- readLn :: IO [Int]
  print $ somaImpares a