-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema WebhookEndpoint
module StripeAPI.Types.WebhookEndpoint where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias

-- | Defines the object schema located at @components.schemas.webhook_endpoint@ in the specification.
-- 
-- You can configure [webhook endpoints](https:\/\/stripe.com\/docs\/webhooks\/) via the API to be
-- notified about events that happen in your Stripe account or connected
-- accounts.
-- 
-- Most users configure webhooks from [the dashboard](https:\/\/dashboard.stripe.com\/webhooks), which provides a user interface for registering and testing your webhook endpoints.
-- 
-- Related guide: [Setting up webhooks](https:\/\/stripe.com\/docs\/webhooks\/configure)
data WebhookEndpoint = WebhookEndpoint {
  -- | api_version: The API version events are rendered as for this webhook endpoint.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  webhookEndpointApiVersion :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | application: The ID of the associated Connect application.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointApplication :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , webhookEndpointCreated :: GHC.Types.Int
  -- | description: An optional description of what the webhook is used for.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | enabled_events: The list of events to enable for this endpoint. \`[\'*\']\` indicates that all events are enabled, except those that require explicit selection.
  , webhookEndpointEnabledEvents :: ([Data.Text.Internal.Text])
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , webhookEndpointLivemode :: GHC.Types.Bool
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , webhookEndpointMetadata :: Data.Aeson.Types.Internal.Object
  -- | secret: The endpoint\'s secret, used to generate [webhook signatures](https:\/\/stripe.com\/docs\/webhooks\/signatures). Only returned at creation.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointSecret :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | status: The status of the webhook. It can be \`enabled\` or \`disabled\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointStatus :: Data.Text.Internal.Text
  -- | url: The URL of the webhook endpoint.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , webhookEndpointUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON WebhookEndpoint
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("api_version" Data.Aeson.Types.ToJSON..=)) (webhookEndpointApiVersion obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application" Data.Aeson.Types.ToJSON..=)) (webhookEndpointApplication obj) : ["created" Data.Aeson.Types.ToJSON..= webhookEndpointCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (webhookEndpointDescription obj) : ["enabled_events" Data.Aeson.Types.ToJSON..= webhookEndpointEnabledEvents obj] : ["id" Data.Aeson.Types.ToJSON..= webhookEndpointId obj] : ["livemode" Data.Aeson.Types.ToJSON..= webhookEndpointLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= webhookEndpointMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("secret" Data.Aeson.Types.ToJSON..=)) (webhookEndpointSecret obj) : ["status" Data.Aeson.Types.ToJSON..= webhookEndpointStatus obj] : ["url" Data.Aeson.Types.ToJSON..= webhookEndpointUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "webhook_endpoint"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("api_version" Data.Aeson.Types.ToJSON..=)) (webhookEndpointApiVersion obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application" Data.Aeson.Types.ToJSON..=)) (webhookEndpointApplication obj) : ["created" Data.Aeson.Types.ToJSON..= webhookEndpointCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (webhookEndpointDescription obj) : ["enabled_events" Data.Aeson.Types.ToJSON..= webhookEndpointEnabledEvents obj] : ["id" Data.Aeson.Types.ToJSON..= webhookEndpointId obj] : ["livemode" Data.Aeson.Types.ToJSON..= webhookEndpointLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= webhookEndpointMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("secret" Data.Aeson.Types.ToJSON..=)) (webhookEndpointSecret obj) : ["status" Data.Aeson.Types.ToJSON..= webhookEndpointStatus obj] : ["url" Data.Aeson.Types.ToJSON..= webhookEndpointUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "webhook_endpoint"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON WebhookEndpoint
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "WebhookEndpoint" (\obj -> ((((((((((GHC.Base.pure WebhookEndpoint GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "api_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled_events")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'WebhookEndpoint' with all required fields.
mkWebhookEndpoint :: GHC.Types.Int -- ^ 'webhookEndpointCreated'
  -> [Data.Text.Internal.Text] -- ^ 'webhookEndpointEnabledEvents'
  -> Data.Text.Internal.Text -- ^ 'webhookEndpointId'
  -> GHC.Types.Bool -- ^ 'webhookEndpointLivemode'
  -> Data.Aeson.Types.Internal.Object -- ^ 'webhookEndpointMetadata'
  -> Data.Text.Internal.Text -- ^ 'webhookEndpointStatus'
  -> Data.Text.Internal.Text -- ^ 'webhookEndpointUrl'
  -> WebhookEndpoint
mkWebhookEndpoint webhookEndpointCreated webhookEndpointEnabledEvents webhookEndpointId webhookEndpointLivemode webhookEndpointMetadata webhookEndpointStatus webhookEndpointUrl = WebhookEndpoint{webhookEndpointApiVersion = GHC.Maybe.Nothing,
                                                                                                                                                                                                   webhookEndpointApplication = GHC.Maybe.Nothing,
                                                                                                                                                                                                   webhookEndpointCreated = webhookEndpointCreated,
                                                                                                                                                                                                   webhookEndpointDescription = GHC.Maybe.Nothing,
                                                                                                                                                                                                   webhookEndpointEnabledEvents = webhookEndpointEnabledEvents,
                                                                                                                                                                                                   webhookEndpointId = webhookEndpointId,
                                                                                                                                                                                                   webhookEndpointLivemode = webhookEndpointLivemode,
                                                                                                                                                                                                   webhookEndpointMetadata = webhookEndpointMetadata,
                                                                                                                                                                                                   webhookEndpointSecret = GHC.Maybe.Nothing,
                                                                                                                                                                                                   webhookEndpointStatus = webhookEndpointStatus,
                                                                                                                                                                                                   webhookEndpointUrl = webhookEndpointUrl}
