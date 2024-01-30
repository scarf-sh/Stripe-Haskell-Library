-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema FeeRefund
module StripeAPI.Types.FeeRefund where

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
import {-# SOURCE #-} StripeAPI.Types.ApplicationFee
import {-# SOURCE #-} StripeAPI.Types.BalanceTransaction

-- | Defines the object schema located at @components.schemas.fee_refund@ in the specification.
-- 
-- \`Application Fee Refund\` objects allow you to refund an application fee that
-- has previously been created but not yet refunded. Funds will be refunded to
-- the Stripe account from which the fee was originally collected.
-- 
-- Related guide: [Refunding application fees](https:\/\/stripe.com\/docs\/connect\/destination-charges\#refunding-app-fee)
data FeeRefund = FeeRefund {
  -- | amount: Amount, in cents (or local equivalent).
  feeRefundAmount :: GHC.Types.Int
  -- | balance_transaction: Balance transaction that describes the impact on your account balance.
  , feeRefundBalanceTransaction :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable FeeRefundBalanceTransaction'NonNullableVariants))
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , feeRefundCreated :: GHC.Types.Int
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , feeRefundCurrency :: Data.Text.Internal.Text
  -- | fee: ID of the application fee that was refunded.
  , feeRefundFee :: FeeRefundFee'Variants
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , feeRefundId :: Data.Text.Internal.Text
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , feeRefundMetadata :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FeeRefund
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= feeRefundAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance_transaction" Data.Aeson.Types.ToJSON..=)) (feeRefundBalanceTransaction obj) : ["created" Data.Aeson.Types.ToJSON..= feeRefundCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= feeRefundCurrency obj] : ["fee" Data.Aeson.Types.ToJSON..= feeRefundFee obj] : ["id" Data.Aeson.Types.ToJSON..= feeRefundId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (feeRefundMetadata obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fee_refund"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= feeRefundAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance_transaction" Data.Aeson.Types.ToJSON..=)) (feeRefundBalanceTransaction obj) : ["created" Data.Aeson.Types.ToJSON..= feeRefundCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= feeRefundCurrency obj] : ["fee" Data.Aeson.Types.ToJSON..= feeRefundFee obj] : ["id" Data.Aeson.Types.ToJSON..= feeRefundId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (feeRefundMetadata obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fee_refund"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON FeeRefund
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "FeeRefund" (\obj -> ((((((GHC.Base.pure FeeRefund GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "balance_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))}
-- | Create a new 'FeeRefund' with all required fields.
mkFeeRefund :: GHC.Types.Int -- ^ 'feeRefundAmount'
  -> GHC.Types.Int -- ^ 'feeRefundCreated'
  -> Data.Text.Internal.Text -- ^ 'feeRefundCurrency'
  -> FeeRefundFee'Variants -- ^ 'feeRefundFee'
  -> Data.Text.Internal.Text -- ^ 'feeRefundId'
  -> FeeRefund
mkFeeRefund feeRefundAmount feeRefundCreated feeRefundCurrency feeRefundFee feeRefundId = FeeRefund{feeRefundAmount = feeRefundAmount,
                                                                                                    feeRefundBalanceTransaction = GHC.Maybe.Nothing,
                                                                                                    feeRefundCreated = feeRefundCreated,
                                                                                                    feeRefundCurrency = feeRefundCurrency,
                                                                                                    feeRefundFee = feeRefundFee,
                                                                                                    feeRefundId = feeRefundId,
                                                                                                    feeRefundMetadata = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.fee_refund.properties.balance_transaction.anyOf@ in the specification.
-- 
-- Balance transaction that describes the impact on your account balance.
data FeeRefundBalanceTransaction'NonNullableVariants =
   FeeRefundBalanceTransaction'NonNullableText Data.Text.Internal.Text
  | FeeRefundBalanceTransaction'NonNullableBalanceTransaction BalanceTransaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FeeRefundBalanceTransaction'NonNullableVariants
    where {toJSON (FeeRefundBalanceTransaction'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (FeeRefundBalanceTransaction'NonNullableBalanceTransaction a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON FeeRefundBalanceTransaction'NonNullableVariants
    where {parseJSON val = case (FeeRefundBalanceTransaction'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((FeeRefundBalanceTransaction'NonNullableBalanceTransaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.fee_refund.properties.fee.anyOf@ in the specification.
-- 
-- ID of the application fee that was refunded.
data FeeRefundFee'Variants =
   FeeRefundFee'Text Data.Text.Internal.Text
  | FeeRefundFee'ApplicationFee ApplicationFee
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FeeRefundFee'Variants
    where {toJSON (FeeRefundFee'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (FeeRefundFee'ApplicationFee a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON FeeRefundFee'Variants
    where {parseJSON val = case (FeeRefundFee'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((FeeRefundFee'ApplicationFee Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
