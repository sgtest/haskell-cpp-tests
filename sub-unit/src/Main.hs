module Main where

type Proc = IO ()

hello :: Proc
hello = putStrLn "hello world!"

main :: Proc
main = hello

{-
  Might be useful for binding defs:
    Function binding:
      L $ (FunBind (L _ $@(Var ..)) ...)
        Although, these are already covered by the (L _ (Var ..)) pattern.

  Might be useful, but I'm not sure what for:
    (L _ (HsLit (HsString ..)))
-}
