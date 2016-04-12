{-# LANGUAGE FlexibleInstances #-}

module Model where

import ClassyPrelude.Yesod
import Database.Persist.Quasi

-- You can define all of your database entities in the entities file.
-- You can find more information on persistent and how to declare entities
-- at:
-- http://www.yesodweb.com/book/persistent/
share [mkPersist sqlSettings, mkMigrate "migrateAll"]
    $(persistFileWith lowerCaseSettings "config/models")

instance ToJSON (Entity Category) where
    toJSON (Entity cid c) = object
        [ "id"          .= (String $ toPathPiece cid)
        , "title"       .= categoryTitle c
        , "clues-count" .= categoryCluesCount c
        ]
