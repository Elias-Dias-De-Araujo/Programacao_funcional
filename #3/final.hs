final a b = reverse (take a (reverse b))


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ final a b