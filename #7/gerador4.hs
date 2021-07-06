gerador4 x = takeWhile (>0) (iterate iterator x)

iterator x = div x 2 