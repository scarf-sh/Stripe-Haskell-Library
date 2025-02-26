-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Dispute
module StripeAPI.Types.Dispute where

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
import {-# SOURCE #-} StripeAPI.Types.BalanceTransaction
import {-# SOURCE #-} StripeAPI.Types.Charge
import {-# SOURCE #-} StripeAPI.Types.DisputeEvidence
import {-# SOURCE #-} StripeAPI.Types.DisputeEvidenceDetails
import {-# SOURCE #-} StripeAPI.Types.DisputePaymentMethodDetails
import {-# SOURCE #-} StripeAPI.Types.PaymentIntent

-- | Defines the object schema located at @components.schemas.dispute@ in the specification.
-- 
-- A dispute occurs when a customer questions your charge with their card issuer.
-- When this happens, you have the opportunity to respond to the dispute with
-- evidence that shows that the charge is legitimate.
-- 
-- Related guide: [Disputes and fraud](https:\/\/stripe.com\/docs\/disputes)
data Dispute = Dispute {
  -- | amount: Disputed amount. Usually the amount of the charge, but it can differ (usually because of currency fluctuation or because only part of the order is disputed).
  disputeAmount :: GHC.Types.Int
  -- | balance_transactions: List of zero, one, or two balance transactions that show funds withdrawn and reinstated to your Stripe account as a result of this dispute.
  , disputeBalanceTransactions :: ([BalanceTransaction])
  -- | charge: ID of the charge that\'s disputed.
  , disputeCharge :: DisputeCharge'Variants
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , disputeCreated :: GHC.Types.Int
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , disputeCurrency :: Data.Text.Internal.Text
  -- | evidence: 
  , disputeEvidence :: DisputeEvidence
  -- | evidence_details: 
  , disputeEvidenceDetails :: DisputeEvidenceDetails
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , disputeId :: Data.Text.Internal.Text
  -- | is_charge_refundable: If true, it\'s still possible to refund the disputed payment. After the payment has been fully refunded, no further funds are withdrawn from your Stripe account as a result of this dispute.
  , disputeIsChargeRefundable :: GHC.Types.Bool
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , disputeLivemode :: GHC.Types.Bool
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , disputeMetadata :: Data.Aeson.Types.Internal.Object
  -- | payment_intent: ID of the PaymentIntent that\'s disputed.
  , disputePaymentIntent :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable DisputePaymentIntent'NonNullableVariants))
  -- | payment_method_details: 
  , disputePaymentMethodDetails :: (GHC.Maybe.Maybe DisputePaymentMethodDetails)
  -- | reason: Reason given by cardholder for dispute. Possible values are \`bank_cannot_process\`, \`check_returned\`, \`credit_not_processed\`, \`customer_initiated\`, \`debit_not_authorized\`, \`duplicate\`, \`fraudulent\`, \`general\`, \`incorrect_account_details\`, \`insufficient_funds\`, \`product_not_received\`, \`product_unacceptable\`, \`subscription_canceled\`, or \`unrecognized\`. Learn more about [dispute reasons](https:\/\/stripe.com\/docs\/disputes\/categories).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , disputeReason :: Data.Text.Internal.Text
  -- | status: Current status of dispute. Possible values are \`warning_needs_response\`, \`warning_under_review\`, \`warning_closed\`, \`needs_response\`, \`under_review\`, \`won\`, or \`lost\`.
  , disputeStatus :: DisputeStatus'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Dispute
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= disputeAmount obj] : ["balance_transactions" Data.Aeson.Types.ToJSON..= disputeBalanceTransactions obj] : ["charge" Data.Aeson.Types.ToJSON..= disputeCharge obj] : ["created" Data.Aeson.Types.ToJSON..= disputeCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= disputeCurrency obj] : ["evidence" Data.Aeson.Types.ToJSON..= disputeEvidence obj] : ["evidence_details" Data.Aeson.Types.ToJSON..= disputeEvidenceDetails obj] : ["id" Data.Aeson.Types.ToJSON..= disputeId obj] : ["is_charge_refundable" Data.Aeson.Types.ToJSON..= disputeIsChargeRefundable obj] : ["livemode" Data.Aeson.Types.ToJSON..= disputeLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= disputeMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_intent" Data.Aeson.Types.ToJSON..=)) (disputePaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_details" Data.Aeson.Types.ToJSON..=)) (disputePaymentMethodDetails obj) : ["reason" Data.Aeson.Types.ToJSON..= disputeReason obj] : ["status" Data.Aeson.Types.ToJSON..= disputeStatus obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "dispute"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= disputeAmount obj] : ["balance_transactions" Data.Aeson.Types.ToJSON..= disputeBalanceTransactions obj] : ["charge" Data.Aeson.Types.ToJSON..= disputeCharge obj] : ["created" Data.Aeson.Types.ToJSON..= disputeCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= disputeCurrency obj] : ["evidence" Data.Aeson.Types.ToJSON..= disputeEvidence obj] : ["evidence_details" Data.Aeson.Types.ToJSON..= disputeEvidenceDetails obj] : ["id" Data.Aeson.Types.ToJSON..= disputeId obj] : ["is_charge_refundable" Data.Aeson.Types.ToJSON..= disputeIsChargeRefundable obj] : ["livemode" Data.Aeson.Types.ToJSON..= disputeLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= disputeMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_intent" Data.Aeson.Types.ToJSON..=)) (disputePaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_details" Data.Aeson.Types.ToJSON..=)) (disputePaymentMethodDetails obj) : ["reason" Data.Aeson.Types.ToJSON..= disputeReason obj] : ["status" Data.Aeson.Types.ToJSON..= disputeStatus obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "dispute"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Dispute
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Dispute" (\obj -> ((((((((((((((GHC.Base.pure Dispute GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "balance_transactions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "evidence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "evidence_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "is_charge_refundable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_method_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))}
-- | Create a new 'Dispute' with all required fields.
mkDispute :: GHC.Types.Int -- ^ 'disputeAmount'
  -> [BalanceTransaction] -- ^ 'disputeBalanceTransactions'
  -> DisputeCharge'Variants -- ^ 'disputeCharge'
  -> GHC.Types.Int -- ^ 'disputeCreated'
  -> Data.Text.Internal.Text -- ^ 'disputeCurrency'
  -> DisputeEvidence -- ^ 'disputeEvidence'
  -> DisputeEvidenceDetails -- ^ 'disputeEvidenceDetails'
  -> Data.Text.Internal.Text -- ^ 'disputeId'
  -> GHC.Types.Bool -- ^ 'disputeIsChargeRefundable'
  -> GHC.Types.Bool -- ^ 'disputeLivemode'
  -> Data.Aeson.Types.Internal.Object -- ^ 'disputeMetadata'
  -> Data.Text.Internal.Text -- ^ 'disputeReason'
  -> DisputeStatus' -- ^ 'disputeStatus'
  -> Dispute
mkDispute disputeAmount disputeBalanceTransactions disputeCharge disputeCreated disputeCurrency disputeEvidence disputeEvidenceDetails disputeId disputeIsChargeRefundable disputeLivemode disputeMetadata disputeReason disputeStatus = Dispute{disputeAmount = disputeAmount,
                                                                                                                                                                                                                                                 disputeBalanceTransactions = disputeBalanceTransactions,
                                                                                                                                                                                                                                                 disputeCharge = disputeCharge,
                                                                                                                                                                                                                                                 disputeCreated = disputeCreated,
                                                                                                                                                                                                                                                 disputeCurrency = disputeCurrency,
                                                                                                                                                                                                                                                 disputeEvidence = disputeEvidence,
                                                                                                                                                                                                                                                 disputeEvidenceDetails = disputeEvidenceDetails,
                                                                                                                                                                                                                                                 disputeId = disputeId,
                                                                                                                                                                                                                                                 disputeIsChargeRefundable = disputeIsChargeRefundable,
                                                                                                                                                                                                                                                 disputeLivemode = disputeLivemode,
                                                                                                                                                                                                                                                 disputeMetadata = disputeMetadata,
                                                                                                                                                                                                                                                 disputePaymentIntent = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                 disputePaymentMethodDetails = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                 disputeReason = disputeReason,
                                                                                                                                                                                                                                                 disputeStatus = disputeStatus}
-- | Defines the oneOf schema located at @components.schemas.dispute.properties.charge.anyOf@ in the specification.
-- 
-- ID of the charge that\'s disputed.
data DisputeCharge'Variants =
   DisputeCharge'Text Data.Text.Internal.Text
  | DisputeCharge'Charge Charge
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DisputeCharge'Variants
    where {toJSON (DisputeCharge'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (DisputeCharge'Charge a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON DisputeCharge'Variants
    where {parseJSON val = case (DisputeCharge'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputeCharge'Charge Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.dispute.properties.payment_intent.anyOf@ in the specification.
-- 
-- ID of the PaymentIntent that\'s disputed.
data DisputePaymentIntent'NonNullableVariants =
   DisputePaymentIntent'NonNullableText Data.Text.Internal.Text
  | DisputePaymentIntent'NonNullablePaymentIntent PaymentIntent
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DisputePaymentIntent'NonNullableVariants
    where {toJSON (DisputePaymentIntent'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (DisputePaymentIntent'NonNullablePaymentIntent a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON DisputePaymentIntent'NonNullableVariants
    where {parseJSON val = case (DisputePaymentIntent'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((DisputePaymentIntent'NonNullablePaymentIntent Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.dispute.properties.status@ in the specification.
-- 
-- Current status of dispute. Possible values are \`warning_needs_response\`, \`warning_under_review\`, \`warning_closed\`, \`needs_response\`, \`under_review\`, \`won\`, or \`lost\`.
data DisputeStatus' =
   DisputeStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | DisputeStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | DisputeStatus'EnumLost -- ^ Represents the JSON value @"lost"@
  | DisputeStatus'EnumNeedsResponse -- ^ Represents the JSON value @"needs_response"@
  | DisputeStatus'EnumUnderReview -- ^ Represents the JSON value @"under_review"@
  | DisputeStatus'EnumWarningClosed -- ^ Represents the JSON value @"warning_closed"@
  | DisputeStatus'EnumWarningNeedsResponse -- ^ Represents the JSON value @"warning_needs_response"@
  | DisputeStatus'EnumWarningUnderReview -- ^ Represents the JSON value @"warning_under_review"@
  | DisputeStatus'EnumWon -- ^ Represents the JSON value @"won"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DisputeStatus'
    where {toJSON (DisputeStatus'Other val) = val;
           toJSON (DisputeStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (DisputeStatus'EnumLost) = "lost";
           toJSON (DisputeStatus'EnumNeedsResponse) = "needs_response";
           toJSON (DisputeStatus'EnumUnderReview) = "under_review";
           toJSON (DisputeStatus'EnumWarningClosed) = "warning_closed";
           toJSON (DisputeStatus'EnumWarningNeedsResponse) = "warning_needs_response";
           toJSON (DisputeStatus'EnumWarningUnderReview) = "warning_under_review";
           toJSON (DisputeStatus'EnumWon) = "won"}
instance Data.Aeson.Types.FromJSON.FromJSON DisputeStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "lost" -> DisputeStatus'EnumLost
                                             | val GHC.Classes.== "needs_response" -> DisputeStatus'EnumNeedsResponse
                                             | val GHC.Classes.== "under_review" -> DisputeStatus'EnumUnderReview
                                             | val GHC.Classes.== "warning_closed" -> DisputeStatus'EnumWarningClosed
                                             | val GHC.Classes.== "warning_needs_response" -> DisputeStatus'EnumWarningNeedsResponse
                                             | val GHC.Classes.== "warning_under_review" -> DisputeStatus'EnumWarningUnderReview
                                             | val GHC.Classes.== "won" -> DisputeStatus'EnumWon
                                             | GHC.Base.otherwise -> DisputeStatus'Other val)}
