-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema QuotesResourceSubscriptionDataSubscriptionData
module StripeAPI.Types.QuotesResourceSubscriptionDataSubscriptionData where

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

-- | Defines the object schema located at @components.schemas.quotes_resource_subscription_data_subscription_data@ in the specification.
-- 
-- 
data QuotesResourceSubscriptionDataSubscriptionData = QuotesResourceSubscriptionDataSubscriptionData {
  -- | description: The subscription\'s description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  quotesResourceSubscriptionDataSubscriptionDataDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | effective_date: When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. This date is ignored if it is in the past when the quote is accepted. Measured in seconds since the Unix epoch.
  , quotesResourceSubscriptionDataSubscriptionDataEffectiveDate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in \`line_items\`, this field will be passed to the resulting subscription\'s \`metadata\` field. If \`subscription_data.effective_date\` is used, this field will be passed to the resulting subscription schedule\'s \`phases.metadata\` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
  , quotesResourceSubscriptionDataSubscriptionDataMetadata :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object))
  -- | trial_period_days: Integer representing the number of trial period days before the customer is charged for the first time.
  , quotesResourceSubscriptionDataSubscriptionDataTrialPeriodDays :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceSubscriptionDataSubscriptionData
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (quotesResourceSubscriptionDataSubscriptionDataDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("effective_date" Data.Aeson.Types.ToJSON..=)) (quotesResourceSubscriptionDataSubscriptionDataEffectiveDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (quotesResourceSubscriptionDataSubscriptionDataMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_period_days" Data.Aeson.Types.ToJSON..=)) (quotesResourceSubscriptionDataSubscriptionDataTrialPeriodDays obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (quotesResourceSubscriptionDataSubscriptionDataDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("effective_date" Data.Aeson.Types.ToJSON..=)) (quotesResourceSubscriptionDataSubscriptionDataEffectiveDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (quotesResourceSubscriptionDataSubscriptionDataMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_period_days" Data.Aeson.Types.ToJSON..=)) (quotesResourceSubscriptionDataSubscriptionDataTrialPeriodDays obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceSubscriptionDataSubscriptionData
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "QuotesResourceSubscriptionDataSubscriptionData" (\obj -> (((GHC.Base.pure QuotesResourceSubscriptionDataSubscriptionData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "effective_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "trial_period_days"))}
-- | Create a new 'QuotesResourceSubscriptionDataSubscriptionData' with all required fields.
mkQuotesResourceSubscriptionDataSubscriptionData :: QuotesResourceSubscriptionDataSubscriptionData
mkQuotesResourceSubscriptionDataSubscriptionData = QuotesResourceSubscriptionDataSubscriptionData{quotesResourceSubscriptionDataSubscriptionDataDescription = GHC.Maybe.Nothing,
                                                                                                  quotesResourceSubscriptionDataSubscriptionDataEffectiveDate = GHC.Maybe.Nothing,
                                                                                                  quotesResourceSubscriptionDataSubscriptionDataMetadata = GHC.Maybe.Nothing,
                                                                                                  quotesResourceSubscriptionDataSubscriptionDataTrialPeriodDays = GHC.Maybe.Nothing}
