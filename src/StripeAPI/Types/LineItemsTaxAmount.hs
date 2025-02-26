-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema LineItemsTaxAmount
module StripeAPI.Types.LineItemsTaxAmount where

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
import {-# SOURCE #-} StripeAPI.Types.TaxRate

-- | Defines the object schema located at @components.schemas.line_items_tax_amount@ in the specification.
-- 
-- 
data LineItemsTaxAmount = LineItemsTaxAmount {
  -- | amount: Amount of tax applied for this rate.
  lineItemsTaxAmountAmount :: GHC.Types.Int
  -- | rate: Tax rates can be applied to [invoices](https:\/\/stripe.com\/docs\/billing\/invoices\/tax-rates), [subscriptions](https:\/\/stripe.com\/docs\/billing\/subscriptions\/taxes) and [Checkout Sessions](https:\/\/stripe.com\/docs\/payments\/checkout\/set-up-a-subscription\#tax-rates) to collect tax.
  -- 
  -- Related guide: [Tax rates](https:\/\/stripe.com\/docs\/billing\/taxes\/tax-rates)
  , lineItemsTaxAmountRate :: TaxRate
  -- | taxability_reason: The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
  , lineItemsTaxAmountTaxabilityReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable LineItemsTaxAmountTaxabilityReason'NonNullable))
  -- | taxable_amount: The amount on which tax is calculated, in cents (or local equivalent).
  , lineItemsTaxAmountTaxableAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON LineItemsTaxAmount
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= lineItemsTaxAmountAmount obj] : ["rate" Data.Aeson.Types.ToJSON..= lineItemsTaxAmountRate obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("taxability_reason" Data.Aeson.Types.ToJSON..=)) (lineItemsTaxAmountTaxabilityReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("taxable_amount" Data.Aeson.Types.ToJSON..=)) (lineItemsTaxAmountTaxableAmount obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= lineItemsTaxAmountAmount obj] : ["rate" Data.Aeson.Types.ToJSON..= lineItemsTaxAmountRate obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("taxability_reason" Data.Aeson.Types.ToJSON..=)) (lineItemsTaxAmountTaxabilityReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("taxable_amount" Data.Aeson.Types.ToJSON..=)) (lineItemsTaxAmountTaxableAmount obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON LineItemsTaxAmount
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "LineItemsTaxAmount" (\obj -> (((GHC.Base.pure LineItemsTaxAmount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "taxability_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "taxable_amount"))}
-- | Create a new 'LineItemsTaxAmount' with all required fields.
mkLineItemsTaxAmount :: GHC.Types.Int -- ^ 'lineItemsTaxAmountAmount'
  -> TaxRate -- ^ 'lineItemsTaxAmountRate'
  -> LineItemsTaxAmount
mkLineItemsTaxAmount lineItemsTaxAmountAmount lineItemsTaxAmountRate = LineItemsTaxAmount{lineItemsTaxAmountAmount = lineItemsTaxAmountAmount,
                                                                                          lineItemsTaxAmountRate = lineItemsTaxAmountRate,
                                                                                          lineItemsTaxAmountTaxabilityReason = GHC.Maybe.Nothing,
                                                                                          lineItemsTaxAmountTaxableAmount = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.line_items_tax_amount.properties.taxability_reason@ in the specification.
-- 
-- The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
data LineItemsTaxAmountTaxabilityReason'NonNullable =
   LineItemsTaxAmountTaxabilityReason'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | LineItemsTaxAmountTaxabilityReason'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumCustomerExempt -- ^ Represents the JSON value @"customer_exempt"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumNotCollecting -- ^ Represents the JSON value @"not_collecting"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumNotSubjectToTax -- ^ Represents the JSON value @"not_subject_to_tax"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumNotSupported -- ^ Represents the JSON value @"not_supported"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumPortionProductExempt -- ^ Represents the JSON value @"portion_product_exempt"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumPortionReducedRated -- ^ Represents the JSON value @"portion_reduced_rated"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumPortionStandardRated -- ^ Represents the JSON value @"portion_standard_rated"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumProductExempt -- ^ Represents the JSON value @"product_exempt"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumProductExemptHoliday -- ^ Represents the JSON value @"product_exempt_holiday"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumProportionallyRated -- ^ Represents the JSON value @"proportionally_rated"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumReducedRated -- ^ Represents the JSON value @"reduced_rated"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumReverseCharge -- ^ Represents the JSON value @"reverse_charge"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumStandardRated -- ^ Represents the JSON value @"standard_rated"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumTaxableBasisReduced -- ^ Represents the JSON value @"taxable_basis_reduced"@
  | LineItemsTaxAmountTaxabilityReason'NonNullableEnumZeroRated -- ^ Represents the JSON value @"zero_rated"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON LineItemsTaxAmountTaxabilityReason'NonNullable
    where {toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableOther val) = val;
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumCustomerExempt) = "customer_exempt";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumNotCollecting) = "not_collecting";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumNotSubjectToTax) = "not_subject_to_tax";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumNotSupported) = "not_supported";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumPortionProductExempt) = "portion_product_exempt";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumPortionReducedRated) = "portion_reduced_rated";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumPortionStandardRated) = "portion_standard_rated";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumProductExempt) = "product_exempt";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumProductExemptHoliday) = "product_exempt_holiday";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumProportionallyRated) = "proportionally_rated";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumReducedRated) = "reduced_rated";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumReverseCharge) = "reverse_charge";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumStandardRated) = "standard_rated";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumTaxableBasisReduced) = "taxable_basis_reduced";
           toJSON (LineItemsTaxAmountTaxabilityReason'NonNullableEnumZeroRated) = "zero_rated"}
instance Data.Aeson.Types.FromJSON.FromJSON LineItemsTaxAmountTaxabilityReason'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "customer_exempt" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumCustomerExempt
                                             | val GHC.Classes.== "not_collecting" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumNotCollecting
                                             | val GHC.Classes.== "not_subject_to_tax" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumNotSubjectToTax
                                             | val GHC.Classes.== "not_supported" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumNotSupported
                                             | val GHC.Classes.== "portion_product_exempt" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumPortionProductExempt
                                             | val GHC.Classes.== "portion_reduced_rated" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumPortionReducedRated
                                             | val GHC.Classes.== "portion_standard_rated" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumPortionStandardRated
                                             | val GHC.Classes.== "product_exempt" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumProductExempt
                                             | val GHC.Classes.== "product_exempt_holiday" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumProductExemptHoliday
                                             | val GHC.Classes.== "proportionally_rated" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumProportionallyRated
                                             | val GHC.Classes.== "reduced_rated" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumReducedRated
                                             | val GHC.Classes.== "reverse_charge" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumReverseCharge
                                             | val GHC.Classes.== "standard_rated" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumStandardRated
                                             | val GHC.Classes.== "taxable_basis_reduced" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumTaxableBasisReduced
                                             | val GHC.Classes.== "zero_rated" -> LineItemsTaxAmountTaxabilityReason'NonNullableEnumZeroRated
                                             | GHC.Base.otherwise -> LineItemsTaxAmountTaxabilityReason'NonNullableOther val)}
