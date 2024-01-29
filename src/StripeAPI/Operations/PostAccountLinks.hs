{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postAccountLinks
module StripeAPI.Operations.PostAccountLinks where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/account_links
--
-- \<p>Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.\<\/p>
postAccountLinks ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | The request body to send
  PostAccountLinksRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAccountLinksResponse)
postAccountLinks body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostAccountLinksResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostAccountLinksResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            AccountLink
                                                      )
                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostAccountLinksResponseDefault
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/account_links") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/account_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostAccountLinksRequestBody = PostAccountLinksRequestBody
  { -- | account: The identifier of the account to create an account link for.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountLinksRequestBodyAccount :: Data.Text.Internal.Text,
    -- | collect: Which information the platform needs to collect from the user. One of \`currently_due\` or \`eventually_due\`. Default is \`currently_due\`.
    postAccountLinksRequestBodyCollect :: (GHC.Maybe.Maybe PostAccountLinksRequestBodyCollect'),
    -- | expand: Specifies which fields in the response should be expanded.
    postAccountLinksRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | refresh_url: The URL the user will be redirected to if the account link is expired, has been previously-visited, or is otherwise invalid. The URL you specify should attempt to generate a new account link with the same parameters used to create the original account link, then redirect the user to the new account link\'s URL so they can continue with Connect Onboarding. If a new account link cannot be generated or the redirect fails you should display a useful error to the user.
    postAccountLinksRequestBodyRefreshUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | return_url: The URL that the user will be redirected to upon leaving or completing the linked flow.
    postAccountLinksRequestBodyReturnUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | type: The type of account link the user is requesting. Possible values are \`account_onboarding\` or \`account_update\`.
    postAccountLinksRequestBodyType :: PostAccountLinksRequestBodyType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountLinksRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["account" Data.Aeson.Types.ToJSON..= postAccountLinksRequestBodyAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collect" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyCollect obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refresh_url" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyRefreshUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("return_url" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyReturnUrl obj) : ["type" Data.Aeson.Types.ToJSON..= postAccountLinksRequestBodyType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["account" Data.Aeson.Types.ToJSON..= postAccountLinksRequestBodyAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("collect" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyCollect obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refresh_url" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyRefreshUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("return_url" Data.Aeson.Types.ToJSON..=)) (postAccountLinksRequestBodyReturnUrl obj) : ["type" Data.Aeson.Types.ToJSON..= postAccountLinksRequestBodyType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLinksRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountLinksRequestBody" (\obj -> (((((GHC.Base.pure PostAccountLinksRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "collect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refresh_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'PostAccountLinksRequestBody' with all required fields.
mkPostAccountLinksRequestBody ::
  -- | 'postAccountLinksRequestBodyAccount'
  Data.Text.Internal.Text ->
  -- | 'postAccountLinksRequestBodyType'
  PostAccountLinksRequestBodyType' ->
  PostAccountLinksRequestBody
mkPostAccountLinksRequestBody postAccountLinksRequestBodyAccount postAccountLinksRequestBodyType =
  PostAccountLinksRequestBody
    { postAccountLinksRequestBodyAccount = postAccountLinksRequestBodyAccount,
      postAccountLinksRequestBodyCollect = GHC.Maybe.Nothing,
      postAccountLinksRequestBodyExpand = GHC.Maybe.Nothing,
      postAccountLinksRequestBodyRefreshUrl = GHC.Maybe.Nothing,
      postAccountLinksRequestBodyReturnUrl = GHC.Maybe.Nothing,
      postAccountLinksRequestBodyType = postAccountLinksRequestBodyType
    }

-- | Defines the enum schema located at @paths.\/v1\/account_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.collect@ in the specification.
--
-- Which information the platform needs to collect from the user. One of \`currently_due\` or \`eventually_due\`. Default is \`currently_due\`.
data PostAccountLinksRequestBodyCollect'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAccountLinksRequestBodyCollect'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAccountLinksRequestBodyCollect'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"currently_due"@
    PostAccountLinksRequestBodyCollect'EnumCurrentlyDue
  | -- | Represents the JSON value @"eventually_due"@
    PostAccountLinksRequestBodyCollect'EnumEventuallyDue
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountLinksRequestBodyCollect' where
  toJSON (PostAccountLinksRequestBodyCollect'Other val) = val
  toJSON (PostAccountLinksRequestBodyCollect'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAccountLinksRequestBodyCollect'EnumCurrentlyDue) = "currently_due"
  toJSON (PostAccountLinksRequestBodyCollect'EnumEventuallyDue) = "eventually_due"

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLinksRequestBodyCollect' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "currently_due" -> PostAccountLinksRequestBodyCollect'EnumCurrentlyDue
          | val GHC.Classes.== "eventually_due" -> PostAccountLinksRequestBodyCollect'EnumEventuallyDue
          | GHC.Base.otherwise -> PostAccountLinksRequestBodyCollect'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/account_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.type@ in the specification.
--
-- The type of account link the user is requesting. Possible values are \`account_onboarding\` or \`account_update\`.
data PostAccountLinksRequestBodyType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAccountLinksRequestBodyType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAccountLinksRequestBodyType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"account_onboarding"@
    PostAccountLinksRequestBodyType'EnumAccountOnboarding
  | -- | Represents the JSON value @"account_update"@
    PostAccountLinksRequestBodyType'EnumAccountUpdate
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountLinksRequestBodyType' where
  toJSON (PostAccountLinksRequestBodyType'Other val) = val
  toJSON (PostAccountLinksRequestBodyType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAccountLinksRequestBodyType'EnumAccountOnboarding) = "account_onboarding"
  toJSON (PostAccountLinksRequestBodyType'EnumAccountUpdate) = "account_update"

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLinksRequestBodyType' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "account_onboarding" -> PostAccountLinksRequestBodyType'EnumAccountOnboarding
          | val GHC.Classes.== "account_update" -> PostAccountLinksRequestBodyType'EnumAccountUpdate
          | GHC.Base.otherwise -> PostAccountLinksRequestBodyType'Other val
      )

-- | Represents a response of the operation 'postAccountLinks'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountLinksResponseError' is used.
data PostAccountLinksResponse
  = -- | Means either no matching case available or a parse error
    PostAccountLinksResponseError GHC.Base.String
  | -- | Successful response.
    PostAccountLinksResponse200 AccountLink
  | -- | Error response.
    PostAccountLinksResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
