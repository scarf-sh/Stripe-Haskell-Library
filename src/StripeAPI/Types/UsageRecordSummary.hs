-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema UsageRecordSummary
module StripeAPI.Types.UsageRecordSummary where

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
import {-# SOURCE #-} StripeAPI.Types.Period

-- | Defines the object schema located at @components.schemas.usage_record_summary@ in the specification.
-- 
-- 
data UsageRecordSummary = UsageRecordSummary {
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  usageRecordSummaryId :: Data.Text.Internal.Text
  -- | invoice: The invoice in which this usage period has been billed for.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , usageRecordSummaryInvoice :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , usageRecordSummaryLivemode :: GHC.Types.Bool
  -- | period: 
  , usageRecordSummaryPeriod :: Period
  -- | subscription_item: The ID of the subscription item this summary is describing.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , usageRecordSummarySubscriptionItem :: Data.Text.Internal.Text
  -- | total_usage: The total usage within this usage period.
  , usageRecordSummaryTotalUsage :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UsageRecordSummary
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= usageRecordSummaryId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice" Data.Aeson.Types.ToJSON..=)) (usageRecordSummaryInvoice obj) : ["livemode" Data.Aeson.Types.ToJSON..= usageRecordSummaryLivemode obj] : ["period" Data.Aeson.Types.ToJSON..= usageRecordSummaryPeriod obj] : ["subscription_item" Data.Aeson.Types.ToJSON..= usageRecordSummarySubscriptionItem obj] : ["total_usage" Data.Aeson.Types.ToJSON..= usageRecordSummaryTotalUsage obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "usage_record_summary"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= usageRecordSummaryId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice" Data.Aeson.Types.ToJSON..=)) (usageRecordSummaryInvoice obj) : ["livemode" Data.Aeson.Types.ToJSON..= usageRecordSummaryLivemode obj] : ["period" Data.Aeson.Types.ToJSON..= usageRecordSummaryPeriod obj] : ["subscription_item" Data.Aeson.Types.ToJSON..= usageRecordSummarySubscriptionItem obj] : ["total_usage" Data.Aeson.Types.ToJSON..= usageRecordSummaryTotalUsage obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "usage_record_summary"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON UsageRecordSummary
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "UsageRecordSummary" (\obj -> (((((GHC.Base.pure UsageRecordSummary GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subscription_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_usage"))}
-- | Create a new 'UsageRecordSummary' with all required fields.
mkUsageRecordSummary :: Data.Text.Internal.Text -- ^ 'usageRecordSummaryId'
  -> GHC.Types.Bool -- ^ 'usageRecordSummaryLivemode'
  -> Period -- ^ 'usageRecordSummaryPeriod'
  -> Data.Text.Internal.Text -- ^ 'usageRecordSummarySubscriptionItem'
  -> GHC.Types.Int -- ^ 'usageRecordSummaryTotalUsage'
  -> UsageRecordSummary
mkUsageRecordSummary usageRecordSummaryId usageRecordSummaryLivemode usageRecordSummaryPeriod usageRecordSummarySubscriptionItem usageRecordSummaryTotalUsage = UsageRecordSummary{usageRecordSummaryId = usageRecordSummaryId,
                                                                                                                                                                                   usageRecordSummaryInvoice = GHC.Maybe.Nothing,
                                                                                                                                                                                   usageRecordSummaryLivemode = usageRecordSummaryLivemode,
                                                                                                                                                                                   usageRecordSummaryPeriod = usageRecordSummaryPeriod,
                                                                                                                                                                                   usageRecordSummarySubscriptionItem = usageRecordSummarySubscriptionItem,
                                                                                                                                                                                   usageRecordSummaryTotalUsage = usageRecordSummaryTotalUsage}
