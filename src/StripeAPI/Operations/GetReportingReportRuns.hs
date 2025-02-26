-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getReportingReportRuns
module StripeAPI.Operations.GetReportingReportRuns where

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

-- | > GET /v1/reporting/report_runs
-- 
-- \<p>Returns a list of Report Runs, with the most recent appearing first.\<\/p>
getReportingReportRuns :: forall m . StripeAPI.Common.MonadHTTP m => GetReportingReportRunsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetReportingReportRunsResponse) -- ^ Monadic computation which returns the result of the operation
getReportingReportRuns parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetReportingReportRunsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetReportingReportRunsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           GetReportingReportRunsResponseBody200)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetReportingReportRunsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/v1/reporting/report_runs" [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getReportingReportRunsParametersQueryCreated parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getReportingReportRunsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getReportingReportRunsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getReportingReportRunsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getReportingReportRunsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/reporting\/report_runs.GET.parameters@ in the specification.
-- 
-- 
data GetReportingReportRunsParameters = GetReportingReportRunsParameters {
  -- | queryCreated: Represents the parameter named \'created\'
  getReportingReportRunsParametersQueryCreated :: (GHC.Maybe.Maybe GetReportingReportRunsParametersQueryCreated'Variants)
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getReportingReportRunsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getReportingReportRunsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getReportingReportRunsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getReportingReportRunsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetReportingReportRunsParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryStartingAfter obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryStartingAfter obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetReportingReportRunsParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReportingReportRunsParameters" (\obj -> ((((GHC.Base.pure GetReportingReportRunsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))}
-- | Create a new 'GetReportingReportRunsParameters' with all required fields.
mkGetReportingReportRunsParameters :: GetReportingReportRunsParameters
mkGetReportingReportRunsParameters = GetReportingReportRunsParameters{getReportingReportRunsParametersQueryCreated = GHC.Maybe.Nothing,
                                                                      getReportingReportRunsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                                      getReportingReportRunsParametersQueryExpand = GHC.Maybe.Nothing,
                                                                      getReportingReportRunsParametersQueryLimit = GHC.Maybe.Nothing,
                                                                      getReportingReportRunsParametersQueryStartingAfter = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/reporting\/report_runs.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- 
data GetReportingReportRunsParametersQueryCreated'OneOf1 = GetReportingReportRunsParametersQueryCreated'OneOf1 {
  -- | gt
  getReportingReportRunsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | gte
  , getReportingReportRunsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lt
  , getReportingReportRunsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lte
  , getReportingReportRunsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetReportingReportRunsParametersQueryCreated'OneOf1
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getReportingReportRunsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetReportingReportRunsParametersQueryCreated'OneOf1
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReportingReportRunsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetReportingReportRunsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))}
-- | Create a new 'GetReportingReportRunsParametersQueryCreated'OneOf1' with all required fields.
mkGetReportingReportRunsParametersQueryCreated'OneOf1 :: GetReportingReportRunsParametersQueryCreated'OneOf1
mkGetReportingReportRunsParametersQueryCreated'OneOf1 = GetReportingReportRunsParametersQueryCreated'OneOf1{getReportingReportRunsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
                                                                                                            getReportingReportRunsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
                                                                                                            getReportingReportRunsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
                                                                                                            getReportingReportRunsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/reporting\/report_runs.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- Represents the parameter named \'created\'
data GetReportingReportRunsParametersQueryCreated'Variants =
   GetReportingReportRunsParametersQueryCreated'GetReportingReportRunsParametersQueryCreated'OneOf1 GetReportingReportRunsParametersQueryCreated'OneOf1
  | GetReportingReportRunsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetReportingReportRunsParametersQueryCreated'Variants
    where {toJSON (GetReportingReportRunsParametersQueryCreated'GetReportingReportRunsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (GetReportingReportRunsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON GetReportingReportRunsParametersQueryCreated'Variants
    where {parseJSON val = case (GetReportingReportRunsParametersQueryCreated'GetReportingReportRunsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetReportingReportRunsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'getReportingReportRuns'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetReportingReportRunsResponseError' is used.
data GetReportingReportRunsResponse =
   GetReportingReportRunsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetReportingReportRunsResponse200 GetReportingReportRunsResponseBody200 -- ^ Successful response.
  | GetReportingReportRunsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/reporting\/report_runs.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetReportingReportRunsResponseBody200 = GetReportingReportRunsResponseBody200 {
  -- | data
  getReportingReportRunsResponseBody200Data :: ([Reporting'reportRun])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getReportingReportRunsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/reporting\/report_runs\'
  , getReportingReportRunsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetReportingReportRunsResponseBody200
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getReportingReportRunsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getReportingReportRunsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getReportingReportRunsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getReportingReportRunsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getReportingReportRunsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getReportingReportRunsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetReportingReportRunsResponseBody200
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReportingReportRunsResponseBody200" (\obj -> ((GHC.Base.pure GetReportingReportRunsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'GetReportingReportRunsResponseBody200' with all required fields.
mkGetReportingReportRunsResponseBody200 :: [Reporting'reportRun] -- ^ 'getReportingReportRunsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getReportingReportRunsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getReportingReportRunsResponseBody200Url'
  -> GetReportingReportRunsResponseBody200
mkGetReportingReportRunsResponseBody200 getReportingReportRunsResponseBody200Data getReportingReportRunsResponseBody200HasMore getReportingReportRunsResponseBody200Url = GetReportingReportRunsResponseBody200{getReportingReportRunsResponseBody200Data = getReportingReportRunsResponseBody200Data,
                                                                                                                                                                                                                getReportingReportRunsResponseBody200HasMore = getReportingReportRunsResponseBody200HasMore,
                                                                                                                                                                                                                getReportingReportRunsResponseBody200Url = getReportingReportRunsResponseBody200Url}
