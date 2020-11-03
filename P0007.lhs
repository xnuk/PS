#!/usr/bin/env runhaskell
> {-# OPTIONS_GHC -Wall -Wno-missing-signatures #-}

10001st prime

Problem
-------
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
we can see that the 6th prime is 13.
What is the 10001st prime number?

Solution
--------

> import Primes (primes)

> answer = primes !! (10001 - 1)
> main = print answer
