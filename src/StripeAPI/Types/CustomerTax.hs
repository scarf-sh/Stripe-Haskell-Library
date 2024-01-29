{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema CustomerTax
module StripeAPI.Types.CustomerTax where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import {-# SOURCE #-} StripeAPI.Types.CustomerTaxLocation
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.customer_tax@ in the specification.
data CustomerTax = CustomerTax
  { -- | automatic_tax: Surfaces if automatic tax computation is possible given the current customer location information.
    customerTaxAutomaticTax :: CustomerTaxAutomaticTax',
    -- | ip_address: A recent IP address of the customer used for tax reporting and tax location inference.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    customerTaxIpAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | location: The customer\'s location as identified by Stripe Tax.
    customerTaxLocation :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable CustomerTaxLocation'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CustomerTax where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["automatic_tax" Data.Aeson.Types.ToJSON..= customerTaxAutomaticTax obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip_address" Data.Aeson.Types.ToJSON..=)) (customerTaxIpAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("location" Data.Aeson.Types.ToJSON..=)) (customerTaxLocation obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["automatic_tax" Data.Aeson.Types.ToJSON..= customerTaxAutomaticTax obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip_address" Data.Aeson.Types.ToJSON..=)) (customerTaxIpAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("location" Data.Aeson.Types.ToJSON..=)) (customerTaxLocation obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON CustomerTax where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomerTax" (\obj -> ((GHC.Base.pure CustomerTax GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "automatic_tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "location"))

-- | Create a new 'CustomerTax' with all required fields.
mkCustomerTax ::
  -- | 'customerTaxAutomaticTax'
  CustomerTaxAutomaticTax' ->
  CustomerTax
mkCustomerTax customerTaxAutomaticTax =
  CustomerTax
    { customerTaxAutomaticTax = customerTaxAutomaticTax,
      customerTaxIpAddress = GHC.Maybe.Nothing,
      customerTaxLocation = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.customer_tax.properties.automatic_tax@ in the specification.
--
-- Surfaces if automatic tax computation is possible given the current customer location information.
data CustomerTaxAutomaticTax'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CustomerTaxAutomaticTax'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CustomerTaxAutomaticTax'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"failed"@
    CustomerTaxAutomaticTax'EnumFailed
  | -- | Represents the JSON value @"not_collecting"@
    CustomerTaxAutomaticTax'EnumNotCollecting
  | -- | Represents the JSON value @"supported"@
    CustomerTaxAutomaticTax'EnumSupported
  | -- | Represents the JSON value @"unrecognized_location"@
    CustomerTaxAutomaticTax'EnumUnrecognizedLocation
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CustomerTaxAutomaticTax' where
  toJSON (CustomerTaxAutomaticTax'Other val) = val
  toJSON (CustomerTaxAutomaticTax'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CustomerTaxAutomaticTax'EnumFailed) = "failed"
  toJSON (CustomerTaxAutomaticTax'EnumNotCollecting) = "not_collecting"
  toJSON (CustomerTaxAutomaticTax'EnumSupported) = "supported"
  toJSON (CustomerTaxAutomaticTax'EnumUnrecognizedLocation) = "unrecognized_location"

instance Data.Aeson.Types.FromJSON.FromJSON CustomerTaxAutomaticTax' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "failed" -> CustomerTaxAutomaticTax'EnumFailed
          | val GHC.Classes.== "not_collecting" -> CustomerTaxAutomaticTax'EnumNotCollecting
          | val GHC.Classes.== "supported" -> CustomerTaxAutomaticTax'EnumSupported
          | val GHC.Classes.== "unrecognized_location" -> CustomerTaxAutomaticTax'EnumUnrecognizedLocation
          | GHC.Base.otherwise -> CustomerTaxAutomaticTax'Other val
      )

-- | Defines the object schema located at @components.schemas.customer_tax.properties.location.anyOf@ in the specification.
--
-- The customer\\\'s location as identified by Stripe Tax.
data CustomerTaxLocation'NonNullable = CustomerTaxLocation'NonNullable
  { -- | country: The customer\'s country as identified by Stripe Tax.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    customerTaxLocation'NonNullableCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | source: The data source used to infer the customer\'s location.
    customerTaxLocation'NonNullableSource :: (GHC.Maybe.Maybe CustomerTaxLocation'NonNullableSource'),
    -- | state: The customer\'s state, county, province, or region as identified by Stripe Tax.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    customerTaxLocation'NonNullableState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON CustomerTaxLocation'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (customerTaxLocation'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source" Data.Aeson.Types.ToJSON..=)) (customerTaxLocation'NonNullableSource obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (customerTaxLocation'NonNullableState obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (customerTaxLocation'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source" Data.Aeson.Types.ToJSON..=)) (customerTaxLocation'NonNullableSource obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (customerTaxLocation'NonNullableState obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON CustomerTaxLocation'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "CustomerTaxLocation'NonNullable" (\obj -> ((GHC.Base.pure CustomerTaxLocation'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))

-- | Create a new 'CustomerTaxLocation'NonNullable' with all required fields.
mkCustomerTaxLocation'NonNullable :: CustomerTaxLocation'NonNullable
mkCustomerTaxLocation'NonNullable =
  CustomerTaxLocation'NonNullable
    { customerTaxLocation'NonNullableCountry = GHC.Maybe.Nothing,
      customerTaxLocation'NonNullableSource = GHC.Maybe.Nothing,
      customerTaxLocation'NonNullableState = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.customer_tax.properties.location.anyOf.properties.source@ in the specification.
--
-- The data source used to infer the customer\'s location.
data CustomerTaxLocation'NonNullableSource'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CustomerTaxLocation'NonNullableSource'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CustomerTaxLocation'NonNullableSource'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"billing_address"@
    CustomerTaxLocation'NonNullableSource'EnumBillingAddress
  | -- | Represents the JSON value @"ip_address"@
    CustomerTaxLocation'NonNullableSource'EnumIpAddress
  | -- | Represents the JSON value @"payment_method"@
    CustomerTaxLocation'NonNullableSource'EnumPaymentMethod
  | -- | Represents the JSON value @"shipping_destination"@
    CustomerTaxLocation'NonNullableSource'EnumShippingDestination
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CustomerTaxLocation'NonNullableSource' where
  toJSON (CustomerTaxLocation'NonNullableSource'Other val) = val
  toJSON (CustomerTaxLocation'NonNullableSource'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CustomerTaxLocation'NonNullableSource'EnumBillingAddress) = "billing_address"
  toJSON (CustomerTaxLocation'NonNullableSource'EnumIpAddress) = "ip_address"
  toJSON (CustomerTaxLocation'NonNullableSource'EnumPaymentMethod) = "payment_method"
  toJSON (CustomerTaxLocation'NonNullableSource'EnumShippingDestination) = "shipping_destination"

instance Data.Aeson.Types.FromJSON.FromJSON CustomerTaxLocation'NonNullableSource' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "billing_address" -> CustomerTaxLocation'NonNullableSource'EnumBillingAddress
          | val GHC.Classes.== "ip_address" -> CustomerTaxLocation'NonNullableSource'EnumIpAddress
          | val GHC.Classes.== "payment_method" -> CustomerTaxLocation'NonNullableSource'EnumPaymentMethod
          | val GHC.Classes.== "shipping_destination" -> CustomerTaxLocation'NonNullableSource'EnumShippingDestination
          | GHC.Base.otherwise -> CustomerTaxLocation'NonNullableSource'Other val
      )
