-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema GelatoIdNumberReport
module StripeAPI.Types.GelatoIdNumberReport where

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
import {-# SOURCE #-} StripeAPI.Types.GelatoDataIdNumberReportDate
import {-# SOURCE #-} StripeAPI.Types.GelatoIdNumberReportError

-- | Defines the object schema located at @components.schemas.gelato_id_number_report@ in the specification.
-- 
-- Result from an id_number check
data GelatoIdNumberReport = GelatoIdNumberReport {
  -- | dob: Date of birth.
  gelatoIdNumberReportDob :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoIdNumberReportDob'NonNullable))
  -- | error: Details on the verification error. Present when status is \`unverified\`.
  , gelatoIdNumberReportError :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoIdNumberReportError'NonNullable))
  -- | first_name: First name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoIdNumberReportFirstName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | id_number: ID number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoIdNumberReportIdNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | id_number_type: Type of ID number.
  , gelatoIdNumberReportIdNumberType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoIdNumberReportIdNumberType'NonNullable))
  -- | last_name: Last name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoIdNumberReportLastName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | status: Status of this \`id_number\` check.
  , gelatoIdNumberReportStatus :: GelatoIdNumberReportStatus'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReport
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dob" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportDob obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportError obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportFirstName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id_number" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportIdNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id_number_type" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportIdNumberType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportLastName obj) : ["status" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportStatus obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dob" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportDob obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportError obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportFirstName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id_number" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportIdNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id_number_type" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportIdNumberType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportLastName obj) : ["status" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportStatus obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReport
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoIdNumberReport" (\obj -> ((((((GHC.Base.pure GelatoIdNumberReport GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id_number_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))}
-- | Create a new 'GelatoIdNumberReport' with all required fields.
mkGelatoIdNumberReport :: GelatoIdNumberReportStatus' -- ^ 'gelatoIdNumberReportStatus'
  -> GelatoIdNumberReport
mkGelatoIdNumberReport gelatoIdNumberReportStatus = GelatoIdNumberReport{gelatoIdNumberReportDob = GHC.Maybe.Nothing,
                                                                         gelatoIdNumberReportError = GHC.Maybe.Nothing,
                                                                         gelatoIdNumberReportFirstName = GHC.Maybe.Nothing,
                                                                         gelatoIdNumberReportIdNumber = GHC.Maybe.Nothing,
                                                                         gelatoIdNumberReportIdNumberType = GHC.Maybe.Nothing,
                                                                         gelatoIdNumberReportLastName = GHC.Maybe.Nothing,
                                                                         gelatoIdNumberReportStatus = gelatoIdNumberReportStatus}
-- | Defines the object schema located at @components.schemas.gelato_id_number_report.properties.dob.anyOf@ in the specification.
-- 
-- Date of birth.
data GelatoIdNumberReportDob'NonNullable = GelatoIdNumberReportDob'NonNullable {
  -- | day: Numerical day between 1 and 31.
  gelatoIdNumberReportDob'NonNullableDay :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | month: Numerical month between 1 and 12.
  , gelatoIdNumberReportDob'NonNullableMonth :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | year: The four-digit year.
  , gelatoIdNumberReportDob'NonNullableYear :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReportDob'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportDob'NonNullableDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportDob'NonNullableMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportDob'NonNullableYear obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportDob'NonNullableDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportDob'NonNullableMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportDob'NonNullableYear obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReportDob'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoIdNumberReportDob'NonNullable" (\obj -> ((GHC.Base.pure GelatoIdNumberReportDob'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "year"))}
-- | Create a new 'GelatoIdNumberReportDob'NonNullable' with all required fields.
mkGelatoIdNumberReportDob'NonNullable :: GelatoIdNumberReportDob'NonNullable
mkGelatoIdNumberReportDob'NonNullable = GelatoIdNumberReportDob'NonNullable{gelatoIdNumberReportDob'NonNullableDay = GHC.Maybe.Nothing,
                                                                            gelatoIdNumberReportDob'NonNullableMonth = GHC.Maybe.Nothing,
                                                                            gelatoIdNumberReportDob'NonNullableYear = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.gelato_id_number_report.properties.error.anyOf@ in the specification.
-- 
-- Details on the verification error. Present when status is \\\`unverified\\\`.
data GelatoIdNumberReportError'NonNullable = GelatoIdNumberReportError'NonNullable {
  -- | code: A short machine-readable string giving the reason for the verification failure.
  gelatoIdNumberReportError'NonNullableCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoIdNumberReportError'NonNullableCode'NonNullable))
  -- | reason: A human-readable message giving the reason for the failure. These messages can be shown to your users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoIdNumberReportError'NonNullableReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReportError'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportError'NonNullableCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportError'NonNullableReason obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportError'NonNullableCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (gelatoIdNumberReportError'NonNullableReason obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReportError'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoIdNumberReportError'NonNullable" (\obj -> (GHC.Base.pure GelatoIdNumberReportError'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason"))}
-- | Create a new 'GelatoIdNumberReportError'NonNullable' with all required fields.
mkGelatoIdNumberReportError'NonNullable :: GelatoIdNumberReportError'NonNullable
mkGelatoIdNumberReportError'NonNullable = GelatoIdNumberReportError'NonNullable{gelatoIdNumberReportError'NonNullableCode = GHC.Maybe.Nothing,
                                                                                gelatoIdNumberReportError'NonNullableReason = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.gelato_id_number_report.properties.error.anyOf.properties.code@ in the specification.
-- 
-- A short machine-readable string giving the reason for the verification failure.
data GelatoIdNumberReportError'NonNullableCode'NonNullable =
   GelatoIdNumberReportError'NonNullableCode'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GelatoIdNumberReportError'NonNullableCode'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GelatoIdNumberReportError'NonNullableCode'NonNullableEnumIdNumberInsufficientDocumentData -- ^ Represents the JSON value @"id_number_insufficient_document_data"@
  | GelatoIdNumberReportError'NonNullableCode'NonNullableEnumIdNumberMismatch -- ^ Represents the JSON value @"id_number_mismatch"@
  | GelatoIdNumberReportError'NonNullableCode'NonNullableEnumIdNumberUnverifiedOther -- ^ Represents the JSON value @"id_number_unverified_other"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReportError'NonNullableCode'NonNullable
    where {toJSON (GelatoIdNumberReportError'NonNullableCode'NonNullableOther val) = val;
           toJSON (GelatoIdNumberReportError'NonNullableCode'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GelatoIdNumberReportError'NonNullableCode'NonNullableEnumIdNumberInsufficientDocumentData) = "id_number_insufficient_document_data";
           toJSON (GelatoIdNumberReportError'NonNullableCode'NonNullableEnumIdNumberMismatch) = "id_number_mismatch";
           toJSON (GelatoIdNumberReportError'NonNullableCode'NonNullableEnumIdNumberUnverifiedOther) = "id_number_unverified_other"}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReportError'NonNullableCode'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "id_number_insufficient_document_data" -> GelatoIdNumberReportError'NonNullableCode'NonNullableEnumIdNumberInsufficientDocumentData
                                             | val GHC.Classes.== "id_number_mismatch" -> GelatoIdNumberReportError'NonNullableCode'NonNullableEnumIdNumberMismatch
                                             | val GHC.Classes.== "id_number_unverified_other" -> GelatoIdNumberReportError'NonNullableCode'NonNullableEnumIdNumberUnverifiedOther
                                             | GHC.Base.otherwise -> GelatoIdNumberReportError'NonNullableCode'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.gelato_id_number_report.properties.id_number_type@ in the specification.
-- 
-- Type of ID number.
data GelatoIdNumberReportIdNumberType'NonNullable =
   GelatoIdNumberReportIdNumberType'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GelatoIdNumberReportIdNumberType'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GelatoIdNumberReportIdNumberType'NonNullableEnumBrCpf -- ^ Represents the JSON value @"br_cpf"@
  | GelatoIdNumberReportIdNumberType'NonNullableEnumSgNric -- ^ Represents the JSON value @"sg_nric"@
  | GelatoIdNumberReportIdNumberType'NonNullableEnumUsSsn -- ^ Represents the JSON value @"us_ssn"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReportIdNumberType'NonNullable
    where {toJSON (GelatoIdNumberReportIdNumberType'NonNullableOther val) = val;
           toJSON (GelatoIdNumberReportIdNumberType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GelatoIdNumberReportIdNumberType'NonNullableEnumBrCpf) = "br_cpf";
           toJSON (GelatoIdNumberReportIdNumberType'NonNullableEnumSgNric) = "sg_nric";
           toJSON (GelatoIdNumberReportIdNumberType'NonNullableEnumUsSsn) = "us_ssn"}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReportIdNumberType'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "br_cpf" -> GelatoIdNumberReportIdNumberType'NonNullableEnumBrCpf
                                             | val GHC.Classes.== "sg_nric" -> GelatoIdNumberReportIdNumberType'NonNullableEnumSgNric
                                             | val GHC.Classes.== "us_ssn" -> GelatoIdNumberReportIdNumberType'NonNullableEnumUsSsn
                                             | GHC.Base.otherwise -> GelatoIdNumberReportIdNumberType'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.gelato_id_number_report.properties.status@ in the specification.
-- 
-- Status of this \`id_number\` check.
data GelatoIdNumberReportStatus' =
   GelatoIdNumberReportStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GelatoIdNumberReportStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GelatoIdNumberReportStatus'EnumUnverified -- ^ Represents the JSON value @"unverified"@
  | GelatoIdNumberReportStatus'EnumVerified -- ^ Represents the JSON value @"verified"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReportStatus'
    where {toJSON (GelatoIdNumberReportStatus'Other val) = val;
           toJSON (GelatoIdNumberReportStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GelatoIdNumberReportStatus'EnumUnverified) = "unverified";
           toJSON (GelatoIdNumberReportStatus'EnumVerified) = "verified"}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReportStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "unverified" -> GelatoIdNumberReportStatus'EnumUnverified
                                             | val GHC.Classes.== "verified" -> GelatoIdNumberReportStatus'EnumVerified
                                             | GHC.Base.otherwise -> GelatoIdNumberReportStatus'Other val)}
