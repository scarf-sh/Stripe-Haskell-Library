-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postCustomerSessions
module StripeAPI.Operations.PostCustomerSessions where

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

-- | > POST /v1/customer_sessions
-- 
-- \<p>Creates a customer session object that includes a single-use client secret that you can use on your front-end to grant client-side API access for certain customer resources.\<\/p>
postCustomerSessions :: forall m . StripeAPI.Common.MonadHTTP m => PostCustomerSessionsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCustomerSessionsResponse) -- ^ Monadic computation which returns the result of the operation
postCustomerSessions body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomerSessionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomerSessionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               CustomerSession)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomerSessionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/customer_sessions" GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/customer_sessions.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostCustomerSessionsRequestBody = PostCustomerSessionsRequestBody {
  -- | components: Configuration for each component. Exactly 1 component must be enabled.
  postCustomerSessionsRequestBodyComponents :: PostCustomerSessionsRequestBodyComponents'
  -- | customer: The ID of an existing customer for which to create the customer session.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomerSessionsRequestBodyCustomer :: Data.Text.Internal.Text
  -- | expand: Specifies which fields in the response should be expanded.
  , postCustomerSessionsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCustomerSessionsRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["components" Data.Aeson.Types.ToJSON..= postCustomerSessionsRequestBodyComponents obj] : ["customer" Data.Aeson.Types.ToJSON..= postCustomerSessionsRequestBodyCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCustomerSessionsRequestBodyExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["components" Data.Aeson.Types.ToJSON..= postCustomerSessionsRequestBodyComponents obj] : ["customer" Data.Aeson.Types.ToJSON..= postCustomerSessionsRequestBodyCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCustomerSessionsRequestBodyExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomerSessionsRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomerSessionsRequestBody" (\obj -> ((GHC.Base.pure PostCustomerSessionsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "components")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))}
-- | Create a new 'PostCustomerSessionsRequestBody' with all required fields.
mkPostCustomerSessionsRequestBody :: PostCustomerSessionsRequestBodyComponents' -- ^ 'postCustomerSessionsRequestBodyComponents'
  -> Data.Text.Internal.Text -- ^ 'postCustomerSessionsRequestBodyCustomer'
  -> PostCustomerSessionsRequestBody
mkPostCustomerSessionsRequestBody postCustomerSessionsRequestBodyComponents postCustomerSessionsRequestBodyCustomer = PostCustomerSessionsRequestBody{postCustomerSessionsRequestBodyComponents = postCustomerSessionsRequestBodyComponents,
                                                                                                                                                      postCustomerSessionsRequestBodyCustomer = postCustomerSessionsRequestBodyCustomer,
                                                                                                                                                      postCustomerSessionsRequestBodyExpand = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/customer_sessions.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.components@ in the specification.
-- 
-- Configuration for each component. Exactly 1 component must be enabled.
data PostCustomerSessionsRequestBodyComponents' = PostCustomerSessionsRequestBodyComponents' {
  -- | buy_button
  postCustomerSessionsRequestBodyComponents'BuyButton :: (GHC.Maybe.Maybe PostCustomerSessionsRequestBodyComponents'BuyButton')
  -- | pricing_table
  , postCustomerSessionsRequestBodyComponents'PricingTable :: (GHC.Maybe.Maybe PostCustomerSessionsRequestBodyComponents'PricingTable')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCustomerSessionsRequestBodyComponents'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("buy_button" Data.Aeson.Types.ToJSON..=)) (postCustomerSessionsRequestBodyComponents'BuyButton obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pricing_table" Data.Aeson.Types.ToJSON..=)) (postCustomerSessionsRequestBodyComponents'PricingTable obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("buy_button" Data.Aeson.Types.ToJSON..=)) (postCustomerSessionsRequestBodyComponents'BuyButton obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pricing_table" Data.Aeson.Types.ToJSON..=)) (postCustomerSessionsRequestBodyComponents'PricingTable obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomerSessionsRequestBodyComponents'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomerSessionsRequestBodyComponents'" (\obj -> (GHC.Base.pure PostCustomerSessionsRequestBodyComponents' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "buy_button")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pricing_table"))}
-- | Create a new 'PostCustomerSessionsRequestBodyComponents'' with all required fields.
mkPostCustomerSessionsRequestBodyComponents' :: PostCustomerSessionsRequestBodyComponents'
mkPostCustomerSessionsRequestBodyComponents' = PostCustomerSessionsRequestBodyComponents'{postCustomerSessionsRequestBodyComponents'BuyButton = GHC.Maybe.Nothing,
                                                                                          postCustomerSessionsRequestBodyComponents'PricingTable = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/customer_sessions.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.components.properties.buy_button@ in the specification.
-- 
-- 
data PostCustomerSessionsRequestBodyComponents'BuyButton' = PostCustomerSessionsRequestBodyComponents'BuyButton' {
  -- | enabled
  postCustomerSessionsRequestBodyComponents'BuyButton'Enabled :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCustomerSessionsRequestBodyComponents'BuyButton'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= postCustomerSessionsRequestBodyComponents'BuyButton'Enabled obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= postCustomerSessionsRequestBodyComponents'BuyButton'Enabled obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomerSessionsRequestBodyComponents'BuyButton'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomerSessionsRequestBodyComponents'BuyButton'" (\obj -> GHC.Base.pure PostCustomerSessionsRequestBodyComponents'BuyButton' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled"))}
