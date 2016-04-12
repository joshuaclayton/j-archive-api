module Yesod.Test.Extension
( valueEquals
) where

import Prelude

import Yesod.Test
import Test.Hspec.Expectations.Lifted
import Data.Aeson (Value, eitherDecode)
import Network.Wai.Test (simpleBody)

-- | Like @bodyEquals@ but taking a @'Value'@ argument and comparing it against
--   the response body decoded as JSON.
--
--   > valueEquals $ object ["comments" .= comments]
--
valueEquals :: Value -> YesodExample site ()
valueEquals v = withResponse $
    either (const failure) (v `shouldBe`) . eitherDecode . simpleBody

  where
    failure :: YesodExample site ()
    failure = expectationFailure "expected JSON response"
