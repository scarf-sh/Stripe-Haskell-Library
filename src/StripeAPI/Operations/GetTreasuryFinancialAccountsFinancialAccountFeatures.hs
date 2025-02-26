-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTreasuryFinancialAccountsFinancialAccountFeatures
module StripeAPI.Operations.GetTreasuryFinancialAccountsFinancialAccountFeatures where

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

-- | > GET /v1/treasury/financial_accounts/{financial_account}/features
-- 
-- \<p>Retrieves Features information associated with the FinancialAccount.\<\/p>
getTreasuryFinancialAccountsFinancialAccountFeatures :: forall m . StripeAPI.Common.MonadHTTP m => GetTreasuryFinancialAccountsFinancialAccountFeaturesParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTreasuryFinancialAccountsFinancialAccountFeaturesResponse) -- ^ Monadic computation which returns the result of the operation
getTreasuryFinancialAccountsFinancialAccountFeatures parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTreasuryFinancialAccountsFinancialAccountFeaturesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTreasuryFinancialAccountsFinancialAccountFeaturesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Treasury'financialAccountFeatures)
                                                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTreasuryFinancialAccountsFinancialAccountFeaturesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/v1/treasury/financial_accounts/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getTreasuryFinancialAccountsFinancialAccountFeaturesParametersPathFinancialAccount parameters))) GHC.Base.<> "/features")) [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryFinancialAccountsFinancialAccountFeaturesParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/treasury\/financial_accounts\/{financial_account}\/features.GET.parameters@ in the specification.
-- 
-- 
data GetTreasuryFinancialAccountsFinancialAccountFeaturesParameters = GetTreasuryFinancialAccountsFinancialAccountFeaturesParameters {
  -- | pathFinancial_account: Represents the parameter named \'financial_account\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getTreasuryFinancialAccountsFinancialAccountFeaturesParametersPathFinancialAccount :: Data.Text.Internal.Text
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getTreasuryFinancialAccountsFinancialAccountFeaturesParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryFinancialAccountsFinancialAccountFeaturesParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryFinancialAccountsFinancialAccountFeaturesParametersPathFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryFinancialAccountsFinancialAccountFeaturesParametersQueryExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryFinancialAccountsFinancialAccountFeaturesParametersPathFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryFinancialAccountsFinancialAccountFeaturesParametersQueryExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryFinancialAccountsFinancialAccountFeaturesParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryFinancialAccountsFinancialAccountFeaturesParameters" (\obj -> (GHC.Base.pure GetTreasuryFinancialAccountsFinancialAccountFeaturesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathFinancial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))}
-- | Create a new 'GetTreasuryFinancialAccountsFinancialAccountFeaturesParameters' with all required fields.
mkGetTreasuryFinancialAccountsFinancialAccountFeaturesParameters :: Data.Text.Internal.Text -- ^ 'getTreasuryFinancialAccountsFinancialAccountFeaturesParametersPathFinancialAccount'
  -> GetTreasuryFinancialAccountsFinancialAccountFeaturesParameters
mkGetTreasuryFinancialAccountsFinancialAccountFeaturesParameters getTreasuryFinancialAccountsFinancialAccountFeaturesParametersPathFinancialAccount = GetTreasuryFinancialAccountsFinancialAccountFeaturesParameters{getTreasuryFinancialAccountsFinancialAccountFeaturesParametersPathFinancialAccount = getTreasuryFinancialAccountsFinancialAccountFeaturesParametersPathFinancialAccount,
                                                                                                                                                                                                                     getTreasuryFinancialAccountsFinancialAccountFeaturesParametersQueryExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getTreasuryFinancialAccountsFinancialAccountFeatures'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTreasuryFinancialAccountsFinancialAccountFeaturesResponseError' is used.
data GetTreasuryFinancialAccountsFinancialAccountFeaturesResponse =
   GetTreasuryFinancialAccountsFinancialAccountFeaturesResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTreasuryFinancialAccountsFinancialAccountFeaturesResponse200 Treasury'financialAccountFeatures -- ^ Successful response.
  | GetTreasuryFinancialAccountsFinancialAccountFeaturesResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
