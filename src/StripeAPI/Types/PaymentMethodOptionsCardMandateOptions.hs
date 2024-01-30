-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodOptionsCardMandateOptions
module StripeAPI.Types.PaymentMethodOptionsCardMandateOptions where

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

-- | Defines the object schema located at @components.schemas.payment_method_options_card_mandate_options@ in the specification.
-- 
-- 
data PaymentMethodOptionsCardMandateOptions = PaymentMethodOptionsCardMandateOptions {
  -- | amount: Amount to be charged for future payments.
  paymentMethodOptionsCardMandateOptionsAmount :: GHC.Types.Int
  -- | amount_type: One of \`fixed\` or \`maximum\`. If \`fixed\`, the \`amount\` param refers to the exact amount to be charged in future payments. If \`maximum\`, the amount charged can be up to the value passed for the \`amount\` param.
  , paymentMethodOptionsCardMandateOptionsAmountType :: PaymentMethodOptionsCardMandateOptionsAmountType'
  -- | description: A description of the mandate or subscription that is meant to be displayed to the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , paymentMethodOptionsCardMandateOptionsDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | end_date: End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
  , paymentMethodOptionsCardMandateOptionsEndDate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | interval: Specifies payment frequency. One of \`day\`, \`week\`, \`month\`, \`year\`, or \`sporadic\`.
  , paymentMethodOptionsCardMandateOptionsInterval :: PaymentMethodOptionsCardMandateOptionsInterval'
  -- | interval_count: The number of intervals between payments. For example, \`interval=month\` and \`interval_count=3\` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when \`interval=sporadic\`.
  , paymentMethodOptionsCardMandateOptionsIntervalCount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | reference: Unique identifier for the mandate or subscription.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 80
  , paymentMethodOptionsCardMandateOptionsReference :: Data.Text.Internal.Text
  -- | start_date: Start date of the mandate or subscription. Start date should not be lesser than yesterday.
  , paymentMethodOptionsCardMandateOptionsStartDate :: GHC.Types.Int
  -- | supported_types: Specifies the type of mandates supported. Possible values are \`india\`.
  , paymentMethodOptionsCardMandateOptionsSupportedTypes :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullable])))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCardMandateOptions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardMandateOptionsAmount obj] : ["amount_type" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardMandateOptionsAmountType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardMandateOptionsDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("end_date" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardMandateOptionsEndDate obj) : ["interval" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardMandateOptionsInterval obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_count" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardMandateOptionsIntervalCount obj) : ["reference" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardMandateOptionsReference obj] : ["start_date" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardMandateOptionsStartDate obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("supported_types" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardMandateOptionsSupportedTypes obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardMandateOptionsAmount obj] : ["amount_type" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardMandateOptionsAmountType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardMandateOptionsDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("end_date" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardMandateOptionsEndDate obj) : ["interval" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardMandateOptionsInterval obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_count" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardMandateOptionsIntervalCount obj) : ["reference" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardMandateOptionsReference obj] : ["start_date" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardMandateOptionsStartDate obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("supported_types" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardMandateOptionsSupportedTypes obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCardMandateOptions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsCardMandateOptions" (\obj -> ((((((((GHC.Base.pure PaymentMethodOptionsCardMandateOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "end_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "supported_types"))}
-- | Create a new 'PaymentMethodOptionsCardMandateOptions' with all required fields.
mkPaymentMethodOptionsCardMandateOptions :: GHC.Types.Int -- ^ 'paymentMethodOptionsCardMandateOptionsAmount'
  -> PaymentMethodOptionsCardMandateOptionsAmountType' -- ^ 'paymentMethodOptionsCardMandateOptionsAmountType'
  -> PaymentMethodOptionsCardMandateOptionsInterval' -- ^ 'paymentMethodOptionsCardMandateOptionsInterval'
  -> Data.Text.Internal.Text -- ^ 'paymentMethodOptionsCardMandateOptionsReference'
  -> GHC.Types.Int -- ^ 'paymentMethodOptionsCardMandateOptionsStartDate'
  -> PaymentMethodOptionsCardMandateOptions
mkPaymentMethodOptionsCardMandateOptions paymentMethodOptionsCardMandateOptionsAmount paymentMethodOptionsCardMandateOptionsAmountType paymentMethodOptionsCardMandateOptionsInterval paymentMethodOptionsCardMandateOptionsReference paymentMethodOptionsCardMandateOptionsStartDate = PaymentMethodOptionsCardMandateOptions{paymentMethodOptionsCardMandateOptionsAmount = paymentMethodOptionsCardMandateOptionsAmount,
                                                                                                                                                                                                                                                                                                                               paymentMethodOptionsCardMandateOptionsAmountType = paymentMethodOptionsCardMandateOptionsAmountType,
                                                                                                                                                                                                                                                                                                                               paymentMethodOptionsCardMandateOptionsDescription = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                               paymentMethodOptionsCardMandateOptionsEndDate = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                               paymentMethodOptionsCardMandateOptionsInterval = paymentMethodOptionsCardMandateOptionsInterval,
                                                                                                                                                                                                                                                                                                                               paymentMethodOptionsCardMandateOptionsIntervalCount = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                               paymentMethodOptionsCardMandateOptionsReference = paymentMethodOptionsCardMandateOptionsReference,
                                                                                                                                                                                                                                                                                                                               paymentMethodOptionsCardMandateOptionsStartDate = paymentMethodOptionsCardMandateOptionsStartDate,
                                                                                                                                                                                                                                                                                                                               paymentMethodOptionsCardMandateOptionsSupportedTypes = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_options_card_mandate_options.properties.amount_type@ in the specification.
-- 
-- One of \`fixed\` or \`maximum\`. If \`fixed\`, the \`amount\` param refers to the exact amount to be charged in future payments. If \`maximum\`, the amount charged can be up to the value passed for the \`amount\` param.
data PaymentMethodOptionsCardMandateOptionsAmountType' =
   PaymentMethodOptionsCardMandateOptionsAmountType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodOptionsCardMandateOptionsAmountType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodOptionsCardMandateOptionsAmountType'EnumFixed -- ^ Represents the JSON value @"fixed"@
  | PaymentMethodOptionsCardMandateOptionsAmountType'EnumMaximum -- ^ Represents the JSON value @"maximum"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCardMandateOptionsAmountType'
    where {toJSON (PaymentMethodOptionsCardMandateOptionsAmountType'Other val) = val;
           toJSON (PaymentMethodOptionsCardMandateOptionsAmountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodOptionsCardMandateOptionsAmountType'EnumFixed) = "fixed";
           toJSON (PaymentMethodOptionsCardMandateOptionsAmountType'EnumMaximum) = "maximum"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCardMandateOptionsAmountType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "fixed" -> PaymentMethodOptionsCardMandateOptionsAmountType'EnumFixed
                                             | val GHC.Classes.== "maximum" -> PaymentMethodOptionsCardMandateOptionsAmountType'EnumMaximum
                                             | GHC.Base.otherwise -> PaymentMethodOptionsCardMandateOptionsAmountType'Other val)}
-- | Defines the enum schema located at @components.schemas.payment_method_options_card_mandate_options.properties.interval@ in the specification.
-- 
-- Specifies payment frequency. One of \`day\`, \`week\`, \`month\`, \`year\`, or \`sporadic\`.
data PaymentMethodOptionsCardMandateOptionsInterval' =
   PaymentMethodOptionsCardMandateOptionsInterval'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodOptionsCardMandateOptionsInterval'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodOptionsCardMandateOptionsInterval'EnumDay -- ^ Represents the JSON value @"day"@
  | PaymentMethodOptionsCardMandateOptionsInterval'EnumMonth -- ^ Represents the JSON value @"month"@
  | PaymentMethodOptionsCardMandateOptionsInterval'EnumSporadic -- ^ Represents the JSON value @"sporadic"@
  | PaymentMethodOptionsCardMandateOptionsInterval'EnumWeek -- ^ Represents the JSON value @"week"@
  | PaymentMethodOptionsCardMandateOptionsInterval'EnumYear -- ^ Represents the JSON value @"year"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCardMandateOptionsInterval'
    where {toJSON (PaymentMethodOptionsCardMandateOptionsInterval'Other val) = val;
           toJSON (PaymentMethodOptionsCardMandateOptionsInterval'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodOptionsCardMandateOptionsInterval'EnumDay) = "day";
           toJSON (PaymentMethodOptionsCardMandateOptionsInterval'EnumMonth) = "month";
           toJSON (PaymentMethodOptionsCardMandateOptionsInterval'EnumSporadic) = "sporadic";
           toJSON (PaymentMethodOptionsCardMandateOptionsInterval'EnumWeek) = "week";
           toJSON (PaymentMethodOptionsCardMandateOptionsInterval'EnumYear) = "year"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCardMandateOptionsInterval'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "day" -> PaymentMethodOptionsCardMandateOptionsInterval'EnumDay
                                             | val GHC.Classes.== "month" -> PaymentMethodOptionsCardMandateOptionsInterval'EnumMonth
                                             | val GHC.Classes.== "sporadic" -> PaymentMethodOptionsCardMandateOptionsInterval'EnumSporadic
                                             | val GHC.Classes.== "week" -> PaymentMethodOptionsCardMandateOptionsInterval'EnumWeek
                                             | val GHC.Classes.== "year" -> PaymentMethodOptionsCardMandateOptionsInterval'EnumYear
                                             | GHC.Base.otherwise -> PaymentMethodOptionsCardMandateOptionsInterval'Other val)}
-- | Defines the enum schema located at @components.schemas.payment_method_options_card_mandate_options.properties.supported_types.items@ in the specification.
-- 
-- 
data PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullable =
   PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableEnumIndia -- ^ Represents the JSON value @"india"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullable
    where {toJSON (PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableOther val) = val;
           toJSON (PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableEnumIndia) = "india"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "india" -> PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableEnumIndia
                                             | GHC.Base.otherwise -> PaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableOther val)}
