-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentIntentNextActionDisplayBankTransferInstructions
module StripeAPI.Types.PaymentIntentNextActionDisplayBankTransferInstructions where

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
import {-# SOURCE #-} StripeAPI.Types.FundingInstructionsBankTransferFinancialAddress

-- | Defines the object schema located at @components.schemas.payment_intent_next_action_display_bank_transfer_instructions@ in the specification.
-- 
-- 
data PaymentIntentNextActionDisplayBankTransferInstructions = PaymentIntentNextActionDisplayBankTransferInstructions {
  -- | amount_remaining: The remaining amount that needs to be transferred to complete the payment.
  paymentIntentNextActionDisplayBankTransferInstructionsAmountRemaining :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , paymentIntentNextActionDisplayBankTransferInstructionsCurrency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | financial_addresses: A list of financial addresses that can be used to fund the customer balance
  , paymentIntentNextActionDisplayBankTransferInstructionsFinancialAddresses :: (GHC.Maybe.Maybe ([FundingInstructionsBankTransferFinancialAddress]))
  -- | hosted_instructions_url: A link to a hosted page that guides your customer through completing the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentIntentNextActionDisplayBankTransferInstructionsHostedInstructionsUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | reference: A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentIntentNextActionDisplayBankTransferInstructionsReference :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | type: Type of bank transfer
  , paymentIntentNextActionDisplayBankTransferInstructionsType :: PaymentIntentNextActionDisplayBankTransferInstructionsType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentNextActionDisplayBankTransferInstructions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_remaining" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructionsAmountRemaining obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructionsCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_addresses" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructionsFinancialAddresses obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_instructions_url" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructionsHostedInstructionsUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructionsReference obj) : ["type" Data.Aeson.Types.ToJSON..= paymentIntentNextActionDisplayBankTransferInstructionsType obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_remaining" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructionsAmountRemaining obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructionsCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_addresses" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructionsFinancialAddresses obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_instructions_url" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructionsHostedInstructionsUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionDisplayBankTransferInstructionsReference obj) : ["type" Data.Aeson.Types.ToJSON..= paymentIntentNextActionDisplayBankTransferInstructionsType obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionDisplayBankTransferInstructions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionDisplayBankTransferInstructions" (\obj -> (((((GHC.Base.pure PaymentIntentNextActionDisplayBankTransferInstructions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_remaining")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_addresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hosted_instructions_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))}
-- | Create a new 'PaymentIntentNextActionDisplayBankTransferInstructions' with all required fields.
mkPaymentIntentNextActionDisplayBankTransferInstructions :: PaymentIntentNextActionDisplayBankTransferInstructionsType' -- ^ 'paymentIntentNextActionDisplayBankTransferInstructionsType'
  -> PaymentIntentNextActionDisplayBankTransferInstructions
mkPaymentIntentNextActionDisplayBankTransferInstructions paymentIntentNextActionDisplayBankTransferInstructionsType = PaymentIntentNextActionDisplayBankTransferInstructions{paymentIntentNextActionDisplayBankTransferInstructionsAmountRemaining = GHC.Maybe.Nothing,
                                                                                                                                                                             paymentIntentNextActionDisplayBankTransferInstructionsCurrency = GHC.Maybe.Nothing,
                                                                                                                                                                             paymentIntentNextActionDisplayBankTransferInstructionsFinancialAddresses = GHC.Maybe.Nothing,
                                                                                                                                                                             paymentIntentNextActionDisplayBankTransferInstructionsHostedInstructionsUrl = GHC.Maybe.Nothing,
                                                                                                                                                                             paymentIntentNextActionDisplayBankTransferInstructionsReference = GHC.Maybe.Nothing,
                                                                                                                                                                             paymentIntentNextActionDisplayBankTransferInstructionsType = paymentIntentNextActionDisplayBankTransferInstructionsType}
-- | Defines the enum schema located at @components.schemas.payment_intent_next_action_display_bank_transfer_instructions.properties.type@ in the specification.
-- 
-- Type of bank transfer
data PaymentIntentNextActionDisplayBankTransferInstructionsType' =
   PaymentIntentNextActionDisplayBankTransferInstructionsType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentIntentNextActionDisplayBankTransferInstructionsType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumEuBankTransfer -- ^ Represents the JSON value @"eu_bank_transfer"@
  | PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumGbBankTransfer -- ^ Represents the JSON value @"gb_bank_transfer"@
  | PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumJpBankTransfer -- ^ Represents the JSON value @"jp_bank_transfer"@
  | PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumMxBankTransfer -- ^ Represents the JSON value @"mx_bank_transfer"@
  | PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumUsBankTransfer -- ^ Represents the JSON value @"us_bank_transfer"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentNextActionDisplayBankTransferInstructionsType'
    where {toJSON (PaymentIntentNextActionDisplayBankTransferInstructionsType'Other val) = val;
           toJSON (PaymentIntentNextActionDisplayBankTransferInstructionsType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumEuBankTransfer) = "eu_bank_transfer";
           toJSON (PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumGbBankTransfer) = "gb_bank_transfer";
           toJSON (PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumJpBankTransfer) = "jp_bank_transfer";
           toJSON (PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumMxBankTransfer) = "mx_bank_transfer";
           toJSON (PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumUsBankTransfer) = "us_bank_transfer"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionDisplayBankTransferInstructionsType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "eu_bank_transfer" -> PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumEuBankTransfer
                                             | val GHC.Classes.== "gb_bank_transfer" -> PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumGbBankTransfer
                                             | val GHC.Classes.== "jp_bank_transfer" -> PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumJpBankTransfer
                                             | val GHC.Classes.== "mx_bank_transfer" -> PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumMxBankTransfer
                                             | val GHC.Classes.== "us_bank_transfer" -> PaymentIntentNextActionDisplayBankTransferInstructionsType'EnumUsBankTransfer
                                             | GHC.Base.otherwise -> PaymentIntentNextActionDisplayBankTransferInstructionsType'Other val)}
