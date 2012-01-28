main = print euler01
euler01 = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]
