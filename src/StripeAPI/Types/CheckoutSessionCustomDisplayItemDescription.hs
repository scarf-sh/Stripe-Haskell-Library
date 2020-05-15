{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.CheckoutSessionCustomDisplayItemDescription where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common

data CheckoutSessionCustomDisplayItemDescription
    = CheckoutSessionCustomDisplayItemDescription {checkoutSessionCustomDisplayItemDescriptionDescription :: (GHC.Maybe.Maybe GHC.Base.String),
                                                   checkoutSessionCustomDisplayItemDescriptionImages :: (GHC.Maybe.Maybe ([] GHC.Base.String)),
                                                   checkoutSessionCustomDisplayItemDescriptionName :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON CheckoutSessionCustomDisplayItemDescription
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "description" (checkoutSessionCustomDisplayItemDescriptionDescription obj) : (Data.Aeson..=) "images" (checkoutSessionCustomDisplayItemDescriptionImages obj) : (Data.Aeson..=) "name" (checkoutSessionCustomDisplayItemDescriptionName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "description" (checkoutSessionCustomDisplayItemDescriptionDescription obj) GHC.Base.<> ((Data.Aeson..=) "images" (checkoutSessionCustomDisplayItemDescriptionImages obj) GHC.Base.<> (Data.Aeson..=) "name" (checkoutSessionCustomDisplayItemDescriptionName obj)))
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutSessionCustomDisplayItemDescription
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CheckoutSessionCustomDisplayItemDescription" (\obj -> ((GHC.Base.pure CheckoutSessionCustomDisplayItemDescription GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name"))