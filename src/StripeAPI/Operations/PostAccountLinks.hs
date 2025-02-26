-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postAccountLinks
module StripeAPI.Operations.PostAccountLinks where

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

-- | > POST /v1/account_links
-- 
-- \<p>Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.\<\/p>
postAccountLinks :: forall m . StripeAPI.Common.MonadHTTP m => PostAccountLinksRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAccountLinksResponse) -- ^ Monadic computation which returns the result of the operation
postAccountLinks body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   AccountLink)
                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/account_links" GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/account_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostAccountLinksRequestBody = PostAccountLinksRequestBody {
  -- | account: The identifier of the account to create an account link for.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountLinksRequestBodyAccount :: Data.Text.Internal.Text
  -- | collect: The collect parameter is deprecated. Use \`collection_options\` instead.
  , postAccountLinksRequestBodyCollect :: (GHC.Maybe.Maybe PostAccountLinksRequestBodyCollect')
  -- | collection_options: Specifies the requirements that Stripe collects from connected accounts in the Connect Onboarding flow.
  , postAccountLinksRequestBodyCollectionOptions :: (GHC.Maybe.Maybe PostAccountLinksRequestBodyCollectionOptions')
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountLinksRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | refresh_url: The URL the user will be redirected to if the account link is expired, has been previously-visited, or is otherwise invalid. The URL you specify should attempt to generate a new account link with the same parameters used to create the original account link, then redirect the user to the new account link\'s URL so they can continue with Connect Onboarding. If a new account link cannot be generated or the redirect fails you should display a useful error to the user.
  , postAccountLinksRequestBodyRefreshUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | return_url: The URL that the user will be redirected to upon leaving or completing the linked flow.
  , postAccountLinksRequestBodyReturnUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: The type of account link the user is requesting. Possible values are \`account_onboarding\` or \`account_update\`.
  , postAccountLinksRequestBodyType :: PostAccountLinksRequestBodyType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountLinksRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["account" Data.Aeson.Types.ToJSON..= postAccountLinksRequestBodyAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collect" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyCollect obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collection_options" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyCollectionOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refresh_url" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyRefreshUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("return_url" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyReturnUrl obj) : ["type" Data.Aeson.Types.ToJSON..= postAccountLinksRequestBodyType obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["account" Data.Aeson.Types.ToJSON..= postAccountLinksRequestBodyAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collect" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyCollect obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collection_options" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyCollectionOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refresh_url" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyRefreshUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("return_url" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyReturnUrl obj) : ["type" Data.Aeson.Types.ToJSON..= postAccountLinksRequestBodyType obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLinksRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountLinksRequestBody" (\obj -> ((((((GHC.Base.pure PostAccountLinksRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "collect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "collection_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refresh_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))}
-- | Create a new 'PostAccountLinksRequestBody' with all required fields.
mkPostAccountLinksRequestBody :: Data.Text.Internal.Text -- ^ 'postAccountLinksRequestBodyAccount'
  -> PostAccountLinksRequestBodyType' -- ^ 'postAccountLinksRequestBodyType'
  -> PostAccountLinksRequestBody
mkPostAccountLinksRequestBody postAccountLinksRequestBodyAccount postAccountLinksRequestBodyType = PostAccountLinksRequestBody{postAccountLinksRequestBodyAccount = postAccountLinksRequestBodyAccount,
                                                                                                                               postAccountLinksRequestBodyCollect = GHC.Maybe.Nothing,
                                                                                                                               postAccountLinksRequestBodyCollectionOptions = GHC.Maybe.Nothing,
                                                                                                                               postAccountLinksRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                                               postAccountLinksRequestBodyRefreshUrl = GHC.Maybe.Nothing,
                                                                                                                               postAccountLinksRequestBodyReturnUrl = GHC.Maybe.Nothing,
                                                                                                                               postAccountLinksRequestBodyType = postAccountLinksRequestBodyType}
-- | Defines the enum schema located at @paths.\/v1\/account_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.collect@ in the specification.
-- 
-- The collect parameter is deprecated. Use \`collection_options\` instead.
data PostAccountLinksRequestBodyCollect' =
   PostAccountLinksRequestBodyCollect'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostAccountLinksRequestBodyCollect'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostAccountLinksRequestBodyCollect'EnumCurrentlyDue -- ^ Represents the JSON value @"currently_due"@
  | PostAccountLinksRequestBodyCollect'EnumEventuallyDue -- ^ Represents the JSON value @"eventually_due"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountLinksRequestBodyCollect'
    where {toJSON (PostAccountLinksRequestBodyCollect'Other val) = val;
           toJSON (PostAccountLinksRequestBodyCollect'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PostAccountLinksRequestBodyCollect'EnumCurrentlyDue) = "currently_due";
           toJSON (PostAccountLinksRequestBodyCollect'EnumEventuallyDue) = "eventually_due"}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLinksRequestBodyCollect'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "currently_due" -> PostAccountLinksRequestBodyCollect'EnumCurrentlyDue
                                             | val GHC.Classes.== "eventually_due" -> PostAccountLinksRequestBodyCollect'EnumEventuallyDue
                                             | GHC.Base.otherwise -> PostAccountLinksRequestBodyCollect'Other val)}
-- | Defines the object schema located at @paths.\/v1\/account_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.collection_options@ in the specification.
-- 
-- Specifies the requirements that Stripe collects from connected accounts in the Connect Onboarding flow.
data PostAccountLinksRequestBodyCollectionOptions' = PostAccountLinksRequestBodyCollectionOptions' {
  -- | fields
  postAccountLinksRequestBodyCollectionOptions'Fields :: PostAccountLinksRequestBodyCollectionOptions'Fields'
  -- | future_requirements
  , postAccountLinksRequestBodyCollectionOptions'FutureRequirements :: (GHC.Maybe.Maybe PostAccountLinksRequestBodyCollectionOptions'FutureRequirements')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountLinksRequestBodyCollectionOptions'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["fields" Data.Aeson.Types.ToJSON..= postAccountLinksRequestBodyCollectionOptions'Fields obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("future_requirements" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyCollectionOptions'FutureRequirements obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["fields" Data.Aeson.Types.ToJSON..= postAccountLinksRequestBodyCollectionOptions'Fields obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("future_requirements" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyCollectionOptions'FutureRequirements obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLinksRequestBodyCollectionOptions'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountLinksRequestBodyCollectionOptions'" (\obj -> (GHC.Base.pure PostAccountLinksRequestBodyCollectionOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "future_requirements"))}
-- | Create a new 'PostAccountLinksRequestBodyCollectionOptions'' with all required fields.
mkPostAccountLinksRequestBodyCollectionOptions' :: PostAccountLinksRequestBodyCollectionOptions'Fields' -- ^ 'postAccountLinksRequestBodyCollectionOptions'Fields'
  -> PostAccountLinksRequestBodyCollectionOptions'
mkPostAccountLinksRequestBodyCollectionOptions' postAccountLinksRequestBodyCollectionOptions'Fields = PostAccountLinksRequestBodyCollectionOptions'{postAccountLinksRequestBodyCollectionOptions'Fields = postAccountLinksRequestBodyCollectionOptions'Fields,
                                                                                                                                                    postAccountLinksRequestBodyCollectionOptions'FutureRequirements = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/account_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.collection_options.properties.fields@ in the specification.
-- 
-- 
data PostAccountLinksRequestBodyCollectionOptions'Fields' =
   PostAccountLinksRequestBodyCollectionOptions'Fields'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostAccountLinksRequestBodyCollectionOptions'Fields'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostAccountLinksRequestBodyCollectionOptions'Fields'EnumCurrentlyDue -- ^ Represents the JSON value @"currently_due"@
  | PostAccountLinksRequestBodyCollectionOptions'Fields'EnumEventuallyDue -- ^ Represents the JSON value @"eventually_due"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountLinksRequestBodyCollectionOptions'Fields'
    where {toJSON (PostAccountLinksRequestBodyCollectionOptions'Fields'Other val) = val;
           toJSON (PostAccountLinksRequestBodyCollectionOptions'Fields'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PostAccountLinksRequestBodyCollectionOptions'Fields'EnumCurrentlyDue) = "currently_due";
           toJSON (PostAccountLinksRequestBodyCollectionOptions'Fields'EnumEventuallyDue) = "eventually_due"}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLinksRequestBodyCollectionOptions'Fields'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "currently_due" -> PostAccountLinksRequestBodyCollectionOptions'Fields'EnumCurrentlyDue
                                             | val GHC.Classes.== "eventually_due" -> PostAccountLinksRequestBodyCollectionOptions'Fields'EnumEventuallyDue
                                             | GHC.Base.otherwise -> PostAccountLinksRequestBodyCollectionOptions'Fields'Other val)}
-- | Defines the enum schema located at @paths.\/v1\/account_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.collection_options.properties.future_requirements@ in the specification.
-- 
-- 
data PostAccountLinksRequestBodyCollectionOptions'FutureRequirements' =
   PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'EnumInclude -- ^ Represents the JSON value @"include"@
  | PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'EnumOmit -- ^ Represents the JSON value @"omit"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'
    where {toJSON (PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'Other val) = val;
           toJSON (PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'EnumInclude) = "include";
           toJSON (PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'EnumOmit) = "omit"}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "include" -> PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'EnumInclude
                                             | val GHC.Classes.== "omit" -> PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'EnumOmit
                                             | GHC.Base.otherwise -> PostAccountLinksRequestBodyCollectionOptions'FutureRequirements'Other val)}
-- | Defines the enum schema located at @paths.\/v1\/account_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.type@ in the specification.
-- 
-- The type of account link the user is requesting. Possible values are \`account_onboarding\` or \`account_update\`.
data PostAccountLinksRequestBodyType' =
   PostAccountLinksRequestBodyType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostAccountLinksRequestBodyType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostAccountLinksRequestBodyType'EnumAccountOnboarding -- ^ Represents the JSON value @"account_onboarding"@
  | PostAccountLinksRequestBodyType'EnumAccountUpdate -- ^ Represents the JSON value @"account_update"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountLinksRequestBodyType'
    where {toJSON (PostAccountLinksRequestBodyType'Other val) = val;
           toJSON (PostAccountLinksRequestBodyType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PostAccountLinksRequestBodyType'EnumAccountOnboarding) = "account_onboarding";
           toJSON (PostAccountLinksRequestBodyType'EnumAccountUpdate) = "account_update"}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLinksRequestBodyType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "account_onboarding" -> PostAccountLinksRequestBodyType'EnumAccountOnboarding
                                             | val GHC.Classes.== "account_update" -> PostAccountLinksRequestBodyType'EnumAccountUpdate
                                             | GHC.Base.otherwise -> PostAccountLinksRequestBodyType'Other val)}
-- | Represents a response of the operation 'postAccountLinks'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountLinksResponseError' is used.
data PostAccountLinksResponse =
   PostAccountLinksResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostAccountLinksResponse200 AccountLink -- ^ Successful response.
  | PostAccountLinksResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
