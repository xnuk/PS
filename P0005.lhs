#!/usr/bin/env runhaskell
> {-# OPTIONS_GHC -Wall -Wno-missing-signatures #-}

Smallest multiple

Problem
-------
2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.
What is the smallest positive number that is _evenly divisible_
by all of the numbers from 1 to 20?

Solution
--------
Just:

> answer :: Integer
> answer = foldr1 lcm [1..20]
> main = print answer
