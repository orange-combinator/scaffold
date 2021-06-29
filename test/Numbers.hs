{-# LANGUAGE TypeApplications #-}
module Numbers where

import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

addition :: Spec
addition = do
  describe "properties of addition" $ do
    prop "should have a right identity element" $ \n ->
      n + (0 :: Int) == n
    prop "should have a left identity element" $ \n ->
      (0 :: Int) + n == n
    prop "should be associative" $ \(n, m, o) ->
      n + (m + o :: Int) == (n + m) + o
