-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CustomerCashBalanceTransaction
module StripeAPI.Types.CustomerCashBalanceTransaction where

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
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft
import {-# SOURCE #-} StripeAPI.Types.CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction
import {-# SOURCE #-} StripeAPI.Types.CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction
import {-# SOURCE #-} StripeAPI.Types.CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction
import {-# SOURCE #-} StripeAPI.Types.CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance
import {-# SOURCE #-} StripeAPI.Types.CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction

-- | Defines the object schema located at @components.schemas.customer_cash_balance_transaction@ in the specification.
-- 
-- Customers with certain payments enabled have a cash balance, representing funds that were paid
-- by the customer to a merchant, but have not yet been allocated to a payment. Cash Balance Transactions
-- represent when funds are moved into or out of this balance. This includes funding by the customer, allocation
-- to payments, and refunds to the customer.
data CustomerCashBalanceTransaction = CustomerCashBalanceTransaction {
  -- | adjusted_for_overdraft: 
  customerCashBalanceTransactionAdjustedForOverdraft :: (GHC.Maybe.Maybe CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft)
  -- | applied_to_payment: 
  , customerCashBalanceTransactionAppliedToPayment :: (GHC.Maybe.Maybe CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction)
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , customerCashBalanceTransactionCreated :: GHC.Types.Int
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , customerCashBalanceTransactionCurrency :: Data.Text.Internal.Text
  -- | customer: The customer whose available cash balance changed as a result of this transaction.
  , customerCashBalanceTransactionCustomer :: CustomerCashBalanceTransactionCustomer'Variants
  -- | ending_balance: The total available cash balance for the specified currency after this transaction was applied. Represented in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
  , customerCashBalanceTransactionEndingBalance :: GHC.Types.Int
  -- | funded: 
  , customerCashBalanceTransactionFunded :: (GHC.Maybe.Maybe CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , customerCashBalanceTransactionId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , customerCashBalanceTransactionLivemode :: GHC.Types.Bool
  -- | net_amount: The amount by which the cash balance changed, represented in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal). A positive value represents funds being added to the cash balance, a negative value represents funds being removed from the cash balance.
  , customerCashBalanceTransactionNetAmount :: GHC.Types.Int
  -- | refunded_from_payment: 
  , customerCashBalanceTransactionRefundedFromPayment :: (GHC.Maybe.Maybe CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction)
  -- | transferred_to_balance: 
  , customerCashBalanceTransactionTransferredToBalance :: (GHC.Maybe.Maybe CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance)
  -- | type: The type of the cash balance transaction. New types may be added in future. See [Customer Balance](https:\/\/stripe.com\/docs\/payments\/customer-balance\#types) to learn more about these types.
  , customerCashBalanceTransactionType :: CustomerCashBalanceTransactionType'
  -- | unapplied_from_payment: 
  , customerCashBalanceTransactionUnappliedFromPayment :: (GHC.Maybe.Maybe CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CustomerCashBalanceTransaction
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("adjusted_for_overdraft" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionAdjustedForOverdraft obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("applied_to_payment" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionAppliedToPayment obj) : ["created" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionCurrency obj] : ["customer" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionCustomer obj] : ["ending_balance" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionEndingBalance obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funded" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionFunded obj) : ["id" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionId obj] : ["livemode" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionLivemode obj] : ["net_amount" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionNetAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refunded_from_payment" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionRefundedFromPayment obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transferred_to_balance" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionTransferredToBalance obj) : ["type" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unapplied_from_payment" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionUnappliedFromPayment obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "customer_cash_balance_transaction"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("adjusted_for_overdraft" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionAdjustedForOverdraft obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("applied_to_payment" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionAppliedToPayment obj) : ["created" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionCurrency obj] : ["customer" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionCustomer obj] : ["ending_balance" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionEndingBalance obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funded" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionFunded obj) : ["id" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionId obj] : ["livemode" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionLivemode obj] : ["net_amount" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionNetAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refunded_from_payment" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionRefundedFromPayment obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transferred_to_balance" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionTransferredToBalance obj) : ["type" Data.Aeson.Types.ToJSON..= customerCashBalanceTransactionType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unapplied_from_payment" Data.Aeson.Types.ToJSON..=)) (customerCashBalanceTransactionUnappliedFromPayment obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "customer_cash_balance_transaction"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CustomerCashBalanceTransaction
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomerCashBalanceTransaction" (\obj -> (((((((((((((GHC.Base.pure CustomerCashBalanceTransaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "adjusted_for_overdraft")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "applied_to_payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ending_balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "funded")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "net_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refunded_from_payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transferred_to_balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unapplied_from_payment"))}
-- | Create a new 'CustomerCashBalanceTransaction' with all required fields.
mkCustomerCashBalanceTransaction :: GHC.Types.Int -- ^ 'customerCashBalanceTransactionCreated'
  -> Data.Text.Internal.Text -- ^ 'customerCashBalanceTransactionCurrency'
  -> CustomerCashBalanceTransactionCustomer'Variants -- ^ 'customerCashBalanceTransactionCustomer'
  -> GHC.Types.Int -- ^ 'customerCashBalanceTransactionEndingBalance'
  -> Data.Text.Internal.Text -- ^ 'customerCashBalanceTransactionId'
  -> GHC.Types.Bool -- ^ 'customerCashBalanceTransactionLivemode'
  -> GHC.Types.Int -- ^ 'customerCashBalanceTransactionNetAmount'
  -> CustomerCashBalanceTransactionType' -- ^ 'customerCashBalanceTransactionType'
  -> CustomerCashBalanceTransaction
mkCustomerCashBalanceTransaction customerCashBalanceTransactionCreated customerCashBalanceTransactionCurrency customerCashBalanceTransactionCustomer customerCashBalanceTransactionEndingBalance customerCashBalanceTransactionId customerCashBalanceTransactionLivemode customerCashBalanceTransactionNetAmount customerCashBalanceTransactionType = CustomerCashBalanceTransaction{customerCashBalanceTransactionAdjustedForOverdraft = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionAppliedToPayment = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionCreated = customerCashBalanceTransactionCreated,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionCurrency = customerCashBalanceTransactionCurrency,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionCustomer = customerCashBalanceTransactionCustomer,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionEndingBalance = customerCashBalanceTransactionEndingBalance,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionFunded = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionId = customerCashBalanceTransactionId,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionLivemode = customerCashBalanceTransactionLivemode,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionNetAmount = customerCashBalanceTransactionNetAmount,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionRefundedFromPayment = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionTransferredToBalance = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionType = customerCashBalanceTransactionType,
                                                                                                                                                                                                                                                                                                                                                                                     customerCashBalanceTransactionUnappliedFromPayment = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.customer_cash_balance_transaction.properties.customer.anyOf@ in the specification.
-- 
-- The customer whose available cash balance changed as a result of this transaction.
data CustomerCashBalanceTransactionCustomer'Variants =
   CustomerCashBalanceTransactionCustomer'Text Data.Text.Internal.Text
  | CustomerCashBalanceTransactionCustomer'Customer Customer
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CustomerCashBalanceTransactionCustomer'Variants
    where {toJSON (CustomerCashBalanceTransactionCustomer'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (CustomerCashBalanceTransactionCustomer'Customer a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON CustomerCashBalanceTransactionCustomer'Variants
    where {parseJSON val = case (CustomerCashBalanceTransactionCustomer'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CustomerCashBalanceTransactionCustomer'Customer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.customer_cash_balance_transaction.properties.type@ in the specification.
-- 
-- The type of the cash balance transaction. New types may be added in future. See [Customer Balance](https:\/\/stripe.com\/docs\/payments\/customer-balance\#types) to learn more about these types.
data CustomerCashBalanceTransactionType' =
   CustomerCashBalanceTransactionType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CustomerCashBalanceTransactionType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CustomerCashBalanceTransactionType'EnumAdjustedForOverdraft -- ^ Represents the JSON value @"adjusted_for_overdraft"@
  | CustomerCashBalanceTransactionType'EnumAppliedToPayment -- ^ Represents the JSON value @"applied_to_payment"@
  | CustomerCashBalanceTransactionType'EnumFunded -- ^ Represents the JSON value @"funded"@
  | CustomerCashBalanceTransactionType'EnumFundingReversed -- ^ Represents the JSON value @"funding_reversed"@
  | CustomerCashBalanceTransactionType'EnumRefundedFromPayment -- ^ Represents the JSON value @"refunded_from_payment"@
  | CustomerCashBalanceTransactionType'EnumReturnCanceled -- ^ Represents the JSON value @"return_canceled"@
  | CustomerCashBalanceTransactionType'EnumReturnInitiated -- ^ Represents the JSON value @"return_initiated"@
  | CustomerCashBalanceTransactionType'EnumTransferredToBalance -- ^ Represents the JSON value @"transferred_to_balance"@
  | CustomerCashBalanceTransactionType'EnumUnappliedFromPayment -- ^ Represents the JSON value @"unapplied_from_payment"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CustomerCashBalanceTransactionType'
    where {toJSON (CustomerCashBalanceTransactionType'Other val) = val;
           toJSON (CustomerCashBalanceTransactionType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CustomerCashBalanceTransactionType'EnumAdjustedForOverdraft) = "adjusted_for_overdraft";
           toJSON (CustomerCashBalanceTransactionType'EnumAppliedToPayment) = "applied_to_payment";
           toJSON (CustomerCashBalanceTransactionType'EnumFunded) = "funded";
           toJSON (CustomerCashBalanceTransactionType'EnumFundingReversed) = "funding_reversed";
           toJSON (CustomerCashBalanceTransactionType'EnumRefundedFromPayment) = "refunded_from_payment";
           toJSON (CustomerCashBalanceTransactionType'EnumReturnCanceled) = "return_canceled";
           toJSON (CustomerCashBalanceTransactionType'EnumReturnInitiated) = "return_initiated";
           toJSON (CustomerCashBalanceTransactionType'EnumTransferredToBalance) = "transferred_to_balance";
           toJSON (CustomerCashBalanceTransactionType'EnumUnappliedFromPayment) = "unapplied_from_payment"}
instance Data.Aeson.Types.FromJSON.FromJSON CustomerCashBalanceTransactionType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "adjusted_for_overdraft" -> CustomerCashBalanceTransactionType'EnumAdjustedForOverdraft
                                             | val GHC.Classes.== "applied_to_payment" -> CustomerCashBalanceTransactionType'EnumAppliedToPayment
                                             | val GHC.Classes.== "funded" -> CustomerCashBalanceTransactionType'EnumFunded
                                             | val GHC.Classes.== "funding_reversed" -> CustomerCashBalanceTransactionType'EnumFundingReversed
                                             | val GHC.Classes.== "refunded_from_payment" -> CustomerCashBalanceTransactionType'EnumRefundedFromPayment
                                             | val GHC.Classes.== "return_canceled" -> CustomerCashBalanceTransactionType'EnumReturnCanceled
                                             | val GHC.Classes.== "return_initiated" -> CustomerCashBalanceTransactionType'EnumReturnInitiated
                                             | val GHC.Classes.== "transferred_to_balance" -> CustomerCashBalanceTransactionType'EnumTransferredToBalance
                                             | val GHC.Classes.== "unapplied_from_payment" -> CustomerCashBalanceTransactionType'EnumUnappliedFromPayment
                                             | GHC.Base.otherwise -> CustomerCashBalanceTransactionType'Other val)}
