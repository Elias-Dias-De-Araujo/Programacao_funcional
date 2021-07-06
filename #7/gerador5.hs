gerador5 x = unfoldr (\y -> if y > 0 then Just (y, div y 2) else Nothing) x


unfoldr f b = case f b of
              Just (a, b') -> a : unfoldr f b'
              Nothing -> []