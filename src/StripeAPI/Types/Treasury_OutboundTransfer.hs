-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Treasury_OutboundTransfer
module StripeAPI.Types.Treasury_OutboundTransfer where

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
import {-# SOURCE #-} StripeAPI.Types.OutboundTransfersPaymentMethodDetails
import {-# SOURCE #-} StripeAPI.Types.TreasuryOutboundTransfersResourceReturnedDetails
import {-# SOURCE #-} StripeAPI.Types.TreasuryOutboundTransfersResourceStatusTransitions
import {-# SOURCE #-} StripeAPI.Types.Treasury_Transaction

-- | Defines the object schema located at @components.schemas.treasury.outbound_transfer@ in the specification.
-- 
-- Use OutboundTransfers to transfer funds from a [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https:\/\/stripe.com\/docs\/api\#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user\'s own external bank account.
-- 
-- Simulate OutboundTransfer state changes with the \`\/v1\/test_helpers\/treasury\/outbound_transfers\` endpoints. These methods can only be called on test mode objects.
data Treasury'outboundTransfer = Treasury'outboundTransfer {
  -- | amount: Amount (in cents) transferred.
  treasury'outboundTransferAmount :: GHC.Types.Int
  -- | cancelable: Returns \`true\` if the object can be canceled, and \`false\` otherwise.
  , treasury'outboundTransferCancelable :: GHC.Types.Bool
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , treasury'outboundTransferCreated :: GHC.Types.Int
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , treasury'outboundTransferCurrency :: Data.Text.Internal.Text
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasury'outboundTransferDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | destination_payment_method: The PaymentMethod used as the payment instrument for an OutboundTransfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasury'outboundTransferDestinationPaymentMethod :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | destination_payment_method_details: 
  , treasury'outboundTransferDestinationPaymentMethodDetails :: OutboundTransfersPaymentMethodDetails
  -- | expected_arrival_date: The date when funds are expected to arrive in the destination account.
  , treasury'outboundTransferExpectedArrivalDate :: GHC.Types.Int
  -- | financial_account: The FinancialAccount that funds were pulled from.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasury'outboundTransferFinancialAccount :: Data.Text.Internal.Text
  -- | hosted_regulatory_receipt_url: A [hosted transaction receipt](https:\/\/stripe.com\/docs\/treasury\/moving-money\/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe\'s money transmission licenses.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasury'outboundTransferHostedRegulatoryReceiptUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasury'outboundTransferId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , treasury'outboundTransferLivemode :: GHC.Types.Bool
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , treasury'outboundTransferMetadata :: Data.Aeson.Types.Internal.Object
  -- | returned_details: Details about a returned OutboundTransfer. Only set when the status is \`returned\`.
  , treasury'outboundTransferReturnedDetails :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Treasury'outboundTransferReturnedDetails'NonNullable))
  -- | statement_descriptor: Information about the OutboundTransfer to be sent to the recipient account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasury'outboundTransferStatementDescriptor :: Data.Text.Internal.Text
  -- | status: Current status of the OutboundTransfer: \`processing\`, \`failed\`, \`canceled\`, \`posted\`, \`returned\`. An OutboundTransfer is \`processing\` if it has been created and is pending. The status changes to \`posted\` once the OutboundTransfer has been \"confirmed\" and funds have left the account, or to \`failed\` or \`canceled\`. If an OutboundTransfer fails to arrive at its destination, its status will change to \`returned\`.
  , treasury'outboundTransferStatus :: Treasury'outboundTransferStatus'
  -- | status_transitions: 
  , treasury'outboundTransferStatusTransitions :: TreasuryOutboundTransfersResourceStatusTransitions
  -- | transaction: The Transaction associated with this object.
  , treasury'outboundTransferTransaction :: Treasury'outboundTransferTransaction'Variants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Treasury'outboundTransfer
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= treasury'outboundTransferAmount obj] : ["cancelable" Data.Aeson.Types.ToJSON..= treasury'outboundTransferCancelable obj] : ["created" Data.Aeson.Types.ToJSON..= treasury'outboundTransferCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= treasury'outboundTransferCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("destination_payment_method" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferDestinationPaymentMethod obj) : ["destination_payment_method_details" Data.Aeson.Types.ToJSON..= treasury'outboundTransferDestinationPaymentMethodDetails obj] : ["expected_arrival_date" Data.Aeson.Types.ToJSON..= treasury'outboundTransferExpectedArrivalDate obj] : ["financial_account" Data.Aeson.Types.ToJSON..= treasury'outboundTransferFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_regulatory_receipt_url" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferHostedRegulatoryReceiptUrl obj) : ["id" Data.Aeson.Types.ToJSON..= treasury'outboundTransferId obj] : ["livemode" Data.Aeson.Types.ToJSON..= treasury'outboundTransferLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= treasury'outboundTransferMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("returned_details" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferReturnedDetails obj) : ["statement_descriptor" Data.Aeson.Types.ToJSON..= treasury'outboundTransferStatementDescriptor obj] : ["status" Data.Aeson.Types.ToJSON..= treasury'outboundTransferStatus obj] : ["status_transitions" Data.Aeson.Types.ToJSON..= treasury'outboundTransferStatusTransitions obj] : ["transaction" Data.Aeson.Types.ToJSON..= treasury'outboundTransferTransaction obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "treasury.outbound_transfer"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= treasury'outboundTransferAmount obj] : ["cancelable" Data.Aeson.Types.ToJSON..= treasury'outboundTransferCancelable obj] : ["created" Data.Aeson.Types.ToJSON..= treasury'outboundTransferCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= treasury'outboundTransferCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("destination_payment_method" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferDestinationPaymentMethod obj) : ["destination_payment_method_details" Data.Aeson.Types.ToJSON..= treasury'outboundTransferDestinationPaymentMethodDetails obj] : ["expected_arrival_date" Data.Aeson.Types.ToJSON..= treasury'outboundTransferExpectedArrivalDate obj] : ["financial_account" Data.Aeson.Types.ToJSON..= treasury'outboundTransferFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_regulatory_receipt_url" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferHostedRegulatoryReceiptUrl obj) : ["id" Data.Aeson.Types.ToJSON..= treasury'outboundTransferId obj] : ["livemode" Data.Aeson.Types.ToJSON..= treasury'outboundTransferLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= treasury'outboundTransferMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("returned_details" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferReturnedDetails obj) : ["statement_descriptor" Data.Aeson.Types.ToJSON..= treasury'outboundTransferStatementDescriptor obj] : ["status" Data.Aeson.Types.ToJSON..= treasury'outboundTransferStatus obj] : ["status_transitions" Data.Aeson.Types.ToJSON..= treasury'outboundTransferStatusTransitions obj] : ["transaction" Data.Aeson.Types.ToJSON..= treasury'outboundTransferTransaction obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "treasury.outbound_transfer"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Treasury'outboundTransfer
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Treasury'outboundTransfer" (\obj -> (((((((((((((((((GHC.Base.pure Treasury'outboundTransfer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cancelable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "destination_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination_payment_method_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expected_arrival_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "financial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hosted_regulatory_receipt_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "returned_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_transitions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction"))}
-- | Create a new 'Treasury'outboundTransfer' with all required fields.
mkTreasury'outboundTransfer :: GHC.Types.Int -- ^ 'treasury'outboundTransferAmount'
  -> GHC.Types.Bool -- ^ 'treasury'outboundTransferCancelable'
  -> GHC.Types.Int -- ^ 'treasury'outboundTransferCreated'
  -> Data.Text.Internal.Text -- ^ 'treasury'outboundTransferCurrency'
  -> OutboundTransfersPaymentMethodDetails -- ^ 'treasury'outboundTransferDestinationPaymentMethodDetails'
  -> GHC.Types.Int -- ^ 'treasury'outboundTransferExpectedArrivalDate'
  -> Data.Text.Internal.Text -- ^ 'treasury'outboundTransferFinancialAccount'
  -> Data.Text.Internal.Text -- ^ 'treasury'outboundTransferId'
  -> GHC.Types.Bool -- ^ 'treasury'outboundTransferLivemode'
  -> Data.Aeson.Types.Internal.Object -- ^ 'treasury'outboundTransferMetadata'
  -> Data.Text.Internal.Text -- ^ 'treasury'outboundTransferStatementDescriptor'
  -> Treasury'outboundTransferStatus' -- ^ 'treasury'outboundTransferStatus'
  -> TreasuryOutboundTransfersResourceStatusTransitions -- ^ 'treasury'outboundTransferStatusTransitions'
  -> Treasury'outboundTransferTransaction'Variants -- ^ 'treasury'outboundTransferTransaction'
  -> Treasury'outboundTransfer
mkTreasury'outboundTransfer treasury'outboundTransferAmount treasury'outboundTransferCancelable treasury'outboundTransferCreated treasury'outboundTransferCurrency treasury'outboundTransferDestinationPaymentMethodDetails treasury'outboundTransferExpectedArrivalDate treasury'outboundTransferFinancialAccount treasury'outboundTransferId treasury'outboundTransferLivemode treasury'outboundTransferMetadata treasury'outboundTransferStatementDescriptor treasury'outboundTransferStatus treasury'outboundTransferStatusTransitions treasury'outboundTransferTransaction = Treasury'outboundTransfer{treasury'outboundTransferAmount = treasury'outboundTransferAmount,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferCancelable = treasury'outboundTransferCancelable,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferCreated = treasury'outboundTransferCreated,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferCurrency = treasury'outboundTransferCurrency,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferDescription = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferDestinationPaymentMethod = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferDestinationPaymentMethodDetails = treasury'outboundTransferDestinationPaymentMethodDetails,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferExpectedArrivalDate = treasury'outboundTransferExpectedArrivalDate,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferFinancialAccount = treasury'outboundTransferFinancialAccount,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferHostedRegulatoryReceiptUrl = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferId = treasury'outboundTransferId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferLivemode = treasury'outboundTransferLivemode,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferMetadata = treasury'outboundTransferMetadata,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferReturnedDetails = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferStatementDescriptor = treasury'outboundTransferStatementDescriptor,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferStatus = treasury'outboundTransferStatus,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferStatusTransitions = treasury'outboundTransferStatusTransitions,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            treasury'outboundTransferTransaction = treasury'outboundTransferTransaction}
-- | Defines the object schema located at @components.schemas.treasury.outbound_transfer.properties.returned_details.anyOf@ in the specification.
-- 
-- Details about a returned OutboundTransfer. Only set when the status is \\\`returned\\\`.
data Treasury'outboundTransferReturnedDetails'NonNullable = Treasury'outboundTransferReturnedDetails'NonNullable {
  -- | code: Reason for the return.
  treasury'outboundTransferReturnedDetails'NonNullableCode :: (GHC.Maybe.Maybe Treasury'outboundTransferReturnedDetails'NonNullableCode')
  -- | transaction: The Transaction associated with this object.
  , treasury'outboundTransferReturnedDetails'NonNullableTransaction :: (GHC.Maybe.Maybe Treasury'outboundTransferReturnedDetails'NonNullableTransaction'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Treasury'outboundTransferReturnedDetails'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferReturnedDetails'NonNullableCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferReturnedDetails'NonNullableTransaction obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferReturnedDetails'NonNullableCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction" Data.Aeson.Types.ToJSON..=)) (treasury'outboundTransferReturnedDetails'NonNullableTransaction obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Treasury'outboundTransferReturnedDetails'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Treasury'outboundTransferReturnedDetails'NonNullable" (\obj -> (GHC.Base.pure Treasury'outboundTransferReturnedDetails'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction"))}
-- | Create a new 'Treasury'outboundTransferReturnedDetails'NonNullable' with all required fields.
mkTreasury'outboundTransferReturnedDetails'NonNullable :: Treasury'outboundTransferReturnedDetails'NonNullable
mkTreasury'outboundTransferReturnedDetails'NonNullable = Treasury'outboundTransferReturnedDetails'NonNullable{treasury'outboundTransferReturnedDetails'NonNullableCode = GHC.Maybe.Nothing,
                                                                                                              treasury'outboundTransferReturnedDetails'NonNullableTransaction = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.treasury.outbound_transfer.properties.returned_details.anyOf.properties.code@ in the specification.
-- 
-- Reason for the return.
data Treasury'outboundTransferReturnedDetails'NonNullableCode' =
   Treasury'outboundTransferReturnedDetails'NonNullableCode'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumAccountClosed -- ^ Represents the JSON value @"account_closed"@
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumAccountFrozen -- ^ Represents the JSON value @"account_frozen"@
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumBankAccountRestricted -- ^ Represents the JSON value @"bank_account_restricted"@
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumBankOwnershipChanged -- ^ Represents the JSON value @"bank_ownership_changed"@
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumDeclined -- ^ Represents the JSON value @"declined"@
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumIncorrectAccountHolderName -- ^ Represents the JSON value @"incorrect_account_holder_name"@
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumInvalidAccountNumber -- ^ Represents the JSON value @"invalid_account_number"@
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumInvalidCurrency -- ^ Represents the JSON value @"invalid_currency"@
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumNoAccount -- ^ Represents the JSON value @"no_account"@
  | Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumOther -- ^ Represents the JSON value @"other"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Treasury'outboundTransferReturnedDetails'NonNullableCode'
    where {toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'Other val) = val;
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumAccountClosed) = "account_closed";
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumAccountFrozen) = "account_frozen";
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumBankAccountRestricted) = "bank_account_restricted";
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumBankOwnershipChanged) = "bank_ownership_changed";
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumDeclined) = "declined";
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumIncorrectAccountHolderName) = "incorrect_account_holder_name";
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumInvalidAccountNumber) = "invalid_account_number";
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumInvalidCurrency) = "invalid_currency";
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumNoAccount) = "no_account";
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumOther) = "other"}
instance Data.Aeson.Types.FromJSON.FromJSON Treasury'outboundTransferReturnedDetails'NonNullableCode'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "account_closed" -> Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumAccountClosed
                                             | val GHC.Classes.== "account_frozen" -> Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumAccountFrozen
                                             | val GHC.Classes.== "bank_account_restricted" -> Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumBankAccountRestricted
                                             | val GHC.Classes.== "bank_ownership_changed" -> Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumBankOwnershipChanged
                                             | val GHC.Classes.== "declined" -> Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumDeclined
                                             | val GHC.Classes.== "incorrect_account_holder_name" -> Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumIncorrectAccountHolderName
                                             | val GHC.Classes.== "invalid_account_number" -> Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumInvalidAccountNumber
                                             | val GHC.Classes.== "invalid_currency" -> Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumInvalidCurrency
                                             | val GHC.Classes.== "no_account" -> Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumNoAccount
                                             | val GHC.Classes.== "other" -> Treasury'outboundTransferReturnedDetails'NonNullableCode'EnumOther
                                             | GHC.Base.otherwise -> Treasury'outboundTransferReturnedDetails'NonNullableCode'Other val)}
-- | Defines the oneOf schema located at @components.schemas.treasury.outbound_transfer.properties.returned_details.anyOf.properties.transaction.anyOf@ in the specification.
-- 
-- The Transaction associated with this object.
data Treasury'outboundTransferReturnedDetails'NonNullableTransaction'Variants =
   Treasury'outboundTransferReturnedDetails'NonNullableTransaction'Text Data.Text.Internal.Text
  | Treasury'outboundTransferReturnedDetails'NonNullableTransaction'Treasury'transaction Treasury'transaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Treasury'outboundTransferReturnedDetails'NonNullableTransaction'Variants
    where {toJSON (Treasury'outboundTransferReturnedDetails'NonNullableTransaction'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (Treasury'outboundTransferReturnedDetails'NonNullableTransaction'Treasury'transaction a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON Treasury'outboundTransferReturnedDetails'NonNullableTransaction'Variants
    where {parseJSON val = case (Treasury'outboundTransferReturnedDetails'NonNullableTransaction'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((Treasury'outboundTransferReturnedDetails'NonNullableTransaction'Treasury'transaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.treasury.outbound_transfer.properties.status@ in the specification.
-- 
-- Current status of the OutboundTransfer: \`processing\`, \`failed\`, \`canceled\`, \`posted\`, \`returned\`. An OutboundTransfer is \`processing\` if it has been created and is pending. The status changes to \`posted\` once the OutboundTransfer has been \"confirmed\" and funds have left the account, or to \`failed\` or \`canceled\`. If an OutboundTransfer fails to arrive at its destination, its status will change to \`returned\`.
data Treasury'outboundTransferStatus' =
   Treasury'outboundTransferStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Treasury'outboundTransferStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Treasury'outboundTransferStatus'EnumCanceled -- ^ Represents the JSON value @"canceled"@
  | Treasury'outboundTransferStatus'EnumFailed -- ^ Represents the JSON value @"failed"@
  | Treasury'outboundTransferStatus'EnumPosted -- ^ Represents the JSON value @"posted"@
  | Treasury'outboundTransferStatus'EnumProcessing -- ^ Represents the JSON value @"processing"@
  | Treasury'outboundTransferStatus'EnumReturned -- ^ Represents the JSON value @"returned"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Treasury'outboundTransferStatus'
    where {toJSON (Treasury'outboundTransferStatus'Other val) = val;
           toJSON (Treasury'outboundTransferStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (Treasury'outboundTransferStatus'EnumCanceled) = "canceled";
           toJSON (Treasury'outboundTransferStatus'EnumFailed) = "failed";
           toJSON (Treasury'outboundTransferStatus'EnumPosted) = "posted";
           toJSON (Treasury'outboundTransferStatus'EnumProcessing) = "processing";
           toJSON (Treasury'outboundTransferStatus'EnumReturned) = "returned"}
instance Data.Aeson.Types.FromJSON.FromJSON Treasury'outboundTransferStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "canceled" -> Treasury'outboundTransferStatus'EnumCanceled
                                             | val GHC.Classes.== "failed" -> Treasury'outboundTransferStatus'EnumFailed
                                             | val GHC.Classes.== "posted" -> Treasury'outboundTransferStatus'EnumPosted
                                             | val GHC.Classes.== "processing" -> Treasury'outboundTransferStatus'EnumProcessing
                                             | val GHC.Classes.== "returned" -> Treasury'outboundTransferStatus'EnumReturned
                                             | GHC.Base.otherwise -> Treasury'outboundTransferStatus'Other val)}
-- | Defines the oneOf schema located at @components.schemas.treasury.outbound_transfer.properties.transaction.anyOf@ in the specification.
-- 
-- The Transaction associated with this object.
data Treasury'outboundTransferTransaction'Variants =
   Treasury'outboundTransferTransaction'Text Data.Text.Internal.Text
  | Treasury'outboundTransferTransaction'Treasury'transaction Treasury'transaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Treasury'outboundTransferTransaction'Variants
    where {toJSON (Treasury'outboundTransferTransaction'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (Treasury'outboundTransferTransaction'Treasury'transaction a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON Treasury'outboundTransferTransaction'Variants
    where {parseJSON val = case (Treasury'outboundTransferTransaction'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((Treasury'outboundTransferTransaction'Treasury'transaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
