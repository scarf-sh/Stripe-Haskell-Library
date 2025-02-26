-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PortalFlowsFlowSubscriptionUpdate
module StripeAPI.Types.PortalFlowsFlowSubscriptionUpdate where

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

-- | Defines the object schema located at @components.schemas.portal_flows_flow_subscription_update@ in the specification.
-- 
-- 
data PortalFlowsFlowSubscriptionUpdate = PortalFlowsFlowSubscriptionUpdate {
  -- | subscription: The ID of the subscription to be updated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  portalFlowsFlowSubscriptionUpdateSubscription :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowSubscriptionUpdate
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["subscription" Data.Aeson.Types.ToJSON..= portalFlowsFlowSubscriptionUpdateSubscription obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["subscription" Data.Aeson.Types.ToJSON..= portalFlowsFlowSubscriptionUpdateSubscription obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowSubscriptionUpdate
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsFlowSubscriptionUpdate" (\obj -> GHC.Base.pure PortalFlowsFlowSubscriptionUpdate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subscription"))}
-- | Create a new 'PortalFlowsFlowSubscriptionUpdate' with all required fields.
mkPortalFlowsFlowSubscriptionUpdate :: Data.Text.Internal.Text -- ^ 'portalFlowsFlowSubscriptionUpdateSubscription'
  -> PortalFlowsFlowSubscriptionUpdate
mkPortalFlowsFlowSubscriptionUpdate portalFlowsFlowSubscriptionUpdateSubscription = PortalFlowsFlowSubscriptionUpdate{portalFlowsFlowSubscriptionUpdateSubscription = portalFlowsFlowSubscriptionUpdateSubscription}
