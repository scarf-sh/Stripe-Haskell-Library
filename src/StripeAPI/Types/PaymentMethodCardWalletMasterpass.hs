-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodCardWalletMasterpass
module StripeAPI.Types.PaymentMethodCardWalletMasterpass where

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
import {-# SOURCE #-} StripeAPI.Types.Address

-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_masterpass@ in the specification.
-- 
-- 
data PaymentMethodCardWalletMasterpass = PaymentMethodCardWalletMasterpass {
  -- | billing_address: Owner\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  paymentMethodCardWalletMasterpassBillingAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardWalletMasterpassBillingAddress'NonNullable))
  -- | email: Owner\'s verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassEmail :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | name: Owner\'s verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | shipping_address: Owner\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  , paymentMethodCardWalletMasterpassShippingAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardWalletMasterpassShippingAddress'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletMasterpass
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_address" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_address" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_address" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_address" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletMasterpass
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletMasterpass" (\obj -> (((GHC.Base.pure PaymentMethodCardWalletMasterpass GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_address"))}
-- | Create a new 'PaymentMethodCardWalletMasterpass' with all required fields.
mkPaymentMethodCardWalletMasterpass :: PaymentMethodCardWalletMasterpass
mkPaymentMethodCardWalletMasterpass = PaymentMethodCardWalletMasterpass{paymentMethodCardWalletMasterpassBillingAddress = GHC.Maybe.Nothing,
                                                                        paymentMethodCardWalletMasterpassEmail = GHC.Maybe.Nothing,
                                                                        paymentMethodCardWalletMasterpassName = GHC.Maybe.Nothing,
                                                                        paymentMethodCardWalletMasterpassShippingAddress = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_masterpass.properties.billing_address.anyOf@ in the specification.
-- 
-- Owner\\\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodCardWalletMasterpassBillingAddress'NonNullable = PaymentMethodCardWalletMasterpassBillingAddress'NonNullable {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodCardWalletMasterpassBillingAddress'NonNullableCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassBillingAddress'NonNullableCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassBillingAddress'NonNullableLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassBillingAddress'NonNullableLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassBillingAddress'NonNullablePostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | state: State, county, province, or region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassBillingAddress'NonNullableState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletMasterpassBillingAddress'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullableState obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassBillingAddress'NonNullableState obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletMasterpassBillingAddress'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletMasterpassBillingAddress'NonNullable" (\obj -> (((((GHC.Base.pure PaymentMethodCardWalletMasterpassBillingAddress'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))}
-- | Create a new 'PaymentMethodCardWalletMasterpassBillingAddress'NonNullable' with all required fields.
mkPaymentMethodCardWalletMasterpassBillingAddress'NonNullable :: PaymentMethodCardWalletMasterpassBillingAddress'NonNullable
mkPaymentMethodCardWalletMasterpassBillingAddress'NonNullable = PaymentMethodCardWalletMasterpassBillingAddress'NonNullable{paymentMethodCardWalletMasterpassBillingAddress'NonNullableCity = GHC.Maybe.Nothing,
                                                                                                                            paymentMethodCardWalletMasterpassBillingAddress'NonNullableCountry = GHC.Maybe.Nothing,
                                                                                                                            paymentMethodCardWalletMasterpassBillingAddress'NonNullableLine1 = GHC.Maybe.Nothing,
                                                                                                                            paymentMethodCardWalletMasterpassBillingAddress'NonNullableLine2 = GHC.Maybe.Nothing,
                                                                                                                            paymentMethodCardWalletMasterpassBillingAddress'NonNullablePostalCode = GHC.Maybe.Nothing,
                                                                                                                            paymentMethodCardWalletMasterpassBillingAddress'NonNullableState = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_masterpass.properties.shipping_address.anyOf@ in the specification.
-- 
-- Owner\\\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodCardWalletMasterpassShippingAddress'NonNullable = PaymentMethodCardWalletMasterpassShippingAddress'NonNullable {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodCardWalletMasterpassShippingAddress'NonNullableCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassShippingAddress'NonNullableCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassShippingAddress'NonNullableLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassShippingAddress'NonNullableLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassShippingAddress'NonNullablePostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | state: State, county, province, or region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletMasterpassShippingAddress'NonNullableState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletMasterpassShippingAddress'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullableState obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletMasterpassShippingAddress'NonNullableState obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletMasterpassShippingAddress'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletMasterpassShippingAddress'NonNullable" (\obj -> (((((GHC.Base.pure PaymentMethodCardWalletMasterpassShippingAddress'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))}
-- | Create a new 'PaymentMethodCardWalletMasterpassShippingAddress'NonNullable' with all required fields.
mkPaymentMethodCardWalletMasterpassShippingAddress'NonNullable :: PaymentMethodCardWalletMasterpassShippingAddress'NonNullable
mkPaymentMethodCardWalletMasterpassShippingAddress'NonNullable = PaymentMethodCardWalletMasterpassShippingAddress'NonNullable{paymentMethodCardWalletMasterpassShippingAddress'NonNullableCity = GHC.Maybe.Nothing,
                                                                                                                              paymentMethodCardWalletMasterpassShippingAddress'NonNullableCountry = GHC.Maybe.Nothing,
                                                                                                                              paymentMethodCardWalletMasterpassShippingAddress'NonNullableLine1 = GHC.Maybe.Nothing,
                                                                                                                              paymentMethodCardWalletMasterpassShippingAddress'NonNullableLine2 = GHC.Maybe.Nothing,
                                                                                                                              paymentMethodCardWalletMasterpassShippingAddress'NonNullablePostalCode = GHC.Maybe.Nothing,
                                                                                                                              paymentMethodCardWalletMasterpassShippingAddress'NonNullableState = GHC.Maybe.Nothing}
