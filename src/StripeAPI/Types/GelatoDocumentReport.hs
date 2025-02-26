-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema GelatoDocumentReport
module StripeAPI.Types.GelatoDocumentReport where

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
import {-# SOURCE #-} StripeAPI.Types.GelatoDataDocumentReportDateOfBirth
import {-# SOURCE #-} StripeAPI.Types.GelatoDataDocumentReportExpirationDate
import {-# SOURCE #-} StripeAPI.Types.GelatoDataDocumentReportIssuedDate
import {-# SOURCE #-} StripeAPI.Types.GelatoDocumentReportError

-- | Defines the object schema located at @components.schemas.gelato_document_report@ in the specification.
-- 
-- Result from a document check
data GelatoDocumentReport = GelatoDocumentReport {
  -- | address: Address as it appears in the document.
  gelatoDocumentReportAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoDocumentReportAddress'NonNullable))
  -- | dob: Date of birth as it appears in the document.
  , gelatoDocumentReportDob :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoDocumentReportDob'NonNullable))
  -- | error: Details on the verification error. Present when status is \`unverified\`.
  , gelatoDocumentReportError :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoDocumentReportError'NonNullable))
  -- | expiration_date: Expiration date of the document.
  , gelatoDocumentReportExpirationDate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoDocumentReportExpirationDate'NonNullable))
  -- | files: Array of [File](https:\/\/stripe.com\/docs\/api\/files) ids containing images for this document.
  , gelatoDocumentReportFiles :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([Data.Text.Internal.Text])))
  -- | first_name: First name as it appears in the document.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoDocumentReportFirstName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | issued_date: Issued date of the document.
  , gelatoDocumentReportIssuedDate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoDocumentReportIssuedDate'NonNullable))
  -- | issuing_country: Issuing country of the document.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoDocumentReportIssuingCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | last_name: Last name as it appears in the document.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoDocumentReportLastName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | number: Document ID number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoDocumentReportNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | status: Status of this \`document\` check.
  , gelatoDocumentReportStatus :: GelatoDocumentReportStatus'
  -- | type: Type of the document.
  , gelatoDocumentReportType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoDocumentReportType'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoDocumentReport
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dob" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportDob obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportError obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expiration_date" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportExpirationDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("files" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportFiles obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportFirstName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issued_date" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportIssuedDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_country" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportIssuingCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportLastName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("number" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportNumber obj) : ["status" Data.Aeson.Types.ToJSON..= gelatoDocumentReportStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportType obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dob" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportDob obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportError obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expiration_date" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportExpirationDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("files" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportFiles obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_name" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportFirstName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issued_date" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportIssuedDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_country" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportIssuingCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last_name" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportLastName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("number" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportNumber obj) : ["status" Data.Aeson.Types.ToJSON..= gelatoDocumentReportStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportType obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoDocumentReport
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoDocumentReport" (\obj -> (((((((((((GHC.Base.pure GelatoDocumentReport GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expiration_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "files")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "issued_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "issuing_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))}
-- | Create a new 'GelatoDocumentReport' with all required fields.
mkGelatoDocumentReport :: GelatoDocumentReportStatus' -- ^ 'gelatoDocumentReportStatus'
  -> GelatoDocumentReport
mkGelatoDocumentReport gelatoDocumentReportStatus = GelatoDocumentReport{gelatoDocumentReportAddress = GHC.Maybe.Nothing,
                                                                         gelatoDocumentReportDob = GHC.Maybe.Nothing,
                                                                         gelatoDocumentReportError = GHC.Maybe.Nothing,
                                                                         gelatoDocumentReportExpirationDate = GHC.Maybe.Nothing,
                                                                         gelatoDocumentReportFiles = GHC.Maybe.Nothing,
                                                                         gelatoDocumentReportFirstName = GHC.Maybe.Nothing,
                                                                         gelatoDocumentReportIssuedDate = GHC.Maybe.Nothing,
                                                                         gelatoDocumentReportIssuingCountry = GHC.Maybe.Nothing,
                                                                         gelatoDocumentReportLastName = GHC.Maybe.Nothing,
                                                                         gelatoDocumentReportNumber = GHC.Maybe.Nothing,
                                                                         gelatoDocumentReportStatus = gelatoDocumentReportStatus,
                                                                         gelatoDocumentReportType = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.gelato_document_report.properties.address.anyOf@ in the specification.
-- 
-- Address as it appears in the document.
data GelatoDocumentReportAddress'NonNullable = GelatoDocumentReportAddress'NonNullable {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  gelatoDocumentReportAddress'NonNullableCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoDocumentReportAddress'NonNullableCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoDocumentReportAddress'NonNullableLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoDocumentReportAddress'NonNullableLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoDocumentReportAddress'NonNullablePostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | state: State, county, province, or region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoDocumentReportAddress'NonNullableState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoDocumentReportAddress'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullableState obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportAddress'NonNullableState obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoDocumentReportAddress'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoDocumentReportAddress'NonNullable" (\obj -> (((((GHC.Base.pure GelatoDocumentReportAddress'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))}
-- | Create a new 'GelatoDocumentReportAddress'NonNullable' with all required fields.
mkGelatoDocumentReportAddress'NonNullable :: GelatoDocumentReportAddress'NonNullable
mkGelatoDocumentReportAddress'NonNullable = GelatoDocumentReportAddress'NonNullable{gelatoDocumentReportAddress'NonNullableCity = GHC.Maybe.Nothing,
                                                                                    gelatoDocumentReportAddress'NonNullableCountry = GHC.Maybe.Nothing,
                                                                                    gelatoDocumentReportAddress'NonNullableLine1 = GHC.Maybe.Nothing,
                                                                                    gelatoDocumentReportAddress'NonNullableLine2 = GHC.Maybe.Nothing,
                                                                                    gelatoDocumentReportAddress'NonNullablePostalCode = GHC.Maybe.Nothing,
                                                                                    gelatoDocumentReportAddress'NonNullableState = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.gelato_document_report.properties.dob.anyOf@ in the specification.
-- 
-- Date of birth as it appears in the document.
data GelatoDocumentReportDob'NonNullable = GelatoDocumentReportDob'NonNullable {
  -- | day: Numerical day between 1 and 31.
  gelatoDocumentReportDob'NonNullableDay :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | month: Numerical month between 1 and 12.
  , gelatoDocumentReportDob'NonNullableMonth :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | year: The four-digit year.
  , gelatoDocumentReportDob'NonNullableYear :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoDocumentReportDob'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportDob'NonNullableDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportDob'NonNullableMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportDob'NonNullableYear obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportDob'NonNullableDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportDob'NonNullableMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportDob'NonNullableYear obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoDocumentReportDob'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoDocumentReportDob'NonNullable" (\obj -> ((GHC.Base.pure GelatoDocumentReportDob'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "year"))}
-- | Create a new 'GelatoDocumentReportDob'NonNullable' with all required fields.
mkGelatoDocumentReportDob'NonNullable :: GelatoDocumentReportDob'NonNullable
mkGelatoDocumentReportDob'NonNullable = GelatoDocumentReportDob'NonNullable{gelatoDocumentReportDob'NonNullableDay = GHC.Maybe.Nothing,
                                                                            gelatoDocumentReportDob'NonNullableMonth = GHC.Maybe.Nothing,
                                                                            gelatoDocumentReportDob'NonNullableYear = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.gelato_document_report.properties.error.anyOf@ in the specification.
-- 
-- Details on the verification error. Present when status is \\\`unverified\\\`.
data GelatoDocumentReportError'NonNullable = GelatoDocumentReportError'NonNullable {
  -- | code: A short machine-readable string giving the reason for the verification failure.
  gelatoDocumentReportError'NonNullableCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoDocumentReportError'NonNullableCode'NonNullable))
  -- | reason: A human-readable message giving the reason for the failure. These messages can be shown to your users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , gelatoDocumentReportError'NonNullableReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoDocumentReportError'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportError'NonNullableCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportError'NonNullableReason obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportError'NonNullableCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportError'NonNullableReason obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoDocumentReportError'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoDocumentReportError'NonNullable" (\obj -> (GHC.Base.pure GelatoDocumentReportError'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason"))}
-- | Create a new 'GelatoDocumentReportError'NonNullable' with all required fields.
mkGelatoDocumentReportError'NonNullable :: GelatoDocumentReportError'NonNullable
mkGelatoDocumentReportError'NonNullable = GelatoDocumentReportError'NonNullable{gelatoDocumentReportError'NonNullableCode = GHC.Maybe.Nothing,
                                                                                gelatoDocumentReportError'NonNullableReason = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.gelato_document_report.properties.error.anyOf.properties.code@ in the specification.
-- 
-- A short machine-readable string giving the reason for the verification failure.
data GelatoDocumentReportError'NonNullableCode'NonNullable =
   GelatoDocumentReportError'NonNullableCode'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GelatoDocumentReportError'NonNullableCode'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GelatoDocumentReportError'NonNullableCode'NonNullableEnumDocumentExpired -- ^ Represents the JSON value @"document_expired"@
  | GelatoDocumentReportError'NonNullableCode'NonNullableEnumDocumentTypeNotSupported -- ^ Represents the JSON value @"document_type_not_supported"@
  | GelatoDocumentReportError'NonNullableCode'NonNullableEnumDocumentUnverifiedOther -- ^ Represents the JSON value @"document_unverified_other"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoDocumentReportError'NonNullableCode'NonNullable
    where {toJSON (GelatoDocumentReportError'NonNullableCode'NonNullableOther val) = val;
           toJSON (GelatoDocumentReportError'NonNullableCode'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GelatoDocumentReportError'NonNullableCode'NonNullableEnumDocumentExpired) = "document_expired";
           toJSON (GelatoDocumentReportError'NonNullableCode'NonNullableEnumDocumentTypeNotSupported) = "document_type_not_supported";
           toJSON (GelatoDocumentReportError'NonNullableCode'NonNullableEnumDocumentUnverifiedOther) = "document_unverified_other"}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoDocumentReportError'NonNullableCode'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "document_expired" -> GelatoDocumentReportError'NonNullableCode'NonNullableEnumDocumentExpired
                                             | val GHC.Classes.== "document_type_not_supported" -> GelatoDocumentReportError'NonNullableCode'NonNullableEnumDocumentTypeNotSupported
                                             | val GHC.Classes.== "document_unverified_other" -> GelatoDocumentReportError'NonNullableCode'NonNullableEnumDocumentUnverifiedOther
                                             | GHC.Base.otherwise -> GelatoDocumentReportError'NonNullableCode'NonNullableOther val)}
-- | Defines the object schema located at @components.schemas.gelato_document_report.properties.expiration_date.anyOf@ in the specification.
-- 
-- Expiration date of the document.
data GelatoDocumentReportExpirationDate'NonNullable = GelatoDocumentReportExpirationDate'NonNullable {
  -- | day: Numerical day between 1 and 31.
  gelatoDocumentReportExpirationDate'NonNullableDay :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | month: Numerical month between 1 and 12.
  , gelatoDocumentReportExpirationDate'NonNullableMonth :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | year: The four-digit year.
  , gelatoDocumentReportExpirationDate'NonNullableYear :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoDocumentReportExpirationDate'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportExpirationDate'NonNullableDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportExpirationDate'NonNullableMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportExpirationDate'NonNullableYear obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportExpirationDate'NonNullableDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportExpirationDate'NonNullableMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportExpirationDate'NonNullableYear obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoDocumentReportExpirationDate'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoDocumentReportExpirationDate'NonNullable" (\obj -> ((GHC.Base.pure GelatoDocumentReportExpirationDate'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "year"))}
-- | Create a new 'GelatoDocumentReportExpirationDate'NonNullable' with all required fields.
mkGelatoDocumentReportExpirationDate'NonNullable :: GelatoDocumentReportExpirationDate'NonNullable
mkGelatoDocumentReportExpirationDate'NonNullable = GelatoDocumentReportExpirationDate'NonNullable{gelatoDocumentReportExpirationDate'NonNullableDay = GHC.Maybe.Nothing,
                                                                                                  gelatoDocumentReportExpirationDate'NonNullableMonth = GHC.Maybe.Nothing,
                                                                                                  gelatoDocumentReportExpirationDate'NonNullableYear = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.gelato_document_report.properties.issued_date.anyOf@ in the specification.
-- 
-- Issued date of the document.
data GelatoDocumentReportIssuedDate'NonNullable = GelatoDocumentReportIssuedDate'NonNullable {
  -- | day: Numerical day between 1 and 31.
  gelatoDocumentReportIssuedDate'NonNullableDay :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | month: Numerical month between 1 and 12.
  , gelatoDocumentReportIssuedDate'NonNullableMonth :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | year: The four-digit year.
  , gelatoDocumentReportIssuedDate'NonNullableYear :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoDocumentReportIssuedDate'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportIssuedDate'NonNullableDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportIssuedDate'NonNullableMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportIssuedDate'NonNullableYear obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("day" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportIssuedDate'NonNullableDay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportIssuedDate'NonNullableMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("year" Data.Aeson.Types.ToJSON..=)) (gelatoDocumentReportIssuedDate'NonNullableYear obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoDocumentReportIssuedDate'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoDocumentReportIssuedDate'NonNullable" (\obj -> ((GHC.Base.pure GelatoDocumentReportIssuedDate'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "year"))}
-- | Create a new 'GelatoDocumentReportIssuedDate'NonNullable' with all required fields.
mkGelatoDocumentReportIssuedDate'NonNullable :: GelatoDocumentReportIssuedDate'NonNullable
mkGelatoDocumentReportIssuedDate'NonNullable = GelatoDocumentReportIssuedDate'NonNullable{gelatoDocumentReportIssuedDate'NonNullableDay = GHC.Maybe.Nothing,
                                                                                          gelatoDocumentReportIssuedDate'NonNullableMonth = GHC.Maybe.Nothing,
                                                                                          gelatoDocumentReportIssuedDate'NonNullableYear = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.gelato_document_report.properties.status@ in the specification.
-- 
-- Status of this \`document\` check.
data GelatoDocumentReportStatus' =
   GelatoDocumentReportStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GelatoDocumentReportStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GelatoDocumentReportStatus'EnumUnverified -- ^ Represents the JSON value @"unverified"@
  | GelatoDocumentReportStatus'EnumVerified -- ^ Represents the JSON value @"verified"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoDocumentReportStatus'
    where {toJSON (GelatoDocumentReportStatus'Other val) = val;
           toJSON (GelatoDocumentReportStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GelatoDocumentReportStatus'EnumUnverified) = "unverified";
           toJSON (GelatoDocumentReportStatus'EnumVerified) = "verified"}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoDocumentReportStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "unverified" -> GelatoDocumentReportStatus'EnumUnverified
                                             | val GHC.Classes.== "verified" -> GelatoDocumentReportStatus'EnumVerified
                                             | GHC.Base.otherwise -> GelatoDocumentReportStatus'Other val)}
-- | Defines the enum schema located at @components.schemas.gelato_document_report.properties.type@ in the specification.
-- 
-- Type of the document.
data GelatoDocumentReportType'NonNullable =
   GelatoDocumentReportType'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GelatoDocumentReportType'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GelatoDocumentReportType'NonNullableEnumDrivingLicense -- ^ Represents the JSON value @"driving_license"@
  | GelatoDocumentReportType'NonNullableEnumIdCard -- ^ Represents the JSON value @"id_card"@
  | GelatoDocumentReportType'NonNullableEnumPassport -- ^ Represents the JSON value @"passport"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GelatoDocumentReportType'NonNullable
    where {toJSON (GelatoDocumentReportType'NonNullableOther val) = val;
           toJSON (GelatoDocumentReportType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GelatoDocumentReportType'NonNullableEnumDrivingLicense) = "driving_license";
           toJSON (GelatoDocumentReportType'NonNullableEnumIdCard) = "id_card";
           toJSON (GelatoDocumentReportType'NonNullableEnumPassport) = "passport"}
instance Data.Aeson.Types.FromJSON.FromJSON GelatoDocumentReportType'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "driving_license" -> GelatoDocumentReportType'NonNullableEnumDrivingLicense
                                             | val GHC.Classes.== "id_card" -> GelatoDocumentReportType'NonNullableEnumIdCard
                                             | val GHC.Classes.== "passport" -> GelatoDocumentReportType'NonNullableEnumPassport
                                             | GHC.Base.otherwise -> GelatoDocumentReportType'NonNullableOther val)}
