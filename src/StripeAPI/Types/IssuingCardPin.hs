{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.IssuingCardPin where

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

data IssuingCardPin
    = IssuingCardPin {issuingCardPinStatus :: IssuingCardPinStatus'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data IssuingCardPinStatus'
    = IssuingCardPinStatus'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingCardPinStatus'EnumTyped GHC.Base.String
    | IssuingCardPinStatus'EnumStringActive
    | IssuingCardPinStatus'EnumStringBlocked
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingCardPinStatus'
    where toJSON (IssuingCardPinStatus'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardPinStatus'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardPinStatus'EnumStringActive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active"
          toJSON (IssuingCardPinStatus'EnumStringBlocked) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "blocked"
instance Data.Aeson.FromJSON IssuingCardPinStatus'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active")
                                          then IssuingCardPinStatus'EnumStringActive
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "blocked")
                                                then IssuingCardPinStatus'EnumStringBlocked
                                                else IssuingCardPinStatus'EnumOther val)
instance Data.Aeson.ToJSON IssuingCardPin
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "status" (issuingCardPinStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "status" (issuingCardPinStatus obj))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardPin
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardPin" (\obj -> GHC.Base.pure IssuingCardPin GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))