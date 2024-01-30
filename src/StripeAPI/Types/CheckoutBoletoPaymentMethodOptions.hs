-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CheckoutBoletoPaymentMethodOptions
module StripeAPI.Types.CheckoutBoletoPaymentMethodOptions where

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

-- | Defines the object schema located at @components.schemas.checkout_boleto_payment_method_options@ in the specification.
-- 
-- 
data CheckoutBoletoPaymentMethodOptions = CheckoutBoletoPaymentMethodOptions {
  -- | expires_after_days: The number of calendar days before a Boleto voucher expires. For example, if you create a Boleto voucher on Monday and you set expires_after_days to 2, the Boleto voucher will expire on Wednesday at 23:59 America\/Sao_Paulo time.
  checkoutBoletoPaymentMethodOptionsExpiresAfterDays :: GHC.Types.Int
  -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
  -- 
  -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
  -- 
  -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
  , checkoutBoletoPaymentMethodOptionsSetupFutureUsage :: (GHC.Maybe.Maybe CheckoutBoletoPaymentMethodOptionsSetupFutureUsage')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutBoletoPaymentMethodOptions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["expires_after_days" Data.Aeson.Types.ToJSON..= checkoutBoletoPaymentMethodOptionsExpiresAfterDays obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (checkoutBoletoPaymentMethodOptionsSetupFutureUsage obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["expires_after_days" Data.Aeson.Types.ToJSON..= checkoutBoletoPaymentMethodOptionsExpiresAfterDays obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (checkoutBoletoPaymentMethodOptionsSetupFutureUsage obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutBoletoPaymentMethodOptions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CheckoutBoletoPaymentMethodOptions" (\obj -> (GHC.Base.pure CheckoutBoletoPaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires_after_days")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))}
-- | Create a new 'CheckoutBoletoPaymentMethodOptions' with all required fields.
mkCheckoutBoletoPaymentMethodOptions :: GHC.Types.Int -- ^ 'checkoutBoletoPaymentMethodOptionsExpiresAfterDays'
  -> CheckoutBoletoPaymentMethodOptions
mkCheckoutBoletoPaymentMethodOptions checkoutBoletoPaymentMethodOptionsExpiresAfterDays = CheckoutBoletoPaymentMethodOptions{checkoutBoletoPaymentMethodOptionsExpiresAfterDays = checkoutBoletoPaymentMethodOptionsExpiresAfterDays,
                                                                                                                             checkoutBoletoPaymentMethodOptionsSetupFutureUsage = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.checkout_boleto_payment_method_options.properties.setup_future_usage@ in the specification.
-- 
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
-- 
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
-- 
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data CheckoutBoletoPaymentMethodOptionsSetupFutureUsage' =
   CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'EnumNone -- ^ Represents the JSON value @"none"@
  | CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'EnumOffSession -- ^ Represents the JSON value @"off_session"@
  | CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'EnumOnSession -- ^ Represents the JSON value @"on_session"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'
    where {toJSON (CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'Other val) = val;
           toJSON (CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'EnumNone) = "none";
           toJSON (CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'EnumOffSession) = "off_session";
           toJSON (CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'EnumOnSession) = "on_session"}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "none" -> CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'EnumNone
                                             | val GHC.Classes.== "off_session" -> CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'EnumOffSession
                                             | val GHC.Classes.== "on_session" -> CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'EnumOnSession
                                             | GHC.Base.otherwise -> CheckoutBoletoPaymentMethodOptionsSetupFutureUsage'Other val)}
