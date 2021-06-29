module Main where

import Numbers
import Test.Hspec

main :: IO ()
main = hspec $ do
  addition
  describe "failure" $ do
    it "fails" $ do
      True `shouldBe` False
