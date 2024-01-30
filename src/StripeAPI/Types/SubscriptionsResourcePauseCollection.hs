-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SubscriptionsResourcePauseCollection
module StripeAPI.Types.SubscriptionsResourcePauseCollection where

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

-- | Defines the object schema located at @components.schemas.subscriptions_resource_pause_collection@ in the specification.
-- 
-- The Pause Collection settings determine how we will pause collection for this subscription and for how long the subscription
-- should be paused.
data SubscriptionsResourcePauseCollection = SubscriptionsResourcePauseCollection {
  -- | behavior: The payment collection behavior for this subscription while paused. One of \`keep_as_draft\`, \`mark_uncollectible\`, or \`void\`.
  subscriptionsResourcePauseCollectionBehavior :: SubscriptionsResourcePauseCollectionBehavior'
  -- | resumes_at: The time after which the subscription will resume collecting payments.
  , subscriptionsResourcePauseCollectionResumesAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionsResourcePauseCollection
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["behavior" Data.Aeson.Types.ToJSON..= subscriptionsResourcePauseCollectionBehavior obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("resumes_at" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourcePauseCollectionResumesAt obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["behavior" Data.Aeson.Types.ToJSON..= subscriptionsResourcePauseCollectionBehavior obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("resumes_at" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourcePauseCollectionResumesAt obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionsResourcePauseCollection
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionsResourcePauseCollection" (\obj -> (GHC.Base.pure SubscriptionsResourcePauseCollection GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "resumes_at"))}
-- | Create a new 'SubscriptionsResourcePauseCollection' with all required fields.
mkSubscriptionsResourcePauseCollection :: SubscriptionsResourcePauseCollectionBehavior' -- ^ 'subscriptionsResourcePauseCollectionBehavior'
  -> SubscriptionsResourcePauseCollection
mkSubscriptionsResourcePauseCollection subscriptionsResourcePauseCollectionBehavior = SubscriptionsResourcePauseCollection{subscriptionsResourcePauseCollectionBehavior = subscriptionsResourcePauseCollectionBehavior,
                                                                                                                           subscriptionsResourcePauseCollectionResumesAt = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.subscriptions_resource_pause_collection.properties.behavior@ in the specification.
-- 
-- The payment collection behavior for this subscription while paused. One of \`keep_as_draft\`, \`mark_uncollectible\`, or \`void\`.
data SubscriptionsResourcePauseCollectionBehavior' =
   SubscriptionsResourcePauseCollectionBehavior'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SubscriptionsResourcePauseCollectionBehavior'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SubscriptionsResourcePauseCollectionBehavior'EnumKeepAsDraft -- ^ Represents the JSON value @"keep_as_draft"@
  | SubscriptionsResourcePauseCollectionBehavior'EnumMarkUncollectible -- ^ Represents the JSON value @"mark_uncollectible"@
  | SubscriptionsResourcePauseCollectionBehavior'EnumVoid -- ^ Represents the JSON value @"void"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionsResourcePauseCollectionBehavior'
    where {toJSON (SubscriptionsResourcePauseCollectionBehavior'Other val) = val;
           toJSON (SubscriptionsResourcePauseCollectionBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (SubscriptionsResourcePauseCollectionBehavior'EnumKeepAsDraft) = "keep_as_draft";
           toJSON (SubscriptionsResourcePauseCollectionBehavior'EnumMarkUncollectible) = "mark_uncollectible";
           toJSON (SubscriptionsResourcePauseCollectionBehavior'EnumVoid) = "void"}
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionsResourcePauseCollectionBehavior'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "keep_as_draft" -> SubscriptionsResourcePauseCollectionBehavior'EnumKeepAsDraft
                                             | val GHC.Classes.== "mark_uncollectible" -> SubscriptionsResourcePauseCollectionBehavior'EnumMarkUncollectible
                                             | val GHC.Classes.== "void" -> SubscriptionsResourcePauseCollectionBehavior'EnumVoid
                                             | GHC.Base.otherwise -> SubscriptionsResourcePauseCollectionBehavior'Other val)}
