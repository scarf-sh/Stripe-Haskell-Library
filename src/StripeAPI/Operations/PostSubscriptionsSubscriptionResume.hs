-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postSubscriptionsSubscriptionResume
module StripeAPI.Operations.PostSubscriptionsSubscriptionResume where

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

-- | > POST /v1/subscriptions/{subscription}/resume
-- 
-- \<p>Initiates resumption of a paused subscription, optionally resetting the billing cycle anchor and creating prorations. If a resumption invoice is generated, it must be paid or marked uncollectible before the subscription will be unpaused. If payment succeeds the subscription will become \<code>active\<\/code>, and if payment fails the subscription will be \<code>past_due\<\/code>. The resumption invoice will void automatically if not paid by the expiration date.\<\/p>
postSubscriptionsSubscriptionResume :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ subscription | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostSubscriptionsSubscriptionResumeRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostSubscriptionsSubscriptionResumeResponse) -- ^ Monadic computation which returns the result of the operation
postSubscriptionsSubscriptionResume subscription
                                    body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionsSubscriptionResumeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsSubscriptionResumeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Subscription)
                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionsSubscriptionResumeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/subscriptions/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel subscription)) GHC.Base.<> "/resume")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/subscriptions\/{subscription}\/resume.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostSubscriptionsSubscriptionResumeRequestBody = PostSubscriptionsSubscriptionResumeRequestBody {
  -- | billing_cycle_anchor: Either \`now\` or \`unchanged\`. Setting the value to \`now\` resets the subscription\'s billing cycle anchor to the current time (in UTC). Setting the value to \`unchanged\` advances the subscription\'s billing cycle anchor to the period that surrounds the current time. For more information, see the billing cycle [documentation](https:\/\/stripe.com\/docs\/billing\/subscriptions\/billing-cycle).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor')
  -- | expand: Specifies which fields in the response should be expanded.
  , postSubscriptionsSubscriptionResumeRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | proration_behavior: Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. The default value is \`create_prorations\`.
  , postSubscriptionsSubscriptionResumeRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior')
  -- | proration_date: If set, the proration will be calculated as though the subscription was resumed at the given time. This can be used to apply exactly the same proration that was previewed with [upcoming invoice](https:\/\/stripe.com\/docs\/api\#retrieve_customer_invoice) endpoint.
  , postSubscriptionsSubscriptionResumeRequestBodyProrationDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSubscriptionsSubscriptionResumeRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_cycle_anchor" Data.Aeson.Types.ToJSON..=)) (postSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postSubscriptionsSubscriptionResumeRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("proration_behavior" Data.Aeson.Types.ToJSON..=)) (postSubscriptionsSubscriptionResumeRequestBodyProrationBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("proration_date" Data.Aeson.Types.ToJSON..=)) (postSubscriptionsSubscriptionResumeRequestBodyProrationDate obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_cycle_anchor" Data.Aeson.Types.ToJSON..=)) (postSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postSubscriptionsSubscriptionResumeRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("proration_behavior" Data.Aeson.Types.ToJSON..=)) (postSubscriptionsSubscriptionResumeRequestBodyProrationBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("proration_date" Data.Aeson.Types.ToJSON..=)) (postSubscriptionsSubscriptionResumeRequestBodyProrationDate obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionResumeRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionsSubscriptionResumeRequestBody" (\obj -> (((GHC.Base.pure PostSubscriptionsSubscriptionResumeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "proration_date"))}
-- | Create a new 'PostSubscriptionsSubscriptionResumeRequestBody' with all required fields.
mkPostSubscriptionsSubscriptionResumeRequestBody :: PostSubscriptionsSubscriptionResumeRequestBody
mkPostSubscriptionsSubscriptionResumeRequestBody = PostSubscriptionsSubscriptionResumeRequestBody{postSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor = GHC.Maybe.Nothing,
                                                                                                  postSubscriptionsSubscriptionResumeRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                  postSubscriptionsSubscriptionResumeRequestBodyProrationBehavior = GHC.Maybe.Nothing,
                                                                                                  postSubscriptionsSubscriptionResumeRequestBodyProrationDate = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/subscriptions\/{subscription}\/resume.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.billing_cycle_anchor@ in the specification.
-- 
-- Either \`now\` or \`unchanged\`. Setting the value to \`now\` resets the subscription\'s billing cycle anchor to the current time (in UTC). Setting the value to \`unchanged\` advances the subscription\'s billing cycle anchor to the period that surrounds the current time. For more information, see the billing cycle [documentation](https:\/\/stripe.com\/docs\/billing\/subscriptions\/billing-cycle).
data PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor' =
   PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'EnumNow -- ^ Represents the JSON value @"now"@
  | PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'EnumUnchanged -- ^ Represents the JSON value @"unchanged"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'
    where {toJSON (PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'Other val) = val;
           toJSON (PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'EnumNow) = "now";
           toJSON (PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'EnumUnchanged) = "unchanged"}
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "now" -> PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'EnumNow
                                             | val GHC.Classes.== "unchanged" -> PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'EnumUnchanged
                                             | GHC.Base.otherwise -> PostSubscriptionsSubscriptionResumeRequestBodyBillingCycleAnchor'Other val)}
-- | Defines the enum schema located at @paths.\/v1\/subscriptions\/{subscription}\/resume.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.proration_behavior@ in the specification.
-- 
-- Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) when the billing cycle changes (e.g., when switching plans, resetting \`billing_cycle_anchor=now\`, or starting a trial), or if an item\'s \`quantity\` changes. The default value is \`create_prorations\`.
data PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior' =
   PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'EnumAlwaysInvoice -- ^ Represents the JSON value @"always_invoice"@
  | PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'EnumCreateProrations -- ^ Represents the JSON value @"create_prorations"@
  | PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'EnumNone -- ^ Represents the JSON value @"none"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'
    where {toJSON (PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'Other val) = val;
           toJSON (PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'EnumAlwaysInvoice) = "always_invoice";
           toJSON (PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'EnumCreateProrations) = "create_prorations";
           toJSON (PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'EnumNone) = "none"}
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "always_invoice" -> PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'EnumAlwaysInvoice
                                             | val GHC.Classes.== "create_prorations" -> PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'EnumCreateProrations
                                             | val GHC.Classes.== "none" -> PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'EnumNone
                                             | GHC.Base.otherwise -> PostSubscriptionsSubscriptionResumeRequestBodyProrationBehavior'Other val)}
-- | Represents a response of the operation 'postSubscriptionsSubscriptionResume'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSubscriptionsSubscriptionResumeResponseError' is used.
data PostSubscriptionsSubscriptionResumeResponse =
   PostSubscriptionsSubscriptionResumeResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSubscriptionsSubscriptionResumeResponse200 Subscription -- ^ Successful response.
  | PostSubscriptionsSubscriptionResumeResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
