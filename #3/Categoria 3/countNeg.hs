countNeg a = length [ x | x <- a, x < 0 ];

{- Solucionando com filter:
countNeg a = length (filter (<0) a); -}


main = do
    a <- readLn :: IO [Int]
    print $ countNeg a