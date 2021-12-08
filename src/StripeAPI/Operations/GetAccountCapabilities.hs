{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getAccountCapabilities
module StripeAPI.Operations.GetAccountCapabilities where

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

-- | > GET /v1/account/capabilities
--
-- \<p>Returns a list of capabilities associated with the account. The capabilities are returned sorted by creation date, with the most recent capability appearing first.\<\/p>
getAccountCapabilities ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | expand: Specifies which fields in the response should be expanded.
  GHC.Maybe.Maybe ([Data.Text.Internal.Text]) ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetAccountCapabilitiesResponse)
getAccountCapabilities expand =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetAccountCapabilitiesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetAccountCapabilitiesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetAccountCapabilitiesResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetAccountCapabilitiesResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/account/capabilities") [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> expand) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Represents a response of the operation 'getAccountCapabilities'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountCapabilitiesResponseError' is used.
data GetAccountCapabilitiesResponse
  = -- | Means either no matching case available or a parse error
    GetAccountCapabilitiesResponseError GHC.Base.String
  | -- | Successful response.
    GetAccountCapabilitiesResponse200 GetAccountCapabilitiesResponseBody200
  | -- | Error response.
    GetAccountCapabilitiesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/account\/capabilities.GET.responses.200.content.application\/json.schema@ in the specification.
data GetAccountCapabilitiesResponseBody200 = GetAccountCapabilitiesResponseBody200
  { -- | data
    getAccountCapabilitiesResponseBody200Data :: ([Capability]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getAccountCapabilitiesResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getAccountCapabilitiesResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetAccountCapabilitiesResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getAccountCapabilitiesResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getAccountCapabilitiesResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getAccountCapabilitiesResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getAccountCapabilitiesResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getAccountCapabilitiesResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getAccountCapabilitiesResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetAccountCapabilitiesResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountCapabilitiesResponseBody200" (\obj -> ((GHC.Base.pure GetAccountCapabilitiesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetAccountCapabilitiesResponseBody200' with all required fields.
mkGetAccountCapabilitiesResponseBody200 ::
  -- | 'getAccountCapabilitiesResponseBody200Data'
  [Capability] ->
  -- | 'getAccountCapabilitiesResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getAccountCapabilitiesResponseBody200Url'
  Data.Text.Internal.Text ->
  GetAccountCapabilitiesResponseBody200
mkGetAccountCapabilitiesResponseBody200 getAccountCapabilitiesResponseBody200Data getAccountCapabilitiesResponseBody200HasMore getAccountCapabilitiesResponseBody200Url =
  GetAccountCapabilitiesResponseBody200
    { getAccountCapabilitiesResponseBody200Data = getAccountCapabilitiesResponseBody200Data,
      getAccountCapabilitiesResponseBody200HasMore = getAccountCapabilitiesResponseBody200HasMore,
      getAccountCapabilitiesResponseBody200Url = getAccountCapabilitiesResponseBody200Url
    }
