{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getReportingReportTypes
module StripeAPI.Operations.GetReportingReportTypes where

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

-- | > GET /v1/reporting/report_types
--
-- \<p>Returns a full list of Report Types.\<\/p>
getReportingReportTypes ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | expand: Specifies which fields in the response should be expanded.
  GHC.Maybe.Maybe ([Data.Text.Internal.Text]) ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetReportingReportTypesResponse)
getReportingReportTypes expand =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetReportingReportTypesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetReportingReportTypesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetReportingReportTypesResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetReportingReportTypesResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/reporting/report_types") [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> expand) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Represents a response of the operation 'getReportingReportTypes'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetReportingReportTypesResponseError' is used.
data GetReportingReportTypesResponse
  = -- | Means either no matching case available or a parse error
    GetReportingReportTypesResponseError GHC.Base.String
  | -- | Successful response.
    GetReportingReportTypesResponse200 GetReportingReportTypesResponseBody200
  | -- | Error response.
    GetReportingReportTypesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/reporting\/report_types.GET.responses.200.content.application\/json.schema@ in the specification.
data GetReportingReportTypesResponseBody200 = GetReportingReportTypesResponseBody200
  { -- | data
    getReportingReportTypesResponseBody200Data :: ([Reporting'reportType]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getReportingReportTypesResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getReportingReportTypesResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetReportingReportTypesResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getReportingReportTypesResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getReportingReportTypesResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getReportingReportTypesResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getReportingReportTypesResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getReportingReportTypesResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getReportingReportTypesResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetReportingReportTypesResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReportingReportTypesResponseBody200" (\obj -> ((GHC.Base.pure GetReportingReportTypesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetReportingReportTypesResponseBody200' with all required fields.
mkGetReportingReportTypesResponseBody200 ::
  -- | 'getReportingReportTypesResponseBody200Data'
  [Reporting'reportType] ->
  -- | 'getReportingReportTypesResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getReportingReportTypesResponseBody200Url'
  Data.Text.Internal.Text ->
  GetReportingReportTypesResponseBody200
mkGetReportingReportTypesResponseBody200 getReportingReportTypesResponseBody200Data getReportingReportTypesResponseBody200HasMore getReportingReportTypesResponseBody200Url =
  GetReportingReportTypesResponseBody200
    { getReportingReportTypesResponseBody200Data = getReportingReportTypesResponseBody200Data,
      getReportingReportTypesResponseBody200HasMore = getReportingReportTypesResponseBody200HasMore,
      getReportingReportTypesResponseBody200Url = getReportingReportTypesResponseBody200Url
    }
