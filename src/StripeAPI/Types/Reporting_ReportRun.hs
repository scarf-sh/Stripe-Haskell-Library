-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Reporting_ReportRun
module StripeAPI.Types.Reporting_ReportRun where

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
import {-# SOURCE #-} StripeAPI.Types.File
import {-# SOURCE #-} StripeAPI.Types.FileLink
import {-# SOURCE #-} StripeAPI.Types.FinancialReportingFinanceReportRunRunParameters

-- | Defines the object schema located at @components.schemas.reporting.report_run@ in the specification.
-- 
-- The Report Run object represents an instance of a report type generated with
-- specific run parameters. Once the object is created, Stripe begins processing the report.
-- When the report has finished running, it will give you a reference to a file
-- where you can retrieve your results. For an overview, see
-- [API Access to Reports](https:\/\/stripe.com\/docs\/reporting\/statements\/api).
-- 
-- Note that certain report types can only be run based on your live-mode data (not test-mode
-- data), and will error when queried without a [live-mode API key](https:\/\/stripe.com\/docs\/keys\#test-live-modes).
data Reporting'reportRun = Reporting'reportRun {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  reporting'reportRunCreated :: GHC.Types.Int
  -- | error: If something should go wrong during the run, a message about the failure (populated when
  --  \`status=failed\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportRunError :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportRunId :: Data.Text.Internal.Text
  -- | livemode: \`true\` if the report is run on live mode data and \`false\` if it is run on test mode data.
  , reporting'reportRunLivemode :: GHC.Types.Bool
  -- | parameters: 
  , reporting'reportRunParameters :: FinancialReportingFinanceReportRunRunParameters
  -- | report_type: The ID of the [report type](https:\/\/stripe.com\/docs\/reports\/report-types) to run, such as \`\"balance.summary.1\"\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportRunReportType :: Data.Text.Internal.Text
  -- | result: The file object representing the result of the report run (populated when
  --  \`status=succeeded\`).
  , reporting'reportRunResult :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Reporting'reportRunResult'NonNullable))
  -- | status: Status of this report run. This will be \`pending\` when the run is initially created.
  --  When the run finishes, this will be set to \`succeeded\` and the \`result\` field will be populated.
  --  Rarely, we may encounter an error, at which point this will be set to \`failed\` and the \`error\` field will be populated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportRunStatus :: Data.Text.Internal.Text
  -- | succeeded_at: Timestamp at which this run successfully finished (populated when
  --  \`status=succeeded\`). Measured in seconds since the Unix epoch.
  , reporting'reportRunSucceededAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Reporting'reportRun
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= reporting'reportRunCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunError obj) : ["id" Data.Aeson.Types.ToJSON..= reporting'reportRunId obj] : ["livemode" Data.Aeson.Types.ToJSON..= reporting'reportRunLivemode obj] : ["parameters" Data.Aeson.Types.ToJSON..= reporting'reportRunParameters obj] : ["report_type" Data.Aeson.Types.ToJSON..= reporting'reportRunReportType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("result" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult obj) : ["status" Data.Aeson.Types.ToJSON..= reporting'reportRunStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("succeeded_at" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunSucceededAt obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "reporting.report_run"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= reporting'reportRunCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunError obj) : ["id" Data.Aeson.Types.ToJSON..= reporting'reportRunId obj] : ["livemode" Data.Aeson.Types.ToJSON..= reporting'reportRunLivemode obj] : ["parameters" Data.Aeson.Types.ToJSON..= reporting'reportRunParameters obj] : ["report_type" Data.Aeson.Types.ToJSON..= reporting'reportRunReportType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("result" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult obj) : ["status" Data.Aeson.Types.ToJSON..= reporting'reportRunStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("succeeded_at" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunSucceededAt obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "reporting.report_run"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Reporting'reportRun
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Reporting'reportRun" (\obj -> ((((((((GHC.Base.pure Reporting'reportRun GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "parameters")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "report_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "result")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "succeeded_at"))}
-- | Create a new 'Reporting'reportRun' with all required fields.
mkReporting'reportRun :: GHC.Types.Int -- ^ 'reporting'reportRunCreated'
  -> Data.Text.Internal.Text -- ^ 'reporting'reportRunId'
  -> GHC.Types.Bool -- ^ 'reporting'reportRunLivemode'
  -> FinancialReportingFinanceReportRunRunParameters -- ^ 'reporting'reportRunParameters'
  -> Data.Text.Internal.Text -- ^ 'reporting'reportRunReportType'
  -> Data.Text.Internal.Text -- ^ 'reporting'reportRunStatus'
  -> Reporting'reportRun
mkReporting'reportRun reporting'reportRunCreated reporting'reportRunId reporting'reportRunLivemode reporting'reportRunParameters reporting'reportRunReportType reporting'reportRunStatus = Reporting'reportRun{reporting'reportRunCreated = reporting'reportRunCreated,
                                                                                                                                                                                                               reporting'reportRunError = GHC.Maybe.Nothing,
                                                                                                                                                                                                               reporting'reportRunId = reporting'reportRunId,
                                                                                                                                                                                                               reporting'reportRunLivemode = reporting'reportRunLivemode,
                                                                                                                                                                                                               reporting'reportRunParameters = reporting'reportRunParameters,
                                                                                                                                                                                                               reporting'reportRunReportType = reporting'reportRunReportType,
                                                                                                                                                                                                               reporting'reportRunResult = GHC.Maybe.Nothing,
                                                                                                                                                                                                               reporting'reportRunStatus = reporting'reportRunStatus,
                                                                                                                                                                                                               reporting'reportRunSucceededAt = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.reporting.report_run.properties.result.anyOf@ in the specification.
-- 
-- The file object representing the result of the report run (populated when
--  \\\`status=succeeded\\\`).
data Reporting'reportRunResult'NonNullable = Reporting'reportRunResult'NonNullable {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  reporting'reportRunResult'NonNullableCreated :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | expires_at: The file expires and isn\'t available at this time in epoch seconds.
  , reporting'reportRunResult'NonNullableExpiresAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | filename: The suitable name for saving the file to a filesystem.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportRunResult'NonNullableFilename :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportRunResult'NonNullableId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | links: A list of [file links](https:\/\/stripe.com\/docs\/api\#file_links) that point at this file.
  , reporting'reportRunResult'NonNullableLinks :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Reporting'reportRunResult'NonNullableLinks'NonNullable))
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , reporting'reportRunResult'NonNullableObject :: (GHC.Maybe.Maybe Reporting'reportRunResult'NonNullableObject')
  -- | purpose: The [purpose](https:\/\/stripe.com\/docs\/file-upload\#uploading-a-file) of the uploaded file.
  , reporting'reportRunResult'NonNullablePurpose :: (GHC.Maybe.Maybe Reporting'reportRunResult'NonNullablePurpose')
  -- | size: The size of the file object in bytes.
  , reporting'reportRunResult'NonNullableSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | title: A suitable title for the document.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportRunResult'NonNullableTitle :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | type: The returned file type (for example, \`csv\`, \`pdf\`, \`jpg\`, or \`png\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportRunResult'NonNullableType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | url: Use your live secret API key to download the file from this URL.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reporting'reportRunResult'NonNullableUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Reporting'reportRunResult'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableExpiresAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filename" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableFilename obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("links" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableLinks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("purpose" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullablePurpose obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("title" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableTitle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableUrl obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableExpiresAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filename" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableFilename obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("links" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableLinks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("purpose" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullablePurpose obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("title" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableTitle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (reporting'reportRunResult'NonNullableUrl obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Reporting'reportRunResult'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Reporting'reportRunResult'NonNullable" (\obj -> ((((((((((GHC.Base.pure Reporting'reportRunResult'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "filename")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "links")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "purpose")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "url"))}
-- | Create a new 'Reporting'reportRunResult'NonNullable' with all required fields.
mkReporting'reportRunResult'NonNullable :: Reporting'reportRunResult'NonNullable
mkReporting'reportRunResult'NonNullable = Reporting'reportRunResult'NonNullable{reporting'reportRunResult'NonNullableCreated = GHC.Maybe.Nothing,
                                                                                reporting'reportRunResult'NonNullableExpiresAt = GHC.Maybe.Nothing,
                                                                                reporting'reportRunResult'NonNullableFilename = GHC.Maybe.Nothing,
                                                                                reporting'reportRunResult'NonNullableId = GHC.Maybe.Nothing,
                                                                                reporting'reportRunResult'NonNullableLinks = GHC.Maybe.Nothing,
                                                                                reporting'reportRunResult'NonNullableObject = GHC.Maybe.Nothing,
                                                                                reporting'reportRunResult'NonNullablePurpose = GHC.Maybe.Nothing,
                                                                                reporting'reportRunResult'NonNullableSize = GHC.Maybe.Nothing,
                                                                                reporting'reportRunResult'NonNullableTitle = GHC.Maybe.Nothing,
                                                                                reporting'reportRunResult'NonNullableType = GHC.Maybe.Nothing,
                                                                                reporting'reportRunResult'NonNullableUrl = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.reporting.report_run.properties.result.anyOf.properties.links@ in the specification.
-- 
-- A list of [file links](https:\/\/stripe.com\/docs\/api\#file_links) that point at this file.
data Reporting'reportRunResult'NonNullableLinks'NonNullable = Reporting'reportRunResult'NonNullableLinks'NonNullable {
  -- | data: Details about each object.
  reporting'reportRunResult'NonNullableLinks'NonNullableData :: ([FileLink])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , reporting'reportRunResult'NonNullableLinks'NonNullableHasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/file_links\'
  , reporting'reportRunResult'NonNullableLinks'NonNullableUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Reporting'reportRunResult'NonNullableLinks'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= reporting'reportRunResult'NonNullableLinks'NonNullableData obj] : ["has_more" Data.Aeson.Types.ToJSON..= reporting'reportRunResult'NonNullableLinks'NonNullableHasMore obj] : ["url" Data.Aeson.Types.ToJSON..= reporting'reportRunResult'NonNullableLinks'NonNullableUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= reporting'reportRunResult'NonNullableLinks'NonNullableData obj] : ["has_more" Data.Aeson.Types.ToJSON..= reporting'reportRunResult'NonNullableLinks'NonNullableHasMore obj] : ["url" Data.Aeson.Types.ToJSON..= reporting'reportRunResult'NonNullableLinks'NonNullableUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Reporting'reportRunResult'NonNullableLinks'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Reporting'reportRunResult'NonNullableLinks'NonNullable" (\obj -> ((GHC.Base.pure Reporting'reportRunResult'NonNullableLinks'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'Reporting'reportRunResult'NonNullableLinks'NonNullable' with all required fields.
mkReporting'reportRunResult'NonNullableLinks'NonNullable :: [FileLink] -- ^ 'reporting'reportRunResult'NonNullableLinks'NonNullableData'
  -> GHC.Types.Bool -- ^ 'reporting'reportRunResult'NonNullableLinks'NonNullableHasMore'
  -> Data.Text.Internal.Text -- ^ 'reporting'reportRunResult'NonNullableLinks'NonNullableUrl'
  -> Reporting'reportRunResult'NonNullableLinks'NonNullable
mkReporting'reportRunResult'NonNullableLinks'NonNullable reporting'reportRunResult'NonNullableLinks'NonNullableData reporting'reportRunResult'NonNullableLinks'NonNullableHasMore reporting'reportRunResult'NonNullableLinks'NonNullableUrl = Reporting'reportRunResult'NonNullableLinks'NonNullable{reporting'reportRunResult'NonNullableLinks'NonNullableData = reporting'reportRunResult'NonNullableLinks'NonNullableData,
                                                                                                                                                                                                                                                                                                     reporting'reportRunResult'NonNullableLinks'NonNullableHasMore = reporting'reportRunResult'NonNullableLinks'NonNullableHasMore,
                                                                                                                                                                                                                                                                                                     reporting'reportRunResult'NonNullableLinks'NonNullableUrl = reporting'reportRunResult'NonNullableLinks'NonNullableUrl}
-- | Defines the enum schema located at @components.schemas.reporting.report_run.properties.result.anyOf.properties.object@ in the specification.
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data Reporting'reportRunResult'NonNullableObject' =
   Reporting'reportRunResult'NonNullableObject'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Reporting'reportRunResult'NonNullableObject'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Reporting'reportRunResult'NonNullableObject'EnumFile -- ^ Represents the JSON value @"file"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Reporting'reportRunResult'NonNullableObject'
    where {toJSON (Reporting'reportRunResult'NonNullableObject'Other val) = val;
           toJSON (Reporting'reportRunResult'NonNullableObject'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (Reporting'reportRunResult'NonNullableObject'EnumFile) = "file"}
instance Data.Aeson.Types.FromJSON.FromJSON Reporting'reportRunResult'NonNullableObject'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "file" -> Reporting'reportRunResult'NonNullableObject'EnumFile
                                             | GHC.Base.otherwise -> Reporting'reportRunResult'NonNullableObject'Other val)}
-- | Defines the enum schema located at @components.schemas.reporting.report_run.properties.result.anyOf.properties.purpose@ in the specification.
-- 
-- The [purpose](https:\/\/stripe.com\/docs\/file-upload\#uploading-a-file) of the uploaded file.
data Reporting'reportRunResult'NonNullablePurpose' =
   Reporting'reportRunResult'NonNullablePurpose'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Reporting'reportRunResult'NonNullablePurpose'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Reporting'reportRunResult'NonNullablePurpose'EnumAccountRequirement -- ^ Represents the JSON value @"account_requirement"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumAdditionalVerification -- ^ Represents the JSON value @"additional_verification"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumBusinessIcon -- ^ Represents the JSON value @"business_icon"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumBusinessLogo -- ^ Represents the JSON value @"business_logo"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumCustomerSignature -- ^ Represents the JSON value @"customer_signature"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumDisputeEvidence -- ^ Represents the JSON value @"dispute_evidence"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumDocumentProviderIdentityDocument -- ^ Represents the JSON value @"document_provider_identity_document"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumFinanceReportRun -- ^ Represents the JSON value @"finance_report_run"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumIdentityDocument -- ^ Represents the JSON value @"identity_document"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumIdentityDocumentDownloadable -- ^ Represents the JSON value @"identity_document_downloadable"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumPciDocument -- ^ Represents the JSON value @"pci_document"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumSelfie -- ^ Represents the JSON value @"selfie"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumSigmaScheduledQuery -- ^ Represents the JSON value @"sigma_scheduled_query"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumTaxDocumentUserUpload -- ^ Represents the JSON value @"tax_document_user_upload"@
  | Reporting'reportRunResult'NonNullablePurpose'EnumTerminalReaderSplashscreen -- ^ Represents the JSON value @"terminal_reader_splashscreen"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Reporting'reportRunResult'NonNullablePurpose'
    where {toJSON (Reporting'reportRunResult'NonNullablePurpose'Other val) = val;
           toJSON (Reporting'reportRunResult'NonNullablePurpose'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumAccountRequirement) = "account_requirement";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumAdditionalVerification) = "additional_verification";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumBusinessIcon) = "business_icon";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumBusinessLogo) = "business_logo";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumCustomerSignature) = "customer_signature";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumDisputeEvidence) = "dispute_evidence";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumDocumentProviderIdentityDocument) = "document_provider_identity_document";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumFinanceReportRun) = "finance_report_run";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumIdentityDocument) = "identity_document";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumIdentityDocumentDownloadable) = "identity_document_downloadable";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumPciDocument) = "pci_document";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumSelfie) = "selfie";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumSigmaScheduledQuery) = "sigma_scheduled_query";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumTaxDocumentUserUpload) = "tax_document_user_upload";
           toJSON (Reporting'reportRunResult'NonNullablePurpose'EnumTerminalReaderSplashscreen) = "terminal_reader_splashscreen"}
instance Data.Aeson.Types.FromJSON.FromJSON Reporting'reportRunResult'NonNullablePurpose'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "account_requirement" -> Reporting'reportRunResult'NonNullablePurpose'EnumAccountRequirement
                                             | val GHC.Classes.== "additional_verification" -> Reporting'reportRunResult'NonNullablePurpose'EnumAdditionalVerification
                                             | val GHC.Classes.== "business_icon" -> Reporting'reportRunResult'NonNullablePurpose'EnumBusinessIcon
                                             | val GHC.Classes.== "business_logo" -> Reporting'reportRunResult'NonNullablePurpose'EnumBusinessLogo
                                             | val GHC.Classes.== "customer_signature" -> Reporting'reportRunResult'NonNullablePurpose'EnumCustomerSignature
                                             | val GHC.Classes.== "dispute_evidence" -> Reporting'reportRunResult'NonNullablePurpose'EnumDisputeEvidence
                                             | val GHC.Classes.== "document_provider_identity_document" -> Reporting'reportRunResult'NonNullablePurpose'EnumDocumentProviderIdentityDocument
                                             | val GHC.Classes.== "finance_report_run" -> Reporting'reportRunResult'NonNullablePurpose'EnumFinanceReportRun
                                             | val GHC.Classes.== "identity_document" -> Reporting'reportRunResult'NonNullablePurpose'EnumIdentityDocument
                                             | val GHC.Classes.== "identity_document_downloadable" -> Reporting'reportRunResult'NonNullablePurpose'EnumIdentityDocumentDownloadable
                                             | val GHC.Classes.== "pci_document" -> Reporting'reportRunResult'NonNullablePurpose'EnumPciDocument
                                             | val GHC.Classes.== "selfie" -> Reporting'reportRunResult'NonNullablePurpose'EnumSelfie
                                             | val GHC.Classes.== "sigma_scheduled_query" -> Reporting'reportRunResult'NonNullablePurpose'EnumSigmaScheduledQuery
                                             | val GHC.Classes.== "tax_document_user_upload" -> Reporting'reportRunResult'NonNullablePurpose'EnumTaxDocumentUserUpload
                                             | val GHC.Classes.== "terminal_reader_splashscreen" -> Reporting'reportRunResult'NonNullablePurpose'EnumTerminalReaderSplashscreen
                                             | GHC.Base.otherwise -> Reporting'reportRunResult'NonNullablePurpose'Other val)}
