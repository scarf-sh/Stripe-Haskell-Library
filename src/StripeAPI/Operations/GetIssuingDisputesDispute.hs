-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getIssuingDisputesDispute
module StripeAPI.Operations.GetIssuingDisputesDispute where

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

-- | > GET /v1/issuing/disputes/{dispute}
-- 
-- \<p>Retrieves an Issuing \<code>Dispute\<\/code> object.\<\/p>
getIssuingDisputesDispute :: forall m . StripeAPI.Common.MonadHTTP m => GetIssuingDisputesDisputeParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetIssuingDisputesDisputeResponse) -- ^ Monadic computation which returns the result of the operation
getIssuingDisputesDispute parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetIssuingDisputesDisputeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingDisputesDisputeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    Issuing'dispute)
                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingDisputesDisputeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/v1/issuing/disputes/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getIssuingDisputesDisputeParametersPathDispute parameters))) GHC.Base.<> "")) [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingDisputesDisputeParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/issuing\/disputes\/{dispute}.GET.parameters@ in the specification.
-- 
-- 
data GetIssuingDisputesDisputeParameters = GetIssuingDisputesDisputeParameters {
  -- | pathDispute: Represents the parameter named \'dispute\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getIssuingDisputesDisputeParametersPathDispute :: Data.Text.Internal.Text
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getIssuingDisputesDisputeParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingDisputesDisputeParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathDispute" Data.Aeson.Types.ToJSON..= getIssuingDisputesDisputeParametersPathDispute obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getIssuingDisputesDisputeParametersQueryExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathDispute" Data.Aeson.Types.ToJSON..= getIssuingDisputesDisputeParametersPathDispute obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getIssuingDisputesDisputeParametersQueryExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingDisputesDisputeParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingDisputesDisputeParameters" (\obj -> (GHC.Base.pure GetIssuingDisputesDisputeParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathDispute")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))}
-- | Create a new 'GetIssuingDisputesDisputeParameters' with all required fields.
mkGetIssuingDisputesDisputeParameters :: Data.Text.Internal.Text -- ^ 'getIssuingDisputesDisputeParametersPathDispute'
  -> GetIssuingDisputesDisputeParameters
mkGetIssuingDisputesDisputeParameters getIssuingDisputesDisputeParametersPathDispute = GetIssuingDisputesDisputeParameters{getIssuingDisputesDisputeParametersPathDispute = getIssuingDisputesDisputeParametersPathDispute,
                                                                                                                           getIssuingDisputesDisputeParametersQueryExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getIssuingDisputesDispute'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIssuingDisputesDisputeResponseError' is used.
data GetIssuingDisputesDisputeResponse =
   GetIssuingDisputesDisputeResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetIssuingDisputesDisputeResponse200 Issuing'dispute -- ^ Successful response.
  | GetIssuingDisputesDisputeResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
