module Primes where

primes :: Integral a => [a]
primes = 2:3:5:7:filter isPrime [11,13..] where
  isPrime x =
    null [ p | p <- takeWhile (\p -> p^2 <= x) primes, x `mod` p == 0 ]
