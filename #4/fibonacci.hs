fib 0 = 1
fib 1 = 1
fib a = fib(a-1) + fib(a-2)

main = do
  a <- readLn :: IO Int
  print $ fib a