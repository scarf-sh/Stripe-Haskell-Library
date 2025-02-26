-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TaxRate
module StripeAPI.Types.TaxRate where

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

-- | Defines the object schema located at @components.schemas.tax_rate@ in the specification.
-- 
-- Tax rates can be applied to [invoices](https:\/\/stripe.com\/docs\/billing\/invoices\/tax-rates), [subscriptions](https:\/\/stripe.com\/docs\/billing\/subscriptions\/taxes) and [Checkout Sessions](https:\/\/stripe.com\/docs\/payments\/checkout\/set-up-a-subscription\#tax-rates) to collect tax.
-- 
-- Related guide: [Tax rates](https:\/\/stripe.com\/docs\/billing\/taxes\/tax-rates)
data TaxRate = TaxRate {
  -- | active: Defaults to \`true\`. When set to \`false\`, this tax rate cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
  taxRateActive :: GHC.Types.Bool
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxRateCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , taxRateCreated :: GHC.Types.Int
  -- | description: An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxRateDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | display_name: The display name of the tax rates as it will appear to your customer on their receipt email, PDF, and the hosted invoice page.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxRateDisplayName :: Data.Text.Internal.Text
  -- | effective_percentage: Actual\/effective tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true,
  -- this percentage reflects the rate actually used to calculate tax based on the product\'s taxability
  -- and whether the user is registered to collect taxes in the corresponding jurisdiction.
  , taxRateEffectivePercentage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Double))
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxRateId :: Data.Text.Internal.Text
  -- | inclusive: This specifies if the tax rate is inclusive or exclusive.
  , taxRateInclusive :: GHC.Types.Bool
  -- | jurisdiction: The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxRateJurisdiction :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | jurisdiction_level: The level of the jurisdiction that imposes this tax rate. Will be \`null\` for manually defined tax rates.
  , taxRateJurisdictionLevel :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TaxRateJurisdictionLevel'NonNullable))
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , taxRateLivemode :: GHC.Types.Bool
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , taxRateMetadata :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object))
  -- | percentage: Tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true, this percentage includes the statutory tax rate of non-taxable jurisdictions.
  , taxRatePercentage :: GHC.Types.Double
  -- | state: [ISO 3166-2 subdivision code](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-2:US), without country prefix. For example, \"NY\" for New York, United States.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxRateState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | tax_type: The high-level tax type, such as \`vat\` or \`sales_tax\`.
  , taxRateTaxType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TaxRateTaxType'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxRate
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["active" Data.Aeson.Types.ToJSON..= taxRateActive obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (taxRateCountry obj) : ["created" Data.Aeson.Types.ToJSON..= taxRateCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (taxRateDescription obj) : ["display_name" Data.Aeson.Types.ToJSON..= taxRateDisplayName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("effective_percentage" Data.Aeson.Types.ToJSON..=)) (taxRateEffectivePercentage obj) : ["id" Data.Aeson.Types.ToJSON..= taxRateId obj] : ["inclusive" Data.Aeson.Types.ToJSON..= taxRateInclusive obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("jurisdiction" Data.Aeson.Types.ToJSON..=)) (taxRateJurisdiction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("jurisdiction_level" Data.Aeson.Types.ToJSON..=)) (taxRateJurisdictionLevel obj) : ["livemode" Data.Aeson.Types.ToJSON..= taxRateLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (taxRateMetadata obj) : ["percentage" Data.Aeson.Types.ToJSON..= taxRatePercentage obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (taxRateState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_type" Data.Aeson.Types.ToJSON..=)) (taxRateTaxType obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax_rate"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["active" Data.Aeson.Types.ToJSON..= taxRateActive obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (taxRateCountry obj) : ["created" Data.Aeson.Types.ToJSON..= taxRateCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (taxRateDescription obj) : ["display_name" Data.Aeson.Types.ToJSON..= taxRateDisplayName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("effective_percentage" Data.Aeson.Types.ToJSON..=)) (taxRateEffectivePercentage obj) : ["id" Data.Aeson.Types.ToJSON..= taxRateId obj] : ["inclusive" Data.Aeson.Types.ToJSON..= taxRateInclusive obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("jurisdiction" Data.Aeson.Types.ToJSON..=)) (taxRateJurisdiction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("jurisdiction_level" Data.Aeson.Types.ToJSON..=)) (taxRateJurisdictionLevel obj) : ["livemode" Data.Aeson.Types.ToJSON..= taxRateLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (taxRateMetadata obj) : ["percentage" Data.Aeson.Types.ToJSON..= taxRatePercentage obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (taxRateState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_type" Data.Aeson.Types.ToJSON..=)) (taxRateTaxType obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax_rate"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TaxRate
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxRate" (\obj -> ((((((((((((((GHC.Base.pure TaxRate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "effective_percentage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inclusive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "jurisdiction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "jurisdiction_level")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "percentage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_type"))}
-- | Create a new 'TaxRate' with all required fields.
mkTaxRate :: GHC.Types.Bool -- ^ 'taxRateActive'
  -> GHC.Types.Int -- ^ 'taxRateCreated'
  -> Data.Text.Internal.Text -- ^ 'taxRateDisplayName'
  -> Data.Text.Internal.Text -- ^ 'taxRateId'
  -> GHC.Types.Bool -- ^ 'taxRateInclusive'
  -> GHC.Types.Bool -- ^ 'taxRateLivemode'
  -> GHC.Types.Double -- ^ 'taxRatePercentage'
  -> TaxRate
mkTaxRate taxRateActive taxRateCreated taxRateDisplayName taxRateId taxRateInclusive taxRateLivemode taxRatePercentage = TaxRate{taxRateActive = taxRateActive,
                                                                                                                                 taxRateCountry = GHC.Maybe.Nothing,
                                                                                                                                 taxRateCreated = taxRateCreated,
                                                                                                                                 taxRateDescription = GHC.Maybe.Nothing,
                                                                                                                                 taxRateDisplayName = taxRateDisplayName,
                                                                                                                                 taxRateEffectivePercentage = GHC.Maybe.Nothing,
                                                                                                                                 taxRateId = taxRateId,
                                                                                                                                 taxRateInclusive = taxRateInclusive,
                                                                                                                                 taxRateJurisdiction = GHC.Maybe.Nothing,
                                                                                                                                 taxRateJurisdictionLevel = GHC.Maybe.Nothing,
                                                                                                                                 taxRateLivemode = taxRateLivemode,
                                                                                                                                 taxRateMetadata = GHC.Maybe.Nothing,
                                                                                                                                 taxRatePercentage = taxRatePercentage,
                                                                                                                                 taxRateState = GHC.Maybe.Nothing,
                                                                                                                                 taxRateTaxType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.tax_rate.properties.jurisdiction_level@ in the specification.
-- 
-- The level of the jurisdiction that imposes this tax rate. Will be \`null\` for manually defined tax rates.
data TaxRateJurisdictionLevel'NonNullable =
   TaxRateJurisdictionLevel'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TaxRateJurisdictionLevel'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TaxRateJurisdictionLevel'NonNullableEnumCity -- ^ Represents the JSON value @"city"@
  | TaxRateJurisdictionLevel'NonNullableEnumCountry -- ^ Represents the JSON value @"country"@
  | TaxRateJurisdictionLevel'NonNullableEnumCounty -- ^ Represents the JSON value @"county"@
  | TaxRateJurisdictionLevel'NonNullableEnumDistrict -- ^ Represents the JSON value @"district"@
  | TaxRateJurisdictionLevel'NonNullableEnumMultiple -- ^ Represents the JSON value @"multiple"@
  | TaxRateJurisdictionLevel'NonNullableEnumState -- ^ Represents the JSON value @"state"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxRateJurisdictionLevel'NonNullable
    where {toJSON (TaxRateJurisdictionLevel'NonNullableOther val) = val;
           toJSON (TaxRateJurisdictionLevel'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TaxRateJurisdictionLevel'NonNullableEnumCity) = "city";
           toJSON (TaxRateJurisdictionLevel'NonNullableEnumCountry) = "country";
           toJSON (TaxRateJurisdictionLevel'NonNullableEnumCounty) = "county";
           toJSON (TaxRateJurisdictionLevel'NonNullableEnumDistrict) = "district";
           toJSON (TaxRateJurisdictionLevel'NonNullableEnumMultiple) = "multiple";
           toJSON (TaxRateJurisdictionLevel'NonNullableEnumState) = "state"}
instance Data.Aeson.Types.FromJSON.FromJSON TaxRateJurisdictionLevel'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "city" -> TaxRateJurisdictionLevel'NonNullableEnumCity
                                             | val GHC.Classes.== "country" -> TaxRateJurisdictionLevel'NonNullableEnumCountry
                                             | val GHC.Classes.== "county" -> TaxRateJurisdictionLevel'NonNullableEnumCounty
                                             | val GHC.Classes.== "district" -> TaxRateJurisdictionLevel'NonNullableEnumDistrict
                                             | val GHC.Classes.== "multiple" -> TaxRateJurisdictionLevel'NonNullableEnumMultiple
                                             | val GHC.Classes.== "state" -> TaxRateJurisdictionLevel'NonNullableEnumState
                                             | GHC.Base.otherwise -> TaxRateJurisdictionLevel'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.tax_rate.properties.tax_type@ in the specification.
-- 
-- The high-level tax type, such as \`vat\` or \`sales_tax\`.
data TaxRateTaxType'NonNullable =
   TaxRateTaxType'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TaxRateTaxType'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TaxRateTaxType'NonNullableEnumAmusementTax -- ^ Represents the JSON value @"amusement_tax"@
  | TaxRateTaxType'NonNullableEnumCommunicationsTax -- ^ Represents the JSON value @"communications_tax"@
  | TaxRateTaxType'NonNullableEnumGst -- ^ Represents the JSON value @"gst"@
  | TaxRateTaxType'NonNullableEnumHst -- ^ Represents the JSON value @"hst"@
  | TaxRateTaxType'NonNullableEnumIgst -- ^ Represents the JSON value @"igst"@
  | TaxRateTaxType'NonNullableEnumJct -- ^ Represents the JSON value @"jct"@
  | TaxRateTaxType'NonNullableEnumLeaseTax -- ^ Represents the JSON value @"lease_tax"@
  | TaxRateTaxType'NonNullableEnumPst -- ^ Represents the JSON value @"pst"@
  | TaxRateTaxType'NonNullableEnumQst -- ^ Represents the JSON value @"qst"@
  | TaxRateTaxType'NonNullableEnumRst -- ^ Represents the JSON value @"rst"@
  | TaxRateTaxType'NonNullableEnumSalesTax -- ^ Represents the JSON value @"sales_tax"@
  | TaxRateTaxType'NonNullableEnumServiceTax -- ^ Represents the JSON value @"service_tax"@
  | TaxRateTaxType'NonNullableEnumVat -- ^ Represents the JSON value @"vat"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxRateTaxType'NonNullable
    where {toJSON (TaxRateTaxType'NonNullableOther val) = val;
           toJSON (TaxRateTaxType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TaxRateTaxType'NonNullableEnumAmusementTax) = "amusement_tax";
           toJSON (TaxRateTaxType'NonNullableEnumCommunicationsTax) = "communications_tax";
           toJSON (TaxRateTaxType'NonNullableEnumGst) = "gst";
           toJSON (TaxRateTaxType'NonNullableEnumHst) = "hst";
           toJSON (TaxRateTaxType'NonNullableEnumIgst) = "igst";
           toJSON (TaxRateTaxType'NonNullableEnumJct) = "jct";
           toJSON (TaxRateTaxType'NonNullableEnumLeaseTax) = "lease_tax";
           toJSON (TaxRateTaxType'NonNullableEnumPst) = "pst";
           toJSON (TaxRateTaxType'NonNullableEnumQst) = "qst";
           toJSON (TaxRateTaxType'NonNullableEnumRst) = "rst";
           toJSON (TaxRateTaxType'NonNullableEnumSalesTax) = "sales_tax";
           toJSON (TaxRateTaxType'NonNullableEnumServiceTax) = "service_tax";
           toJSON (TaxRateTaxType'NonNullableEnumVat) = "vat"}
instance Data.Aeson.Types.FromJSON.FromJSON TaxRateTaxType'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "amusement_tax" -> TaxRateTaxType'NonNullableEnumAmusementTax
                                             | val GHC.Classes.== "communications_tax" -> TaxRateTaxType'NonNullableEnumCommunicationsTax
                                             | val GHC.Classes.== "gst" -> TaxRateTaxType'NonNullableEnumGst
                                             | val GHC.Classes.== "hst" -> TaxRateTaxType'NonNullableEnumHst
                                             | val GHC.Classes.== "igst" -> TaxRateTaxType'NonNullableEnumIgst
                                             | val GHC.Classes.== "jct" -> TaxRateTaxType'NonNullableEnumJct
                                             | val GHC.Classes.== "lease_tax" -> TaxRateTaxType'NonNullableEnumLeaseTax
                                             | val GHC.Classes.== "pst" -> TaxRateTaxType'NonNullableEnumPst
                                             | val GHC.Classes.== "qst" -> TaxRateTaxType'NonNullableEnumQst
                                             | val GHC.Classes.== "rst" -> TaxRateTaxType'NonNullableEnumRst
                                             | val GHC.Classes.== "sales_tax" -> TaxRateTaxType'NonNullableEnumSalesTax
                                             | val GHC.Classes.== "service_tax" -> TaxRateTaxType'NonNullableEnumServiceTax
                                             | val GHC.Classes.== "vat" -> TaxRateTaxType'NonNullableEnumVat
                                             | GHC.Base.otherwise -> TaxRateTaxType'NonNullableOther val)}
