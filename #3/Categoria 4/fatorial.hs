fatorial a
  | a < 2 = 1
  | otherwise = a * fatorial (a-1)


{- Solucionando com product e gerador de listas:
fatorial a = product [1..a]
 -}

main = do
  a <- readLn :: IO Int
  print $ fatorial a