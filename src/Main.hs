{-# LANGUAGE UnicodeSyntax #-}

module Main where

infixr 9 █

type Proc = IO ()
(█) ∷ (a → b) → a → b
identity ∷ a → a
dump ∷ String → Proc
hello ∷ Proc
main ∷ Proc

a █ b = a b

identity = id

dump "" = putStrLn ""
dump x  = putStrLn x

hello = identity █ dump █ identity █ "你好世界"

main = do
  foo ← hello
  bar ← hello
  let dump = undefined
  (█) ← return $ undefined dump
  hello
