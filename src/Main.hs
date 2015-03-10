{-# LANGUAGE CPP #-}

#include "MachDeps.h"
#include "macros.h"

module Main where

linuxNum :: Int
LINUX_NUM(9)

mingwNum :: Int
MINGW_NUM(5)

num :: Int
DEF(num,(linuxNum+mingwNum))

main = print num
