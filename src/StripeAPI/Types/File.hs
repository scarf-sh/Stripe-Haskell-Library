-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema File
module StripeAPI.Types.File where

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
import {-# SOURCE #-} StripeAPI.Types.FileLink

-- | Defines the object schema located at @components.schemas.file@ in the specification.
-- 
-- This object represents files hosted on Stripe\'s servers. You can upload
-- files with the [create file](https:\/\/stripe.com\/docs\/api\#create_file) request
-- (for example, when uploading dispute evidence). Stripe also
-- creates files independently (for example, the results of a [Sigma scheduled
-- query](\#scheduled_queries)).
-- 
-- Related guide: [File upload guide](https:\/\/stripe.com\/docs\/file-upload)
data File = File {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  fileCreated :: GHC.Types.Int
  -- | expires_at: The file expires and isn\'t available at this time in epoch seconds.
  , fileExpiresAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | filename: The suitable name for saving the file to a filesystem.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , fileFilename :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , fileId :: Data.Text.Internal.Text
  -- | links: A list of [file links](https:\/\/stripe.com\/docs\/api\#file_links) that point at this file.
  , fileLinks :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable FileLinks'NonNullable))
  -- | purpose: The [purpose](https:\/\/stripe.com\/docs\/file-upload\#uploading-a-file) of the uploaded file.
  , filePurpose :: FilePurpose'
  -- | size: The size of the file object in bytes.
  , fileSize :: GHC.Types.Int
  -- | title: A suitable title for the document.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , fileTitle :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | type: The returned file type (for example, \`csv\`, \`pdf\`, \`jpg\`, or \`png\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , fileType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | url: Use your live secret API key to download the file from this URL.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , fileUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON File
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= fileCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (fileExpiresAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filename" Data.Aeson.Types.ToJSON..=)) (fileFilename obj) : ["id" Data.Aeson.Types.ToJSON..= fileId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("links" Data.Aeson.Types.ToJSON..=)) (fileLinks obj) : ["purpose" Data.Aeson.Types.ToJSON..= filePurpose obj] : ["size" Data.Aeson.Types.ToJSON..= fileSize obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("title" Data.Aeson.Types.ToJSON..=)) (fileTitle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (fileType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (fileUrl obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "file"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= fileCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (fileExpiresAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filename" Data.Aeson.Types.ToJSON..=)) (fileFilename obj) : ["id" Data.Aeson.Types.ToJSON..= fileId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("links" Data.Aeson.Types.ToJSON..=)) (fileLinks obj) : ["purpose" Data.Aeson.Types.ToJSON..= filePurpose obj] : ["size" Data.Aeson.Types.ToJSON..= fileSize obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("title" Data.Aeson.Types.ToJSON..=)) (fileTitle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (fileType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (fileUrl obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "file"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON File
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "File" (\obj -> (((((((((GHC.Base.pure File GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "filename")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "links")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "purpose")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "url"))}
-- | Create a new 'File' with all required fields.
mkFile :: GHC.Types.Int -- ^ 'fileCreated'
  -> Data.Text.Internal.Text -- ^ 'fileId'
  -> FilePurpose' -- ^ 'filePurpose'
  -> GHC.Types.Int -- ^ 'fileSize'
  -> File
mkFile fileCreated fileId filePurpose fileSize = File{fileCreated = fileCreated,
                                                      fileExpiresAt = GHC.Maybe.Nothing,
                                                      fileFilename = GHC.Maybe.Nothing,
                                                      fileId = fileId,
                                                      fileLinks = GHC.Maybe.Nothing,
                                                      filePurpose = filePurpose,
                                                      fileSize = fileSize,
                                                      fileTitle = GHC.Maybe.Nothing,
                                                      fileType = GHC.Maybe.Nothing,
                                                      fileUrl = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.file.properties.links@ in the specification.
-- 
-- A list of [file links](https:\/\/stripe.com\/docs\/api\#file_links) that point at this file.
data FileLinks'NonNullable = FileLinks'NonNullable {
  -- | data: Details about each object.
  fileLinks'NonNullableData :: ([FileLink])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , fileLinks'NonNullableHasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/file_links\'
  , fileLinks'NonNullableUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FileLinks'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= fileLinks'NonNullableData obj] : ["has_more" Data.Aeson.Types.ToJSON..= fileLinks'NonNullableHasMore obj] : ["url" Data.Aeson.Types.ToJSON..= fileLinks'NonNullableUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= fileLinks'NonNullableData obj] : ["has_more" Data.Aeson.Types.ToJSON..= fileLinks'NonNullableHasMore obj] : ["url" Data.Aeson.Types.ToJSON..= fileLinks'NonNullableUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON FileLinks'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "FileLinks'NonNullable" (\obj -> ((GHC.Base.pure FileLinks'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'FileLinks'NonNullable' with all required fields.
mkFileLinks'NonNullable :: [FileLink] -- ^ 'fileLinks'NonNullableData'
  -> GHC.Types.Bool -- ^ 'fileLinks'NonNullableHasMore'
  -> Data.Text.Internal.Text -- ^ 'fileLinks'NonNullableUrl'
  -> FileLinks'NonNullable
mkFileLinks'NonNullable fileLinks'NonNullableData fileLinks'NonNullableHasMore fileLinks'NonNullableUrl = FileLinks'NonNullable{fileLinks'NonNullableData = fileLinks'NonNullableData,
                                                                                                                                fileLinks'NonNullableHasMore = fileLinks'NonNullableHasMore,
                                                                                                                                fileLinks'NonNullableUrl = fileLinks'NonNullableUrl}
-- | Defines the enum schema located at @components.schemas.file.properties.purpose@ in the specification.
-- 
-- The [purpose](https:\/\/stripe.com\/docs\/file-upload\#uploading-a-file) of the uploaded file.
data FilePurpose' =
   FilePurpose'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | FilePurpose'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | FilePurpose'EnumAccountRequirement -- ^ Represents the JSON value @"account_requirement"@
  | FilePurpose'EnumAdditionalVerification -- ^ Represents the JSON value @"additional_verification"@
  | FilePurpose'EnumBusinessIcon -- ^ Represents the JSON value @"business_icon"@
  | FilePurpose'EnumBusinessLogo -- ^ Represents the JSON value @"business_logo"@
  | FilePurpose'EnumCustomerSignature -- ^ Represents the JSON value @"customer_signature"@
  | FilePurpose'EnumDisputeEvidence -- ^ Represents the JSON value @"dispute_evidence"@
  | FilePurpose'EnumDocumentProviderIdentityDocument -- ^ Represents the JSON value @"document_provider_identity_document"@
  | FilePurpose'EnumFinanceReportRun -- ^ Represents the JSON value @"finance_report_run"@
  | FilePurpose'EnumIdentityDocument -- ^ Represents the JSON value @"identity_document"@
  | FilePurpose'EnumIdentityDocumentDownloadable -- ^ Represents the JSON value @"identity_document_downloadable"@
  | FilePurpose'EnumPciDocument -- ^ Represents the JSON value @"pci_document"@
  | FilePurpose'EnumSelfie -- ^ Represents the JSON value @"selfie"@
  | FilePurpose'EnumSigmaScheduledQuery -- ^ Represents the JSON value @"sigma_scheduled_query"@
  | FilePurpose'EnumTaxDocumentUserUpload -- ^ Represents the JSON value @"tax_document_user_upload"@
  | FilePurpose'EnumTerminalReaderSplashscreen -- ^ Represents the JSON value @"terminal_reader_splashscreen"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FilePurpose'
    where {toJSON (FilePurpose'Other val) = val;
           toJSON (FilePurpose'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (FilePurpose'EnumAccountRequirement) = "account_requirement";
           toJSON (FilePurpose'EnumAdditionalVerification) = "additional_verification";
           toJSON (FilePurpose'EnumBusinessIcon) = "business_icon";
           toJSON (FilePurpose'EnumBusinessLogo) = "business_logo";
           toJSON (FilePurpose'EnumCustomerSignature) = "customer_signature";
           toJSON (FilePurpose'EnumDisputeEvidence) = "dispute_evidence";
           toJSON (FilePurpose'EnumDocumentProviderIdentityDocument) = "document_provider_identity_document";
           toJSON (FilePurpose'EnumFinanceReportRun) = "finance_report_run";
           toJSON (FilePurpose'EnumIdentityDocument) = "identity_document";
           toJSON (FilePurpose'EnumIdentityDocumentDownloadable) = "identity_document_downloadable";
           toJSON (FilePurpose'EnumPciDocument) = "pci_document";
           toJSON (FilePurpose'EnumSelfie) = "selfie";
           toJSON (FilePurpose'EnumSigmaScheduledQuery) = "sigma_scheduled_query";
           toJSON (FilePurpose'EnumTaxDocumentUserUpload) = "tax_document_user_upload";
           toJSON (FilePurpose'EnumTerminalReaderSplashscreen) = "terminal_reader_splashscreen"}
instance Data.Aeson.Types.FromJSON.FromJSON FilePurpose'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "account_requirement" -> FilePurpose'EnumAccountRequirement
                                             | val GHC.Classes.== "additional_verification" -> FilePurpose'EnumAdditionalVerification
                                             | val GHC.Classes.== "business_icon" -> FilePurpose'EnumBusinessIcon
                                             | val GHC.Classes.== "business_logo" -> FilePurpose'EnumBusinessLogo
                                             | val GHC.Classes.== "customer_signature" -> FilePurpose'EnumCustomerSignature
                                             | val GHC.Classes.== "dispute_evidence" -> FilePurpose'EnumDisputeEvidence
                                             | val GHC.Classes.== "document_provider_identity_document" -> FilePurpose'EnumDocumentProviderIdentityDocument
                                             | val GHC.Classes.== "finance_report_run" -> FilePurpose'EnumFinanceReportRun
                                             | val GHC.Classes.== "identity_document" -> FilePurpose'EnumIdentityDocument
                                             | val GHC.Classes.== "identity_document_downloadable" -> FilePurpose'EnumIdentityDocumentDownloadable
                                             | val GHC.Classes.== "pci_document" -> FilePurpose'EnumPciDocument
                                             | val GHC.Classes.== "selfie" -> FilePurpose'EnumSelfie
                                             | val GHC.Classes.== "sigma_scheduled_query" -> FilePurpose'EnumSigmaScheduledQuery
                                             | val GHC.Classes.== "tax_document_user_upload" -> FilePurpose'EnumTaxDocumentUserUpload
                                             | val GHC.Classes.== "terminal_reader_splashscreen" -> FilePurpose'EnumTerminalReaderSplashscreen
                                             | GHC.Base.otherwise -> FilePurpose'Other val)}
