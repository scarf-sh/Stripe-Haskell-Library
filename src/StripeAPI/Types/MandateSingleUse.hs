{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.MandateSingleUse where

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

data MandateSingleUse
    = MandateSingleUse {mandateSingleUseAmount :: GHC.Integer.Type.Integer,
                        mandateSingleUseCurrency :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON MandateSingleUse
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (mandateSingleUseAmount obj) : (Data.Aeson..=) "currency" (mandateSingleUseCurrency obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (mandateSingleUseAmount obj) GHC.Base.<> (Data.Aeson..=) "currency" (mandateSingleUseCurrency obj))
instance Data.Aeson.Types.FromJSON.FromJSON MandateSingleUse
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "MandateSingleUse" (\obj -> (GHC.Base.pure MandateSingleUse GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency"))