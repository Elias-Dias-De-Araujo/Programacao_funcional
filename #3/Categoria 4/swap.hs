swap xs p q 
  | p < size && q < size = left ++ (xs !! q):miolo ++ (xs !! p):right
  | otherwise = xs 
  where 
    size = length xs
    left = take p xs
    right = drop (q + 1) xs
    miolo = take (q - p - 1) (drop (p + 1) xs)

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ swap a b c