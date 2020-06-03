{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation postCustomersCustomerSourcesIdVerify
module StripeAPI.Operations.PostCustomersCustomerSourcesIdVerify where

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

-- | > POST /v1/customers/{customer}/sources/{id}/verify
--
-- \<p>Verify a specified bank account for a given customer.\<\/p>
postCustomersCustomerSourcesIdVerify ::
  forall m s.
  (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) =>
  -- | The configuration to use in the request
  StripeAPI.Common.Configuration s ->
  -- | customer | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | id | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostCustomersCustomerSourcesIdVerifyRequestBody ->
  -- | Monad containing the result of the operation
  m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCustomersCustomerSourcesIdVerifyResponse))
postCustomersCustomerSourcesIdVerify
  config
  customer
  id
  body =
    GHC.Base.fmap
      ( GHC.Base.fmap
          ( \response_0 ->
              GHC.Base.fmap
                ( Data.Either.either PostCustomersCustomerSourcesIdVerifyResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                   if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                         PostCustomersCustomerSourcesIdVerifyResponse200
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  BankAccount
                                                            )
                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                         PostCustomersCustomerSourcesIdVerifyResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/verify"))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | > POST /v1/customers/{customer}/sources/{id}/verify
--
-- The same as 'postCustomersCustomerSourcesIdVerify' but returns the raw 'Data.ByteString.Char8.ByteString'
postCustomersCustomerSourcesIdVerifyRaw ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  StripeAPI.Common.Configuration s ->
  Data.Text.Internal.Text ->
  Data.Text.Internal.Text ->
  GHC.Maybe.Maybe PostCustomersCustomerSourcesIdVerifyRequestBody ->
  m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
    )
postCustomersCustomerSourcesIdVerifyRaw
  config
  customer
  id
  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/verify"))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | > POST /v1/customers/{customer}/sources/{id}/verify
--
-- Monadic version of 'postCustomersCustomerSourcesIdVerify' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerSourcesIdVerifyM ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  Data.Text.Internal.Text ->
  Data.Text.Internal.Text ->
  GHC.Maybe.Maybe PostCustomersCustomerSourcesIdVerifyRequestBody ->
  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
    m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response PostCustomersCustomerSourcesIdVerifyResponse)
    )
postCustomersCustomerSourcesIdVerifyM
  customer
  id
  body =
    GHC.Base.fmap
      ( GHC.Base.fmap
          ( \response_2 ->
              GHC.Base.fmap
                ( Data.Either.either PostCustomersCustomerSourcesIdVerifyResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                   if  | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                         PostCustomersCustomerSourcesIdVerifyResponse200
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  BankAccount
                                                            )
                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                         PostCustomersCustomerSourcesIdVerifyResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/verify"))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | > POST /v1/customers/{customer}/sources/{id}/verify
--
-- Monadic version of 'postCustomersCustomerSourcesIdVerifyRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerSourcesIdVerifyRawM ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  Data.Text.Internal.Text ->
  Data.Text.Internal.Text ->
  GHC.Maybe.Maybe PostCustomersCustomerSourcesIdVerifyRequestBody ->
  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
    m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
    )
postCustomersCustomerSourcesIdVerifyRawM
  customer
  id
  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/verify"))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the data type for the schema postCustomersCustomerSourcesIdVerifyRequestBody
data PostCustomersCustomerSourcesIdVerifyRequestBody
  = PostCustomersCustomerSourcesIdVerifyRequestBody
      { -- | amounts: Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
        postCustomersCustomerSourcesIdVerifyRequestBodyAmounts :: (GHC.Maybe.Maybe ([] GHC.Integer.Type.Integer)),
        -- | expand: Specifies which fields in the response should be expanded.
        postCustomersCustomerSourcesIdVerifyRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdVerifyRequestBody where
  toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amounts" (postCustomersCustomerSourcesIdVerifyRequestBodyAmounts obj) : (Data.Aeson..=) "expand" (postCustomersCustomerSourcesIdVerifyRequestBodyExpand obj) : [])
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amounts" (postCustomersCustomerSourcesIdVerifyRequestBodyAmounts obj) GHC.Base.<> (Data.Aeson..=) "expand" (postCustomersCustomerSourcesIdVerifyRequestBodyExpand obj))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdVerifyRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdVerifyRequestBody" (\obj -> (GHC.Base.pure PostCustomersCustomerSourcesIdVerifyRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))

-- | Represents a response of the operation 'postCustomersCustomerSourcesIdVerify'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerSourcesIdVerifyResponseError' is used.
data PostCustomersCustomerSourcesIdVerifyResponse
  = -- | Means either no matching case available or a parse error
    PostCustomersCustomerSourcesIdVerifyResponseError GHC.Base.String
  | -- | Successful response.
    PostCustomersCustomerSourcesIdVerifyResponse200 BankAccount
  | -- | Error response.
    PostCustomersCustomerSourcesIdVerifyResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
