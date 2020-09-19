#!/usr/bin/env runhaskell
> {-# OPTIONS_GHC -Wall -Wno-missing-signatures #-}

Multiples of 3 and 5

Problem
-------
If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

Solution
--------
The key is:

> answer n = sumOf 3 n + sumOf 5 n - sumOf 15n

And we can define function `sumOf` like this:

> sumNumber n = n * (n + 1) `div` 2
> sumOf divisor num = divisor * sumNumber ((num - 1) `div` divisor)

> main = print $ answer (1000 :: Int)
