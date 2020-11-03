#!/usr/bin/env runhaskell
> {-# OPTIONS_GHC -Wall -Wno-missing-signatures #-}

Largest palindrome product

Problem
-------
A palindromic number reads the same both ways.
The largest palindrome made from the product of two 2-digit numbers is
9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.

Solution
--------
\begin{code}
isPalindrome = (\x -> x == reverse x) . show

palindromes :: [Int]
palindromes =
   [ n * m | n <- [999,998..100], m <- [n,n-1..100], isPalindrome (n * m) ]

answer = maximum palindromes

main = print answer
\end{code}
