-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getPaymentIntents
module StripeAPI.Operations.GetPaymentIntents where

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

-- | > GET /v1/payment_intents
-- 
-- \<p>Returns a list of PaymentIntents.\<\/p>
getPaymentIntents :: forall m . StripeAPI.Common.MonadHTTP m => GetPaymentIntentsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetPaymentIntentsResponse) -- ^ Monadic computation which returns the result of the operation
getPaymentIntents parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetPaymentIntentsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetPaymentIntentsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            GetPaymentIntentsResponseBody200)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetPaymentIntentsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/v1/payment_intents" [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsParametersQueryCreated parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "customer") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsParametersQueryCustomer parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/payment_intents.GET.parameters@ in the specification.
-- 
-- 
data GetPaymentIntentsParameters = GetPaymentIntentsParameters {
  -- | queryCreated: Represents the parameter named \'created\'
  -- 
  -- A filter on the list, based on the object \`created\` field. The value can be a string with an integer Unix timestamp or a dictionary with a number of different query options.
  getPaymentIntentsParametersQueryCreated :: (GHC.Maybe.Maybe GetPaymentIntentsParametersQueryCreated'Variants)
  -- | queryCustomer: Represents the parameter named \'customer\'
  -- 
  -- Only return PaymentIntents for the customer that this customer ID specifies.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getPaymentIntentsParametersQueryCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getPaymentIntentsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getPaymentIntentsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getPaymentIntentsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getPaymentIntentsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentIntentsParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryStartingAfter obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryStartingAfter obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentIntentsParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentIntentsParameters" (\obj -> (((((GHC.Base.pure GetPaymentIntentsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))}
-- | Create a new 'GetPaymentIntentsParameters' with all required fields.
mkGetPaymentIntentsParameters :: GetPaymentIntentsParameters
mkGetPaymentIntentsParameters = GetPaymentIntentsParameters{getPaymentIntentsParametersQueryCreated = GHC.Maybe.Nothing,
                                                            getPaymentIntentsParametersQueryCustomer = GHC.Maybe.Nothing,
                                                            getPaymentIntentsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                            getPaymentIntentsParametersQueryExpand = GHC.Maybe.Nothing,
                                                            getPaymentIntentsParametersQueryLimit = GHC.Maybe.Nothing,
                                                            getPaymentIntentsParametersQueryStartingAfter = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/payment_intents.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- 
data GetPaymentIntentsParametersQueryCreated'OneOf1 = GetPaymentIntentsParametersQueryCreated'OneOf1 {
  -- | gt
  getPaymentIntentsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | gte
  , getPaymentIntentsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lt
  , getPaymentIntentsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lte
  , getPaymentIntentsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentIntentsParametersQueryCreated'OneOf1
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentIntentsParametersQueryCreated'OneOf1
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentIntentsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetPaymentIntentsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))}
-- | Create a new 'GetPaymentIntentsParametersQueryCreated'OneOf1' with all required fields.
mkGetPaymentIntentsParametersQueryCreated'OneOf1 :: GetPaymentIntentsParametersQueryCreated'OneOf1
mkGetPaymentIntentsParametersQueryCreated'OneOf1 = GetPaymentIntentsParametersQueryCreated'OneOf1{getPaymentIntentsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
                                                                                                  getPaymentIntentsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
                                                                                                  getPaymentIntentsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
                                                                                                  getPaymentIntentsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/payment_intents.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- Represents the parameter named \'created\'
-- 
-- A filter on the list, based on the object \`created\` field. The value can be a string with an integer Unix timestamp or a dictionary with a number of different query options.
data GetPaymentIntentsParametersQueryCreated'Variants =
   GetPaymentIntentsParametersQueryCreated'GetPaymentIntentsParametersQueryCreated'OneOf1 GetPaymentIntentsParametersQueryCreated'OneOf1
  | GetPaymentIntentsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentIntentsParametersQueryCreated'Variants
    where {toJSON (GetPaymentIntentsParametersQueryCreated'GetPaymentIntentsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (GetPaymentIntentsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentIntentsParametersQueryCreated'Variants
    where {parseJSON val = case (GetPaymentIntentsParametersQueryCreated'GetPaymentIntentsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetPaymentIntentsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'getPaymentIntents'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetPaymentIntentsResponseError' is used.
data GetPaymentIntentsResponse =
   GetPaymentIntentsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetPaymentIntentsResponse200 GetPaymentIntentsResponseBody200 -- ^ Successful response.
  | GetPaymentIntentsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/payment_intents.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetPaymentIntentsResponseBody200 = GetPaymentIntentsResponseBody200 {
  -- | data
  getPaymentIntentsResponseBody200Data :: ([PaymentIntent])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getPaymentIntentsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/payment_intents\'
  , getPaymentIntentsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentIntentsResponseBody200
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getPaymentIntentsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getPaymentIntentsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getPaymentIntentsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getPaymentIntentsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getPaymentIntentsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getPaymentIntentsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentIntentsResponseBody200
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentIntentsResponseBody200" (\obj -> ((GHC.Base.pure GetPaymentIntentsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'GetPaymentIntentsResponseBody200' with all required fields.
mkGetPaymentIntentsResponseBody200 :: [PaymentIntent] -- ^ 'getPaymentIntentsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getPaymentIntentsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getPaymentIntentsResponseBody200Url'
  -> GetPaymentIntentsResponseBody200
mkGetPaymentIntentsResponseBody200 getPaymentIntentsResponseBody200Data getPaymentIntentsResponseBody200HasMore getPaymentIntentsResponseBody200Url = GetPaymentIntentsResponseBody200{getPaymentIntentsResponseBody200Data = getPaymentIntentsResponseBody200Data,
                                                                                                                                                                                       getPaymentIntentsResponseBody200HasMore = getPaymentIntentsResponseBody200HasMore,
                                                                                                                                                                                       getPaymentIntentsResponseBody200Url = getPaymentIntentsResponseBody200Url}
