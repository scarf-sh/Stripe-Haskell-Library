{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CustomerBalanceCustomerBalanceSettings
module StripeAPI.Types.CustomerBalanceCustomerBalanceSettings where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.customer_balance_customer_balance_settings@ in the specification.
data CustomerBalanceCustomerBalanceSettings = CustomerBalanceCustomerBalanceSettings
  { -- | reconciliation_mode: The configuration for how funds that land in the customer cash balance are reconciled.
    customerBalanceCustomerBalanceSettingsReconciliationMode :: CustomerBalanceCustomerBalanceSettingsReconciliationMode'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CustomerBalanceCustomerBalanceSettings where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["reconciliation_mode" Data.Aeson.Types.ToJSON..= customerBalanceCustomerBalanceSettingsReconciliationMode obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["reconciliation_mode" Data.Aeson.Types.ToJSON..= customerBalanceCustomerBalanceSettingsReconciliationMode obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON CustomerBalanceCustomerBalanceSettings where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomerBalanceCustomerBalanceSettings" (\obj -> GHC.Base.pure CustomerBalanceCustomerBalanceSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reconciliation_mode"))

-- | Create a new 'CustomerBalanceCustomerBalanceSettings' with all required fields.
mkCustomerBalanceCustomerBalanceSettings ::
  -- | 'customerBalanceCustomerBalanceSettingsReconciliationMode'
  CustomerBalanceCustomerBalanceSettingsReconciliationMode' ->
  CustomerBalanceCustomerBalanceSettings
mkCustomerBalanceCustomerBalanceSettings customerBalanceCustomerBalanceSettingsReconciliationMode = CustomerBalanceCustomerBalanceSettings {customerBalanceCustomerBalanceSettingsReconciliationMode = customerBalanceCustomerBalanceSettingsReconciliationMode}

-- | Defines the enum schema located at @components.schemas.customer_balance_customer_balance_settings.properties.reconciliation_mode@ in the specification.
--
-- The configuration for how funds that land in the customer cash balance are reconciled.
data CustomerBalanceCustomerBalanceSettingsReconciliationMode'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CustomerBalanceCustomerBalanceSettingsReconciliationMode'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CustomerBalanceCustomerBalanceSettingsReconciliationMode'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    CustomerBalanceCustomerBalanceSettingsReconciliationMode'EnumAutomatic
  | -- | Represents the JSON value @"manual"@
    CustomerBalanceCustomerBalanceSettingsReconciliationMode'EnumManual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CustomerBalanceCustomerBalanceSettingsReconciliationMode' where
  toJSON (CustomerBalanceCustomerBalanceSettingsReconciliationMode'Other val) = val
  toJSON (CustomerBalanceCustomerBalanceSettingsReconciliationMode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CustomerBalanceCustomerBalanceSettingsReconciliationMode'EnumAutomatic) = "automatic"
  toJSON (CustomerBalanceCustomerBalanceSettingsReconciliationMode'EnumManual) = "manual"

instance Data.Aeson.Types.FromJSON.FromJSON CustomerBalanceCustomerBalanceSettingsReconciliationMode' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "automatic" -> CustomerBalanceCustomerBalanceSettingsReconciliationMode'EnumAutomatic
          | val GHC.Classes.== "manual" -> CustomerBalanceCustomerBalanceSettingsReconciliationMode'EnumManual
          | GHC.Base.otherwise -> CustomerBalanceCustomerBalanceSettingsReconciliationMode'Other val
      )
