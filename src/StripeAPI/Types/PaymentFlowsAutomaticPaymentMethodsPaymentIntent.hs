-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentFlowsAutomaticPaymentMethodsPaymentIntent
module StripeAPI.Types.PaymentFlowsAutomaticPaymentMethodsPaymentIntent where

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

-- | Defines the object schema located at @components.schemas.payment_flows_automatic_payment_methods_payment_intent@ in the specification.
-- 
-- 
data PaymentFlowsAutomaticPaymentMethodsPaymentIntent = PaymentFlowsAutomaticPaymentMethodsPaymentIntent {
  -- | allow_redirects: Controls whether this PaymentIntent will accept redirect-based payment methods.
  -- 
  -- Redirect-based payment methods may require your customer to be redirected to a payment method\'s app or site for authentication or additional steps. To [confirm](https:\/\/stripe.com\/docs\/api\/payment_intents\/confirm) this PaymentIntent, you may be required to provide a \`return_url\` to redirect customers back to your site after they authenticate or complete the payment.
  paymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects :: (GHC.Maybe.Maybe PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects')
  -- | enabled: Automatically calculates compatible payment methods
  , paymentFlowsAutomaticPaymentMethodsPaymentIntentEnabled :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentFlowsAutomaticPaymentMethodsPaymentIntent
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allow_redirects" Data.Aeson.Types.ToJSON..=)) (paymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects obj) : ["enabled" Data.Aeson.Types.ToJSON..= paymentFlowsAutomaticPaymentMethodsPaymentIntentEnabled obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("allow_redirects" Data.Aeson.Types.ToJSON..=)) (paymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects obj) : ["enabled" Data.Aeson.Types.ToJSON..= paymentFlowsAutomaticPaymentMethodsPaymentIntentEnabled obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentFlowsAutomaticPaymentMethodsPaymentIntent
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentFlowsAutomaticPaymentMethodsPaymentIntent" (\obj -> (GHC.Base.pure PaymentFlowsAutomaticPaymentMethodsPaymentIntent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "allow_redirects")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled"))}
-- | Create a new 'PaymentFlowsAutomaticPaymentMethodsPaymentIntent' with all required fields.
mkPaymentFlowsAutomaticPaymentMethodsPaymentIntent :: GHC.Types.Bool -- ^ 'paymentFlowsAutomaticPaymentMethodsPaymentIntentEnabled'
  -> PaymentFlowsAutomaticPaymentMethodsPaymentIntent
mkPaymentFlowsAutomaticPaymentMethodsPaymentIntent paymentFlowsAutomaticPaymentMethodsPaymentIntentEnabled = PaymentFlowsAutomaticPaymentMethodsPaymentIntent{paymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects = GHC.Maybe.Nothing,
                                                                                                                                                              paymentFlowsAutomaticPaymentMethodsPaymentIntentEnabled = paymentFlowsAutomaticPaymentMethodsPaymentIntentEnabled}
-- | Defines the enum schema located at @components.schemas.payment_flows_automatic_payment_methods_payment_intent.properties.allow_redirects@ in the specification.
-- 
-- Controls whether this PaymentIntent will accept redirect-based payment methods.
-- 
-- Redirect-based payment methods may require your customer to be redirected to a payment method\'s app or site for authentication or additional steps. To [confirm](https:\/\/stripe.com\/docs\/api\/payment_intents\/confirm) this PaymentIntent, you may be required to provide a \`return_url\` to redirect customers back to your site after they authenticate or complete the payment.
data PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects' =
   PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'EnumAlways -- ^ Represents the JSON value @"always"@
  | PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'EnumNever -- ^ Represents the JSON value @"never"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'
    where {toJSON (PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'Other val) = val;
           toJSON (PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'EnumAlways) = "always";
           toJSON (PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'EnumNever) = "never"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "always" -> PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'EnumAlways
                                             | val GHC.Classes.== "never" -> PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'EnumNever
                                             | GHC.Base.otherwise -> PaymentFlowsAutomaticPaymentMethodsPaymentIntentAllowRedirects'Other val)}
