-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ApplicationFee
module StripeAPI.Types.ApplicationFee where

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
import {-# SOURCE #-} StripeAPI.Types.Account
import {-# SOURCE #-} StripeAPI.Types.Application
import {-# SOURCE #-} StripeAPI.Types.BalanceTransaction
import {-# SOURCE #-} StripeAPI.Types.Charge
import {-# SOURCE #-} StripeAPI.Types.FeeRefund

-- | Defines the object schema located at @components.schemas.application_fee@ in the specification.
-- 
-- 
data ApplicationFee = ApplicationFee {
  -- | account: ID of the Stripe account this fee was taken from.
  applicationFeeAccount :: ApplicationFeeAccount'Variants
  -- | amount: Amount earned, in cents (or local equivalent).
  , applicationFeeAmount :: GHC.Types.Int
  -- | amount_refunded: Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the fee if a partial refund was issued)
  , applicationFeeAmountRefunded :: GHC.Types.Int
  -- | application: ID of the Connect application that earned the fee.
  , applicationFeeApplication :: ApplicationFeeApplication'Variants
  -- | balance_transaction: Balance transaction that describes the impact of this collected application fee on your account balance (not including refunds).
  , applicationFeeBalanceTransaction :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ApplicationFeeBalanceTransaction'NonNullableVariants))
  -- | charge: ID of the charge that the application fee was taken from.
  , applicationFeeCharge :: ApplicationFeeCharge'Variants
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , applicationFeeCreated :: GHC.Types.Int
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , applicationFeeCurrency :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , applicationFeeId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , applicationFeeLivemode :: GHC.Types.Bool
  -- | originating_transaction: ID of the corresponding charge on the platform account, if this fee was the result of a charge using the \`destination\` parameter.
  , applicationFeeOriginatingTransaction :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ApplicationFeeOriginatingTransaction'NonNullableVariants))
  -- | refunded: Whether the fee has been fully refunded. If the fee is only partially refunded, this attribute will still be false.
  , applicationFeeRefunded :: GHC.Types.Bool
  -- | refunds: A list of refunds that have been applied to the fee.
  , applicationFeeRefunds :: ApplicationFeeRefunds'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ApplicationFee
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["account" Data.Aeson.Types.ToJSON..= applicationFeeAccount obj] : ["amount" Data.Aeson.Types.ToJSON..= applicationFeeAmount obj] : ["amount_refunded" Data.Aeson.Types.ToJSON..= applicationFeeAmountRefunded obj] : ["application" Data.Aeson.Types.ToJSON..= applicationFeeApplication obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance_transaction" Data.Aeson.Types.ToJSON..=)) (applicationFeeBalanceTransaction obj) : ["charge" Data.Aeson.Types.ToJSON..= applicationFeeCharge obj] : ["created" Data.Aeson.Types.ToJSON..= applicationFeeCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= applicationFeeCurrency obj] : ["id" Data.Aeson.Types.ToJSON..= applicationFeeId obj] : ["livemode" Data.Aeson.Types.ToJSON..= applicationFeeLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("originating_transaction" Data.Aeson.Types.ToJSON..=)) (applicationFeeOriginatingTransaction obj) : ["refunded" Data.Aeson.Types.ToJSON..= applicationFeeRefunded obj] : ["refunds" Data.Aeson.Types.ToJSON..= applicationFeeRefunds obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "application_fee"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["account" Data.Aeson.Types.ToJSON..= applicationFeeAccount obj] : ["amount" Data.Aeson.Types.ToJSON..= applicationFeeAmount obj] : ["amount_refunded" Data.Aeson.Types.ToJSON..= applicationFeeAmountRefunded obj] : ["application" Data.Aeson.Types.ToJSON..= applicationFeeApplication obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance_transaction" Data.Aeson.Types.ToJSON..=)) (applicationFeeBalanceTransaction obj) : ["charge" Data.Aeson.Types.ToJSON..= applicationFeeCharge obj] : ["created" Data.Aeson.Types.ToJSON..= applicationFeeCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= applicationFeeCurrency obj] : ["id" Data.Aeson.Types.ToJSON..= applicationFeeId obj] : ["livemode" Data.Aeson.Types.ToJSON..= applicationFeeLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("originating_transaction" Data.Aeson.Types.ToJSON..=)) (applicationFeeOriginatingTransaction obj) : ["refunded" Data.Aeson.Types.ToJSON..= applicationFeeRefunded obj] : ["refunds" Data.Aeson.Types.ToJSON..= applicationFeeRefunds obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "application_fee"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ApplicationFee
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ApplicationFee" (\obj -> ((((((((((((GHC.Base.pure ApplicationFee GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_refunded")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "balance_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "originating_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "refunded")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "refunds"))}
-- | Create a new 'ApplicationFee' with all required fields.
mkApplicationFee :: ApplicationFeeAccount'Variants -- ^ 'applicationFeeAccount'
  -> GHC.Types.Int -- ^ 'applicationFeeAmount'
  -> GHC.Types.Int -- ^ 'applicationFeeAmountRefunded'
  -> ApplicationFeeApplication'Variants -- ^ 'applicationFeeApplication'
  -> ApplicationFeeCharge'Variants -- ^ 'applicationFeeCharge'
  -> GHC.Types.Int -- ^ 'applicationFeeCreated'
  -> Data.Text.Internal.Text -- ^ 'applicationFeeCurrency'
  -> Data.Text.Internal.Text -- ^ 'applicationFeeId'
  -> GHC.Types.Bool -- ^ 'applicationFeeLivemode'
  -> GHC.Types.Bool -- ^ 'applicationFeeRefunded'
  -> ApplicationFeeRefunds' -- ^ 'applicationFeeRefunds'
  -> ApplicationFee
mkApplicationFee applicationFeeAccount applicationFeeAmount applicationFeeAmountRefunded applicationFeeApplication applicationFeeCharge applicationFeeCreated applicationFeeCurrency applicationFeeId applicationFeeLivemode applicationFeeRefunded applicationFeeRefunds = ApplicationFee{applicationFeeAccount = applicationFeeAccount,
                                                                                                                                                                                                                                                                                           applicationFeeAmount = applicationFeeAmount,
                                                                                                                                                                                                                                                                                           applicationFeeAmountRefunded = applicationFeeAmountRefunded,
                                                                                                                                                                                                                                                                                           applicationFeeApplication = applicationFeeApplication,
                                                                                                                                                                                                                                                                                           applicationFeeBalanceTransaction = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                           applicationFeeCharge = applicationFeeCharge,
                                                                                                                                                                                                                                                                                           applicationFeeCreated = applicationFeeCreated,
                                                                                                                                                                                                                                                                                           applicationFeeCurrency = applicationFeeCurrency,
                                                                                                                                                                                                                                                                                           applicationFeeId = applicationFeeId,
                                                                                                                                                                                                                                                                                           applicationFeeLivemode = applicationFeeLivemode,
                                                                                                                                                                                                                                                                                           applicationFeeOriginatingTransaction = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                           applicationFeeRefunded = applicationFeeRefunded,
                                                                                                                                                                                                                                                                                           applicationFeeRefunds = applicationFeeRefunds}
-- | Defines the oneOf schema located at @components.schemas.application_fee.properties.account.anyOf@ in the specification.
-- 
-- ID of the Stripe account this fee was taken from.
data ApplicationFeeAccount'Variants =
   ApplicationFeeAccount'Text Data.Text.Internal.Text
  | ApplicationFeeAccount'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ApplicationFeeAccount'Variants
    where {toJSON (ApplicationFeeAccount'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (ApplicationFeeAccount'Account a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON ApplicationFeeAccount'Variants
    where {parseJSON val = case (ApplicationFeeAccount'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ApplicationFeeAccount'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.application_fee.properties.application.anyOf@ in the specification.
-- 
-- ID of the Connect application that earned the fee.
data ApplicationFeeApplication'Variants =
   ApplicationFeeApplication'Text Data.Text.Internal.Text
  | ApplicationFeeApplication'Application Application
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ApplicationFeeApplication'Variants
    where {toJSON (ApplicationFeeApplication'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (ApplicationFeeApplication'Application a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON ApplicationFeeApplication'Variants
    where {parseJSON val = case (ApplicationFeeApplication'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ApplicationFeeApplication'Application Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.application_fee.properties.balance_transaction.anyOf@ in the specification.
-- 
-- Balance transaction that describes the impact of this collected application fee on your account balance (not including refunds).
data ApplicationFeeBalanceTransaction'NonNullableVariants =
   ApplicationFeeBalanceTransaction'NonNullableText Data.Text.Internal.Text
  | ApplicationFeeBalanceTransaction'NonNullableBalanceTransaction BalanceTransaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ApplicationFeeBalanceTransaction'NonNullableVariants
    where {toJSON (ApplicationFeeBalanceTransaction'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (ApplicationFeeBalanceTransaction'NonNullableBalanceTransaction a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON ApplicationFeeBalanceTransaction'NonNullableVariants
    where {parseJSON val = case (ApplicationFeeBalanceTransaction'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ApplicationFeeBalanceTransaction'NonNullableBalanceTransaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.application_fee.properties.charge.anyOf@ in the specification.
-- 
-- ID of the charge that the application fee was taken from.
data ApplicationFeeCharge'Variants =
   ApplicationFeeCharge'Text Data.Text.Internal.Text
  | ApplicationFeeCharge'Charge Charge
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ApplicationFeeCharge'Variants
    where {toJSON (ApplicationFeeCharge'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (ApplicationFeeCharge'Charge a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON ApplicationFeeCharge'Variants
    where {parseJSON val = case (ApplicationFeeCharge'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ApplicationFeeCharge'Charge Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.application_fee.properties.originating_transaction.anyOf@ in the specification.
-- 
-- ID of the corresponding charge on the platform account, if this fee was the result of a charge using the \`destination\` parameter.
data ApplicationFeeOriginatingTransaction'NonNullableVariants =
   ApplicationFeeOriginatingTransaction'NonNullableText Data.Text.Internal.Text
  | ApplicationFeeOriginatingTransaction'NonNullableCharge Charge
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ApplicationFeeOriginatingTransaction'NonNullableVariants
    where {toJSON (ApplicationFeeOriginatingTransaction'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (ApplicationFeeOriginatingTransaction'NonNullableCharge a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON ApplicationFeeOriginatingTransaction'NonNullableVariants
    where {parseJSON val = case (ApplicationFeeOriginatingTransaction'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ApplicationFeeOriginatingTransaction'NonNullableCharge Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the object schema located at @components.schemas.application_fee.properties.refunds@ in the specification.
-- 
-- A list of refunds that have been applied to the fee.
data ApplicationFeeRefunds' = ApplicationFeeRefunds' {
  -- | data: Details about each object.
  applicationFeeRefunds'Data :: ([FeeRefund])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , applicationFeeRefunds'HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , applicationFeeRefunds'Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ApplicationFeeRefunds'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= applicationFeeRefunds'Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= applicationFeeRefunds'HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= applicationFeeRefunds'Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= applicationFeeRefunds'Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= applicationFeeRefunds'HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= applicationFeeRefunds'Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ApplicationFeeRefunds'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ApplicationFeeRefunds'" (\obj -> ((GHC.Base.pure ApplicationFeeRefunds' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'ApplicationFeeRefunds'' with all required fields.
mkApplicationFeeRefunds' :: [FeeRefund] -- ^ 'applicationFeeRefunds'Data'
  -> GHC.Types.Bool -- ^ 'applicationFeeRefunds'HasMore'
  -> Data.Text.Internal.Text -- ^ 'applicationFeeRefunds'Url'
  -> ApplicationFeeRefunds'
mkApplicationFeeRefunds' applicationFeeRefunds'Data applicationFeeRefunds'HasMore applicationFeeRefunds'Url = ApplicationFeeRefunds'{applicationFeeRefunds'Data = applicationFeeRefunds'Data,
                                                                                                                                     applicationFeeRefunds'HasMore = applicationFeeRefunds'HasMore,
                                                                                                                                     applicationFeeRefunds'Url = applicationFeeRefunds'Url}
