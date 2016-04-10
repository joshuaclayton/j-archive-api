module Handler.HomeSpec (spec) where

import TestImport

spec :: Spec
spec = withApp $ do
    it "loads the homepage" $ do
        get HomeR
        statusIs 200
        htmlAllContain "h1" "J! Archive API"
