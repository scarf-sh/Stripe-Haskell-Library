-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PortalFlowsFlow
module StripeAPI.Types.PortalFlowsFlow where

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
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsCouponOffer
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsFlowAfterCompletion
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsFlowSubscriptionCancel
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsFlowSubscriptionUpdate
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsFlowSubscriptionUpdateConfirm
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsRetention
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsSubscriptionUpdateConfirmDiscount
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsSubscriptionUpdateConfirmItem

-- | Defines the object schema located at @components.schemas.portal_flows_flow@ in the specification.
-- 
-- 
data PortalFlowsFlow = PortalFlowsFlow {
  -- | after_completion: 
  portalFlowsFlowAfterCompletion :: PortalFlowsFlowAfterCompletion
  -- | subscription_cancel: Configuration when \`flow.type=subscription_cancel\`.
  , portalFlowsFlowSubscriptionCancel :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PortalFlowsFlowSubscriptionCancel'NonNullable))
  -- | subscription_update: Configuration when \`flow.type=subscription_update\`.
  , portalFlowsFlowSubscriptionUpdate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PortalFlowsFlowSubscriptionUpdate'NonNullable))
  -- | subscription_update_confirm: Configuration when \`flow.type=subscription_update_confirm\`.
  , portalFlowsFlowSubscriptionUpdateConfirm :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PortalFlowsFlowSubscriptionUpdateConfirm'NonNullable))
  -- | type: Type of flow that the customer will go through.
  , portalFlowsFlowType :: PortalFlowsFlowType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlow
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["after_completion" Data.Aeson.Types.ToJSON..= portalFlowsFlowAfterCompletion obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription_cancel" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription_update" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription_update_confirm" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdateConfirm obj) : ["type" Data.Aeson.Types.ToJSON..= portalFlowsFlowType obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["after_completion" Data.Aeson.Types.ToJSON..= portalFlowsFlowAfterCompletion obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription_cancel" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription_update" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription_update_confirm" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdateConfirm obj) : ["type" Data.Aeson.Types.ToJSON..= portalFlowsFlowType obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlow
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsFlow" (\obj -> ((((GHC.Base.pure PortalFlowsFlow GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "after_completion")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "subscription_cancel")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "subscription_update")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "subscription_update_confirm")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))}
-- | Create a new 'PortalFlowsFlow' with all required fields.
mkPortalFlowsFlow :: PortalFlowsFlowAfterCompletion -- ^ 'portalFlowsFlowAfterCompletion'
  -> PortalFlowsFlowType' -- ^ 'portalFlowsFlowType'
  -> PortalFlowsFlow
mkPortalFlowsFlow portalFlowsFlowAfterCompletion portalFlowsFlowType = PortalFlowsFlow{portalFlowsFlowAfterCompletion = portalFlowsFlowAfterCompletion,
                                                                                       portalFlowsFlowSubscriptionCancel = GHC.Maybe.Nothing,
                                                                                       portalFlowsFlowSubscriptionUpdate = GHC.Maybe.Nothing,
                                                                                       portalFlowsFlowSubscriptionUpdateConfirm = GHC.Maybe.Nothing,
                                                                                       portalFlowsFlowType = portalFlowsFlowType}
-- | Defines the object schema located at @components.schemas.portal_flows_flow.properties.subscription_cancel.anyOf@ in the specification.
-- 
-- Configuration when \\\`flow.type=subscription_cancel\\\`.
data PortalFlowsFlowSubscriptionCancel'NonNullable = PortalFlowsFlowSubscriptionCancel'NonNullable {
  -- | retention: Specify a retention strategy to be used in the cancellation flow.
  portalFlowsFlowSubscriptionCancel'NonNullableRetention :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable))
  -- | subscription: The ID of the subscription to be canceled.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , portalFlowsFlowSubscriptionCancel'NonNullableSubscription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowSubscriptionCancel'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("retention" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel'NonNullableRetention obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel'NonNullableSubscription obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("retention" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel'NonNullableRetention obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel'NonNullableSubscription obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowSubscriptionCancel'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsFlowSubscriptionCancel'NonNullable" (\obj -> (GHC.Base.pure PortalFlowsFlowSubscriptionCancel'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "retention")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "subscription"))}
-- | Create a new 'PortalFlowsFlowSubscriptionCancel'NonNullable' with all required fields.
mkPortalFlowsFlowSubscriptionCancel'NonNullable :: PortalFlowsFlowSubscriptionCancel'NonNullable
mkPortalFlowsFlowSubscriptionCancel'NonNullable = PortalFlowsFlowSubscriptionCancel'NonNullable{portalFlowsFlowSubscriptionCancel'NonNullableRetention = GHC.Maybe.Nothing,
                                                                                                portalFlowsFlowSubscriptionCancel'NonNullableSubscription = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.portal_flows_flow.properties.subscription_cancel.anyOf.properties.retention.anyOf@ in the specification.
-- 
-- Specify a retention strategy to be used in the cancellation flow.
data PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable = PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable {
  -- | coupon_offer: Configuration when \`retention.type=coupon_offer\`.
  portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable))
  -- | type: Type of retention strategy that will be used.
  , portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType :: (GHC.Maybe.Maybe PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon_offer" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon_offer" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable" (\obj -> (GHC.Base.pure PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "coupon_offer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))}
-- | Create a new 'PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable' with all required fields.
mkPortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable :: PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable
mkPortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable = PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullable{portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer = GHC.Maybe.Nothing,
                                                                                                                                          portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.portal_flows_flow.properties.subscription_cancel.anyOf.properties.retention.anyOf.properties.coupon_offer.anyOf@ in the specification.
-- 
-- Configuration when \\\`retention.type=coupon_offer\\\`.
data PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable = PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable {
  -- | coupon: The ID of the coupon to be offered.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullableCoupon :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullableCoupon obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullableCoupon obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable" (\obj -> GHC.Base.pure PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "coupon"))}
-- | Create a new 'PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable' with all required fields.
mkPortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable :: PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable
mkPortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable = PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullable{portalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableCouponOffer'NonNullableCoupon = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.portal_flows_flow.properties.subscription_cancel.anyOf.properties.retention.anyOf.properties.type@ in the specification.
-- 
-- Type of retention strategy that will be used.
data PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType' =
   PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType'EnumCouponOffer -- ^ Represents the JSON value @"coupon_offer"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType'
    where {toJSON (PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType'Other val) = val;
           toJSON (PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType'EnumCouponOffer) = "coupon_offer"}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "coupon_offer" -> PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType'EnumCouponOffer
                                             | GHC.Base.otherwise -> PortalFlowsFlowSubscriptionCancel'NonNullableRetention'NonNullableType'Other val)}
-- | Defines the object schema located at @components.schemas.portal_flows_flow.properties.subscription_update.anyOf@ in the specification.
-- 
-- Configuration when \\\`flow.type=subscription_update\\\`.
data PortalFlowsFlowSubscriptionUpdate'NonNullable = PortalFlowsFlowSubscriptionUpdate'NonNullable {
  -- | subscription: The ID of the subscription to be updated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  portalFlowsFlowSubscriptionUpdate'NonNullableSubscription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowSubscriptionUpdate'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdate'NonNullableSubscription obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdate'NonNullableSubscription obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowSubscriptionUpdate'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsFlowSubscriptionUpdate'NonNullable" (\obj -> GHC.Base.pure PortalFlowsFlowSubscriptionUpdate'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "subscription"))}
-- | Create a new 'PortalFlowsFlowSubscriptionUpdate'NonNullable' with all required fields.
mkPortalFlowsFlowSubscriptionUpdate'NonNullable :: PortalFlowsFlowSubscriptionUpdate'NonNullable
mkPortalFlowsFlowSubscriptionUpdate'NonNullable = PortalFlowsFlowSubscriptionUpdate'NonNullable{portalFlowsFlowSubscriptionUpdate'NonNullableSubscription = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.portal_flows_flow.properties.subscription_update_confirm.anyOf@ in the specification.
-- 
-- Configuration when \\\`flow.type=subscription_update_confirm\\\`.
data PortalFlowsFlowSubscriptionUpdateConfirm'NonNullable = PortalFlowsFlowSubscriptionUpdateConfirm'NonNullable {
  -- | discounts: The coupon or promotion code to apply to this subscription update. Currently, only up to one may be specified.
  portalFlowsFlowSubscriptionUpdateConfirm'NonNullableDiscounts :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([PortalFlowsSubscriptionUpdateConfirmDiscount])))
  -- | items: The [subscription item](https:\/\/stripe.com\/docs\/api\/subscription_items) to be updated through this flow. Currently, only up to one may be specified and subscriptions with multiple items are not updatable.
  , portalFlowsFlowSubscriptionUpdateConfirm'NonNullableItems :: (GHC.Maybe.Maybe ([PortalFlowsSubscriptionUpdateConfirmItem]))
  -- | subscription: The ID of the subscription to be updated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , portalFlowsFlowSubscriptionUpdateConfirm'NonNullableSubscription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowSubscriptionUpdateConfirm'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("discounts" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdateConfirm'NonNullableDiscounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("items" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdateConfirm'NonNullableItems obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdateConfirm'NonNullableSubscription obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("discounts" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdateConfirm'NonNullableDiscounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("items" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdateConfirm'NonNullableItems obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowSubscriptionUpdateConfirm'NonNullableSubscription obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowSubscriptionUpdateConfirm'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsFlowSubscriptionUpdateConfirm'NonNullable" (\obj -> ((GHC.Base.pure PortalFlowsFlowSubscriptionUpdateConfirm'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "discounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "subscription"))}
-- | Create a new 'PortalFlowsFlowSubscriptionUpdateConfirm'NonNullable' with all required fields.
mkPortalFlowsFlowSubscriptionUpdateConfirm'NonNullable :: PortalFlowsFlowSubscriptionUpdateConfirm'NonNullable
mkPortalFlowsFlowSubscriptionUpdateConfirm'NonNullable = PortalFlowsFlowSubscriptionUpdateConfirm'NonNullable{portalFlowsFlowSubscriptionUpdateConfirm'NonNullableDiscounts = GHC.Maybe.Nothing,
                                                                                                              portalFlowsFlowSubscriptionUpdateConfirm'NonNullableItems = GHC.Maybe.Nothing,
                                                                                                              portalFlowsFlowSubscriptionUpdateConfirm'NonNullableSubscription = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.portal_flows_flow.properties.type@ in the specification.
-- 
-- Type of flow that the customer will go through.
data PortalFlowsFlowType' =
   PortalFlowsFlowType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PortalFlowsFlowType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PortalFlowsFlowType'EnumPaymentMethodUpdate -- ^ Represents the JSON value @"payment_method_update"@
  | PortalFlowsFlowType'EnumSubscriptionCancel -- ^ Represents the JSON value @"subscription_cancel"@
  | PortalFlowsFlowType'EnumSubscriptionUpdate -- ^ Represents the JSON value @"subscription_update"@
  | PortalFlowsFlowType'EnumSubscriptionUpdateConfirm -- ^ Represents the JSON value @"subscription_update_confirm"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowType'
    where {toJSON (PortalFlowsFlowType'Other val) = val;
           toJSON (PortalFlowsFlowType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PortalFlowsFlowType'EnumPaymentMethodUpdate) = "payment_method_update";
           toJSON (PortalFlowsFlowType'EnumSubscriptionCancel) = "subscription_cancel";
           toJSON (PortalFlowsFlowType'EnumSubscriptionUpdate) = "subscription_update";
           toJSON (PortalFlowsFlowType'EnumSubscriptionUpdateConfirm) = "subscription_update_confirm"}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "payment_method_update" -> PortalFlowsFlowType'EnumPaymentMethodUpdate
                                             | val GHC.Classes.== "subscription_cancel" -> PortalFlowsFlowType'EnumSubscriptionCancel
                                             | val GHC.Classes.== "subscription_update" -> PortalFlowsFlowType'EnumSubscriptionUpdate
                                             | val GHC.Classes.== "subscription_update_confirm" -> PortalFlowsFlowType'EnumSubscriptionUpdateConfirm
                                             | GHC.Base.otherwise -> PortalFlowsFlowType'Other val)}
