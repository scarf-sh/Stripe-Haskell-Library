{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.OnlineAcceptance where

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

data OnlineAcceptance
    = OnlineAcceptance {onlineAcceptanceIpAddress :: (GHC.Maybe.Maybe GHC.Base.String),
                        onlineAcceptanceUserAgent :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON OnlineAcceptance
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ip_address" (onlineAcceptanceIpAddress obj) : (Data.Aeson..=) "user_agent" (onlineAcceptanceUserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ip_address" (onlineAcceptanceIpAddress obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (onlineAcceptanceUserAgent obj))
instance Data.Aeson.Types.FromJSON.FromJSON OnlineAcceptance
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "OnlineAcceptance" (\obj -> (GHC.Base.pure OnlineAcceptance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_agent"))