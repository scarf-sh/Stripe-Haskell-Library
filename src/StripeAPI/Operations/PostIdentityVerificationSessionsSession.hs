{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postIdentityVerificationSessionsSession
module StripeAPI.Operations.PostIdentityVerificationSessionsSession where

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

-- | > POST /v1/identity/verification_sessions/{session}
--
-- \<p>Updates a VerificationSession object.\<\/p>
--
-- \<p>When the session status is \<code>requires_input\<\/code>, you can use this method to update the
-- verification check and options.\<\/p>
postIdentityVerificationSessionsSession ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | session | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostIdentityVerificationSessionsSessionRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostIdentityVerificationSessionsSessionResponse)
postIdentityVerificationSessionsSession
  session
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostIdentityVerificationSessionsSessionResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostIdentityVerificationSessionsSessionResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Identity'verificationSession
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostIdentityVerificationSessionsSessionResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/identity/verification_sessions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel session)) GHC.Base.++ ""))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/identity\/verification_sessions\/{session}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostIdentityVerificationSessionsSessionRequestBody = PostIdentityVerificationSessionsSessionRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postIdentityVerificationSessionsSessionRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postIdentityVerificationSessionsSessionRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | options: A set of options for the session’s verification checks.
    postIdentityVerificationSessionsSessionRequestBodyOptions :: (GHC.Maybe.Maybe PostIdentityVerificationSessionsSessionRequestBodyOptions'),
    -- | type: The type of [verification check](https:\/\/stripe.com\/docs\/identity\/verification-checks) to be performed.
    postIdentityVerificationSessionsSessionRequestBodyType :: (GHC.Maybe.Maybe PostIdentityVerificationSessionsSessionRequestBodyType')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostIdentityVerificationSessionsSessionRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("options" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("options" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostIdentityVerificationSessionsSessionRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIdentityVerificationSessionsSessionRequestBody" (\obj -> (((GHC.Base.pure PostIdentityVerificationSessionsSessionRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))

-- | Create a new 'PostIdentityVerificationSessionsSessionRequestBody' with all required fields.
mkPostIdentityVerificationSessionsSessionRequestBody :: PostIdentityVerificationSessionsSessionRequestBody
mkPostIdentityVerificationSessionsSessionRequestBody =
  PostIdentityVerificationSessionsSessionRequestBody
    { postIdentityVerificationSessionsSessionRequestBodyExpand = GHC.Maybe.Nothing,
      postIdentityVerificationSessionsSessionRequestBodyMetadata = GHC.Maybe.Nothing,
      postIdentityVerificationSessionsSessionRequestBodyOptions = GHC.Maybe.Nothing,
      postIdentityVerificationSessionsSessionRequestBodyType = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/identity\/verification_sessions\/{session}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.options@ in the specification.
--
-- A set of options for the session’s verification checks.
data PostIdentityVerificationSessionsSessionRequestBodyOptions' = PostIdentityVerificationSessionsSessionRequestBodyOptions'
  { -- | document
    postIdentityVerificationSessionsSessionRequestBodyOptions'Document :: (GHC.Maybe.Maybe PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostIdentityVerificationSessionsSessionRequestBodyOptions' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("document" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions'Document obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("document" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions'Document obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostIdentityVerificationSessionsSessionRequestBodyOptions' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIdentityVerificationSessionsSessionRequestBodyOptions'" (\obj -> GHC.Base.pure PostIdentityVerificationSessionsSessionRequestBodyOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "document"))

-- | Create a new 'PostIdentityVerificationSessionsSessionRequestBodyOptions'' with all required fields.
mkPostIdentityVerificationSessionsSessionRequestBodyOptions' :: PostIdentityVerificationSessionsSessionRequestBodyOptions'
mkPostIdentityVerificationSessionsSessionRequestBodyOptions' = PostIdentityVerificationSessionsSessionRequestBodyOptions' {postIdentityVerificationSessionsSessionRequestBodyOptions'Document = GHC.Maybe.Nothing}

-- | Defines the object schema located at @paths.\/v1\/identity\/verification_sessions\/{session}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.options.properties.document.anyOf@ in the specification.
data PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1 = PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1
  { -- | allowed_types
    postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes :: (GHC.Maybe.Maybe ([PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'])),
    -- | require_id_number
    postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireIdNumber :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | require_live_capture
    postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireLiveCapture :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | require_matching_selfie
    postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireMatchingSelfie :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allowed_types" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("require_id_number" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireIdNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("require_live_capture" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireLiveCapture obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("require_matching_selfie" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireMatchingSelfie obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allowed_types" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("require_id_number" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireIdNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("require_live_capture" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireLiveCapture obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("require_matching_selfie" Data.Aeson.Types.ToJSON..=)) (postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireMatchingSelfie obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1" (\obj -> (((GHC.Base.pure PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "allowed_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "require_id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "require_live_capture")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "require_matching_selfie"))

-- | Create a new 'PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1' with all required fields.
mkPostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1 :: PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1
mkPostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1 =
  PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1
    { postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes = GHC.Maybe.Nothing,
      postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireIdNumber = GHC.Maybe.Nothing,
      postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireLiveCapture = GHC.Maybe.Nothing,
      postIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1RequireMatchingSelfie = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/identity\/verification_sessions\/{session}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.options.properties.document.anyOf.properties.allowed_types.items@ in the specification.
data PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"driving_license"@
    PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'EnumDrivingLicense
  | -- | Represents the JSON value @"id_card"@
    PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'EnumIdCard
  | -- | Represents the JSON value @"passport"@
    PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'EnumPassport
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes' where
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'Other val) = val
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'EnumDrivingLicense) = "driving_license"
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'EnumIdCard) = "id_card"
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'EnumPassport) = "passport"

instance Data.Aeson.Types.FromJSON.FromJSON PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "driving_license" -> PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'EnumDrivingLicense
          | val GHC.Classes.== "id_card" -> PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'EnumIdCard
          | val GHC.Classes.== "passport" -> PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'EnumPassport
          | GHC.Base.otherwise -> PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1AllowedTypes'Other val
      )

-- | Defines the oneOf schema located at @paths.\/v1\/identity\/verification_sessions\/{session}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.options.properties.document.anyOf@ in the specification.
data PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'Variants
  = -- | Represents the JSON value @""@
    PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'EmptyString
  | PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1 PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'Variants where
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'Variants where
  parseJSON val =
    if
      | val GHC.Classes.== "" -> GHC.Base.pure PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'EmptyString
      | GHC.Base.otherwise -> case (PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'PostIdentityVerificationSessionsSessionRequestBodyOptions'Document'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @paths.\/v1\/identity\/verification_sessions\/{session}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.type@ in the specification.
--
-- The type of [verification check](https:\/\/stripe.com\/docs\/identity\/verification-checks) to be performed.
data PostIdentityVerificationSessionsSessionRequestBodyType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostIdentityVerificationSessionsSessionRequestBodyType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostIdentityVerificationSessionsSessionRequestBodyType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"document"@
    PostIdentityVerificationSessionsSessionRequestBodyType'EnumDocument
  | -- | Represents the JSON value @"id_number"@
    PostIdentityVerificationSessionsSessionRequestBodyType'EnumIdNumber
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostIdentityVerificationSessionsSessionRequestBodyType' where
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyType'Other val) = val
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyType'EnumDocument) = "document"
  toJSON (PostIdentityVerificationSessionsSessionRequestBodyType'EnumIdNumber) = "id_number"

instance Data.Aeson.Types.FromJSON.FromJSON PostIdentityVerificationSessionsSessionRequestBodyType' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "document" -> PostIdentityVerificationSessionsSessionRequestBodyType'EnumDocument
          | val GHC.Classes.== "id_number" -> PostIdentityVerificationSessionsSessionRequestBodyType'EnumIdNumber
          | GHC.Base.otherwise -> PostIdentityVerificationSessionsSessionRequestBodyType'Other val
      )

-- | Represents a response of the operation 'postIdentityVerificationSessionsSession'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostIdentityVerificationSessionsSessionResponseError' is used.
data PostIdentityVerificationSessionsSessionResponse
  = -- | Means either no matching case available or a parse error
    PostIdentityVerificationSessionsSessionResponseError GHC.Base.String
  | -- | Successful response.
    PostIdentityVerificationSessionsSessionResponse200 Identity'verificationSession
  | -- | Error response.
    PostIdentityVerificationSessionsSessionResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