-- | Create a new 'PostCustomerSessionsRequestBodyComponents'BuyButton'' with all required fields.
mkPostCustomerSessionsRequestBodyComponents'BuyButton' :: GHC.Types.Bool -- ^ 'postCustomerSessionsRequestBodyComponents'BuyButton'Enabled'
  -> PostCustomerSessionsRequestBodyComponents'BuyButton'
mkPostCustomerSessionsRequestBodyComponents'BuyButton' postCustomerSessionsRequestBodyComponents'BuyButton'Enabled = PostCustomerSessionsRequestBodyComponents'BuyButton'{postCustomerSessionsRequestBodyComponents'BuyButton'Enabled = postCustomerSessionsRequestBodyComponents'BuyButton'Enabled}
-- | Defines the object schema located at @paths.\/v1\/customer_sessions.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.components.properties.pricing_table@ in the specification.
-- 
-- 
data PostCustomerSessionsRequestBodyComponents'PricingTable' = PostCustomerSessionsRequestBodyComponents'PricingTable' {
  -- | enabled
  postCustomerSessionsRequestBodyComponents'PricingTable'Enabled :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCustomerSessionsRequestBodyComponents'PricingTable'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= postCustomerSessionsRequestBodyComponents'PricingTable'Enabled obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= postCustomerSessionsRequestBodyComponents'PricingTable'Enabled obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomerSessionsRequestBodyComponents'PricingTable'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomerSessionsRequestBodyComponents'PricingTable'" (\obj -> GHC.Base.pure PostCustomerSessionsRequestBodyComponents'PricingTable' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled"))}
-- | Create a new 'PostCustomerSessionsRequestBodyComponents'PricingTable'' with all required fields.
mkPostCustomerSessionsRequestBodyComponents'PricingTable' :: GHC.Types.Bool -- ^ 'postCustomerSessionsRequestBodyComponents'PricingTable'Enabled'
  -> PostCustomerSessionsRequestBodyComponents'PricingTable'
mkPostCustomerSessionsRequestBodyComponents'PricingTable' postCustomerSessionsRequestBodyComponents'PricingTable'Enabled = PostCustomerSessionsRequestBodyComponents'PricingTable'{postCustomerSessionsRequestBodyComponents'PricingTable'Enabled = postCustomerSessionsRequestBodyComponents'PricingTable'Enabled}
-- | Represents a response of the operation 'postCustomerSessions'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomerSessionsResponseError' is used.
data PostCustomerSessionsResponse =
   PostCustomerSessionsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostCustomerSessionsResponse200 CustomerSession -- ^ Successful response.
  | PostCustomerSessionsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
