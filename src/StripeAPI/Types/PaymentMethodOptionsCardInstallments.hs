-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodOptionsCardInstallments
module StripeAPI.Types.PaymentMethodOptionsCardInstallments where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardInstallmentsPlan

-- | Defines the object schema located at @components.schemas.payment_method_options_card_installments@ in the specification.
-- 
-- 
data PaymentMethodOptionsCardInstallments = PaymentMethodOptionsCardInstallments {
  -- | available_plans: Installment plans that may be selected for this PaymentIntent.
  paymentMethodOptionsCardInstallmentsAvailablePlans :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([PaymentMethodDetailsCardInstallmentsPlan])))
  -- | enabled: Whether Installments are enabled for this PaymentIntent.
  , paymentMethodOptionsCardInstallmentsEnabled :: GHC.Types.Bool
  -- | plan: Installment plan selected for this PaymentIntent.
  , paymentMethodOptionsCardInstallmentsPlan :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodOptionsCardInstallmentsPlan'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCardInstallments
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("available_plans" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardInstallmentsAvailablePlans obj) : ["enabled" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardInstallmentsEnabled obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("plan" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardInstallmentsPlan obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("available_plans" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardInstallmentsAvailablePlans obj) : ["enabled" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCardInstallmentsEnabled obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("plan" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardInstallmentsPlan obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCardInstallments
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsCardInstallments" (\obj -> ((GHC.Base.pure PaymentMethodOptionsCardInstallments GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "available_plans")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "plan"))}
-- | Create a new 'PaymentMethodOptionsCardInstallments' with all required fields.
mkPaymentMethodOptionsCardInstallments :: GHC.Types.Bool -- ^ 'paymentMethodOptionsCardInstallmentsEnabled'
  -> PaymentMethodOptionsCardInstallments
mkPaymentMethodOptionsCardInstallments paymentMethodOptionsCardInstallmentsEnabled = PaymentMethodOptionsCardInstallments{paymentMethodOptionsCardInstallmentsAvailablePlans = GHC.Maybe.Nothing,
                                                                                                                          paymentMethodOptionsCardInstallmentsEnabled = paymentMethodOptionsCardInstallmentsEnabled,
                                                                                                                          paymentMethodOptionsCardInstallmentsPlan = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.payment_method_options_card_installments.properties.plan.anyOf@ in the specification.
-- 
-- Installment plan selected for this PaymentIntent.
data PaymentMethodOptionsCardInstallmentsPlan'NonNullable = PaymentMethodOptionsCardInstallmentsPlan'NonNullable {
  -- | count: For \`fixed_count\` installment plans, this is the number of installment payments your customer will make to their credit card.
  paymentMethodOptionsCardInstallmentsPlan'NonNullableCount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | interval: For \`fixed_count\` installment plans, this is the interval between installment payments your customer will make to their credit card.
  -- One of \`month\`.
  , paymentMethodOptionsCardInstallmentsPlan'NonNullableInterval :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullable))
  -- | type: Type of installment plan, one of \`fixed_count\`.
  , paymentMethodOptionsCardInstallmentsPlan'NonNullableType :: (GHC.Maybe.Maybe PaymentMethodOptionsCardInstallmentsPlan'NonNullableType')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCardInstallmentsPlan'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("count" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardInstallmentsPlan'NonNullableCount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardInstallmentsPlan'NonNullableInterval obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardInstallmentsPlan'NonNullableType obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("count" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardInstallmentsPlan'NonNullableCount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardInstallmentsPlan'NonNullableInterval obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCardInstallmentsPlan'NonNullableType obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCardInstallmentsPlan'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsCardInstallmentsPlan'NonNullable" (\obj -> ((GHC.Base.pure PaymentMethodOptionsCardInstallmentsPlan'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))}
-- | Create a new 'PaymentMethodOptionsCardInstallmentsPlan'NonNullable' with all required fields.
mkPaymentMethodOptionsCardInstallmentsPlan'NonNullable :: PaymentMethodOptionsCardInstallmentsPlan'NonNullable
mkPaymentMethodOptionsCardInstallmentsPlan'NonNullable = PaymentMethodOptionsCardInstallmentsPlan'NonNullable{paymentMethodOptionsCardInstallmentsPlan'NonNullableCount = GHC.Maybe.Nothing,
                                                                                                              paymentMethodOptionsCardInstallmentsPlan'NonNullableInterval = GHC.Maybe.Nothing,
                                                                                                              paymentMethodOptionsCardInstallmentsPlan'NonNullableType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_options_card_installments.properties.plan.anyOf.properties.interval@ in the specification.
-- 
-- For \`fixed_count\` installment plans, this is the interval between installment payments your customer will make to their credit card.
-- One of \`month\`.
data PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullable =
   PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullableEnumMonth -- ^ Represents the JSON value @"month"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullable
    where {toJSON (PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullableOther val) = val;
           toJSON (PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullableEnumMonth) = "month"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "month" -> PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullableEnumMonth
                                             | GHC.Base.otherwise -> PaymentMethodOptionsCardInstallmentsPlan'NonNullableInterval'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.payment_method_options_card_installments.properties.plan.anyOf.properties.type@ in the specification.
-- 
-- Type of installment plan, one of \`fixed_count\`.
data PaymentMethodOptionsCardInstallmentsPlan'NonNullableType' =
   PaymentMethodOptionsCardInstallmentsPlan'NonNullableType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodOptionsCardInstallmentsPlan'NonNullableType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodOptionsCardInstallmentsPlan'NonNullableType'EnumFixedCount -- ^ Represents the JSON value @"fixed_count"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCardInstallmentsPlan'NonNullableType'
    where {toJSON (PaymentMethodOptionsCardInstallmentsPlan'NonNullableType'Other val) = val;
           toJSON (PaymentMethodOptionsCardInstallmentsPlan'NonNullableType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodOptionsCardInstallmentsPlan'NonNullableType'EnumFixedCount) = "fixed_count"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCardInstallmentsPlan'NonNullableType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "fixed_count" -> PaymentMethodOptionsCardInstallmentsPlan'NonNullableType'EnumFixedCount
                                             | GHC.Base.otherwise -> PaymentMethodOptionsCardInstallmentsPlan'NonNullableType'Other val)}
