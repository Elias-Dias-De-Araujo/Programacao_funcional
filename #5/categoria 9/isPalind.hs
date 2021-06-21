isPalind a = if a == reverse a then True else False

main = do
  a <- getLine
  print $ isPalind a