#!/usr/bin/env runhaskell
> {-# OPTIONS_GHC -Wall -Wno-missing-signatures #-}

Sum square difference

Problem
-------
The sum of the squares of the first ten natural numbers is,

    1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,

    (1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first ten
natural numbers and the square of the sum is 3025 - 385 = 2640.

Find the difference between the sum of the squares of the first one hundred
natural numbers and the square of the sum.

Solution
--------
Sum of n is: n(n+1) / 2
Sum of n^2 is: n(n+1)(2n+1) / 6

So:
    (n(n+1)/2)^2 - n(n+1)(2n+1)/6
  = n * n * (n+1) * (n+1) / 4 - n * (n+1) * (2n+1) / 6
  = (3 * n * n * (n+1) * (n+1) - 2 * n * (n+1) * (2n+1)) / 12
  = n * (n+1) * (3 * n * (n+1) - 2 * (2n+1)) / 12
  = n * (n+1) * (3n^2 + 3n - 4n - 2) / 12
  = n * (n+1) * (3n^2 - n - 2) / 12
  = n * (n+1) * (n-1) * (3n+2) / 12


> answer = n * (n+1) * (n-1) * (3*n+2) `div` 12
>   where n = 100 :: Integer

> main = print answer
