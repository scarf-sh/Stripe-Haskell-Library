-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture
module StripeAPI.Types.PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture where

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

-- | Defines the object schema located at @components.schemas.payment_flows_private_payment_methods_card_details_api_resource_multicapture@ in the specification.
-- 
-- 
data PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture = PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture {
  -- | status: Indicates whether or not multiple captures are supported.
  paymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus :: PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["status" Data.Aeson.Types.ToJSON..= paymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["status" Data.Aeson.Types.ToJSON..= paymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture" (\obj -> GHC.Base.pure PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))}
-- | Create a new 'PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture' with all required fields.
mkPaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture :: PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus' -- ^ 'paymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'
  -> PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture
mkPaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture paymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus = PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture{paymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus = paymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus}
-- | Defines the enum schema located at @components.schemas.payment_flows_private_payment_methods_card_details_api_resource_multicapture.properties.status@ in the specification.
-- 
-- Indicates whether or not multiple captures are supported.
data PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus' =
   PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'EnumAvailable -- ^ Represents the JSON value @"available"@
  | PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'EnumUnavailable -- ^ Represents the JSON value @"unavailable"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'
    where {toJSON (PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'Other val) = val;
           toJSON (PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'EnumAvailable) = "available";
           toJSON (PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'EnumUnavailable) = "unavailable"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "available" -> PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'EnumAvailable
                                             | val GHC.Classes.== "unavailable" -> PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'EnumUnavailable
                                             | GHC.Base.otherwise -> PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticaptureStatus'Other val)}
