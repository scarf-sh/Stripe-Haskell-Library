{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema IssuingCardGooglePay
module StripeAPI.Types.IssuingCardGooglePay where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.issuing_card_google_pay@ in the specification.
data IssuingCardGooglePay = IssuingCardGooglePay
  { -- | eligible: Google Pay Eligibility
    issuingCardGooglePayEligible :: GHC.Types.Bool,
    -- | ineligible_reason: Reason the card is ineligible for Google Pay
    issuingCardGooglePayIneligibleReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardGooglePayIneligibleReason'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardGooglePay where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["eligible" Data.Aeson.Types.ToJSON..= issuingCardGooglePayEligible obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ineligible_reason" Data.Aeson.Types.ToJSON..=)) (issuingCardGooglePayIneligibleReason obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["eligible" Data.Aeson.Types.ToJSON..= issuingCardGooglePayEligible obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ineligible_reason" Data.Aeson.Types.ToJSON..=)) (issuingCardGooglePayIneligibleReason obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardGooglePay where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardGooglePay" (\obj -> (GHC.Base.pure IssuingCardGooglePay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "eligible")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ineligible_reason"))

-- | Create a new 'IssuingCardGooglePay' with all required fields.
mkIssuingCardGooglePay ::
  -- | 'issuingCardGooglePayEligible'
  GHC.Types.Bool ->
  IssuingCardGooglePay
mkIssuingCardGooglePay issuingCardGooglePayEligible =
  IssuingCardGooglePay
    { issuingCardGooglePayEligible = issuingCardGooglePayEligible,
      issuingCardGooglePayIneligibleReason = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.issuing_card_google_pay.properties.ineligible_reason@ in the specification.
--
-- Reason the card is ineligible for Google Pay
data IssuingCardGooglePayIneligibleReason'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingCardGooglePayIneligibleReason'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingCardGooglePayIneligibleReason'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"missing_agreement"@
    IssuingCardGooglePayIneligibleReason'NonNullableEnumMissingAgreement
  | -- | Represents the JSON value @"missing_cardholder_contact"@
    IssuingCardGooglePayIneligibleReason'NonNullableEnumMissingCardholderContact
  | -- | Represents the JSON value @"unsupported_region"@
    IssuingCardGooglePayIneligibleReason'NonNullableEnumUnsupportedRegion
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardGooglePayIneligibleReason'NonNullable where
  toJSON (IssuingCardGooglePayIneligibleReason'NonNullableOther val) = val
  toJSON (IssuingCardGooglePayIneligibleReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingCardGooglePayIneligibleReason'NonNullableEnumMissingAgreement) = "missing_agreement"
  toJSON (IssuingCardGooglePayIneligibleReason'NonNullableEnumMissingCardholderContact) = "missing_cardholder_contact"
  toJSON (IssuingCardGooglePayIneligibleReason'NonNullableEnumUnsupportedRegion) = "unsupported_region"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardGooglePayIneligibleReason'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "missing_agreement" -> IssuingCardGooglePayIneligibleReason'NonNullableEnumMissingAgreement
          | val GHC.Classes.== "missing_cardholder_contact" -> IssuingCardGooglePayIneligibleReason'NonNullableEnumMissingCardholderContact
          | val GHC.Classes.== "unsupported_region" -> IssuingCardGooglePayIneligibleReason'NonNullableEnumUnsupportedRegion
          | GHC.Base.otherwise -> IssuingCardGooglePayIneligibleReason'NonNullableOther val
      )
