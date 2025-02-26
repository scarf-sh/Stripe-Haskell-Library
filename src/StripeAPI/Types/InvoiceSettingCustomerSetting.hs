-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InvoiceSettingCustomerSetting
module StripeAPI.Types.InvoiceSettingCustomerSetting where

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
import {-# SOURCE #-} StripeAPI.Types.InvoiceSettingCustomField
import {-# SOURCE #-} StripeAPI.Types.InvoiceSettingRenderingOptions
import {-# SOURCE #-} StripeAPI.Types.PaymentMethod

-- | Defines the object schema located at @components.schemas.invoice_setting_customer_setting@ in the specification.
-- 
-- 
data InvoiceSettingCustomerSetting = InvoiceSettingCustomerSetting {
  -- | custom_fields: Default custom fields to be displayed on invoices for this customer.
  invoiceSettingCustomerSettingCustomFields :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([InvoiceSettingCustomField])))
  -- | default_payment_method: ID of a payment method that\'s attached to the customer, to be used as the customer\'s default payment method for subscriptions and invoices.
  , invoiceSettingCustomerSettingDefaultPaymentMethod :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoiceSettingCustomerSettingDefaultPaymentMethod'NonNullableVariants))
  -- | footer: Default footer to be displayed on invoices for this customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , invoiceSettingCustomerSettingFooter :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | rendering_options: Default options for invoice PDF rendering for this customer.
  , invoiceSettingCustomerSettingRenderingOptions :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoiceSettingCustomerSettingRenderingOptions'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoiceSettingCustomerSetting
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_fields" Data.Aeson.Types.ToJSON..=)) (invoiceSettingCustomerSettingCustomFields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_payment_method" Data.Aeson.Types.ToJSON..=)) (invoiceSettingCustomerSettingDefaultPaymentMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("footer" Data.Aeson.Types.ToJSON..=)) (invoiceSettingCustomerSettingFooter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("rendering_options" Data.Aeson.Types.ToJSON..=)) (invoiceSettingCustomerSettingRenderingOptions obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_fields" Data.Aeson.Types.ToJSON..=)) (invoiceSettingCustomerSettingCustomFields obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_payment_method" Data.Aeson.Types.ToJSON..=)) (invoiceSettingCustomerSettingDefaultPaymentMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("footer" Data.Aeson.Types.ToJSON..=)) (invoiceSettingCustomerSettingFooter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("rendering_options" Data.Aeson.Types.ToJSON..=)) (invoiceSettingCustomerSettingRenderingOptions obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceSettingCustomerSetting
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceSettingCustomerSetting" (\obj -> (((GHC.Base.pure InvoiceSettingCustomerSetting GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "footer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "rendering_options"))}
-- | Create a new 'InvoiceSettingCustomerSetting' with all required fields.
mkInvoiceSettingCustomerSetting :: InvoiceSettingCustomerSetting
mkInvoiceSettingCustomerSetting = InvoiceSettingCustomerSetting{invoiceSettingCustomerSettingCustomFields = GHC.Maybe.Nothing,
                                                                invoiceSettingCustomerSettingDefaultPaymentMethod = GHC.Maybe.Nothing,
                                                                invoiceSettingCustomerSettingFooter = GHC.Maybe.Nothing,
                                                                invoiceSettingCustomerSettingRenderingOptions = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.invoice_setting_customer_setting.properties.default_payment_method.anyOf@ in the specification.
-- 
-- ID of a payment method that\'s attached to the customer, to be used as the customer\'s default payment method for subscriptions and invoices.
data InvoiceSettingCustomerSettingDefaultPaymentMethod'NonNullableVariants =
   InvoiceSettingCustomerSettingDefaultPaymentMethod'NonNullableText Data.Text.Internal.Text
  | InvoiceSettingCustomerSettingDefaultPaymentMethod'NonNullablePaymentMethod PaymentMethod
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoiceSettingCustomerSettingDefaultPaymentMethod'NonNullableVariants
    where {toJSON (InvoiceSettingCustomerSettingDefaultPaymentMethod'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (InvoiceSettingCustomerSettingDefaultPaymentMethod'NonNullablePaymentMethod a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceSettingCustomerSettingDefaultPaymentMethod'NonNullableVariants
    where {parseJSON val = case (InvoiceSettingCustomerSettingDefaultPaymentMethod'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((InvoiceSettingCustomerSettingDefaultPaymentMethod'NonNullablePaymentMethod Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the object schema located at @components.schemas.invoice_setting_customer_setting.properties.rendering_options.anyOf@ in the specification.
-- 
-- Default options for invoice PDF rendering for this customer.
data InvoiceSettingCustomerSettingRenderingOptions'NonNullable = InvoiceSettingCustomerSettingRenderingOptions'NonNullable {
  -- | amount_tax_display: How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  invoiceSettingCustomerSettingRenderingOptions'NonNullableAmountTaxDisplay :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoiceSettingCustomerSettingRenderingOptions'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_tax_display" Data.Aeson.Types.ToJSON..=)) (invoiceSettingCustomerSettingRenderingOptions'NonNullableAmountTaxDisplay obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_tax_display" Data.Aeson.Types.ToJSON..=)) (invoiceSettingCustomerSettingRenderingOptions'NonNullableAmountTaxDisplay obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceSettingCustomerSettingRenderingOptions'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceSettingCustomerSettingRenderingOptions'NonNullable" (\obj -> GHC.Base.pure InvoiceSettingCustomerSettingRenderingOptions'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_tax_display"))}
-- | Create a new 'InvoiceSettingCustomerSettingRenderingOptions'NonNullable' with all required fields.
mkInvoiceSettingCustomerSettingRenderingOptions'NonNullable :: InvoiceSettingCustomerSettingRenderingOptions'NonNullable
mkInvoiceSettingCustomerSettingRenderingOptions'NonNullable = InvoiceSettingCustomerSettingRenderingOptions'NonNullable{invoiceSettingCustomerSettingRenderingOptions'NonNullableAmountTaxDisplay = GHC.Maybe.Nothing}
