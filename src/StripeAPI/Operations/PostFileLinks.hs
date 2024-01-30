-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postFileLinks
module StripeAPI.Operations.PostFileLinks where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > POST /v1/file_links
-- 
-- \<p>Creates a new file link object.\<\/p>
postFileLinks :: forall m . StripeAPI.Common.MonadHTTP m => PostFileLinksRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostFileLinksResponse) -- ^ Monadic computation which returns the result of the operation
postFileLinks body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostFileLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          FileLink)
                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostFileLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/file_links" GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/file_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostFileLinksRequestBody = PostFileLinksRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postFileLinksRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | expires_at: The link isn\'t usable after this future timestamp.
  , postFileLinksRequestBodyExpiresAt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | file: The ID of the file. The file\'s \`purpose\` must be one of the following: \`business_icon\`, \`business_logo\`, \`customer_signature\`, \`dispute_evidence\`, \`finance_report_run\`, \`identity_document_downloadable\`, \`pci_document\`, \`selfie\`, \`sigma_scheduled_query\`, \`tax_document_user_upload\`, or \`terminal_reader_splashscreen\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postFileLinksRequestBodyFile :: Data.Text.Internal.Text
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postFileLinksRequestBodyMetadata :: (GHC.Maybe.Maybe PostFileLinksRequestBodyMetadata'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFileLinksRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postFileLinksRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (postFileLinksRequestBodyExpiresAt obj) : ["file" Data.Aeson.Types.ToJSON..= postFileLinksRequestBodyFile obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postFileLinksRequestBodyMetadata obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postFileLinksRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (postFileLinksRequestBodyExpiresAt obj) : ["file" Data.Aeson.Types.ToJSON..= postFileLinksRequestBodyFile obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postFileLinksRequestBodyMetadata obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostFileLinksRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFileLinksRequestBody" (\obj -> (((GHC.Base.pure PostFileLinksRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))}
-- | Create a new 'PostFileLinksRequestBody' with all required fields.
mkPostFileLinksRequestBody :: Data.Text.Internal.Text -- ^ 'postFileLinksRequestBodyFile'
  -> PostFileLinksRequestBody
mkPostFileLinksRequestBody postFileLinksRequestBodyFile = PostFileLinksRequestBody{postFileLinksRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                   postFileLinksRequestBodyExpiresAt = GHC.Maybe.Nothing,
                                                                                   postFileLinksRequestBodyFile = postFileLinksRequestBodyFile,
                                                                                   postFileLinksRequestBodyMetadata = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/file_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostFileLinksRequestBodyMetadata'Variants =
   PostFileLinksRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostFileLinksRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFileLinksRequestBodyMetadata'Variants
    where {toJSON (PostFileLinksRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PostFileLinksRequestBodyMetadata'EmptyString) = ""}
instance Data.Aeson.Types.FromJSON.FromJSON PostFileLinksRequestBodyMetadata'Variants
    where {parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostFileLinksRequestBodyMetadata'EmptyString
                              | GHC.Base.otherwise -> case (PostFileLinksRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'postFileLinks'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostFileLinksResponseError' is used.
data PostFileLinksResponse =
   PostFileLinksResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostFileLinksResponse200 FileLink -- ^ Successful response.
  | PostFileLinksResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
