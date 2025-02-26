-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getCoupons
module StripeAPI.Operations.GetCoupons where

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

-- | > GET /v1/coupons
-- 
-- \<p>Returns a list of your coupons.\<\/p>
getCoupons :: forall m . StripeAPI.Common.MonadHTTP m => GetCouponsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetCouponsResponse) -- ^ Monadic computation which returns the result of the operation
getCoupons parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetCouponsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCouponsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       GetCouponsResponseBody200)
                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCouponsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/v1/coupons" [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCouponsParametersQueryCreated parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCouponsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCouponsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCouponsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCouponsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/coupons.GET.parameters@ in the specification.
-- 
-- 
data GetCouponsParameters = GetCouponsParameters {
  -- | queryCreated: Represents the parameter named \'created\'
  -- 
  -- A filter on the list, based on the object \`created\` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
  getCouponsParametersQueryCreated :: (GHC.Maybe.Maybe GetCouponsParametersQueryCreated'Variants)
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCouponsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getCouponsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getCouponsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCouponsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCouponsParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryStartingAfter obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryStartingAfter obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetCouponsParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCouponsParameters" (\obj -> ((((GHC.Base.pure GetCouponsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))}
-- | Create a new 'GetCouponsParameters' with all required fields.
mkGetCouponsParameters :: GetCouponsParameters
mkGetCouponsParameters = GetCouponsParameters{getCouponsParametersQueryCreated = GHC.Maybe.Nothing,
                                              getCouponsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                              getCouponsParametersQueryExpand = GHC.Maybe.Nothing,
                                              getCouponsParametersQueryLimit = GHC.Maybe.Nothing,
                                              getCouponsParametersQueryStartingAfter = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/coupons.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- 
data GetCouponsParametersQueryCreated'OneOf1 = GetCouponsParametersQueryCreated'OneOf1 {
  -- | gt
  getCouponsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | gte
  , getCouponsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lt
  , getCouponsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lte
  , getCouponsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCouponsParametersQueryCreated'OneOf1
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getCouponsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetCouponsParametersQueryCreated'OneOf1
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCouponsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetCouponsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))}
-- | Create a new 'GetCouponsParametersQueryCreated'OneOf1' with all required fields.
mkGetCouponsParametersQueryCreated'OneOf1 :: GetCouponsParametersQueryCreated'OneOf1
mkGetCouponsParametersQueryCreated'OneOf1 = GetCouponsParametersQueryCreated'OneOf1{getCouponsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
                                                                                    getCouponsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
                                                                                    getCouponsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
                                                                                    getCouponsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/coupons.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- Represents the parameter named \'created\'
-- 
-- A filter on the list, based on the object \`created\` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
data GetCouponsParametersQueryCreated'Variants =
   GetCouponsParametersQueryCreated'GetCouponsParametersQueryCreated'OneOf1 GetCouponsParametersQueryCreated'OneOf1
  | GetCouponsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCouponsParametersQueryCreated'Variants
    where {toJSON (GetCouponsParametersQueryCreated'GetCouponsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (GetCouponsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON GetCouponsParametersQueryCreated'Variants
    where {parseJSON val = case (GetCouponsParametersQueryCreated'GetCouponsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetCouponsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'getCoupons'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCouponsResponseError' is used.
data GetCouponsResponse =
   GetCouponsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetCouponsResponse200 GetCouponsResponseBody200 -- ^ Successful response.
  | GetCouponsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/coupons.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetCouponsResponseBody200 = GetCouponsResponseBody200 {
  -- | data
  getCouponsResponseBody200Data :: ([Coupon])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getCouponsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/coupons\'
  , getCouponsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCouponsResponseBody200
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCouponsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCouponsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCouponsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getCouponsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getCouponsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getCouponsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetCouponsResponseBody200
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCouponsResponseBody200" (\obj -> ((GHC.Base.pure GetCouponsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'GetCouponsResponseBody200' with all required fields.
mkGetCouponsResponseBody200 :: [Coupon] -- ^ 'getCouponsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getCouponsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getCouponsResponseBody200Url'
  -> GetCouponsResponseBody200
mkGetCouponsResponseBody200 getCouponsResponseBody200Data getCouponsResponseBody200HasMore getCouponsResponseBody200Url = GetCouponsResponseBody200{getCouponsResponseBody200Data = getCouponsResponseBody200Data,
                                                                                                                                                    getCouponsResponseBody200HasMore = getCouponsResponseBody200HasMore,
                                                                                                                                                    getCouponsResponseBody200Url = getCouponsResponseBody200Url}
