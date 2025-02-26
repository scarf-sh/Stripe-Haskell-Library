-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SubscriptionBillingThresholds
module StripeAPI.Types.SubscriptionBillingThresholds where

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

-- | Defines the object schema located at @components.schemas.subscription_billing_thresholds@ in the specification.
-- 
-- 
data SubscriptionBillingThresholds = SubscriptionBillingThresholds {
  -- | amount_gte: Monetary threshold that triggers the subscription to create an invoice
  subscriptionBillingThresholdsAmountGte :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | reset_billing_cycle_anchor: Indicates if the \`billing_cycle_anchor\` should be reset when a threshold is reached. If true, \`billing_cycle_anchor\` will be updated to the date\/time the threshold was last reached; otherwise, the value will remain unchanged. This value may not be \`true\` if the subscription contains items with plans that have \`aggregate_usage=last_ever\`.
  , subscriptionBillingThresholdsResetBillingCycleAnchor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionBillingThresholds
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_gte" Data.Aeson.Types.ToJSON..=)) (subscriptionBillingThresholdsAmountGte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reset_billing_cycle_anchor" Data.Aeson.Types.ToJSON..=)) (subscriptionBillingThresholdsResetBillingCycleAnchor obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_gte" Data.Aeson.Types.ToJSON..=)) (subscriptionBillingThresholdsAmountGte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reset_billing_cycle_anchor" Data.Aeson.Types.ToJSON..=)) (subscriptionBillingThresholdsResetBillingCycleAnchor obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionBillingThresholds
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionBillingThresholds" (\obj -> (GHC.Base.pure SubscriptionBillingThresholds GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reset_billing_cycle_anchor"))}
-- | Create a new 'SubscriptionBillingThresholds' with all required fields.
mkSubscriptionBillingThresholds :: SubscriptionBillingThresholds
mkSubscriptionBillingThresholds = SubscriptionBillingThresholds{subscriptionBillingThresholdsAmountGte = GHC.Maybe.Nothing,
                                                                subscriptionBillingThresholdsResetBillingCycleAnchor = GHC.Maybe.Nothing}
