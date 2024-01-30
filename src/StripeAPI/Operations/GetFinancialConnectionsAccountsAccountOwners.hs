-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getFinancialConnectionsAccountsAccountOwners
module StripeAPI.Operations.GetFinancialConnectionsAccountsAccountOwners where

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

-- | > GET /v1/financial_connections/accounts/{account}/owners
-- 
-- \<p>Lists all owners for a given \<code>Account\<\/code>\<\/p>
getFinancialConnectionsAccountsAccountOwners :: forall m . StripeAPI.Common.MonadHTTP m => GetFinancialConnectionsAccountsAccountOwnersParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetFinancialConnectionsAccountsAccountOwnersResponse) -- ^ Monadic computation which returns the result of the operation
getFinancialConnectionsAccountsAccountOwners parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetFinancialConnectionsAccountsAccountOwnersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetFinancialConnectionsAccountsAccountOwnersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             GetFinancialConnectionsAccountsAccountOwnersResponseBody200)
                                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetFinancialConnectionsAccountsAccountOwnersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/v1/financial_connections/accounts/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getFinancialConnectionsAccountsAccountOwnersParametersPathAccount parameters))) GHC.Base.<> "/owners")) [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFinancialConnectionsAccountsAccountOwnersParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFinancialConnectionsAccountsAccountOwnersParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFinancialConnectionsAccountsAccountOwnersParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ownership") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getFinancialConnectionsAccountsAccountOwnersParametersQueryOwnership parameters)) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFinancialConnectionsAccountsAccountOwnersParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/financial_connections\/accounts\/{account}\/owners.GET.parameters@ in the specification.
-- 
-- 
data GetFinancialConnectionsAccountsAccountOwnersParameters = GetFinancialConnectionsAccountsAccountOwnersParameters {
  -- | pathAccount: Represents the parameter named \'account\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getFinancialConnectionsAccountsAccountOwnersParametersPathAccount :: Data.Text.Internal.Text
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getFinancialConnectionsAccountsAccountOwnersParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getFinancialConnectionsAccountsAccountOwnersParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getFinancialConnectionsAccountsAccountOwnersParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryOwnership: Represents the parameter named \'ownership\'
  -- 
  -- The ID of the ownership object to fetch owners from.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getFinancialConnectionsAccountsAccountOwnersParametersQueryOwnership :: Data.Text.Internal.Text
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getFinancialConnectionsAccountsAccountOwnersParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFinancialConnectionsAccountsAccountOwnersParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsAccountOwnersParametersPathAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsAccountOwnersParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsAccountOwnersParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsAccountOwnersParametersQueryLimit obj) : ["queryOwnership" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsAccountOwnersParametersQueryOwnership obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsAccountOwnersParametersQueryStartingAfter obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsAccountOwnersParametersPathAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsAccountOwnersParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsAccountOwnersParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsAccountOwnersParametersQueryLimit obj) : ["queryOwnership" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsAccountOwnersParametersQueryOwnership obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getFinancialConnectionsAccountsAccountOwnersParametersQueryStartingAfter obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetFinancialConnectionsAccountsAccountOwnersParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFinancialConnectionsAccountsAccountOwnersParameters" (\obj -> (((((GHC.Base.pure GetFinancialConnectionsAccountsAccountOwnersParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryOwnership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))}
-- | Create a new 'GetFinancialConnectionsAccountsAccountOwnersParameters' with all required fields.
mkGetFinancialConnectionsAccountsAccountOwnersParameters :: Data.Text.Internal.Text -- ^ 'getFinancialConnectionsAccountsAccountOwnersParametersPathAccount'
  -> Data.Text.Internal.Text -- ^ 'getFinancialConnectionsAccountsAccountOwnersParametersQueryOwnership'
  -> GetFinancialConnectionsAccountsAccountOwnersParameters
mkGetFinancialConnectionsAccountsAccountOwnersParameters getFinancialConnectionsAccountsAccountOwnersParametersPathAccount getFinancialConnectionsAccountsAccountOwnersParametersQueryOwnership = GetFinancialConnectionsAccountsAccountOwnersParameters{getFinancialConnectionsAccountsAccountOwnersParametersPathAccount = getFinancialConnectionsAccountsAccountOwnersParametersPathAccount,
                                                                                                                                                                                                                                                         getFinancialConnectionsAccountsAccountOwnersParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                         getFinancialConnectionsAccountsAccountOwnersParametersQueryExpand = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                         getFinancialConnectionsAccountsAccountOwnersParametersQueryLimit = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                         getFinancialConnectionsAccountsAccountOwnersParametersQueryOwnership = getFinancialConnectionsAccountsAccountOwnersParametersQueryOwnership,
                                                                                                                                                                                                                                                         getFinancialConnectionsAccountsAccountOwnersParametersQueryStartingAfter = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getFinancialConnectionsAccountsAccountOwners'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetFinancialConnectionsAccountsAccountOwnersResponseError' is used.
data GetFinancialConnectionsAccountsAccountOwnersResponse =
   GetFinancialConnectionsAccountsAccountOwnersResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetFinancialConnectionsAccountsAccountOwnersResponse200 GetFinancialConnectionsAccountsAccountOwnersResponseBody200 -- ^ Successful response.
  | GetFinancialConnectionsAccountsAccountOwnersResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/financial_connections\/accounts\/{account}\/owners.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetFinancialConnectionsAccountsAccountOwnersResponseBody200 = GetFinancialConnectionsAccountsAccountOwnersResponseBody200 {
  -- | data: Details about each object.
  getFinancialConnectionsAccountsAccountOwnersResponseBody200Data :: ([FinancialConnections'accountOwner])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getFinancialConnectionsAccountsAccountOwnersResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getFinancialConnectionsAccountsAccountOwnersResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFinancialConnectionsAccountsAccountOwnersResponseBody200
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsAccountOwnersResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsAccountOwnersResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsAccountOwnersResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsAccountOwnersResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsAccountOwnersResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getFinancialConnectionsAccountsAccountOwnersResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetFinancialConnectionsAccountsAccountOwnersResponseBody200
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFinancialConnectionsAccountsAccountOwnersResponseBody200" (\obj -> ((GHC.Base.pure GetFinancialConnectionsAccountsAccountOwnersResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'GetFinancialConnectionsAccountsAccountOwnersResponseBody200' with all required fields.
mkGetFinancialConnectionsAccountsAccountOwnersResponseBody200 :: [FinancialConnections'accountOwner] -- ^ 'getFinancialConnectionsAccountsAccountOwnersResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getFinancialConnectionsAccountsAccountOwnersResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getFinancialConnectionsAccountsAccountOwnersResponseBody200Url'
  -> GetFinancialConnectionsAccountsAccountOwnersResponseBody200
mkGetFinancialConnectionsAccountsAccountOwnersResponseBody200 getFinancialConnectionsAccountsAccountOwnersResponseBody200Data getFinancialConnectionsAccountsAccountOwnersResponseBody200HasMore getFinancialConnectionsAccountsAccountOwnersResponseBody200Url = GetFinancialConnectionsAccountsAccountOwnersResponseBody200{getFinancialConnectionsAccountsAccountOwnersResponseBody200Data = getFinancialConnectionsAccountsAccountOwnersResponseBody200Data,
                                                                                                                                                                                                                                                                                                                              getFinancialConnectionsAccountsAccountOwnersResponseBody200HasMore = getFinancialConnectionsAccountsAccountOwnersResponseBody200HasMore,
                                                                                                                                                                                                                                                                                                                              getFinancialConnectionsAccountsAccountOwnersResponseBody200Url = getFinancialConnectionsAccountsAccountOwnersResponseBody200Url}
