-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ShippingRate
module StripeAPI.Types.ShippingRate where

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
import {-# SOURCE #-} StripeAPI.Types.ShippingRateDeliveryEstimate
import {-# SOURCE #-} StripeAPI.Types.ShippingRateDeliveryEstimateBound
import {-# SOURCE #-} StripeAPI.Types.ShippingRateFixedAmount
import {-# SOURCE #-} StripeAPI.Types.TaxCode

-- | Defines the object schema located at @components.schemas.shipping_rate@ in the specification.
-- 
-- Shipping rates describe the price of shipping presented to your customers and
-- applied to a purchase. For more information, see [Charge for shipping](https:\/\/stripe.com\/docs\/payments\/during-payment\/charge-shipping).
data ShippingRate = ShippingRate {
  -- | active: Whether the shipping rate can be used for new purchases. Defaults to \`true\`.
  shippingRateActive :: GHC.Types.Bool
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , shippingRateCreated :: GHC.Types.Int
  -- | delivery_estimate: The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
  , shippingRateDeliveryEstimate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ShippingRateDeliveryEstimate'NonNullable))
  -- | display_name: The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , shippingRateDisplayName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | fixed_amount: 
  , shippingRateFixedAmount :: (GHC.Maybe.Maybe ShippingRateFixedAmount)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , shippingRateId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , shippingRateLivemode :: GHC.Types.Bool
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , shippingRateMetadata :: Data.Aeson.Types.Internal.Object
  -- | tax_behavior: Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of \`inclusive\`, \`exclusive\`, or \`unspecified\`.
  , shippingRateTaxBehavior :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ShippingRateTaxBehavior'NonNullable))
  -- | tax_code: A [tax code](https:\/\/stripe.com\/docs\/tax\/tax-categories) ID. The Shipping tax code is \`txcd_92010001\`.
  , shippingRateTaxCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ShippingRateTaxCode'NonNullableVariants))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingRate
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["active" Data.Aeson.Types.ToJSON..= shippingRateActive obj] : ["created" Data.Aeson.Types.ToJSON..= shippingRateCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("delivery_estimate" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (shippingRateDisplayName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fixed_amount" Data.Aeson.Types.ToJSON..=)) (shippingRateFixedAmount obj) : ["id" Data.Aeson.Types.ToJSON..= shippingRateId obj] : ["livemode" Data.Aeson.Types.ToJSON..= shippingRateLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= shippingRateMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_behavior" Data.Aeson.Types.ToJSON..=)) (shippingRateTaxBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (shippingRateTaxCode obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "shipping_rate"] : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fixed_amount"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["active" Data.Aeson.Types.ToJSON..= shippingRateActive obj] : ["created" Data.Aeson.Types.ToJSON..= shippingRateCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("delivery_estimate" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("display_name" Data.Aeson.Types.ToJSON..=)) (shippingRateDisplayName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fixed_amount" Data.Aeson.Types.ToJSON..=)) (shippingRateFixedAmount obj) : ["id" Data.Aeson.Types.ToJSON..= shippingRateId obj] : ["livemode" Data.Aeson.Types.ToJSON..= shippingRateLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= shippingRateMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_behavior" Data.Aeson.Types.ToJSON..=)) (shippingRateTaxBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (shippingRateTaxCode obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "shipping_rate"] : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fixed_amount"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ShippingRate
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ShippingRate" (\obj -> (((((((((GHC.Base.pure ShippingRate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "delivery_estimate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fixed_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_code"))}
-- | Create a new 'ShippingRate' with all required fields.
mkShippingRate :: GHC.Types.Bool -- ^ 'shippingRateActive'
  -> GHC.Types.Int -- ^ 'shippingRateCreated'
  -> Data.Text.Internal.Text -- ^ 'shippingRateId'
  -> GHC.Types.Bool -- ^ 'shippingRateLivemode'
  -> Data.Aeson.Types.Internal.Object -- ^ 'shippingRateMetadata'
  -> ShippingRate
mkShippingRate shippingRateActive shippingRateCreated shippingRateId shippingRateLivemode shippingRateMetadata = ShippingRate{shippingRateActive = shippingRateActive,
                                                                                                                              shippingRateCreated = shippingRateCreated,
                                                                                                                              shippingRateDeliveryEstimate = GHC.Maybe.Nothing,
                                                                                                                              shippingRateDisplayName = GHC.Maybe.Nothing,
                                                                                                                              shippingRateFixedAmount = GHC.Maybe.Nothing,
                                                                                                                              shippingRateId = shippingRateId,
                                                                                                                              shippingRateLivemode = shippingRateLivemode,
                                                                                                                              shippingRateMetadata = shippingRateMetadata,
                                                                                                                              shippingRateTaxBehavior = GHC.Maybe.Nothing,
                                                                                                                              shippingRateTaxCode = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.shipping_rate.properties.delivery_estimate.anyOf@ in the specification.
-- 
-- The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
data ShippingRateDeliveryEstimate'NonNullable = ShippingRateDeliveryEstimate'NonNullable {
  -- | maximum: The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
  shippingRateDeliveryEstimate'NonNullableMaximum :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable))
  -- | minimum: The lower bound of the estimated range. If empty, represents no lower bound.
  , shippingRateDeliveryEstimate'NonNullableMinimum :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingRateDeliveryEstimate'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("maximum" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMaximum obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMinimum obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("maximum" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMaximum obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMinimum obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ShippingRateDeliveryEstimate'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ShippingRateDeliveryEstimate'NonNullable" (\obj -> (GHC.Base.pure ShippingRateDeliveryEstimate'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "maximum")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "minimum"))}
-- | Create a new 'ShippingRateDeliveryEstimate'NonNullable' with all required fields.
mkShippingRateDeliveryEstimate'NonNullable :: ShippingRateDeliveryEstimate'NonNullable
mkShippingRateDeliveryEstimate'NonNullable = ShippingRateDeliveryEstimate'NonNullable{shippingRateDeliveryEstimate'NonNullableMaximum = GHC.Maybe.Nothing,
                                                                                      shippingRateDeliveryEstimate'NonNullableMinimum = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.shipping_rate.properties.delivery_estimate.anyOf.properties.maximum.anyOf@ in the specification.
-- 
-- The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
data ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable = ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable {
  -- | unit: A unit of time.
  shippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit :: (GHC.Maybe.Maybe ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit')
  -- | value: Must be greater than 0.
  , shippingRateDeliveryEstimate'NonNullableMaximum'NonNullableValue :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMaximum'NonNullableValue obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMaximum'NonNullableValue obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable" (\obj -> (GHC.Base.pure ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "value"))}
-- | Create a new 'ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable' with all required fields.
mkShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable :: ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable
mkShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable = ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullable{shippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit = GHC.Maybe.Nothing,
                                                                                                                            shippingRateDeliveryEstimate'NonNullableMaximum'NonNullableValue = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.shipping_rate.properties.delivery_estimate.anyOf.properties.maximum.anyOf.properties.unit@ in the specification.
-- 
-- A unit of time.
data ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit' =
   ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumBusinessDay -- ^ Represents the JSON value @"business_day"@
  | ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumDay -- ^ Represents the JSON value @"day"@
  | ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumHour -- ^ Represents the JSON value @"hour"@
  | ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumMonth -- ^ Represents the JSON value @"month"@
  | ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumWeek -- ^ Represents the JSON value @"week"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'
    where {toJSON (ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'Other val) = val;
           toJSON (ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumBusinessDay) = "business_day";
           toJSON (ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumDay) = "day";
           toJSON (ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumHour) = "hour";
           toJSON (ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumMonth) = "month";
           toJSON (ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumWeek) = "week"}
instance Data.Aeson.Types.FromJSON.FromJSON ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "business_day" -> ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumBusinessDay
                                             | val GHC.Classes.== "day" -> ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumDay
                                             | val GHC.Classes.== "hour" -> ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumHour
                                             | val GHC.Classes.== "month" -> ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumMonth
                                             | val GHC.Classes.== "week" -> ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'EnumWeek
                                             | GHC.Base.otherwise -> ShippingRateDeliveryEstimate'NonNullableMaximum'NonNullableUnit'Other val)}
-- | Defines the object schema located at @components.schemas.shipping_rate.properties.delivery_estimate.anyOf.properties.minimum.anyOf@ in the specification.
-- 
-- The lower bound of the estimated range. If empty, represents no lower bound.
data ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable = ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable {
  -- | unit: A unit of time.
  shippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit :: (GHC.Maybe.Maybe ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit')
  -- | value: Must be greater than 0.
  , shippingRateDeliveryEstimate'NonNullableMinimum'NonNullableValue :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMinimum'NonNullableValue obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (shippingRateDeliveryEstimate'NonNullableMinimum'NonNullableValue obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable" (\obj -> (GHC.Base.pure ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "value"))}
-- | Create a new 'ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable' with all required fields.
mkShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable :: ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable
mkShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable = ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullable{shippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit = GHC.Maybe.Nothing,
                                                                                                                            shippingRateDeliveryEstimate'NonNullableMinimum'NonNullableValue = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.shipping_rate.properties.delivery_estimate.anyOf.properties.minimum.anyOf.properties.unit@ in the specification.
-- 
-- A unit of time.
data ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit' =
   ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumBusinessDay -- ^ Represents the JSON value @"business_day"@
  | ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumDay -- ^ Represents the JSON value @"day"@
  | ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumHour -- ^ Represents the JSON value @"hour"@
  | ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumMonth -- ^ Represents the JSON value @"month"@
  | ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumWeek -- ^ Represents the JSON value @"week"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'
    where {toJSON (ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'Other val) = val;
           toJSON (ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumBusinessDay) = "business_day";
           toJSON (ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumDay) = "day";
           toJSON (ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumHour) = "hour";
           toJSON (ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumMonth) = "month";
           toJSON (ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumWeek) = "week"}
instance Data.Aeson.Types.FromJSON.FromJSON ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "business_day" -> ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumBusinessDay
                                             | val GHC.Classes.== "day" -> ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumDay
                                             | val GHC.Classes.== "hour" -> ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumHour
                                             | val GHC.Classes.== "month" -> ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumMonth
                                             | val GHC.Classes.== "week" -> ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'EnumWeek
                                             | GHC.Base.otherwise -> ShippingRateDeliveryEstimate'NonNullableMinimum'NonNullableUnit'Other val)}
-- | Defines the enum schema located at @components.schemas.shipping_rate.properties.tax_behavior@ in the specification.
-- 
-- Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of \`inclusive\`, \`exclusive\`, or \`unspecified\`.
data ShippingRateTaxBehavior'NonNullable =
   ShippingRateTaxBehavior'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ShippingRateTaxBehavior'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ShippingRateTaxBehavior'NonNullableEnumExclusive -- ^ Represents the JSON value @"exclusive"@
  | ShippingRateTaxBehavior'NonNullableEnumInclusive -- ^ Represents the JSON value @"inclusive"@
  | ShippingRateTaxBehavior'NonNullableEnumUnspecified -- ^ Represents the JSON value @"unspecified"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingRateTaxBehavior'NonNullable
    where {toJSON (ShippingRateTaxBehavior'NonNullableOther val) = val;
           toJSON (ShippingRateTaxBehavior'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ShippingRateTaxBehavior'NonNullableEnumExclusive) = "exclusive";
           toJSON (ShippingRateTaxBehavior'NonNullableEnumInclusive) = "inclusive";
           toJSON (ShippingRateTaxBehavior'NonNullableEnumUnspecified) = "unspecified"}
instance Data.Aeson.Types.FromJSON.FromJSON ShippingRateTaxBehavior'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "exclusive" -> ShippingRateTaxBehavior'NonNullableEnumExclusive
                                             | val GHC.Classes.== "inclusive" -> ShippingRateTaxBehavior'NonNullableEnumInclusive
                                             | val GHC.Classes.== "unspecified" -> ShippingRateTaxBehavior'NonNullableEnumUnspecified
                                             | GHC.Base.otherwise -> ShippingRateTaxBehavior'NonNullableOther val)}
-- | Defines the oneOf schema located at @components.schemas.shipping_rate.properties.tax_code.anyOf@ in the specification.
-- 
-- A [tax code](https:\/\/stripe.com\/docs\/tax\/tax-categories) ID. The Shipping tax code is \`txcd_92010001\`.
data ShippingRateTaxCode'NonNullableVariants =
   ShippingRateTaxCode'NonNullableText Data.Text.Internal.Text
  | ShippingRateTaxCode'NonNullableTaxCode TaxCode
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ShippingRateTaxCode'NonNullableVariants
    where {toJSON (ShippingRateTaxCode'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (ShippingRateTaxCode'NonNullableTaxCode a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON ShippingRateTaxCode'NonNullableVariants
    where {parseJSON val = case (ShippingRateTaxCode'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ShippingRateTaxCode'NonNullableTaxCode Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
