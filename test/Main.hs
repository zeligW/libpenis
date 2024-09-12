module Main (main) where

import Penis (Penis (..))
import System.Exit (die, exitSuccess)

main :: IO ()
main =
  if successCase && not failureCase
    then exitSuccess
    else die "Penis did not compare"
  where
    successCase = B==D
    failureCase = or [B==B, D==D, D==B]
