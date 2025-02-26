-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodOptionsCashapp
module StripeAPI.Types.PaymentMethodOptionsCashapp where

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

-- | Defines the object schema located at @components.schemas.payment_method_options_cashapp@ in the specification.
-- 
-- 
data PaymentMethodOptionsCashapp = PaymentMethodOptionsCashapp {
  -- | capture_method: Controls when the funds will be captured from the customer\'s account.
  paymentMethodOptionsCashappCaptureMethod :: (GHC.Maybe.Maybe PaymentMethodOptionsCashappCaptureMethod')
  -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
  -- 
  -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
  -- 
  -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
  , paymentMethodOptionsCashappSetupFutureUsage :: (GHC.Maybe.Maybe PaymentMethodOptionsCashappSetupFutureUsage')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCashapp
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("capture_method" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCashappCaptureMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCashappSetupFutureUsage obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("capture_method" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCashappCaptureMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentMethodOptionsCashappSetupFutureUsage obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCashapp
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsCashapp" (\obj -> (GHC.Base.pure PaymentMethodOptionsCashapp GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "capture_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))}
-- | Create a new 'PaymentMethodOptionsCashapp' with all required fields.
mkPaymentMethodOptionsCashapp :: PaymentMethodOptionsCashapp
mkPaymentMethodOptionsCashapp = PaymentMethodOptionsCashapp{paymentMethodOptionsCashappCaptureMethod = GHC.Maybe.Nothing,
                                                            paymentMethodOptionsCashappSetupFutureUsage = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_options_cashapp.properties.capture_method@ in the specification.
-- 
-- Controls when the funds will be captured from the customer\'s account.
data PaymentMethodOptionsCashappCaptureMethod' =
   PaymentMethodOptionsCashappCaptureMethod'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodOptionsCashappCaptureMethod'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodOptionsCashappCaptureMethod'EnumManual -- ^ Represents the JSON value @"manual"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCashappCaptureMethod'
    where {toJSON (PaymentMethodOptionsCashappCaptureMethod'Other val) = val;
           toJSON (PaymentMethodOptionsCashappCaptureMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodOptionsCashappCaptureMethod'EnumManual) = "manual"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCashappCaptureMethod'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "manual" -> PaymentMethodOptionsCashappCaptureMethod'EnumManual
                                             | GHC.Base.otherwise -> PaymentMethodOptionsCashappCaptureMethod'Other val)}
-- | Defines the enum schema located at @components.schemas.payment_method_options_cashapp.properties.setup_future_usage@ in the specification.
-- 
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
-- 
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
-- 
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data PaymentMethodOptionsCashappSetupFutureUsage' =
   PaymentMethodOptionsCashappSetupFutureUsage'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodOptionsCashappSetupFutureUsage'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodOptionsCashappSetupFutureUsage'EnumNone -- ^ Represents the JSON value @"none"@
  | PaymentMethodOptionsCashappSetupFutureUsage'EnumOffSession -- ^ Represents the JSON value @"off_session"@
  | PaymentMethodOptionsCashappSetupFutureUsage'EnumOnSession -- ^ Represents the JSON value @"on_session"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCashappSetupFutureUsage'
    where {toJSON (PaymentMethodOptionsCashappSetupFutureUsage'Other val) = val;
           toJSON (PaymentMethodOptionsCashappSetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodOptionsCashappSetupFutureUsage'EnumNone) = "none";
           toJSON (PaymentMethodOptionsCashappSetupFutureUsage'EnumOffSession) = "off_session";
           toJSON (PaymentMethodOptionsCashappSetupFutureUsage'EnumOnSession) = "on_session"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCashappSetupFutureUsage'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "none" -> PaymentMethodOptionsCashappSetupFutureUsage'EnumNone
                                             | val GHC.Classes.== "off_session" -> PaymentMethodOptionsCashappSetupFutureUsage'EnumOffSession
                                             | val GHC.Classes.== "on_session" -> PaymentMethodOptionsCashappSetupFutureUsage'EnumOnSession
                                             | GHC.Base.otherwise -> PaymentMethodOptionsCashappSetupFutureUsage'Other val)}
