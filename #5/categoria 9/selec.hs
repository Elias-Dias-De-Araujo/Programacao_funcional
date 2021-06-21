selec u [] = []
selec "" ps = ""
selec u (p:ps) = (\x -> u !! x) p : selec u ps

main = do
  a <- getLine
  b <- readLn :: IO [Int]
  print $ selec a b