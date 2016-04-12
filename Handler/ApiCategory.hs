module Handler.ApiCategory where

import Import

getApiCategoryR :: CategoryId -> Handler Value
getApiCategoryR cid = do
    category <- runDB $ get404 cid

    return $ object ["category" .= (Entity cid category)]
