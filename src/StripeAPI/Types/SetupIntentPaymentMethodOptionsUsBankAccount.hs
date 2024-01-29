{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SetupIntentPaymentMethodOptionsUsBankAccount
module StripeAPI.Types.SetupIntentPaymentMethodOptionsUsBankAccount where

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
import {-# SOURCE #-} StripeAPI.Types.LinkedAccountOptionsUsBankAccount
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.setup_intent_payment_method_options_us_bank_account@ in the specification.
data SetupIntentPaymentMethodOptionsUsBankAccount = SetupIntentPaymentMethodOptionsUsBankAccount
  { -- | financial_connections:
    setupIntentPaymentMethodOptionsUsBankAccountFinancialConnections :: (GHC.Maybe.Maybe LinkedAccountOptionsUsBankAccount),
    -- | verification_method: Bank account verification method.
    setupIntentPaymentMethodOptionsUsBankAccountVerificationMethod :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsUsBankAccount where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_connections" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsUsBankAccountFinancialConnections obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsUsBankAccountVerificationMethod obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_connections" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsUsBankAccountFinancialConnections obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsUsBankAccountVerificationMethod obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsUsBankAccount where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptionsUsBankAccount" (\obj -> (GHC.Base.pure SetupIntentPaymentMethodOptionsUsBankAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_connections")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))

-- | Create a new 'SetupIntentPaymentMethodOptionsUsBankAccount' with all required fields.
mkSetupIntentPaymentMethodOptionsUsBankAccount :: SetupIntentPaymentMethodOptionsUsBankAccount
mkSetupIntentPaymentMethodOptionsUsBankAccount =
  SetupIntentPaymentMethodOptionsUsBankAccount
    { setupIntentPaymentMethodOptionsUsBankAccountFinancialConnections = GHC.Maybe.Nothing,
      setupIntentPaymentMethodOptionsUsBankAccountVerificationMethod = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options_us_bank_account.properties.verification_method@ in the specification.
--
-- Bank account verification method.
data SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumAutomatic
  | -- | Represents the JSON value @"instant"@
    SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumInstant
  | -- | Represents the JSON value @"microdeposits"@
    SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumMicrodeposits
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod' where
  toJSON (SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'Other val) = val
  toJSON (SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumAutomatic) = "automatic"
  toJSON (SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumInstant) = "instant"
  toJSON (SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumMicrodeposits) = "microdeposits"

instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "automatic" -> SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumAutomatic
          | val GHC.Classes.== "instant" -> SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumInstant
          | val GHC.Classes.== "microdeposits" -> SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'EnumMicrodeposits
          | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsUsBankAccountVerificationMethod'Other val
      )
