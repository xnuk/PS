#!/usr/bin/env runhaskell
> {-# OPTIONS_GHC -Wall -Wno-missing-signatures #-}

Largest prime factor

> import Primes (primes)

Problem
-------
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?

> number = 600851475143 :: Integer

Solution
--------

> chopDiv x m
>   | r == 0 = chopDiv q m
>   | otherwise = x
>   where
>     (q, r) = x `divMod` m
>
> chop x m
>   | r == 0 = Just $ chopDiv q m
>   | otherwise = Nothing
>   where
>     (q, r) = x `divMod` m
> 
> go largest (p:ps) remainer
>   | remainer <= largest = largest
>   | otherwise =
>       case (remainer `chop` p) of
>         Just n -> go p ps n
>         Nothing -> go largest ps remainer
>
> go _ [] _ = 1
> 
> answer = go 1 primes number
> main = print answer

