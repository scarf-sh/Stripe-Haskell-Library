-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodSepaDebit
module StripeAPI.Types.PaymentMethodSepaDebit where

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
import {-# SOURCE #-} StripeAPI.Types.Charge
import {-# SOURCE #-} StripeAPI.Types.SepaDebitGeneratedFrom
import {-# SOURCE #-} StripeAPI.Types.SetupAttempt

-- | Defines the object schema located at @components.schemas.payment_method_sepa_debit@ in the specification.
-- 
-- 
data PaymentMethodSepaDebit = PaymentMethodSepaDebit {
  -- | bank_code: Bank code of bank associated with the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodSepaDebitBankCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | branch_code: Branch code of bank associated with the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodSepaDebitBranchCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | country: Two-letter ISO code representing the country the bank account is located in.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodSepaDebitCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodSepaDebitFingerprint :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | generated_from: Information about the object that generated this PaymentMethod.
  , paymentMethodSepaDebitGeneratedFrom :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodSepaDebitGeneratedFrom'NonNullable))
  -- | last4: Last four characters of the IBAN.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodSepaDebitLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodSepaDebit
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitBankCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("branch_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitBranchCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("generated_from" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitGeneratedFrom obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitLast4 obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitBankCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("branch_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitBranchCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("generated_from" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitGeneratedFrom obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitLast4 obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodSepaDebit
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodSepaDebit" (\obj -> (((((GHC.Base.pure PaymentMethodSepaDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "branch_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "generated_from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last4"))}
-- | Create a new 'PaymentMethodSepaDebit' with all required fields.
mkPaymentMethodSepaDebit :: PaymentMethodSepaDebit
mkPaymentMethodSepaDebit = PaymentMethodSepaDebit{paymentMethodSepaDebitBankCode = GHC.Maybe.Nothing,
                                                  paymentMethodSepaDebitBranchCode = GHC.Maybe.Nothing,
                                                  paymentMethodSepaDebitCountry = GHC.Maybe.Nothing,
                                                  paymentMethodSepaDebitFingerprint = GHC.Maybe.Nothing,
                                                  paymentMethodSepaDebitGeneratedFrom = GHC.Maybe.Nothing,
                                                  paymentMethodSepaDebitLast4 = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.payment_method_sepa_debit.properties.generated_from.anyOf@ in the specification.
-- 
-- Information about the object that generated this PaymentMethod.
data PaymentMethodSepaDebitGeneratedFrom'NonNullable = PaymentMethodSepaDebitGeneratedFrom'NonNullable {
  -- | charge: The ID of the Charge that generated this PaymentMethod, if any.
  paymentMethodSepaDebitGeneratedFrom'NonNullableCharge :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodSepaDebitGeneratedFrom'NonNullableCharge'NonNullableVariants))
  -- | setup_attempt: The ID of the SetupAttempt that generated this PaymentMethod, if any.
  , paymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt'NonNullableVariants))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodSepaDebitGeneratedFrom'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitGeneratedFrom'NonNullableCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_attempt" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitGeneratedFrom'NonNullableCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_attempt" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodSepaDebitGeneratedFrom'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodSepaDebitGeneratedFrom'NonNullable" (\obj -> (GHC.Base.pure PaymentMethodSepaDebitGeneratedFrom'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_attempt"))}
-- | Create a new 'PaymentMethodSepaDebitGeneratedFrom'NonNullable' with all required fields.
mkPaymentMethodSepaDebitGeneratedFrom'NonNullable :: PaymentMethodSepaDebitGeneratedFrom'NonNullable
mkPaymentMethodSepaDebitGeneratedFrom'NonNullable = PaymentMethodSepaDebitGeneratedFrom'NonNullable{paymentMethodSepaDebitGeneratedFrom'NonNullableCharge = GHC.Maybe.Nothing,
                                                                                                    paymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.payment_method_sepa_debit.properties.generated_from.anyOf.properties.charge.anyOf@ in the specification.
-- 
-- The ID of the Charge that generated this PaymentMethod, if any.
data PaymentMethodSepaDebitGeneratedFrom'NonNullableCharge'NonNullableVariants =
   PaymentMethodSepaDebitGeneratedFrom'NonNullableCharge'NonNullableText Data.Text.Internal.Text
  | PaymentMethodSepaDebitGeneratedFrom'NonNullableCharge'NonNullableCharge Charge
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodSepaDebitGeneratedFrom'NonNullableCharge'NonNullableVariants
    where {toJSON (PaymentMethodSepaDebitGeneratedFrom'NonNullableCharge'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PaymentMethodSepaDebitGeneratedFrom'NonNullableCharge'NonNullableCharge a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodSepaDebitGeneratedFrom'NonNullableCharge'NonNullableVariants
    where {parseJSON val = case (PaymentMethodSepaDebitGeneratedFrom'NonNullableCharge'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PaymentMethodSepaDebitGeneratedFrom'NonNullableCharge'NonNullableCharge Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.payment_method_sepa_debit.properties.generated_from.anyOf.properties.setup_attempt.anyOf@ in the specification.
-- 
-- The ID of the SetupAttempt that generated this PaymentMethod, if any.
data PaymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt'NonNullableVariants =
   PaymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt'NonNullableText Data.Text.Internal.Text
  | PaymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt'NonNullableSetupAttempt SetupAttempt
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt'NonNullableVariants
    where {toJSON (PaymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PaymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt'NonNullableSetupAttempt a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt'NonNullableVariants
    where {parseJSON val = case (PaymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PaymentMethodSepaDebitGeneratedFrom'NonNullableSetupAttempt'NonNullableSetupAttempt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
