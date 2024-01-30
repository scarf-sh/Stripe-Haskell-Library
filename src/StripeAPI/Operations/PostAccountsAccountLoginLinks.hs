-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postAccountsAccountLoginLinks
module StripeAPI.Operations.PostAccountsAccountLoginLinks where

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

-- | > POST /v1/accounts/{account}/login_links
-- 
-- \<p>Creates a single-use login link for an Express account to access their Stripe dashboard.\<\/p>
-- 
-- \<p>\<strong>You may only create login links for \<a href=\"\/docs\/connect\/express-accounts\">Express accounts\<\/a> connected to your platform\<\/strong>.\<\/p>
postAccountsAccountLoginLinks :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ account | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostAccountsAccountLoginLinksRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAccountsAccountLoginLinksResponse) -- ^ Monadic computation which returns the result of the operation
postAccountsAccountLoginLinks account
                              body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountLoginLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountLoginLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          LoginLink)
                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountLoginLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/accounts/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.<> "/login_links")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/login_links.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostAccountsAccountLoginLinksRequestBody = PostAccountsAccountLoginLinksRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postAccountsAccountLoginLinksRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountLoginLinksRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountLoginLinksRequestBodyExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountLoginLinksRequestBodyExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountLoginLinksRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountLoginLinksRequestBody" (\obj -> GHC.Base.pure PostAccountsAccountLoginLinksRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))}
-- | Create a new 'PostAccountsAccountLoginLinksRequestBody' with all required fields.
mkPostAccountsAccountLoginLinksRequestBody :: PostAccountsAccountLoginLinksRequestBody
mkPostAccountsAccountLoginLinksRequestBody = PostAccountsAccountLoginLinksRequestBody{postAccountsAccountLoginLinksRequestBodyExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postAccountsAccountLoginLinks'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountsAccountLoginLinksResponseError' is used.
data PostAccountsAccountLoginLinksResponse =
   PostAccountsAccountLoginLinksResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostAccountsAccountLoginLinksResponse200 LoginLink -- ^ Successful response.
  | PostAccountsAccountLoginLinksResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
