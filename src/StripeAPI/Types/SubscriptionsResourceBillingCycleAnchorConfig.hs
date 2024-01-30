-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SubscriptionsResourceBillingCycleAnchorConfig
module StripeAPI.Types.SubscriptionsResourceBillingCycleAnchorConfig where

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

-- | Defines the object schema located at @components.schemas.subscriptions_resource_billing_cycle_anchor_config@ in the specification.
-- 
-- 
data SubscriptionsResourceBillingCycleAnchorConfig = SubscriptionsResourceBillingCycleAnchorConfig {
  -- | day_of_month: The day of the month of the billing_cycle_anchor.
  subscriptionsResourceBillingCycleAnchorConfigDayOfMonth :: GHC.Types.Int
  -- | hour: The hour of the day of the billing_cycle_anchor.
  , subscriptionsResourceBillingCycleAnchorConfigHour :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | minute: The minute of the hour of the billing_cycle_anchor.
  , subscriptionsResourceBillingCycleAnchorConfigMinute :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | month: The month to start full cycle billing periods.
  , subscriptionsResourceBillingCycleAnchorConfigMonth :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | second: The second of the minute of the billing_cycle_anchor.
  , subscriptionsResourceBillingCycleAnchorConfigSecond :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionsResourceBillingCycleAnchorConfig
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["day_of_month" Data.Aeson.Types.ToJSON..= subscriptionsResourceBillingCycleAnchorConfigDayOfMonth obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hour" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourceBillingCycleAnchorConfigHour obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minute" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourceBillingCycleAnchorConfigMinute obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourceBillingCycleAnchorConfigMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("second" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourceBillingCycleAnchorConfigSecond obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["day_of_month" Data.Aeson.Types.ToJSON..= subscriptionsResourceBillingCycleAnchorConfigDayOfMonth obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hour" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourceBillingCycleAnchorConfigHour obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minute" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourceBillingCycleAnchorConfigMinute obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("month" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourceBillingCycleAnchorConfigMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("second" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourceBillingCycleAnchorConfigSecond obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionsResourceBillingCycleAnchorConfig
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionsResourceBillingCycleAnchorConfig" (\obj -> ((((GHC.Base.pure SubscriptionsResourceBillingCycleAnchorConfig GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "day_of_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hour")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "minute")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "second"))}
-- | Create a new 'SubscriptionsResourceBillingCycleAnchorConfig' with all required fields.
mkSubscriptionsResourceBillingCycleAnchorConfig :: GHC.Types.Int -- ^ 'subscriptionsResourceBillingCycleAnchorConfigDayOfMonth'
  -> SubscriptionsResourceBillingCycleAnchorConfig
mkSubscriptionsResourceBillingCycleAnchorConfig subscriptionsResourceBillingCycleAnchorConfigDayOfMonth = SubscriptionsResourceBillingCycleAnchorConfig{subscriptionsResourceBillingCycleAnchorConfigDayOfMonth = subscriptionsResourceBillingCycleAnchorConfigDayOfMonth,
                                                                                                                                                        subscriptionsResourceBillingCycleAnchorConfigHour = GHC.Maybe.Nothing,
                                                                                                                                                        subscriptionsResourceBillingCycleAnchorConfigMinute = GHC.Maybe.Nothing,
                                                                                                                                                        subscriptionsResourceBillingCycleAnchorConfigMonth = GHC.Maybe.Nothing,
                                                                                                                                                        subscriptionsResourceBillingCycleAnchorConfigSecond = GHC.Maybe.Nothing}
