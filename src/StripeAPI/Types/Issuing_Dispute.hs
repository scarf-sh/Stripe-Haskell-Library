-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Issuing_Dispute
module StripeAPI.Types.Issuing_Dispute where

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
import {-# SOURCE #-} StripeAPI.Types.IssuingDisputeEvidence
import {-# SOURCE #-} StripeAPI.Types.IssuingDisputeTreasury
import {-# SOURCE #-} StripeAPI.Types.Issuing_Transaction

-- | Defines the object schema located at @components.schemas.issuing.dispute@ in the specification.
-- 
-- As a [card issuer](https:\/\/stripe.com\/docs\/issuing), you can dispute transactions that the cardholder does not recognize, suspects to be fraudulent, or has other issues with.
-- 
-- Related guide: [Issuing disputes](https:\/\/stripe.com\/docs\/issuing\/purchases\/disputes)
data Issuing'dispute = Issuing'dispute {
  -- | amount: Disputed amount in the card\'s currency and in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal). Usually the amount of the \`transaction\`, but can differ (usually because of currency fluctuation).
  issuing'disputeAmount :: GHC.Types.Int
  -- | balance_transactions: List of balance transactions associated with the dispute.
  , issuing'disputeBalanceTransactions :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([BalanceTransaction])))
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , issuing'disputeCreated :: GHC.Types.Int
  -- | currency: The currency the \`transaction\` was made in.
  , issuing'disputeCurrency :: Data.Text.Internal.Text
  -- | evidence: 
  , issuing'disputeEvidence :: IssuingDisputeEvidence
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuing'disputeId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , issuing'disputeLivemode :: GHC.Types.Bool
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , issuing'disputeMetadata :: Data.Aeson.Types.Internal.Object
  -- | status: Current status of the dispute.
  , issuing'disputeStatus :: Issuing'disputeStatus'
  -- | transaction: The transaction being disputed.
  , issuing'disputeTransaction :: Issuing'disputeTransaction'Variants
  -- | treasury: [Treasury](https:\/\/stripe.com\/docs\/api\/treasury) details related to this dispute if it was created on a [FinancialAccount](\/docs\/api\/treasury\/financial_accounts
  , issuing'disputeTreasury :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Issuing'disputeTreasury'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Issuing'dispute
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= issuing'disputeAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance_transactions" Data.Aeson.Types.ToJSON..=)) (issuing'disputeBalanceTransactions obj) : ["created" Data.Aeson.Types.ToJSON..= issuing'disputeCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= issuing'disputeCurrency obj] : ["evidence" Data.Aeson.Types.ToJSON..= issuing'disputeEvidence obj] : ["id" Data.Aeson.Types.ToJSON..= issuing'disputeId obj] : ["livemode" Data.Aeson.Types.ToJSON..= issuing'disputeLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= issuing'disputeMetadata obj] : ["status" Data.Aeson.Types.ToJSON..= issuing'disputeStatus obj] : ["transaction" Data.Aeson.Types.ToJSON..= issuing'disputeTransaction obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("treasury" Data.Aeson.Types.ToJSON..=)) (issuing'disputeTreasury obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "issuing.dispute"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= issuing'disputeAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance_transactions" Data.Aeson.Types.ToJSON..=)) (issuing'disputeBalanceTransactions obj) : ["created" Data.Aeson.Types.ToJSON..= issuing'disputeCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= issuing'disputeCurrency obj] : ["evidence" Data.Aeson.Types.ToJSON..= issuing'disputeEvidence obj] : ["id" Data.Aeson.Types.ToJSON..= issuing'disputeId obj] : ["livemode" Data.Aeson.Types.ToJSON..= issuing'disputeLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= issuing'disputeMetadata obj] : ["status" Data.Aeson.Types.ToJSON..= issuing'disputeStatus obj] : ["transaction" Data.Aeson.Types.ToJSON..= issuing'disputeTransaction obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("treasury" Data.Aeson.Types.ToJSON..=)) (issuing'disputeTreasury obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "issuing.dispute"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Issuing'dispute
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Issuing'dispute" (\obj -> ((((((((((GHC.Base.pure Issuing'dispute GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "balance_transactions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "evidence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "treasury"))}
-- | Create a new 'Issuing'dispute' with all required fields.
mkIssuing'dispute :: GHC.Types.Int -- ^ 'issuing'disputeAmount'
  -> GHC.Types.Int -- ^ 'issuing'disputeCreated'
  -> Data.Text.Internal.Text -- ^ 'issuing'disputeCurrency'
  -> IssuingDisputeEvidence -- ^ 'issuing'disputeEvidence'
  -> Data.Text.Internal.Text -- ^ 'issuing'disputeId'
  -> GHC.Types.Bool -- ^ 'issuing'disputeLivemode'
  -> Data.Aeson.Types.Internal.Object -- ^ 'issuing'disputeMetadata'
  -> Issuing'disputeStatus' -- ^ 'issuing'disputeStatus'
  -> Issuing'disputeTransaction'Variants -- ^ 'issuing'disputeTransaction'
  -> Issuing'dispute
mkIssuing'dispute issuing'disputeAmount issuing'disputeCreated issuing'disputeCurrency issuing'disputeEvidence issuing'disputeId issuing'disputeLivemode issuing'disputeMetadata issuing'disputeStatus issuing'disputeTransaction = Issuing'dispute{issuing'disputeAmount = issuing'disputeAmount,
                                                                                                                                                                                                                                                    issuing'disputeBalanceTransactions = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                    issuing'disputeCreated = issuing'disputeCreated,
                                                                                                                                                                                                                                                    issuing'disputeCurrency = issuing'disputeCurrency,
                                                                                                                                                                                                                                                    issuing'disputeEvidence = issuing'disputeEvidence,
                                                                                                                                                                                                                                                    issuing'disputeId = issuing'disputeId,
                                                                                                                                                                                                                                                    issuing'disputeLivemode = issuing'disputeLivemode,
                                                                                                                                                                                                                                                    issuing'disputeMetadata = issuing'disputeMetadata,
                                                                                                                                                                                                                                                    issuing'disputeStatus = issuing'disputeStatus,
                                                                                                                                                                                                                                                    issuing'disputeTransaction = issuing'disputeTransaction,
                                                                                                                                                                                                                                                    issuing'disputeTreasury = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.issuing.dispute.properties.status@ in the specification.
-- 
-- Current status of the dispute.
data Issuing'disputeStatus' =
   Issuing'disputeStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Issuing'disputeStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Issuing'disputeStatus'EnumExpired -- ^ Represents the JSON value @"expired"@
  | Issuing'disputeStatus'EnumLost -- ^ Represents the JSON value @"lost"@
  | Issuing'disputeStatus'EnumSubmitted -- ^ Represents the JSON value @"submitted"@
  | Issuing'disputeStatus'EnumUnsubmitted -- ^ Represents the JSON value @"unsubmitted"@
  | Issuing'disputeStatus'EnumWon -- ^ Represents the JSON value @"won"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Issuing'disputeStatus'
    where {toJSON (Issuing'disputeStatus'Other val) = val;
           toJSON (Issuing'disputeStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (Issuing'disputeStatus'EnumExpired) = "expired";
           toJSON (Issuing'disputeStatus'EnumLost) = "lost";
           toJSON (Issuing'disputeStatus'EnumSubmitted) = "submitted";
           toJSON (Issuing'disputeStatus'EnumUnsubmitted) = "unsubmitted";
           toJSON (Issuing'disputeStatus'EnumWon) = "won"}
instance Data.Aeson.Types.FromJSON.FromJSON Issuing'disputeStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "expired" -> Issuing'disputeStatus'EnumExpired
                                             | val GHC.Classes.== "lost" -> Issuing'disputeStatus'EnumLost
                                             | val GHC.Classes.== "submitted" -> Issuing'disputeStatus'EnumSubmitted
                                             | val GHC.Classes.== "unsubmitted" -> Issuing'disputeStatus'EnumUnsubmitted
                                             | val GHC.Classes.== "won" -> Issuing'disputeStatus'EnumWon
                                             | GHC.Base.otherwise -> Issuing'disputeStatus'Other val)}
-- | Defines the oneOf schema located at @components.schemas.issuing.dispute.properties.transaction.anyOf@ in the specification.
-- 
-- The transaction being disputed.
data Issuing'disputeTransaction'Variants =
   Issuing'disputeTransaction'Text Data.Text.Internal.Text
  | Issuing'disputeTransaction'Issuing'transaction Issuing'transaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Issuing'disputeTransaction'Variants
    where {toJSON (Issuing'disputeTransaction'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (Issuing'disputeTransaction'Issuing'transaction a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON Issuing'disputeTransaction'Variants
    where {parseJSON val = case (Issuing'disputeTransaction'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((Issuing'disputeTransaction'Issuing'transaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the object schema located at @components.schemas.issuing.dispute.properties.treasury.anyOf@ in the specification.
-- 
-- [Treasury](https:\\\/\\\/stripe.com\\\/docs\\\/api\\\/treasury) details related to this dispute if it was created on a [FinancialAccount](\\\/docs\\\/api\\\/treasury\\\/financial_accounts
data Issuing'disputeTreasury'NonNullable = Issuing'disputeTreasury'NonNullable {
  -- | debit_reversal: The Treasury [DebitReversal](https:\/\/stripe.com\/docs\/api\/treasury\/debit_reversals) representing this Issuing dispute
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  issuing'disputeTreasury'NonNullableDebitReversal :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | received_debit: The Treasury [ReceivedDebit](https:\/\/stripe.com\/docs\/api\/treasury\/received_debits) that is being disputed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuing'disputeTreasury'NonNullableReceivedDebit :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Issuing'disputeTreasury'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("debit_reversal" Data.Aeson.Types.ToJSON..=)) (issuing'disputeTreasury'NonNullableDebitReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_debit" Data.Aeson.Types.ToJSON..=)) (issuing'disputeTreasury'NonNullableReceivedDebit obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("debit_reversal" Data.Aeson.Types.ToJSON..=)) (issuing'disputeTreasury'NonNullableDebitReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_debit" Data.Aeson.Types.ToJSON..=)) (issuing'disputeTreasury'NonNullableReceivedDebit obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Issuing'disputeTreasury'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Issuing'disputeTreasury'NonNullable" (\obj -> (GHC.Base.pure Issuing'disputeTreasury'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "debit_reversal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "received_debit"))}
-- | Create a new 'Issuing'disputeTreasury'NonNullable' with all required fields.
mkIssuing'disputeTreasury'NonNullable :: Issuing'disputeTreasury'NonNullable
mkIssuing'disputeTreasury'NonNullable = Issuing'disputeTreasury'NonNullable{issuing'disputeTreasury'NonNullableDebitReversal = GHC.Maybe.Nothing,
                                                                            issuing'disputeTreasury'NonNullableReceivedDebit = GHC.Maybe.Nothing}
