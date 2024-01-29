{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SetupAttemptPaymentMethodDetailsSofort
module StripeAPI.Types.SetupAttemptPaymentMethodDetailsSofort where

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
import {-# SOURCE #-} StripeAPI.Types.Mandate
import {-# SOURCE #-} StripeAPI.Types.PaymentMethod
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.setup_attempt_payment_method_details_sofort@ in the specification.
data SetupAttemptPaymentMethodDetailsSofort = SetupAttemptPaymentMethodDetailsSofort
  { -- | bank_code: Bank code of bank associated with the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsSofortBankCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | bank_name: Name of the bank associated with the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsSofortBankName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | bic: Bank Identifier Code of the bank associated with the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsSofortBic :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | generated_sepa_debit: The ID of the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
    setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'NonNullableVariants)),
    -- | generated_sepa_debit_mandate: The mandate for the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
    setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'NonNullableVariants)),
    -- | iban_last4: Last four characters of the IBAN.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsSofortIbanLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | preferred_language: Preferred language of the Sofort authorization page that the customer is redirected to.
    -- Can be one of \`en\`, \`de\`, \`fr\`, or \`nl\`
    setupAttemptPaymentMethodDetailsSofortPreferredLanguage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullable)),
    -- | verified_name: Owner\'s verified full name. Values are verified or provided by Sofort directly
    -- (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsSofortVerifiedName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsSofort where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_code" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortBankCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bic" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortBic obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("generated_sepa_debit" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("generated_sepa_debit_mandate" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("iban_last4" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortIbanLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_language" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortPreferredLanguage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_name" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortVerifiedName obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_code" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortBankCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bic" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortBic obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("generated_sepa_debit" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("generated_sepa_debit_mandate" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("iban_last4" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortIbanLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_language" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortPreferredLanguage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_name" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofortVerifiedName obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsSofort where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupAttemptPaymentMethodDetailsSofort" (\obj -> (((((((GHC.Base.pure SetupAttemptPaymentMethodDetailsSofort GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "generated_sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "generated_sepa_debit_mandate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred_language")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verified_name"))

-- | Create a new 'SetupAttemptPaymentMethodDetailsSofort' with all required fields.
mkSetupAttemptPaymentMethodDetailsSofort :: SetupAttemptPaymentMethodDetailsSofort
mkSetupAttemptPaymentMethodDetailsSofort =
  SetupAttemptPaymentMethodDetailsSofort
    { setupAttemptPaymentMethodDetailsSofortBankCode = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortBankName = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortBic = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortIbanLast4 = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortPreferredLanguage = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsSofortVerifiedName = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.setup_attempt_payment_method_details_sofort.properties.generated_sepa_debit.anyOf@ in the specification.
--
-- The ID of the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
data SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'NonNullableVariants
  = SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'NonNullableText Data.Text.Internal.Text
  | SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'NonNullablePaymentMethod PaymentMethod
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'NonNullableVariants where
  toJSON (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'NonNullablePaymentMethod a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'NonNullableVariants where
  parseJSON val = case (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebit'NonNullablePaymentMethod Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.setup_attempt_payment_method_details_sofort.properties.generated_sepa_debit_mandate.anyOf@ in the specification.
--
-- The mandate for the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
data SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'NonNullableVariants
  = SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'NonNullableText Data.Text.Internal.Text
  | SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'NonNullableMandate Mandate
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'NonNullableVariants where
  toJSON (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'NonNullableMandate a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'NonNullableVariants where
  parseJSON val = case (SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SetupAttemptPaymentMethodDetailsSofortGeneratedSepaDebitMandate'NonNullableMandate Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.setup_attempt_payment_method_details_sofort.properties.preferred_language@ in the specification.
--
-- Preferred language of the Sofort authorization page that the customer is redirected to.
-- Can be one of \`en\`, \`de\`, \`fr\`, or \`nl\`
data SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"de"@
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumDe
  | -- | Represents the JSON value @"en"@
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumEn
  | -- | Represents the JSON value @"fr"@
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumFr
  | -- | Represents the JSON value @"nl"@
    SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumNl
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullable where
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableOther val) = val
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumDe) = "de"
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumEn) = "en"
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumFr) = "fr"
  toJSON (SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumNl) = "nl"

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "de" -> SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumDe
          | val GHC.Classes.== "en" -> SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumEn
          | val GHC.Classes.== "fr" -> SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumFr
          | val GHC.Classes.== "nl" -> SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableEnumNl
          | GHC.Base.otherwise -> SetupAttemptPaymentMethodDetailsSofortPreferredLanguage'NonNullableOther val
      )
