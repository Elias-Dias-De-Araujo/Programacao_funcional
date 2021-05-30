iguais a b c 
    | (a==b) && (b==c) = 3
    | ( ((a==b) && (b/=c)) || ((b==c) && (a/=c)) || ((a==c) && (b/=c)) ) = 2
    | otherwise = 0;

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ iguais a b c