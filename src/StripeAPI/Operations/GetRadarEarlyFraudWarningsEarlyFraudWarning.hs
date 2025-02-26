-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getRadarEarlyFraudWarningsEarlyFraudWarning
module StripeAPI.Operations.GetRadarEarlyFraudWarningsEarlyFraudWarning where

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

-- | > GET /v1/radar/early_fraud_warnings/{early_fraud_warning}
-- 
-- \<p>Retrieves the details of an early fraud warning that has previously been created. \<\/p>
-- 
-- \<p>Please refer to the \<a href=\"\#early_fraud_warning_object\">early fraud warning\<\/a> object reference for more details.\<\/p>
getRadarEarlyFraudWarningsEarlyFraudWarning :: forall m . StripeAPI.Common.MonadHTTP m => GetRadarEarlyFraudWarningsEarlyFraudWarningParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetRadarEarlyFraudWarningsEarlyFraudWarningResponse) -- ^ Monadic computation which returns the result of the operation
getRadarEarlyFraudWarningsEarlyFraudWarning parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetRadarEarlyFraudWarningsEarlyFraudWarningResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetRadarEarlyFraudWarningsEarlyFraudWarningResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Radar'earlyFraudWarning)
                                                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetRadarEarlyFraudWarningsEarlyFraudWarningResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/v1/radar/early_fraud_warnings/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getRadarEarlyFraudWarningsEarlyFraudWarningParametersPathEarlyFraudWarning parameters))) GHC.Base.<> "")) [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarEarlyFraudWarningsEarlyFraudWarningParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/radar\/early_fraud_warnings\/{early_fraud_warning}.GET.parameters@ in the specification.
-- 
-- 
data GetRadarEarlyFraudWarningsEarlyFraudWarningParameters = GetRadarEarlyFraudWarningsEarlyFraudWarningParameters {
  -- | pathEarly_fraud_warning: Represents the parameter named \'early_fraud_warning\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getRadarEarlyFraudWarningsEarlyFraudWarningParametersPathEarlyFraudWarning :: Data.Text.Internal.Text
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getRadarEarlyFraudWarningsEarlyFraudWarningParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetRadarEarlyFraudWarningsEarlyFraudWarningParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathEarly_fraud_warning" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsEarlyFraudWarningParametersPathEarlyFraudWarning obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getRadarEarlyFraudWarningsEarlyFraudWarningParametersQueryExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathEarly_fraud_warning" Data.Aeson.Types.ToJSON..= getRadarEarlyFraudWarningsEarlyFraudWarningParametersPathEarlyFraudWarning obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getRadarEarlyFraudWarningsEarlyFraudWarningParametersQueryExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetRadarEarlyFraudWarningsEarlyFraudWarningParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRadarEarlyFraudWarningsEarlyFraudWarningParameters" (\obj -> (GHC.Base.pure GetRadarEarlyFraudWarningsEarlyFraudWarningParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathEarly_fraud_warning")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))}
-- | Create a new 'GetRadarEarlyFraudWarningsEarlyFraudWarningParameters' with all required fields.
mkGetRadarEarlyFraudWarningsEarlyFraudWarningParameters :: Data.Text.Internal.Text -- ^ 'getRadarEarlyFraudWarningsEarlyFraudWarningParametersPathEarlyFraudWarning'
  -> GetRadarEarlyFraudWarningsEarlyFraudWarningParameters
mkGetRadarEarlyFraudWarningsEarlyFraudWarningParameters getRadarEarlyFraudWarningsEarlyFraudWarningParametersPathEarlyFraudWarning = GetRadarEarlyFraudWarningsEarlyFraudWarningParameters{getRadarEarlyFraudWarningsEarlyFraudWarningParametersPathEarlyFraudWarning = getRadarEarlyFraudWarningsEarlyFraudWarningParametersPathEarlyFraudWarning,
                                                                                                                                                                                           getRadarEarlyFraudWarningsEarlyFraudWarningParametersQueryExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getRadarEarlyFraudWarningsEarlyFraudWarning'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetRadarEarlyFraudWarningsEarlyFraudWarningResponseError' is used.
data GetRadarEarlyFraudWarningsEarlyFraudWarningResponse =
   GetRadarEarlyFraudWarningsEarlyFraudWarningResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetRadarEarlyFraudWarningsEarlyFraudWarningResponse200 Radar'earlyFraudWarning -- ^ Successful response.
  | GetRadarEarlyFraudWarningsEarlyFraudWarningResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
