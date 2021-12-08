{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ScheduledQueryRun
module StripeAPI.Types.ScheduledQueryRun where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
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
import {-# SOURCE #-} StripeAPI.Types.SigmaScheduledQueryRunError
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.scheduled_query_run@ in the specification.
--
-- If you have [scheduled a Sigma query](https:\/\/stripe.com\/docs\/sigma\/scheduled-queries), you\'ll
-- receive a \`sigma.scheduled_query_run.created\` webhook each time the query
-- runs. The webhook contains a \`ScheduledQueryRun\` object, which you can use to
-- retrieve the query results.
data ScheduledQueryRun = ScheduledQueryRun
  { -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    scheduledQueryRunCreated :: GHC.Types.Int,
    -- | data_load_time: When the query was run, Sigma contained a snapshot of your Stripe data at this time.
    scheduledQueryRunDataLoadTime :: GHC.Types.Int,
    -- | error:
    scheduledQueryRunError :: (GHC.Maybe.Maybe SigmaScheduledQueryRunError),
    -- | file: The file object representing the results of the query.
    scheduledQueryRunFile :: (GHC.Maybe.Maybe ScheduledQueryRunFile'),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    scheduledQueryRunId :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    scheduledQueryRunLivemode :: GHC.Types.Bool,
    -- | result_available_until: Time at which the result expires and is no longer available for download.
    scheduledQueryRunResultAvailableUntil :: GHC.Types.Int,
    -- | sql: SQL for the query.
    --
    -- Constraints:
    --
    -- * Maximum length of 100000
    scheduledQueryRunSql :: Data.Text.Internal.Text,
    -- | status: The query\'s execution status, which will be \`completed\` for successful runs, and \`canceled\`, \`failed\`, or \`timed_out\` otherwise.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    scheduledQueryRunStatus :: Data.Text.Internal.Text,
    -- | title: Title of the query.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    scheduledQueryRunTitle :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ScheduledQueryRun where
  toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= scheduledQueryRunCreated obj : "data_load_time" Data.Aeson.Types.ToJSON..= scheduledQueryRunDataLoadTime obj : "error" Data.Aeson.Types.ToJSON..= scheduledQueryRunError obj : "file" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile obj : "id" Data.Aeson.Types.ToJSON..= scheduledQueryRunId obj : "livemode" Data.Aeson.Types.ToJSON..= scheduledQueryRunLivemode obj : "result_available_until" Data.Aeson.Types.ToJSON..= scheduledQueryRunResultAvailableUntil obj : "sql" Data.Aeson.Types.ToJSON..= scheduledQueryRunSql obj : "status" Data.Aeson.Types.ToJSON..= scheduledQueryRunStatus obj : "title" Data.Aeson.Types.ToJSON..= scheduledQueryRunTitle obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "scheduled_query_run" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= scheduledQueryRunCreated obj) GHC.Base.<> (("data_load_time" Data.Aeson.Types.ToJSON..= scheduledQueryRunDataLoadTime obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= scheduledQueryRunError obj) GHC.Base.<> (("file" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= scheduledQueryRunId obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= scheduledQueryRunLivemode obj) GHC.Base.<> (("result_available_until" Data.Aeson.Types.ToJSON..= scheduledQueryRunResultAvailableUntil obj) GHC.Base.<> (("sql" Data.Aeson.Types.ToJSON..= scheduledQueryRunSql obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= scheduledQueryRunStatus obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= scheduledQueryRunTitle obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "scheduled_query_run")))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON ScheduledQueryRun where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ScheduledQueryRun" (\obj -> (((((((((GHC.Base.pure ScheduledQueryRun GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data_load_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result_available_until")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sql")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title"))

-- | Create a new 'ScheduledQueryRun' with all required fields.
mkScheduledQueryRun ::
  -- | 'scheduledQueryRunCreated'
  GHC.Types.Int ->
  -- | 'scheduledQueryRunDataLoadTime'
  GHC.Types.Int ->
  -- | 'scheduledQueryRunId'
  Data.Text.Internal.Text ->
  -- | 'scheduledQueryRunLivemode'
  GHC.Types.Bool ->
  -- | 'scheduledQueryRunResultAvailableUntil'
  GHC.Types.Int ->
  -- | 'scheduledQueryRunSql'
  Data.Text.Internal.Text ->
  -- | 'scheduledQueryRunStatus'
  Data.Text.Internal.Text ->
  -- | 'scheduledQueryRunTitle'
  Data.Text.Internal.Text ->
  ScheduledQueryRun
mkScheduledQueryRun scheduledQueryRunCreated scheduledQueryRunDataLoadTime scheduledQueryRunId scheduledQueryRunLivemode scheduledQueryRunResultAvailableUntil scheduledQueryRunSql scheduledQueryRunStatus scheduledQueryRunTitle =
  ScheduledQueryRun
    { scheduledQueryRunCreated = scheduledQueryRunCreated,
      scheduledQueryRunDataLoadTime = scheduledQueryRunDataLoadTime,
      scheduledQueryRunError = GHC.Maybe.Nothing,
      scheduledQueryRunFile = GHC.Maybe.Nothing,
      scheduledQueryRunId = scheduledQueryRunId,
      scheduledQueryRunLivemode = scheduledQueryRunLivemode,
      scheduledQueryRunResultAvailableUntil = scheduledQueryRunResultAvailableUntil,
      scheduledQueryRunSql = scheduledQueryRunSql,
      scheduledQueryRunStatus = scheduledQueryRunStatus,
      scheduledQueryRunTitle = scheduledQueryRunTitle
    }

-- | Defines the object schema located at @components.schemas.scheduled_query_run.properties.file.anyOf@ in the specification.
--
-- The file object representing the results of the query.
data ScheduledQueryRunFile' = ScheduledQueryRunFile'
  { -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    scheduledQueryRunFile'Created :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | expires_at: The time at which the file expires and is no longer available in epoch seconds.
    scheduledQueryRunFile'ExpiresAt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | filename: A filename for the file, suitable for saving to a filesystem.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    scheduledQueryRunFile'Filename :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    scheduledQueryRunFile'Id :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | links: A list of [file links](https:\/\/stripe.com\/docs\/api\#file_links) that point at this file.
    scheduledQueryRunFile'Links :: (GHC.Maybe.Maybe ScheduledQueryRunFile'Links'),
    -- | object: String representing the object\'s type. Objects of the same type share the same value.
    scheduledQueryRunFile'Object :: (GHC.Maybe.Maybe ScheduledQueryRunFile'Object'),
    -- | purpose: The [purpose](https:\/\/stripe.com\/docs\/file-upload\#uploading-a-file) of the uploaded file.
    scheduledQueryRunFile'Purpose :: (GHC.Maybe.Maybe ScheduledQueryRunFile'Purpose'),
    -- | size: The size in bytes of the file object.
    scheduledQueryRunFile'Size :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | title: A user friendly title for the document.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    scheduledQueryRunFile'Title :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | type: The type of the file returned (e.g., \`csv\`, \`pdf\`, \`jpg\`, or \`png\`).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    scheduledQueryRunFile'Type :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | url: The URL from which the file can be downloaded using your live secret API key.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    scheduledQueryRunFile'Url :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ScheduledQueryRunFile' where
  toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Created obj : "expires_at" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'ExpiresAt obj : "filename" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Filename obj : "id" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Id obj : "links" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Links obj : "object" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Object obj : "purpose" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Purpose obj : "size" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Size obj : "title" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Title obj : "type" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Type obj : "url" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Url obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Created obj) GHC.Base.<> (("expires_at" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'ExpiresAt obj) GHC.Base.<> (("filename" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Filename obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Id obj) GHC.Base.<> (("links" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Links obj) GHC.Base.<> (("object" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Object obj) GHC.Base.<> (("purpose" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Purpose obj) GHC.Base.<> (("size" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Size obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Title obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Type obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Url obj)))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON ScheduledQueryRunFile' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ScheduledQueryRunFile'" (\obj -> ((((((((((GHC.Base.pure ScheduledQueryRunFile' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "filename")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "links")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "purpose")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))

-- | Create a new 'ScheduledQueryRunFile'' with all required fields.
mkScheduledQueryRunFile' :: ScheduledQueryRunFile'
mkScheduledQueryRunFile' =
  ScheduledQueryRunFile'
    { scheduledQueryRunFile'Created = GHC.Maybe.Nothing,
      scheduledQueryRunFile'ExpiresAt = GHC.Maybe.Nothing,
      scheduledQueryRunFile'Filename = GHC.Maybe.Nothing,
      scheduledQueryRunFile'Id = GHC.Maybe.Nothing,
      scheduledQueryRunFile'Links = GHC.Maybe.Nothing,
      scheduledQueryRunFile'Object = GHC.Maybe.Nothing,
      scheduledQueryRunFile'Purpose = GHC.Maybe.Nothing,
      scheduledQueryRunFile'Size = GHC.Maybe.Nothing,
      scheduledQueryRunFile'Title = GHC.Maybe.Nothing,
      scheduledQueryRunFile'Type = GHC.Maybe.Nothing,
      scheduledQueryRunFile'Url = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.scheduled_query_run.properties.file.anyOf.properties.links@ in the specification.
--
-- A list of [file links](https:\/\/stripe.com\/docs\/api\#file_links) that point at this file.
data ScheduledQueryRunFile'Links' = ScheduledQueryRunFile'Links'
  { -- | data: Details about each object.
    scheduledQueryRunFile'Links'Data :: ([FileLink]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    scheduledQueryRunFile'Links'HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    scheduledQueryRunFile'Links'Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ScheduledQueryRunFile'Links' where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Links'Data obj : "has_more" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Links'HasMore obj : "url" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Links'Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Links'Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Links'HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'Links'Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON ScheduledQueryRunFile'Links' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ScheduledQueryRunFile'Links'" (\obj -> ((GHC.Base.pure ScheduledQueryRunFile'Links' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'ScheduledQueryRunFile'Links'' with all required fields.
mkScheduledQueryRunFile'Links' ::
  -- | 'scheduledQueryRunFile'Links'Data'
  [FileLink] ->
  -- | 'scheduledQueryRunFile'Links'HasMore'
  GHC.Types.Bool ->
  -- | 'scheduledQueryRunFile'Links'Url'
  Data.Text.Internal.Text ->
  ScheduledQueryRunFile'Links'
mkScheduledQueryRunFile'Links' scheduledQueryRunFile'Links'Data scheduledQueryRunFile'Links'HasMore scheduledQueryRunFile'Links'Url =
  ScheduledQueryRunFile'Links'
    { scheduledQueryRunFile'Links'Data = scheduledQueryRunFile'Links'Data,
      scheduledQueryRunFile'Links'HasMore = scheduledQueryRunFile'Links'HasMore,
      scheduledQueryRunFile'Links'Url = scheduledQueryRunFile'Links'Url
    }

-- | Defines the enum schema located at @components.schemas.scheduled_query_run.properties.file.anyOf.properties.object@ in the specification.
--
-- String representing the object\'s type. Objects of the same type share the same value.
data ScheduledQueryRunFile'Object'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    ScheduledQueryRunFile'Object'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    ScheduledQueryRunFile'Object'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"file"@
    ScheduledQueryRunFile'Object'EnumFile
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ScheduledQueryRunFile'Object' where
  toJSON (ScheduledQueryRunFile'Object'Other val) = val
  toJSON (ScheduledQueryRunFile'Object'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (ScheduledQueryRunFile'Object'EnumFile) = "file"

instance Data.Aeson.Types.FromJSON.FromJSON ScheduledQueryRunFile'Object' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "file" -> ScheduledQueryRunFile'Object'EnumFile
            | GHC.Base.otherwise -> ScheduledQueryRunFile'Object'Other val
      )

-- | Defines the enum schema located at @components.schemas.scheduled_query_run.properties.file.anyOf.properties.purpose@ in the specification.
--
-- The [purpose](https:\/\/stripe.com\/docs\/file-upload\#uploading-a-file) of the uploaded file.
data ScheduledQueryRunFile'Purpose'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    ScheduledQueryRunFile'Purpose'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    ScheduledQueryRunFile'Purpose'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"account_requirement"@
    ScheduledQueryRunFile'Purpose'EnumAccountRequirement
  | -- | Represents the JSON value @"additional_verification"@
    ScheduledQueryRunFile'Purpose'EnumAdditionalVerification
  | -- | Represents the JSON value @"business_icon"@
    ScheduledQueryRunFile'Purpose'EnumBusinessIcon
  | -- | Represents the JSON value @"business_logo"@
    ScheduledQueryRunFile'Purpose'EnumBusinessLogo
  | -- | Represents the JSON value @"customer_signature"@
    ScheduledQueryRunFile'Purpose'EnumCustomerSignature
  | -- | Represents the JSON value @"dispute_evidence"@
    ScheduledQueryRunFile'Purpose'EnumDisputeEvidence
  | -- | Represents the JSON value @"document_provider_identity_document"@
    ScheduledQueryRunFile'Purpose'EnumDocumentProviderIdentityDocument
  | -- | Represents the JSON value @"finance_report_run"@
    ScheduledQueryRunFile'Purpose'EnumFinanceReportRun
  | -- | Represents the JSON value @"identity_document"@
    ScheduledQueryRunFile'Purpose'EnumIdentityDocument
  | -- | Represents the JSON value @"identity_document_downloadable"@
    ScheduledQueryRunFile'Purpose'EnumIdentityDocumentDownloadable
  | -- | Represents the JSON value @"pci_document"@
    ScheduledQueryRunFile'Purpose'EnumPciDocument
  | -- | Represents the JSON value @"selfie"@
    ScheduledQueryRunFile'Purpose'EnumSelfie
  | -- | Represents the JSON value @"sigma_scheduled_query"@
    ScheduledQueryRunFile'Purpose'EnumSigmaScheduledQuery
  | -- | Represents the JSON value @"tax_document_user_upload"@
    ScheduledQueryRunFile'Purpose'EnumTaxDocumentUserUpload
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ScheduledQueryRunFile'Purpose' where
  toJSON (ScheduledQueryRunFile'Purpose'Other val) = val
  toJSON (ScheduledQueryRunFile'Purpose'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (ScheduledQueryRunFile'Purpose'EnumAccountRequirement) = "account_requirement"
  toJSON (ScheduledQueryRunFile'Purpose'EnumAdditionalVerification) = "additional_verification"
  toJSON (ScheduledQueryRunFile'Purpose'EnumBusinessIcon) = "business_icon"
  toJSON (ScheduledQueryRunFile'Purpose'EnumBusinessLogo) = "business_logo"
  toJSON (ScheduledQueryRunFile'Purpose'EnumCustomerSignature) = "customer_signature"
  toJSON (ScheduledQueryRunFile'Purpose'EnumDisputeEvidence) = "dispute_evidence"
  toJSON (ScheduledQueryRunFile'Purpose'EnumDocumentProviderIdentityDocument) = "document_provider_identity_document"
  toJSON (ScheduledQueryRunFile'Purpose'EnumFinanceReportRun) = "finance_report_run"
  toJSON (ScheduledQueryRunFile'Purpose'EnumIdentityDocument) = "identity_document"
  toJSON (ScheduledQueryRunFile'Purpose'EnumIdentityDocumentDownloadable) = "identity_document_downloadable"
  toJSON (ScheduledQueryRunFile'Purpose'EnumPciDocument) = "pci_document"
  toJSON (ScheduledQueryRunFile'Purpose'EnumSelfie) = "selfie"
  toJSON (ScheduledQueryRunFile'Purpose'EnumSigmaScheduledQuery) = "sigma_scheduled_query"
  toJSON (ScheduledQueryRunFile'Purpose'EnumTaxDocumentUserUpload) = "tax_document_user_upload"

instance Data.Aeson.Types.FromJSON.FromJSON ScheduledQueryRunFile'Purpose' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "account_requirement" -> ScheduledQueryRunFile'Purpose'EnumAccountRequirement
            | val GHC.Classes.== "additional_verification" -> ScheduledQueryRunFile'Purpose'EnumAdditionalVerification
            | val GHC.Classes.== "business_icon" -> ScheduledQueryRunFile'Purpose'EnumBusinessIcon
            | val GHC.Classes.== "business_logo" -> ScheduledQueryRunFile'Purpose'EnumBusinessLogo
            | val GHC.Classes.== "customer_signature" -> ScheduledQueryRunFile'Purpose'EnumCustomerSignature
            | val GHC.Classes.== "dispute_evidence" -> ScheduledQueryRunFile'Purpose'EnumDisputeEvidence
            | val GHC.Classes.== "document_provider_identity_document" -> ScheduledQueryRunFile'Purpose'EnumDocumentProviderIdentityDocument
            | val GHC.Classes.== "finance_report_run" -> ScheduledQueryRunFile'Purpose'EnumFinanceReportRun
            | val GHC.Classes.== "identity_document" -> ScheduledQueryRunFile'Purpose'EnumIdentityDocument
            | val GHC.Classes.== "identity_document_downloadable" -> ScheduledQueryRunFile'Purpose'EnumIdentityDocumentDownloadable
            | val GHC.Classes.== "pci_document" -> ScheduledQueryRunFile'Purpose'EnumPciDocument
            | val GHC.Classes.== "selfie" -> ScheduledQueryRunFile'Purpose'EnumSelfie
            | val GHC.Classes.== "sigma_scheduled_query" -> ScheduledQueryRunFile'Purpose'EnumSigmaScheduledQuery
            | val GHC.Classes.== "tax_document_user_upload" -> ScheduledQueryRunFile'Purpose'EnumTaxDocumentUserUpload
            | GHC.Base.otherwise -> ScheduledQueryRunFile'Purpose'Other val
      )
