digitos x = reverse (unfoldr (\y -> if y > 0 then Just (mod y 10, div y 10) else Nothing) x)


unfoldr f b = case f b of
              Just (a, b') -> a : unfoldr f b'
              Nothing -> []