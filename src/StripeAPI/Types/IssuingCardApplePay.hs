-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IssuingCardApplePay
module StripeAPI.Types.IssuingCardApplePay where

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

-- | Defines the object schema located at @components.schemas.issuing_card_apple_pay@ in the specification.
-- 
-- 
data IssuingCardApplePay = IssuingCardApplePay {
  -- | eligible: Apple Pay Eligibility
  issuingCardApplePayEligible :: GHC.Types.Bool
  -- | ineligible_reason: Reason the card is ineligible for Apple Pay
  , issuingCardApplePayIneligibleReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardApplePayIneligibleReason'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardApplePay
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["eligible" Data.Aeson.Types.ToJSON..= issuingCardApplePayEligible obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ineligible_reason" Data.Aeson.Types.ToJSON..=)) (issuingCardApplePayIneligibleReason obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["eligible" Data.Aeson.Types.ToJSON..= issuingCardApplePayEligible obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ineligible_reason" Data.Aeson.Types.ToJSON..=)) (issuingCardApplePayIneligibleReason obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardApplePay
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardApplePay" (\obj -> (GHC.Base.pure IssuingCardApplePay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "eligible")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ineligible_reason"))}
-- | Create a new 'IssuingCardApplePay' with all required fields.
mkIssuingCardApplePay :: GHC.Types.Bool -- ^ 'issuingCardApplePayEligible'
  -> IssuingCardApplePay
mkIssuingCardApplePay issuingCardApplePayEligible = IssuingCardApplePay{issuingCardApplePayEligible = issuingCardApplePayEligible,
                                                                        issuingCardApplePayIneligibleReason = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.issuing_card_apple_pay.properties.ineligible_reason@ in the specification.
-- 
-- Reason the card is ineligible for Apple Pay
data IssuingCardApplePayIneligibleReason'NonNullable =
   IssuingCardApplePayIneligibleReason'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | IssuingCardApplePayIneligibleReason'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | IssuingCardApplePayIneligibleReason'NonNullableEnumMissingAgreement -- ^ Represents the JSON value @"missing_agreement"@
  | IssuingCardApplePayIneligibleReason'NonNullableEnumMissingCardholderContact -- ^ Represents the JSON value @"missing_cardholder_contact"@
  | IssuingCardApplePayIneligibleReason'NonNullableEnumUnsupportedRegion -- ^ Represents the JSON value @"unsupported_region"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardApplePayIneligibleReason'NonNullable
    where {toJSON (IssuingCardApplePayIneligibleReason'NonNullableOther val) = val;
           toJSON (IssuingCardApplePayIneligibleReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (IssuingCardApplePayIneligibleReason'NonNullableEnumMissingAgreement) = "missing_agreement";
           toJSON (IssuingCardApplePayIneligibleReason'NonNullableEnumMissingCardholderContact) = "missing_cardholder_contact";
           toJSON (IssuingCardApplePayIneligibleReason'NonNullableEnumUnsupportedRegion) = "unsupported_region"}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardApplePayIneligibleReason'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "missing_agreement" -> IssuingCardApplePayIneligibleReason'NonNullableEnumMissingAgreement
                                             | val GHC.Classes.== "missing_cardholder_contact" -> IssuingCardApplePayIneligibleReason'NonNullableEnumMissingCardholderContact
                                             | val GHC.Classes.== "unsupported_region" -> IssuingCardApplePayIneligibleReason'NonNullableEnumUnsupportedRegion
                                             | GHC.Base.otherwise -> IssuingCardApplePayIneligibleReason'NonNullableOther val)}
