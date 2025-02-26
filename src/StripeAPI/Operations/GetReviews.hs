-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getReviews
module StripeAPI.Operations.GetReviews where

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

-- | > GET /v1/reviews
-- 
-- \<p>Returns a list of \<code>Review\<\/code> objects that have \<code>open\<\/code> set to \<code>true\<\/code>. The objects are sorted in descending order by creation date, with the most recently created object appearing first.\<\/p>
getReviews :: forall m . StripeAPI.Common.MonadHTTP m => GetReviewsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetReviewsResponse) -- ^ Monadic computation which returns the result of the operation
getReviews parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetReviewsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetReviewsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       GetReviewsResponseBody200)
                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetReviewsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/v1/reviews" [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getReviewsParametersQueryCreated parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getReviewsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getReviewsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getReviewsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getReviewsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/reviews.GET.parameters@ in the specification.
-- 
-- 
data GetReviewsParameters = GetReviewsParameters {
  -- | queryCreated: Represents the parameter named \'created\'
  getReviewsParametersQueryCreated :: (GHC.Maybe.Maybe GetReviewsParametersQueryCreated'Variants)
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getReviewsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getReviewsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getReviewsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getReviewsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetReviewsParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryStartingAfter obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryStartingAfter obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetReviewsParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReviewsParameters" (\obj -> ((((GHC.Base.pure GetReviewsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))}
-- | Create a new 'GetReviewsParameters' with all required fields.
mkGetReviewsParameters :: GetReviewsParameters
mkGetReviewsParameters = GetReviewsParameters{getReviewsParametersQueryCreated = GHC.Maybe.Nothing,
                                              getReviewsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                              getReviewsParametersQueryExpand = GHC.Maybe.Nothing,
                                              getReviewsParametersQueryLimit = GHC.Maybe.Nothing,
                                              getReviewsParametersQueryStartingAfter = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/reviews.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- 
data GetReviewsParametersQueryCreated'OneOf1 = GetReviewsParametersQueryCreated'OneOf1 {
  -- | gt
  getReviewsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | gte
  , getReviewsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lt
  , getReviewsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lte
  , getReviewsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetReviewsParametersQueryCreated'OneOf1
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getReviewsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetReviewsParametersQueryCreated'OneOf1
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReviewsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetReviewsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))}
-- | Create a new 'GetReviewsParametersQueryCreated'OneOf1' with all required fields.
mkGetReviewsParametersQueryCreated'OneOf1 :: GetReviewsParametersQueryCreated'OneOf1
mkGetReviewsParametersQueryCreated'OneOf1 = GetReviewsParametersQueryCreated'OneOf1{getReviewsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
                                                                                    getReviewsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
                                                                                    getReviewsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
                                                                                    getReviewsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/reviews.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- Represents the parameter named \'created\'
data GetReviewsParametersQueryCreated'Variants =
   GetReviewsParametersQueryCreated'GetReviewsParametersQueryCreated'OneOf1 GetReviewsParametersQueryCreated'OneOf1
  | GetReviewsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetReviewsParametersQueryCreated'Variants
    where {toJSON (GetReviewsParametersQueryCreated'GetReviewsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (GetReviewsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON GetReviewsParametersQueryCreated'Variants
    where {parseJSON val = case (GetReviewsParametersQueryCreated'GetReviewsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetReviewsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'getReviews'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetReviewsResponseError' is used.
data GetReviewsResponse =
   GetReviewsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetReviewsResponse200 GetReviewsResponseBody200 -- ^ Successful response.
  | GetReviewsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/reviews.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetReviewsResponseBody200 = GetReviewsResponseBody200 {
  -- | data
  getReviewsResponseBody200Data :: ([Review])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getReviewsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getReviewsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetReviewsResponseBody200
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getReviewsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getReviewsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getReviewsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getReviewsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getReviewsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getReviewsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetReviewsResponseBody200
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetReviewsResponseBody200" (\obj -> ((GHC.Base.pure GetReviewsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'GetReviewsResponseBody200' with all required fields.
mkGetReviewsResponseBody200 :: [Review] -- ^ 'getReviewsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getReviewsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getReviewsResponseBody200Url'
  -> GetReviewsResponseBody200
mkGetReviewsResponseBody200 getReviewsResponseBody200Data getReviewsResponseBody200HasMore getReviewsResponseBody200Url = GetReviewsResponseBody200{getReviewsResponseBody200Data = getReviewsResponseBody200Data,
                                                                                                                                                    getReviewsResponseBody200HasMore = getReviewsResponseBody200HasMore,
                                                                                                                                                    getReviewsResponseBody200Url = getReviewsResponseBody200Url}
