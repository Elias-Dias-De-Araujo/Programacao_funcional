upper xs = map toUp xs

toUp xs 
  | xs >= 'a' && xs <= 'z' = toEnum (fromEnum xs - 32) :: Char
  | otherwise = xs

main = do
  a <- getLine 
  print $ upper a