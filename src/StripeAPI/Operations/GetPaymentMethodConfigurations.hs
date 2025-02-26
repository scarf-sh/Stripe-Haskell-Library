-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getPaymentMethodConfigurations
module StripeAPI.Operations.GetPaymentMethodConfigurations where

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

-- | > GET /v1/payment_method_configurations
-- 
-- \<p>List payment method configurations\<\/p>
getPaymentMethodConfigurations :: forall m . StripeAPI.Common.MonadHTTP m => GetPaymentMethodConfigurationsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetPaymentMethodConfigurationsResponse) -- ^ Monadic computation which returns the result of the operation
getPaymentMethodConfigurations parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetPaymentMethodConfigurationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetPaymentMethodConfigurationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   GetPaymentMethodConfigurationsResponseBody200)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetPaymentMethodConfigurationsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/v1/payment_method_configurations" [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "application") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentMethodConfigurationsParametersQueryApplication parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentMethodConfigurationsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/payment_method_configurations.GET.parameters@ in the specification.
-- 
-- 
data GetPaymentMethodConfigurationsParameters = GetPaymentMethodConfigurationsParameters {
  -- | queryApplication: Represents the parameter named \'application\'
  -- 
  -- The Connect application to filter by.
  getPaymentMethodConfigurationsParametersQueryApplication :: (GHC.Maybe.Maybe GetPaymentMethodConfigurationsParametersQueryApplication'Variants)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getPaymentMethodConfigurationsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentMethodConfigurationsParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryApplication" Data.Aeson.Types.ToJSON..=)) (getPaymentMethodConfigurationsParametersQueryApplication obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPaymentMethodConfigurationsParametersQueryExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryApplication" Data.Aeson.Types.ToJSON..=)) (getPaymentMethodConfigurationsParametersQueryApplication obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPaymentMethodConfigurationsParametersQueryExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentMethodConfigurationsParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentMethodConfigurationsParameters" (\obj -> (GHC.Base.pure GetPaymentMethodConfigurationsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryApplication")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))}
-- | Create a new 'GetPaymentMethodConfigurationsParameters' with all required fields.
mkGetPaymentMethodConfigurationsParameters :: GetPaymentMethodConfigurationsParameters
mkGetPaymentMethodConfigurationsParameters = GetPaymentMethodConfigurationsParameters{getPaymentMethodConfigurationsParametersQueryApplication = GHC.Maybe.Nothing,
                                                                                      getPaymentMethodConfigurationsParametersQueryExpand = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/payment_method_configurations.GET.parameters.properties.queryApplication.anyOf@ in the specification.
-- 
-- 
data GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2 =
   GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2EnumEmptyString -- ^ Represents the JSON value @""@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2
    where {toJSON (GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2Other val) = val;
           toJSON (GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2EnumEmptyString) = ""}
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "" -> GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2EnumEmptyString
                                             | GHC.Base.otherwise -> GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2Other val)}
-- | Defines the oneOf schema located at @paths.\/v1\/payment_method_configurations.GET.parameters.properties.queryApplication.anyOf@ in the specification.
-- 
-- Represents the parameter named \'application\'
-- 
-- The Connect application to filter by.
data GetPaymentMethodConfigurationsParametersQueryApplication'Variants =
   GetPaymentMethodConfigurationsParametersQueryApplication'Text Data.Text.Internal.Text
  | GetPaymentMethodConfigurationsParametersQueryApplication'GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2 GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentMethodConfigurationsParametersQueryApplication'Variants
    where {toJSON (GetPaymentMethodConfigurationsParametersQueryApplication'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (GetPaymentMethodConfigurationsParametersQueryApplication'GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2 a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentMethodConfigurationsParametersQueryApplication'Variants
    where {parseJSON val = case (GetPaymentMethodConfigurationsParametersQueryApplication'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetPaymentMethodConfigurationsParametersQueryApplication'GetPaymentMethodConfigurationsParametersQueryApplication'OneOf2 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'getPaymentMethodConfigurations'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetPaymentMethodConfigurationsResponseError' is used.
data GetPaymentMethodConfigurationsResponse =
   GetPaymentMethodConfigurationsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetPaymentMethodConfigurationsResponse200 GetPaymentMethodConfigurationsResponseBody200 -- ^ Successful response.
  | GetPaymentMethodConfigurationsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/payment_method_configurations.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetPaymentMethodConfigurationsResponseBody200 = GetPaymentMethodConfigurationsResponseBody200 {
  -- | data
  getPaymentMethodConfigurationsResponseBody200Data :: ([PaymentMethodConfiguration])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getPaymentMethodConfigurationsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getPaymentMethodConfigurationsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentMethodConfigurationsResponseBody200
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getPaymentMethodConfigurationsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getPaymentMethodConfigurationsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getPaymentMethodConfigurationsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getPaymentMethodConfigurationsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getPaymentMethodConfigurationsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getPaymentMethodConfigurationsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentMethodConfigurationsResponseBody200
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentMethodConfigurationsResponseBody200" (\obj -> ((GHC.Base.pure GetPaymentMethodConfigurationsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'GetPaymentMethodConfigurationsResponseBody200' with all required fields.
mkGetPaymentMethodConfigurationsResponseBody200 :: [PaymentMethodConfiguration] -- ^ 'getPaymentMethodConfigurationsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getPaymentMethodConfigurationsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getPaymentMethodConfigurationsResponseBody200Url'
  -> GetPaymentMethodConfigurationsResponseBody200
mkGetPaymentMethodConfigurationsResponseBody200 getPaymentMethodConfigurationsResponseBody200Data getPaymentMethodConfigurationsResponseBody200HasMore getPaymentMethodConfigurationsResponseBody200Url = GetPaymentMethodConfigurationsResponseBody200{getPaymentMethodConfigurationsResponseBody200Data = getPaymentMethodConfigurationsResponseBody200Data,
                                                                                                                                                                                                                                                        getPaymentMethodConfigurationsResponseBody200HasMore = getPaymentMethodConfigurationsResponseBody200HasMore,
                                                                                                                                                                                                                                                        getPaymentMethodConfigurationsResponseBody200Url = getPaymentMethodConfigurationsResponseBody200Url}
