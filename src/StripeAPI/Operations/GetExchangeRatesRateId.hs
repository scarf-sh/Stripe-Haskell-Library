-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getExchangeRatesRateId
module StripeAPI.Operations.GetExchangeRatesRateId where

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

-- | > GET /v1/exchange_rates/{rate_id}
-- 
-- \<p>Retrieves the exchange rates from the given currency to every supported currency.\<\/p>
getExchangeRatesRateId :: forall m . StripeAPI.Common.MonadHTTP m => GetExchangeRatesRateIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetExchangeRatesRateIdResponse) -- ^ Monadic computation which returns the result of the operation
getExchangeRatesRateId parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetExchangeRatesRateIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetExchangeRatesRateIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           ExchangeRate)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetExchangeRatesRateIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/v1/exchange_rates/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getExchangeRatesRateIdParametersPathRateId parameters))) GHC.Base.<> "")) [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getExchangeRatesRateIdParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/exchange_rates\/{rate_id}.GET.parameters@ in the specification.
-- 
-- 
data GetExchangeRatesRateIdParameters = GetExchangeRatesRateIdParameters {
  -- | pathRate_id: Represents the parameter named \'rate_id\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getExchangeRatesRateIdParametersPathRateId :: Data.Text.Internal.Text
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getExchangeRatesRateIdParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetExchangeRatesRateIdParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathRate_id" Data.Aeson.Types.ToJSON..= getExchangeRatesRateIdParametersPathRateId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getExchangeRatesRateIdParametersQueryExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathRate_id" Data.Aeson.Types.ToJSON..= getExchangeRatesRateIdParametersPathRateId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getExchangeRatesRateIdParametersQueryExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetExchangeRatesRateIdParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetExchangeRatesRateIdParameters" (\obj -> (GHC.Base.pure GetExchangeRatesRateIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathRate_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))}
-- | Create a new 'GetExchangeRatesRateIdParameters' with all required fields.
mkGetExchangeRatesRateIdParameters :: Data.Text.Internal.Text -- ^ 'getExchangeRatesRateIdParametersPathRateId'
  -> GetExchangeRatesRateIdParameters
mkGetExchangeRatesRateIdParameters getExchangeRatesRateIdParametersPathRateId = GetExchangeRatesRateIdParameters{getExchangeRatesRateIdParametersPathRateId = getExchangeRatesRateIdParametersPathRateId,
                                                                                                                 getExchangeRatesRateIdParametersQueryExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getExchangeRatesRateId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetExchangeRatesRateIdResponseError' is used.
data GetExchangeRatesRateIdResponse =
   GetExchangeRatesRateIdResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetExchangeRatesRateIdResponse200 ExchangeRate -- ^ Successful response.
  | GetExchangeRatesRateIdResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
