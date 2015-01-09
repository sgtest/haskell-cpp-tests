module Main where

type Proc = IO ()

hello :: Proc
hello = putStrLn "hello world!"

main :: Proc
main = hello
