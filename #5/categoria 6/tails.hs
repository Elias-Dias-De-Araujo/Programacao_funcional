tails [] = [[]]
tails xs = xs : tails (tail xs)

main = do
  a <- readLn :: IO [Int]
  print $ tails a