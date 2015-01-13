module Main where

type Proc = IO ()

infixr 9 %%

(%%) :: (a -> b) -> a -> b
a %% b = a b

identity :: a -> a
identity = id

dump :: String -> Proc
dump = putStrLn

hello :: Proc
hello = identity %% dump %% identity %% "hello world!"

main :: Proc
main = do
  foo <- hello
  bar <- hello
  hello
