-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodDetailsCardInstallmentsPlan
module StripeAPI.Types.PaymentMethodDetailsCardInstallmentsPlan where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_card_installments_plan@ in the specification.
-- 
-- 
data PaymentMethodDetailsCardInstallmentsPlan = PaymentMethodDetailsCardInstallmentsPlan {
  -- | count: For \`fixed_count\` installment plans, this is the number of installment payments your customer will make to their credit card.
  paymentMethodDetailsCardInstallmentsPlanCount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | interval: For \`fixed_count\` installment plans, this is the interval between installment payments your customer will make to their credit card.
  -- One of \`month\`.
  , paymentMethodDetailsCardInstallmentsPlanInterval :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardInstallmentsPlan
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("count" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlanCount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlanInterval obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fixed_count"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("count" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlanCount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardInstallmentsPlanInterval obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fixed_count"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallmentsPlan
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardInstallmentsPlan" (\obj -> (GHC.Base.pure PaymentMethodDetailsCardInstallmentsPlan GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval"))}
-- | Create a new 'PaymentMethodDetailsCardInstallmentsPlan' with all required fields.
mkPaymentMethodDetailsCardInstallmentsPlan :: PaymentMethodDetailsCardInstallmentsPlan
mkPaymentMethodDetailsCardInstallmentsPlan = PaymentMethodDetailsCardInstallmentsPlan{paymentMethodDetailsCardInstallmentsPlanCount = GHC.Maybe.Nothing,
                                                                                      paymentMethodDetailsCardInstallmentsPlanInterval = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_details_card_installments_plan.properties.interval@ in the specification.
-- 
-- For \`fixed_count\` installment plans, this is the interval between installment payments your customer will make to their credit card.
-- One of \`month\`.
data PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullable =
   PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullableEnumMonth -- ^ Represents the JSON value @"month"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullable
    where {toJSON (PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullableOther val) = val;
           toJSON (PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullableEnumMonth) = "month"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "month" -> PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullableEnumMonth
                                             | GHC.Base.otherwise -> PaymentMethodDetailsCardInstallmentsPlanInterval'NonNullableOther val)}
