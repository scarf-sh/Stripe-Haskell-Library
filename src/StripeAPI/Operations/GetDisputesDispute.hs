{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation getDisputesDispute
module StripeAPI.Operations.GetDisputesDispute where

import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
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
import qualified GHC.Generics
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

-- | > GET /v1/disputes/{dispute}
--
-- \<p>Retrieves the dispute with the given ID.\<\/p>
getDisputesDispute ::
  forall m s.
  (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) =>
  -- | The configuration to use in the request
  StripeAPI.Common.Configuration s ->
  -- | dispute | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | expand: Specifies which fields in the response should be expanded.
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe GetDisputesDisputeRequestBody ->
  -- | Monad containing the result of the operation
  m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetDisputesDisputeResponse))
getDisputesDispute
  config
  dispute
  expand
  body =
    GHC.Base.fmap
      ( GHC.Base.fmap
          ( \response_0 ->
              GHC.Base.fmap
                ( Data.Either.either GetDisputesDisputeResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                   if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetDisputesDisputeResponse200
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  Dispute
                                                            )
                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetDisputesDisputeResponseDefault
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  Error
                                                            )
                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                               )
                      response_0
                )
                response_0
          )
      )
      ( StripeAPI.Common.doBodyCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ "")))
          ( ( Data.Text.pack "expand",
              StripeAPI.Common.stringifyModel Data.Functor.<$> expand
            )
              : []
          )
          body
          StripeAPI.Common.RequestBodyEncodingFormData
      )

-- | > GET /v1/disputes/{dispute}
--
-- The same as 'getDisputesDispute' but returns the raw 'Data.ByteString.Char8.ByteString'
getDisputesDisputeRaw ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  StripeAPI.Common.Configuration s ->
  Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GetDisputesDisputeRequestBody ->
  m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
    )
getDisputesDisputeRaw
  config
  dispute
  expand
  body =
    GHC.Base.id
      ( StripeAPI.Common.doBodyCallWithConfiguration
          config
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ "")))
          ( ( Data.Text.pack "expand",
              StripeAPI.Common.stringifyModel Data.Functor.<$> expand
            )
              : []
          )
          body
          StripeAPI.Common.RequestBodyEncodingFormData
      )

-- | > GET /v1/disputes/{dispute}
--
-- Monadic version of 'getDisputesDispute' (use with 'StripeAPI.Common.runWithConfiguration')
getDisputesDisputeM ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GetDisputesDisputeRequestBody ->
  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
    m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response GetDisputesDisputeResponse)
    )
getDisputesDisputeM
  dispute
  expand
  body =
    GHC.Base.fmap
      ( GHC.Base.fmap
          ( \response_2 ->
              GHC.Base.fmap
                ( Data.Either.either GetDisputesDisputeResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                   if  | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetDisputesDisputeResponse200
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  Dispute
                                                            )
                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                         GetDisputesDisputeResponseDefault
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  Error
                                                            )
                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                               )
                      response_2
                )
                response_2
          )
      )
      ( StripeAPI.Common.doBodyCallWithConfigurationM
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ "")))
          ( ( Data.Text.pack "expand",
              StripeAPI.Common.stringifyModel Data.Functor.<$> expand
            )
              : []
          )
          body
          StripeAPI.Common.RequestBodyEncodingFormData
      )

-- | > GET /v1/disputes/{dispute}
--
-- Monadic version of 'getDisputesDisputeRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getDisputesDisputeRawM ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  Data.Text.Internal.Text ->
  GHC.Maybe.Maybe Data.Text.Internal.Text ->
  GHC.Maybe.Maybe GetDisputesDisputeRequestBody ->
  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
    m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
    )
getDisputesDisputeRawM
  dispute
  expand
  body =
    GHC.Base.id
      ( StripeAPI.Common.doBodyCallWithConfigurationM
          (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
          (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ "")))
          ( ( Data.Text.pack "expand",
              StripeAPI.Common.stringifyModel Data.Functor.<$> expand
            )
              : []
          )
          body
          StripeAPI.Common.RequestBodyEncodingFormData
      )

-- | Defines the data type for the schema getDisputesDisputeRequestBody
data GetDisputesDisputeRequestBody
  = GetDisputesDisputeRequestBody
      {
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON GetDisputesDisputeRequestBody where
  toJSON obj = Data.Aeson.object []
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))

instance Data.Aeson.Types.FromJSON.FromJSON GetDisputesDisputeRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetDisputesDisputeRequestBody" (\obj -> GHC.Base.pure GetDisputesDisputeRequestBody)

-- | Represents a response of the operation 'getDisputesDispute'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetDisputesDisputeResponseError' is used.
data GetDisputesDisputeResponse
  = -- | Means either no matching case available or a parse error
    GetDisputesDisputeResponseError GHC.Base.String
  | -- | Successful response.
    GetDisputesDisputeResponse200 Dispute
  | -- | Error response.
    GetDisputesDisputeResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
