module Api.CategorySpec (spec) where

import TestImport
import Data.Aeson ((.=), object)

createCategory :: Text -> Int -> YesodExample App (Key Category)
createCategory name count' = do
  runDB $ insert $ Category name count'

spec :: Spec
spec = withApp $ do
    describe "/api/categories" $ do
        it "exposes an API endpoint" $ do
            cid <- createCategory "Movies" 0
            get $ ApiCategoryR cid

            valueEquals $ object [ "category" .= (Entity cid (Category "Movies" 0))]
            statusIs 200
