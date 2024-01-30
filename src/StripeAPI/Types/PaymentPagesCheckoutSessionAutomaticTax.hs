-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionAutomaticTax
module StripeAPI.Types.PaymentPagesCheckoutSessionAutomaticTax where

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
import {-# SOURCE #-} StripeAPI.Types.ConnectAccountReference

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_automatic_tax@ in the specification.
-- 
-- 
data PaymentPagesCheckoutSessionAutomaticTax = PaymentPagesCheckoutSessionAutomaticTax {
  -- | enabled: Indicates whether automatic tax is enabled for the session
  paymentPagesCheckoutSessionAutomaticTaxEnabled :: GHC.Types.Bool
  -- | liability: The account that\'s liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
  , paymentPagesCheckoutSessionAutomaticTaxLiability :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable))
  -- | status: The status of the most recent automated tax calculation for this session.
  , paymentPagesCheckoutSessionAutomaticTaxStatus :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionAutomaticTax
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionAutomaticTaxEnabled obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAutomaticTaxLiability obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAutomaticTaxStatus obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionAutomaticTaxEnabled obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAutomaticTaxLiability obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAutomaticTaxStatus obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionAutomaticTax
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionAutomaticTax" (\obj -> ((GHC.Base.pure PaymentPagesCheckoutSessionAutomaticTax GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "liability")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status"))}
-- | Create a new 'PaymentPagesCheckoutSessionAutomaticTax' with all required fields.
mkPaymentPagesCheckoutSessionAutomaticTax :: GHC.Types.Bool -- ^ 'paymentPagesCheckoutSessionAutomaticTaxEnabled'
  -> PaymentPagesCheckoutSessionAutomaticTax
mkPaymentPagesCheckoutSessionAutomaticTax paymentPagesCheckoutSessionAutomaticTaxEnabled = PaymentPagesCheckoutSessionAutomaticTax{paymentPagesCheckoutSessionAutomaticTaxEnabled = paymentPagesCheckoutSessionAutomaticTaxEnabled,
                                                                                                                                   paymentPagesCheckoutSessionAutomaticTaxLiability = GHC.Maybe.Nothing,
                                                                                                                                   paymentPagesCheckoutSessionAutomaticTaxStatus = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_automatic_tax.properties.liability.anyOf@ in the specification.
-- 
-- The account that\\\'s liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
data PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable = PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable {
  -- | account: The connected account being referenced when \`type\` is \`account\`.
  paymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount :: (GHC.Maybe.Maybe PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount'Variants)
  -- | type: Type of the account referenced.
  , paymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType :: (GHC.Maybe.Maybe PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (paymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable" (\obj -> (GHC.Base.pure PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))}
-- | Create a new 'PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable' with all required fields.
mkPaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable :: PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable
mkPaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable = PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullable{paymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount = GHC.Maybe.Nothing,
                                                                                                                              paymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.payment_pages_checkout_session_automatic_tax.properties.liability.anyOf.properties.account.anyOf@ in the specification.
-- 
-- The connected account being referenced when \`type\` is \`account\`.
data PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount'Variants =
   PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount'Text Data.Text.Internal.Text
  | PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount'Variants
    where {toJSON (PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount'Account a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount'Variants
    where {parseJSON val = case (PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableAccount'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.payment_pages_checkout_session_automatic_tax.properties.liability.anyOf.properties.type@ in the specification.
-- 
-- Type of the account referenced.
data PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType' =
   PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'EnumAccount -- ^ Represents the JSON value @"account"@
  | PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'EnumSelf -- ^ Represents the JSON value @"self"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'
    where {toJSON (PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'Other val) = val;
           toJSON (PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'EnumAccount) = "account";
           toJSON (PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'EnumSelf) = "self"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "account" -> PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'EnumAccount
                                             | val GHC.Classes.== "self" -> PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'EnumSelf
                                             | GHC.Base.otherwise -> PaymentPagesCheckoutSessionAutomaticTaxLiability'NonNullableType'Other val)}
-- | Defines the enum schema located at @components.schemas.payment_pages_checkout_session_automatic_tax.properties.status@ in the specification.
-- 
-- The status of the most recent automated tax calculation for this session.
data PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullable =
   PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableEnumComplete -- ^ Represents the JSON value @"complete"@
  | PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableEnumFailed -- ^ Represents the JSON value @"failed"@
  | PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableEnumRequiresLocationInputs -- ^ Represents the JSON value @"requires_location_inputs"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullable
    where {toJSON (PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableOther val) = val;
           toJSON (PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableEnumComplete) = "complete";
           toJSON (PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableEnumFailed) = "failed";
           toJSON (PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableEnumRequiresLocationInputs) = "requires_location_inputs"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "complete" -> PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableEnumComplete
                                             | val GHC.Classes.== "failed" -> PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableEnumFailed
                                             | val GHC.Classes.== "requires_location_inputs" -> PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableEnumRequiresLocationInputs
                                             | GHC.Base.otherwise -> PaymentPagesCheckoutSessionAutomaticTaxStatus'NonNullableOther val)}
