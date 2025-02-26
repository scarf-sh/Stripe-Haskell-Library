-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SetupIntentPaymentMethodOptionsAcssDebit
module StripeAPI.Types.SetupIntentPaymentMethodOptionsAcssDebit where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
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
import {-# SOURCE #-} StripeAPI.Types.SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit

-- | Defines the object schema located at @components.schemas.setup_intent_payment_method_options_acss_debit@ in the specification.
-- 
-- 
data SetupIntentPaymentMethodOptionsAcssDebit = SetupIntentPaymentMethodOptionsAcssDebit {
  -- | currency: Currency supported by the bank account
  setupIntentPaymentMethodOptionsAcssDebitCurrency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullable))
  -- | mandate_options: 
  , setupIntentPaymentMethodOptionsAcssDebitMandateOptions :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit)
  -- | verification_method: Bank account verification method.
  , setupIntentPaymentMethodOptionsAcssDebitVerificationMethod :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsAcssDebit
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebitCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebitMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebitVerificationMethod obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebitCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebitMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebitVerificationMethod obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsAcssDebit
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptionsAcssDebit" (\obj -> ((GHC.Base.pure SetupIntentPaymentMethodOptionsAcssDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mandate_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))}
-- | Create a new 'SetupIntentPaymentMethodOptionsAcssDebit' with all required fields.
mkSetupIntentPaymentMethodOptionsAcssDebit :: SetupIntentPaymentMethodOptionsAcssDebit
mkSetupIntentPaymentMethodOptionsAcssDebit = SetupIntentPaymentMethodOptionsAcssDebit{setupIntentPaymentMethodOptionsAcssDebitCurrency = GHC.Maybe.Nothing,
                                                                                      setupIntentPaymentMethodOptionsAcssDebitMandateOptions = GHC.Maybe.Nothing,
                                                                                      setupIntentPaymentMethodOptionsAcssDebitVerificationMethod = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options_acss_debit.properties.currency@ in the specification.
-- 
-- Currency supported by the bank account
data SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullable =
   SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableEnumCad -- ^ Represents the JSON value @"cad"@
  | SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableEnumUsd -- ^ Represents the JSON value @"usd"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullable
    where {toJSON (SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableOther val) = val;
           toJSON (SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableEnumCad) = "cad";
           toJSON (SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableEnumUsd) = "usd"}
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "cad" -> SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableEnumCad
                                             | val GHC.Classes.== "usd" -> SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableEnumUsd
                                             | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsAcssDebitCurrency'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options_acss_debit.properties.verification_method@ in the specification.
-- 
-- Bank account verification method.
data SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod' =
   SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumAutomatic -- ^ Represents the JSON value @"automatic"@
  | SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumInstant -- ^ Represents the JSON value @"instant"@
  | SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumMicrodeposits -- ^ Represents the JSON value @"microdeposits"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'
    where {toJSON (SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'Other val) = val;
           toJSON (SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumAutomatic) = "automatic";
           toJSON (SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumInstant) = "instant";
           toJSON (SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumMicrodeposits) = "microdeposits"}
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "automatic" -> SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumAutomatic
                                             | val GHC.Classes.== "instant" -> SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumInstant
                                             | val GHC.Classes.== "microdeposits" -> SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumMicrodeposits
                                             | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsAcssDebitVerificationMethod'Other val)}
