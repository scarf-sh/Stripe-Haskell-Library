{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postTerminalReaders
module StripeAPI.Operations.PostTerminalReaders where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/terminal/readers
--
-- \<p>Creates a new \<code>Reader\<\/code> object.\<\/p>
postTerminalReaders ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | The request body to send
  PostTerminalReadersRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTerminalReadersResponse)
postTerminalReaders body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostTerminalReadersResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostTerminalReadersResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Terminal'reader
                                                      )
                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostTerminalReadersResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/terminal/readers") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/terminal\/readers.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostTerminalReadersRequestBody = PostTerminalReadersRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postTerminalReadersRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | label: Custom label given to the reader for easier identification. If no label is specified, the registration code will be used.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTerminalReadersRequestBodyLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | location: The location to assign the reader to.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTerminalReadersRequestBodyLocation :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postTerminalReadersRequestBodyMetadata :: (GHC.Maybe.Maybe PostTerminalReadersRequestBodyMetadata'Variants),
    -- | registration_code: A code generated by the reader used for registering to an account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTerminalReadersRequestBodyRegistrationCode :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTerminalReadersRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("label" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersRequestBodyLabel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("location" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersRequestBodyLocation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersRequestBodyMetadata obj) : ["registration_code" Data.Aeson.Types.ToJSON..= postTerminalReadersRequestBodyRegistrationCode obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("label" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersRequestBodyLabel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("location" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersRequestBodyLocation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersRequestBodyMetadata obj) : ["registration_code" Data.Aeson.Types.ToJSON..= postTerminalReadersRequestBodyRegistrationCode obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalReadersRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalReadersRequestBody" (\obj -> ((((GHC.Base.pure PostTerminalReadersRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "registration_code"))

-- | Create a new 'PostTerminalReadersRequestBody' with all required fields.
mkPostTerminalReadersRequestBody ::
  -- | 'postTerminalReadersRequestBodyRegistrationCode'
  Data.Text.Internal.Text ->
  PostTerminalReadersRequestBody
mkPostTerminalReadersRequestBody postTerminalReadersRequestBodyRegistrationCode =
  PostTerminalReadersRequestBody
    { postTerminalReadersRequestBodyExpand = GHC.Maybe.Nothing,
      postTerminalReadersRequestBodyLabel = GHC.Maybe.Nothing,
      postTerminalReadersRequestBodyLocation = GHC.Maybe.Nothing,
      postTerminalReadersRequestBodyMetadata = GHC.Maybe.Nothing,
      postTerminalReadersRequestBodyRegistrationCode = postTerminalReadersRequestBodyRegistrationCode
    }

-- | Defines the oneOf schema located at @paths.\/v1\/terminal\/readers.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTerminalReadersRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostTerminalReadersRequestBodyMetadata'EmptyString
  | PostTerminalReadersRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostTerminalReadersRequestBodyMetadata'Variants where
  toJSON (PostTerminalReadersRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostTerminalReadersRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalReadersRequestBodyMetadata'Variants where
  parseJSON val =
    if
      | val GHC.Classes.== "" -> GHC.Base.pure PostTerminalReadersRequestBodyMetadata'EmptyString
      | GHC.Base.otherwise -> case (PostTerminalReadersRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postTerminalReaders'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTerminalReadersResponseError' is used.
data PostTerminalReadersResponse
  = -- | Means either no matching case available or a parse error
    PostTerminalReadersResponseError GHC.Base.String
  | -- | Successful response.
    PostTerminalReadersResponse200 Terminal'reader
  | -- | Error response.
    PostTerminalReadersResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
