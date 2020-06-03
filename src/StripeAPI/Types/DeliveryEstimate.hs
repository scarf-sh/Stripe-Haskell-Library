{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema DeliveryEstimate
module StripeAPI.Types.DeliveryEstimate where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the data type for the schema delivery_estimate
data DeliveryEstimate
  = DeliveryEstimate
      { -- | date: If \`type\` is \`\"exact\"\`, \`date\` will be the expected delivery date in the format YYYY-MM-DD.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        deliveryEstimateDate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | earliest: If \`type\` is \`\"range\"\`, \`earliest\` will be be the earliest delivery date in the format YYYY-MM-DD.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        deliveryEstimateEarliest :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | latest: If \`type\` is \`\"range\"\`, \`latest\` will be the latest delivery date in the format YYYY-MM-DD.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        deliveryEstimateLatest :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | type: The type of estimate. Must be either \`\"range\"\` or \`\"exact\"\`.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        deliveryEstimateType :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON DeliveryEstimate where
  toJSON obj = Data.Aeson.object ((Data.Aeson..=) "date" (deliveryEstimateDate obj) : (Data.Aeson..=) "earliest" (deliveryEstimateEarliest obj) : (Data.Aeson..=) "latest" (deliveryEstimateLatest obj) : (Data.Aeson..=) "type" (deliveryEstimateType obj) : [])
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "date" (deliveryEstimateDate obj) GHC.Base.<> ((Data.Aeson..=) "earliest" (deliveryEstimateEarliest obj) GHC.Base.<> ((Data.Aeson..=) "latest" (deliveryEstimateLatest obj) GHC.Base.<> (Data.Aeson..=) "type" (deliveryEstimateType obj))))

instance Data.Aeson.Types.FromJSON.FromJSON DeliveryEstimate where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeliveryEstimate" (\obj -> (((GHC.Base.pure DeliveryEstimate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "earliest")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "latest")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
