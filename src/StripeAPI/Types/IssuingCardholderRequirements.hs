{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema IssuingCardholderRequirements
module StripeAPI.Types.IssuingCardholderRequirements where

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

-- | Defines the object schema located at @components.schemas.issuing_cardholder_requirements@ in the specification.
data IssuingCardholderRequirements = IssuingCardholderRequirements
  { -- | disabled_reason: If \`disabled_reason\` is present, all cards will decline authorizations with \`cardholder_verification_required\` reason.
    issuingCardholderRequirementsDisabledReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderRequirementsDisabledReason'NonNullable)),
    -- | past_due: Array of fields that need to be collected in order to verify and re-enable the cardholder.
    issuingCardholderRequirementsPastDue :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([IssuingCardholderRequirementsPastDue'NonNullable])))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderRequirements where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("disabled_reason" Data.Aeson.Types.ToJSON..=)) (issuingCardholderRequirementsDisabledReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("past_due" Data.Aeson.Types.ToJSON..=)) (issuingCardholderRequirementsPastDue obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("disabled_reason" Data.Aeson.Types.ToJSON..=)) (issuingCardholderRequirementsDisabledReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("past_due" Data.Aeson.Types.ToJSON..=)) (issuingCardholderRequirementsPastDue obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderRequirements where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderRequirements" (\obj -> (GHC.Base.pure IssuingCardholderRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "disabled_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "past_due"))

-- | Create a new 'IssuingCardholderRequirements' with all required fields.
mkIssuingCardholderRequirements :: IssuingCardholderRequirements
mkIssuingCardholderRequirements =
  IssuingCardholderRequirements
    { issuingCardholderRequirementsDisabledReason = GHC.Maybe.Nothing,
      issuingCardholderRequirementsPastDue = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.issuing_cardholder_requirements.properties.disabled_reason@ in the specification.
--
-- If \`disabled_reason\` is present, all cards will decline authorizations with \`cardholder_verification_required\` reason.
data IssuingCardholderRequirementsDisabledReason'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingCardholderRequirementsDisabledReason'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingCardholderRequirementsDisabledReason'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"listed"@
    IssuingCardholderRequirementsDisabledReason'NonNullableEnumListed
  | -- | Represents the JSON value @"rejected.listed"@
    IssuingCardholderRequirementsDisabledReason'NonNullableEnumRejected'listed
  | -- | Represents the JSON value @"under_review"@
    IssuingCardholderRequirementsDisabledReason'NonNullableEnumUnderReview
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderRequirementsDisabledReason'NonNullable where
  toJSON (IssuingCardholderRequirementsDisabledReason'NonNullableOther val) = val
  toJSON (IssuingCardholderRequirementsDisabledReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingCardholderRequirementsDisabledReason'NonNullableEnumListed) = "listed"
  toJSON (IssuingCardholderRequirementsDisabledReason'NonNullableEnumRejected'listed) = "rejected.listed"
  toJSON (IssuingCardholderRequirementsDisabledReason'NonNullableEnumUnderReview) = "under_review"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderRequirementsDisabledReason'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "listed" -> IssuingCardholderRequirementsDisabledReason'NonNullableEnumListed
          | val GHC.Classes.== "rejected.listed" -> IssuingCardholderRequirementsDisabledReason'NonNullableEnumRejected'listed
          | val GHC.Classes.== "under_review" -> IssuingCardholderRequirementsDisabledReason'NonNullableEnumUnderReview
          | GHC.Base.otherwise -> IssuingCardholderRequirementsDisabledReason'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.issuing_cardholder_requirements.properties.past_due.items@ in the specification.
data IssuingCardholderRequirementsPastDue'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingCardholderRequirementsPastDue'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingCardholderRequirementsPastDue'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"company.tax_id"@
    IssuingCardholderRequirementsPastDue'NonNullableEnumCompany'taxId
  | -- | Represents the JSON value @"individual.dob.day"@
    IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'dob'day
  | -- | Represents the JSON value @"individual.dob.month"@
    IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'dob'month
  | -- | Represents the JSON value @"individual.dob.year"@
    IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'dob'year
  | -- | Represents the JSON value @"individual.first_name"@
    IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'firstName
  | -- | Represents the JSON value @"individual.last_name"@
    IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'lastName
  | -- | Represents the JSON value @"individual.verification.document"@
    IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'verification'document
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderRequirementsPastDue'NonNullable where
  toJSON (IssuingCardholderRequirementsPastDue'NonNullableOther val) = val
  toJSON (IssuingCardholderRequirementsPastDue'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingCardholderRequirementsPastDue'NonNullableEnumCompany'taxId) = "company.tax_id"
  toJSON (IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'dob'day) = "individual.dob.day"
  toJSON (IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'dob'month) = "individual.dob.month"
  toJSON (IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'dob'year) = "individual.dob.year"
  toJSON (IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'firstName) = "individual.first_name"
  toJSON (IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'lastName) = "individual.last_name"
  toJSON (IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'verification'document) = "individual.verification.document"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderRequirementsPastDue'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "company.tax_id" -> IssuingCardholderRequirementsPastDue'NonNullableEnumCompany'taxId
          | val GHC.Classes.== "individual.dob.day" -> IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'dob'day
          | val GHC.Classes.== "individual.dob.month" -> IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'dob'month
          | val GHC.Classes.== "individual.dob.year" -> IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'dob'year
          | val GHC.Classes.== "individual.first_name" -> IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'firstName
          | val GHC.Classes.== "individual.last_name" -> IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'lastName
          | val GHC.Classes.== "individual.verification.document" -> IssuingCardholderRequirementsPastDue'NonNullableEnumIndividual'verification'document
          | GHC.Base.otherwise -> IssuingCardholderRequirementsPastDue'NonNullableOther val
      )
