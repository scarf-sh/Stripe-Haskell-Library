-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getAppsSecretsFind
module StripeAPI.Operations.GetAppsSecretsFind where

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

-- | > GET /v1/apps/secrets/find
-- 
-- \<p>Finds a secret in the secret store by name and scope.\<\/p>
getAppsSecretsFind :: forall m . StripeAPI.Common.MonadHTTP m => GetAppsSecretsFindParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetAppsSecretsFindResponse) -- ^ Monadic computation which returns the result of the operation
getAppsSecretsFind parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAppsSecretsFindResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAppsSecretsFindResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Apps'secret)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAppsSecretsFindResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/v1/apps/secrets/find" [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getAppsSecretsFindParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "name") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getAppsSecretsFindParametersQueryName parameters)) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "scope") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getAppsSecretsFindParametersQueryScope parameters)) (Data.Text.Internal.pack "deepObject") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/apps\/secrets\/find.GET.parameters@ in the specification.
-- 
-- 
data GetAppsSecretsFindParameters = GetAppsSecretsFindParameters {
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  getAppsSecretsFindParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryName: Represents the parameter named \'name\'
  -- 
  -- A name for the secret that\'s unique within the scope.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAppsSecretsFindParametersQueryName :: Data.Text.Internal.Text
  -- | queryScope: Represents the parameter named \'scope\'
  -- 
  -- Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
  , getAppsSecretsFindParametersQueryScope :: GetAppsSecretsFindParametersQueryScope'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAppsSecretsFindParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getAppsSecretsFindParametersQueryExpand obj) : ["queryName" Data.Aeson.Types.ToJSON..= getAppsSecretsFindParametersQueryName obj] : ["queryScope" Data.Aeson.Types.ToJSON..= getAppsSecretsFindParametersQueryScope obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getAppsSecretsFindParametersQueryExpand obj) : ["queryName" Data.Aeson.Types.ToJSON..= getAppsSecretsFindParametersQueryName obj] : ["queryScope" Data.Aeson.Types.ToJSON..= getAppsSecretsFindParametersQueryScope obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetAppsSecretsFindParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAppsSecretsFindParameters" (\obj -> ((GHC.Base.pure GetAppsSecretsFindParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryName")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryScope"))}
-- | Create a new 'GetAppsSecretsFindParameters' with all required fields.
mkGetAppsSecretsFindParameters :: Data.Text.Internal.Text -- ^ 'getAppsSecretsFindParametersQueryName'
  -> GetAppsSecretsFindParametersQueryScope' -- ^ 'getAppsSecretsFindParametersQueryScope'
  -> GetAppsSecretsFindParameters
mkGetAppsSecretsFindParameters getAppsSecretsFindParametersQueryName getAppsSecretsFindParametersQueryScope = GetAppsSecretsFindParameters{getAppsSecretsFindParametersQueryExpand = GHC.Maybe.Nothing,
                                                                                                                                           getAppsSecretsFindParametersQueryName = getAppsSecretsFindParametersQueryName,
                                                                                                                                           getAppsSecretsFindParametersQueryScope = getAppsSecretsFindParametersQueryScope}
-- | Defines the object schema located at @paths.\/v1\/apps\/secrets\/find.GET.parameters.properties.queryScope@ in the specification.
-- 
-- Represents the parameter named \'scope\'
-- 
-- Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
data GetAppsSecretsFindParametersQueryScope' = GetAppsSecretsFindParametersQueryScope' {
  -- | type
  getAppsSecretsFindParametersQueryScope'Type :: GetAppsSecretsFindParametersQueryScope'Type'
  -- | user
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAppsSecretsFindParametersQueryScope'User :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAppsSecretsFindParametersQueryScope'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= getAppsSecretsFindParametersQueryScope'Type obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (getAppsSecretsFindParametersQueryScope'User obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= getAppsSecretsFindParametersQueryScope'Type obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user" Data.Aeson.Types.ToJSON..=)) (getAppsSecretsFindParametersQueryScope'User obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetAppsSecretsFindParametersQueryScope'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAppsSecretsFindParametersQueryScope'" (\obj -> (GHC.Base.pure GetAppsSecretsFindParametersQueryScope' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user"))}
-- | Create a new 'GetAppsSecretsFindParametersQueryScope'' with all required fields.
mkGetAppsSecretsFindParametersQueryScope' :: GetAppsSecretsFindParametersQueryScope'Type' -- ^ 'getAppsSecretsFindParametersQueryScope'Type'
  -> GetAppsSecretsFindParametersQueryScope'
mkGetAppsSecretsFindParametersQueryScope' getAppsSecretsFindParametersQueryScope'Type = GetAppsSecretsFindParametersQueryScope'{getAppsSecretsFindParametersQueryScope'Type = getAppsSecretsFindParametersQueryScope'Type,
                                                                                                                                getAppsSecretsFindParametersQueryScope'User = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/apps\/secrets\/find.GET.parameters.properties.queryScope.properties.type@ in the specification.
-- 
-- 
data GetAppsSecretsFindParametersQueryScope'Type' =
   GetAppsSecretsFindParametersQueryScope'Type'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetAppsSecretsFindParametersQueryScope'Type'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetAppsSecretsFindParametersQueryScope'Type'EnumAccount -- ^ Represents the JSON value @"account"@
  | GetAppsSecretsFindParametersQueryScope'Type'EnumUser -- ^ Represents the JSON value @"user"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAppsSecretsFindParametersQueryScope'Type'
    where {toJSON (GetAppsSecretsFindParametersQueryScope'Type'Other val) = val;
           toJSON (GetAppsSecretsFindParametersQueryScope'Type'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GetAppsSecretsFindParametersQueryScope'Type'EnumAccount) = "account";
           toJSON (GetAppsSecretsFindParametersQueryScope'Type'EnumUser) = "user"}
instance Data.Aeson.Types.FromJSON.FromJSON GetAppsSecretsFindParametersQueryScope'Type'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "account" -> GetAppsSecretsFindParametersQueryScope'Type'EnumAccount
                                             | val GHC.Classes.== "user" -> GetAppsSecretsFindParametersQueryScope'Type'EnumUser
                                             | GHC.Base.otherwise -> GetAppsSecretsFindParametersQueryScope'Type'Other val)}
-- | Represents a response of the operation 'getAppsSecretsFind'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAppsSecretsFindResponseError' is used.
data GetAppsSecretsFindResponse =
   GetAppsSecretsFindResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetAppsSecretsFindResponse200 Apps'secret -- ^ Successful response.
  | GetAppsSecretsFindResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
