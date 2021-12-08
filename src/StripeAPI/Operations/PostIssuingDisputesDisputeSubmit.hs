{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postIssuingDisputesDisputeSubmit
module StripeAPI.Operations.PostIssuingDisputesDisputeSubmit where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/issuing/disputes/{dispute}/submit
--
-- \<p>Submits an Issuing \<code>Dispute\<\/code> to the card network. Stripe validates that all evidence fields required for the dispute’s reason are present. For more details, see \<a href=\"\/docs\/issuing\/purchases\/disputes\#dispute-reasons-and-evidence\">Dispute reasons and evidence\<\/a>.\<\/p>
postIssuingDisputesDisputeSubmit ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | dispute | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostIssuingDisputesDisputeSubmitRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostIssuingDisputesDisputeSubmitResponse)
postIssuingDisputesDisputeSubmit
  dispute
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostIssuingDisputesDisputeSubmitResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostIssuingDisputesDisputeSubmitResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Issuing'dispute
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostIssuingDisputesDisputeSubmitResponseDefault
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_0
            )
            response_0
      )
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/issuing/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ "/submit"))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/issuing\/disputes\/{dispute}\/submit.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostIssuingDisputesDisputeSubmitRequestBody = PostIssuingDisputesDisputeSubmitRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postIssuingDisputesDisputeSubmitRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postIssuingDisputesDisputeSubmitRequestBodyMetadata :: (GHC.Maybe.Maybe PostIssuingDisputesDisputeSubmitRequestBodyMetadata'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostIssuingDisputesDisputeSubmitRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("expand" Data.Aeson.Types.ToJSON..= postIssuingDisputesDisputeSubmitRequestBodyExpand obj : "metadata" Data.Aeson.Types.ToJSON..= postIssuingDisputesDisputeSubmitRequestBodyMetadata obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("expand" Data.Aeson.Types.ToJSON..= postIssuingDisputesDisputeSubmitRequestBodyExpand obj) GHC.Base.<> ("metadata" Data.Aeson.Types.ToJSON..= postIssuingDisputesDisputeSubmitRequestBodyMetadata obj))

instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingDisputesDisputeSubmitRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingDisputesDisputeSubmitRequestBody" (\obj -> (GHC.Base.pure PostIssuingDisputesDisputeSubmitRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

-- | Create a new 'PostIssuingDisputesDisputeSubmitRequestBody' with all required fields.
mkPostIssuingDisputesDisputeSubmitRequestBody :: PostIssuingDisputesDisputeSubmitRequestBody
mkPostIssuingDisputesDisputeSubmitRequestBody =
  PostIssuingDisputesDisputeSubmitRequestBody
    { postIssuingDisputesDisputeSubmitRequestBodyExpand = GHC.Maybe.Nothing,
      postIssuingDisputesDisputeSubmitRequestBodyMetadata = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/issuing\/disputes\/{dispute}\/submit.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostIssuingDisputesDisputeSubmitRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostIssuingDisputesDisputeSubmitRequestBodyMetadata'EmptyString
  | PostIssuingDisputesDisputeSubmitRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostIssuingDisputesDisputeSubmitRequestBodyMetadata'Variants where
  toJSON (PostIssuingDisputesDisputeSubmitRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostIssuingDisputesDisputeSubmitRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingDisputesDisputeSubmitRequestBodyMetadata'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostIssuingDisputesDisputeSubmitRequestBodyMetadata'EmptyString
        | GHC.Base.otherwise -> case (PostIssuingDisputesDisputeSubmitRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postIssuingDisputesDisputeSubmit'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostIssuingDisputesDisputeSubmitResponseError' is used.
data PostIssuingDisputesDisputeSubmitResponse
  = -- | Means either no matching case available or a parse error
    PostIssuingDisputesDisputeSubmitResponseError GHC.Base.String
  | -- | Successful response.
    PostIssuingDisputesDisputeSubmitResponse200 Issuing'dispute
  | -- | Error response.
    PostIssuingDisputesDisputeSubmitResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
