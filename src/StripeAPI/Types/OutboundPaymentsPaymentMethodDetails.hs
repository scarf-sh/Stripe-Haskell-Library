-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema OutboundPaymentsPaymentMethodDetails
module StripeAPI.Types.OutboundPaymentsPaymentMethodDetails where

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
import {-# SOURCE #-} StripeAPI.Types.OutboundPaymentsPaymentMethodDetailsFinancialAccount
import {-# SOURCE #-} StripeAPI.Types.OutboundPaymentsPaymentMethodDetailsUsBankAccount
import {-# SOURCE #-} StripeAPI.Types.TreasurySharedResourceBillingDetails

-- | Defines the object schema located at @components.schemas.outbound_payments_payment_method_details@ in the specification.
-- 
-- 
data OutboundPaymentsPaymentMethodDetails = OutboundPaymentsPaymentMethodDetails {
  -- | billing_details: 
  outboundPaymentsPaymentMethodDetailsBillingDetails :: TreasurySharedResourceBillingDetails
  -- | financial_account: 
  , outboundPaymentsPaymentMethodDetailsFinancialAccount :: (GHC.Maybe.Maybe OutboundPaymentsPaymentMethodDetailsFinancialAccount)
  -- | type: The type of the payment method used in the OutboundPayment.
  , outboundPaymentsPaymentMethodDetailsType :: OutboundPaymentsPaymentMethodDetailsType'
  -- | us_bank_account: 
  , outboundPaymentsPaymentMethodDetailsUsBankAccount :: (GHC.Maybe.Maybe OutboundPaymentsPaymentMethodDetailsUsBankAccount)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OutboundPaymentsPaymentMethodDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["billing_details" Data.Aeson.Types.ToJSON..= outboundPaymentsPaymentMethodDetailsBillingDetails obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_account" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsPaymentMethodDetailsFinancialAccount obj) : ["type" Data.Aeson.Types.ToJSON..= outboundPaymentsPaymentMethodDetailsType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsPaymentMethodDetailsUsBankAccount obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["billing_details" Data.Aeson.Types.ToJSON..= outboundPaymentsPaymentMethodDetailsBillingDetails obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_account" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsPaymentMethodDetailsFinancialAccount obj) : ["type" Data.Aeson.Types.ToJSON..= outboundPaymentsPaymentMethodDetailsType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (outboundPaymentsPaymentMethodDetailsUsBankAccount obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON OutboundPaymentsPaymentMethodDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "OutboundPaymentsPaymentMethodDetails" (\obj -> (((GHC.Base.pure OutboundPaymentsPaymentMethodDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "billing_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account"))}
-- | Create a new 'OutboundPaymentsPaymentMethodDetails' with all required fields.
mkOutboundPaymentsPaymentMethodDetails :: TreasurySharedResourceBillingDetails -- ^ 'outboundPaymentsPaymentMethodDetailsBillingDetails'
  -> OutboundPaymentsPaymentMethodDetailsType' -- ^ 'outboundPaymentsPaymentMethodDetailsType'
  -> OutboundPaymentsPaymentMethodDetails
mkOutboundPaymentsPaymentMethodDetails outboundPaymentsPaymentMethodDetailsBillingDetails outboundPaymentsPaymentMethodDetailsType = OutboundPaymentsPaymentMethodDetails{outboundPaymentsPaymentMethodDetailsBillingDetails = outboundPaymentsPaymentMethodDetailsBillingDetails,
                                                                                                                                                                          outboundPaymentsPaymentMethodDetailsFinancialAccount = GHC.Maybe.Nothing,
                                                                                                                                                                          outboundPaymentsPaymentMethodDetailsType = outboundPaymentsPaymentMethodDetailsType,
                                                                                                                                                                          outboundPaymentsPaymentMethodDetailsUsBankAccount = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.outbound_payments_payment_method_details.properties.type@ in the specification.
-- 
-- The type of the payment method used in the OutboundPayment.
data OutboundPaymentsPaymentMethodDetailsType' =
   OutboundPaymentsPaymentMethodDetailsType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | OutboundPaymentsPaymentMethodDetailsType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | OutboundPaymentsPaymentMethodDetailsType'EnumFinancialAccount -- ^ Represents the JSON value @"financial_account"@
  | OutboundPaymentsPaymentMethodDetailsType'EnumUsBankAccount -- ^ Represents the JSON value @"us_bank_account"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OutboundPaymentsPaymentMethodDetailsType'
    where {toJSON (OutboundPaymentsPaymentMethodDetailsType'Other val) = val;
           toJSON (OutboundPaymentsPaymentMethodDetailsType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (OutboundPaymentsPaymentMethodDetailsType'EnumFinancialAccount) = "financial_account";
           toJSON (OutboundPaymentsPaymentMethodDetailsType'EnumUsBankAccount) = "us_bank_account"}
instance Data.Aeson.Types.FromJSON.FromJSON OutboundPaymentsPaymentMethodDetailsType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "financial_account" -> OutboundPaymentsPaymentMethodDetailsType'EnumFinancialAccount
                                             | val GHC.Classes.== "us_bank_account" -> OutboundPaymentsPaymentMethodDetailsType'EnumUsBankAccount
                                             | GHC.Base.otherwise -> OutboundPaymentsPaymentMethodDetailsType'Other val)}
