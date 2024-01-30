-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SourceTypeThreeDSecure
module StripeAPI.Types.SourceTypeThreeDSecure where

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

-- | Defines the object schema located at @components.schemas.source_type_three_d_secure@ in the specification.
-- 
-- 
data SourceTypeThreeDSecure = SourceTypeThreeDSecure {
  -- | address_line1_check
  sourceTypeThreeDSecureAddressLine1Check :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | address_zip_check
  , sourceTypeThreeDSecureAddressZipCheck :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | authenticated
  , sourceTypeThreeDSecureAuthenticated :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool))
  -- | brand
  , sourceTypeThreeDSecureBrand :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | card
  , sourceTypeThreeDSecureCard :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | country
  , sourceTypeThreeDSecureCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | customer
  , sourceTypeThreeDSecureCustomer :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | cvc_check
  , sourceTypeThreeDSecureCvcCheck :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | dynamic_last4
  , sourceTypeThreeDSecureDynamicLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | exp_month
  , sourceTypeThreeDSecureExpMonth :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | exp_year
  , sourceTypeThreeDSecureExpYear :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | fingerprint
  , sourceTypeThreeDSecureFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | funding
  , sourceTypeThreeDSecureFunding :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | last4
  , sourceTypeThreeDSecureLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | name
  , sourceTypeThreeDSecureName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | three_d_secure
  , sourceTypeThreeDSecureThreeDSecure :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | tokenization_method
  , sourceTypeThreeDSecureTokenizationMethod :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeThreeDSecure
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1_check" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureAddressLine1Check obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_zip_check" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureAddressZipCheck obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authenticated" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureAuthenticated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("brand" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureBrand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cvc_check" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureCvcCheck obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dynamic_last4" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureDynamicLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funding" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureFunding obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("three_d_secure" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureThreeDSecure obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tokenization_method" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureTokenizationMethod obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1_check" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureAddressLine1Check obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_zip_check" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureAddressZipCheck obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authenticated" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureAuthenticated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("brand" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureBrand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cvc_check" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureCvcCheck obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dynamic_last4" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureDynamicLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funding" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureFunding obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("three_d_secure" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureThreeDSecure obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tokenization_method" Data.Aeson.Types.ToJSON..=)) (sourceTypeThreeDSecureTokenizationMethod obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeThreeDSecure
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeThreeDSecure" (\obj -> ((((((((((((((((GHC.Base.pure SourceTypeThreeDSecure GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authenticated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tokenization_method"))}
-- | Create a new 'SourceTypeThreeDSecure' with all required fields.
mkSourceTypeThreeDSecure :: SourceTypeThreeDSecure
mkSourceTypeThreeDSecure = SourceTypeThreeDSecure{sourceTypeThreeDSecureAddressLine1Check = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureAddressZipCheck = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureAuthenticated = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureBrand = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureCard = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureCountry = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureCustomer = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureCvcCheck = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureDynamicLast4 = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureExpMonth = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureExpYear = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureFingerprint = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureFunding = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureLast4 = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureName = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureThreeDSecure = GHC.Maybe.Nothing,
                                                  sourceTypeThreeDSecureTokenizationMethod = GHC.Maybe.Nothing}
