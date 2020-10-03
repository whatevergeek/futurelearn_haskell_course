module SpellerSpec where

import Test.Hspec 
import Speller3 (speller)

main :: IO ()
main = hspec $ do
    describe "speller" $ do
    it "returns empty string when given an empty list" $
        speller [] `shouldBe` ""
    it "handles one entry" $
        speller ["abacus"] `shouldBe` "a is for abacus"
    it "handles two entries" $
        speller ["whisky", "x-ray"] `shouldBe` "w is for whisky, and x is for x-ray"
    it "handles three entries" $
        speller ["apple", "banana", "coconut"] `shouldBe` "a is for apple, b is for banana, and c is for coconut"

