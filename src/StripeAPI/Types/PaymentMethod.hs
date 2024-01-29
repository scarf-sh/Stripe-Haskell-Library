{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethod
module StripeAPI.Types.PaymentMethod where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import {-# SOURCE #-} StripeAPI.Types.BillingDetails
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodAcssDebit
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodAuBecsDebit
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodBacsDebit
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodBoleto
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodCard
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodEps
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodFpx
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodIdeal
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodKlarna
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodLink
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodP24
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodSepaDebit
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodSofort
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodUsBankAccount
import {-# SOURCE #-} StripeAPI.Types.RadarRadarOptions
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method@ in the specification.
--
-- PaymentMethod objects represent your customer\'s payment instruments.
-- You can use them with [PaymentIntents](https:\/\/stripe.com\/docs\/payments\/payment-intents) to collect payments or save them to
-- Customer objects to store instrument details for future payments.
--
-- Related guides: [Payment Methods](https:\/\/stripe.com\/docs\/payments\/payment-methods) and [More Payment Scenarios](https:\/\/stripe.com\/docs\/payments\/more-payment-scenarios).
data PaymentMethod = PaymentMethod
  { -- | acss_debit:
    paymentMethodAcssDebit :: (GHC.Maybe.Maybe PaymentMethodAcssDebit),
    -- | affirm:
    paymentMethodAffirm :: (GHC.Maybe.Maybe PaymentMethodAffirm),
    -- | afterpay_clearpay:
    paymentMethodAfterpayClearpay :: (GHC.Maybe.Maybe PaymentMethodAfterpayClearpay),
    -- | alipay:
    paymentMethodAlipay :: (GHC.Maybe.Maybe PaymentFlowsPrivatePaymentMethodsAlipay),
    -- | au_becs_debit:
    paymentMethodAuBecsDebit :: (GHC.Maybe.Maybe PaymentMethodAuBecsDebit),
    -- | bacs_debit:
    paymentMethodBacsDebit :: (GHC.Maybe.Maybe PaymentMethodBacsDebit),
    -- | bancontact:
    paymentMethodBancontact :: (GHC.Maybe.Maybe PaymentMethodBancontact),
    -- | billing_details:
    paymentMethodBillingDetails :: BillingDetails,
    -- | boleto:
    paymentMethodBoleto :: (GHC.Maybe.Maybe PaymentMethodBoleto),
    -- | card:
    paymentMethodCard :: (GHC.Maybe.Maybe PaymentMethodCard),
    -- | card_present:
    paymentMethodCardPresent :: (GHC.Maybe.Maybe PaymentMethodCardPresent),
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    paymentMethodCreated :: GHC.Types.Int,
    -- | customer: The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
    paymentMethodCustomer :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCustomer'NonNullableVariants)),
    -- | customer_balance:
    paymentMethodCustomerBalance :: (GHC.Maybe.Maybe PaymentMethodCustomerBalance),
    -- | eps:
    paymentMethodEps :: (GHC.Maybe.Maybe PaymentMethodEps),
    -- | fpx:
    paymentMethodFpx :: (GHC.Maybe.Maybe PaymentMethodFpx),
    -- | giropay:
    paymentMethodGiropay :: (GHC.Maybe.Maybe PaymentMethodGiropay),
    -- | grabpay:
    paymentMethodGrabpay :: (GHC.Maybe.Maybe PaymentMethodGrabpay),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodId :: Data.Text.Internal.Text,
    -- | ideal:
    paymentMethodIdeal :: (GHC.Maybe.Maybe PaymentMethodIdeal),
    -- | interac_present:
    paymentMethodInteracPresent :: (GHC.Maybe.Maybe PaymentMethodInteracPresent),
    -- | klarna:
    paymentMethodKlarna :: (GHC.Maybe.Maybe PaymentMethodKlarna),
    -- | konbini:
    paymentMethodKonbini :: (GHC.Maybe.Maybe PaymentMethodKonbini),
    -- | link:
    paymentMethodLink :: (GHC.Maybe.Maybe PaymentMethodLink),
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    paymentMethodLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    paymentMethodMetadata :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object)),
    -- | oxxo:
    paymentMethodOxxo :: (GHC.Maybe.Maybe PaymentMethodOxxo),
    -- | p24:
    paymentMethodP24 :: (GHC.Maybe.Maybe PaymentMethodP24),
    -- | paynow:
    paymentMethodPaynow :: (GHC.Maybe.Maybe PaymentMethodPaynow),
    -- | promptpay:
    paymentMethodPromptpay :: (GHC.Maybe.Maybe PaymentMethodPromptpay),
    -- | radar_options: Options to configure Radar. See [Radar Session](https:\/\/stripe.com\/docs\/radar\/radar-session) for more information.
    paymentMethodRadarOptions :: (GHC.Maybe.Maybe RadarRadarOptions),
    -- | sepa_debit:
    paymentMethodSepaDebit :: (GHC.Maybe.Maybe PaymentMethodSepaDebit),
    -- | sofort:
    paymentMethodSofort :: (GHC.Maybe.Maybe PaymentMethodSofort),
    -- | type: The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
    paymentMethodType :: PaymentMethodType',
    -- | us_bank_account:
    paymentMethodUsBankAccount :: (GHC.Maybe.Maybe PaymentMethodUsBankAccount),
    -- | wechat_pay:
    paymentMethodWechatPay :: (GHC.Maybe.Maybe PaymentMethodWechatPay)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethod where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (paymentMethodAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("affirm" Data.Aeson.Types.ToJSON..=)) (paymentMethodAffirm obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("afterpay_clearpay" Data.Aeson.Types.ToJSON..=)) (paymentMethodAfterpayClearpay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alipay" Data.Aeson.Types.ToJSON..=)) (paymentMethodAlipay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("au_becs_debit" Data.Aeson.Types.ToJSON..=)) (paymentMethodAuBecsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bacs_debit" Data.Aeson.Types.ToJSON..=)) (paymentMethodBacsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bancontact" Data.Aeson.Types.ToJSON..=)) (paymentMethodBancontact obj) : ["billing_details" Data.Aeson.Types.ToJSON..= paymentMethodBillingDetails obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("boleto" Data.Aeson.Types.ToJSON..=)) (paymentMethodBoleto obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (paymentMethodCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_present" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardPresent obj) : ["created" Data.Aeson.Types.ToJSON..= paymentMethodCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (paymentMethodCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_balance" Data.Aeson.Types.ToJSON..=)) (paymentMethodCustomerBalance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("eps" Data.Aeson.Types.ToJSON..=)) (paymentMethodEps obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fpx" Data.Aeson.Types.ToJSON..=)) (paymentMethodFpx obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("giropay" Data.Aeson.Types.ToJSON..=)) (paymentMethodGiropay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("grabpay" Data.Aeson.Types.ToJSON..=)) (paymentMethodGrabpay obj) : ["id" Data.Aeson.Types.ToJSON..= paymentMethodId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ideal" Data.Aeson.Types.ToJSON..=)) (paymentMethodIdeal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interac_present" Data.Aeson.Types.ToJSON..=)) (paymentMethodInteracPresent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("klarna" Data.Aeson.Types.ToJSON..=)) (paymentMethodKlarna obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("konbini" Data.Aeson.Types.ToJSON..=)) (paymentMethodKonbini obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (paymentMethodLink obj) : ["livemode" Data.Aeson.Types.ToJSON..= paymentMethodLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (paymentMethodMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oxxo" Data.Aeson.Types.ToJSON..=)) (paymentMethodOxxo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("p24" Data.Aeson.Types.ToJSON..=)) (paymentMethodP24 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paynow" Data.Aeson.Types.ToJSON..=)) (paymentMethodPaynow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promptpay" Data.Aeson.Types.ToJSON..=)) (paymentMethodPromptpay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("radar_options" Data.Aeson.Types.ToJSON..=)) (paymentMethodRadarOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sepa_debit" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sofort" Data.Aeson.Types.ToJSON..=)) (paymentMethodSofort obj) : ["type" Data.Aeson.Types.ToJSON..= paymentMethodType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wechat_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodWechatPay obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "payment_method"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (paymentMethodAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("affirm" Data.Aeson.Types.ToJSON..=)) (paymentMethodAffirm obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("afterpay_clearpay" Data.Aeson.Types.ToJSON..=)) (paymentMethodAfterpayClearpay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alipay" Data.Aeson.Types.ToJSON..=)) (paymentMethodAlipay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("au_becs_debit" Data.Aeson.Types.ToJSON..=)) (paymentMethodAuBecsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bacs_debit" Data.Aeson.Types.ToJSON..=)) (paymentMethodBacsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bancontact" Data.Aeson.Types.ToJSON..=)) (paymentMethodBancontact obj) : ["billing_details" Data.Aeson.Types.ToJSON..= paymentMethodBillingDetails obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("boleto" Data.Aeson.Types.ToJSON..=)) (paymentMethodBoleto obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (paymentMethodCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_present" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardPresent obj) : ["created" Data.Aeson.Types.ToJSON..= paymentMethodCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (paymentMethodCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_balance" Data.Aeson.Types.ToJSON..=)) (paymentMethodCustomerBalance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("eps" Data.Aeson.Types.ToJSON..=)) (paymentMethodEps obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fpx" Data.Aeson.Types.ToJSON..=)) (paymentMethodFpx obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("giropay" Data.Aeson.Types.ToJSON..=)) (paymentMethodGiropay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("grabpay" Data.Aeson.Types.ToJSON..=)) (paymentMethodGrabpay obj) : ["id" Data.Aeson.Types.ToJSON..= paymentMethodId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ideal" Data.Aeson.Types.ToJSON..=)) (paymentMethodIdeal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interac_present" Data.Aeson.Types.ToJSON..=)) (paymentMethodInteracPresent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("klarna" Data.Aeson.Types.ToJSON..=)) (paymentMethodKlarna obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("konbini" Data.Aeson.Types.ToJSON..=)) (paymentMethodKonbini obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (paymentMethodLink obj) : ["livemode" Data.Aeson.Types.ToJSON..= paymentMethodLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (paymentMethodMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oxxo" Data.Aeson.Types.ToJSON..=)) (paymentMethodOxxo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("p24" Data.Aeson.Types.ToJSON..=)) (paymentMethodP24 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paynow" Data.Aeson.Types.ToJSON..=)) (paymentMethodPaynow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("promptpay" Data.Aeson.Types.ToJSON..=)) (paymentMethodPromptpay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("radar_options" Data.Aeson.Types.ToJSON..=)) (paymentMethodRadarOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sepa_debit" Data.Aeson.Types.ToJSON..=)) (paymentMethodSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sofort" Data.Aeson.Types.ToJSON..=)) (paymentMethodSofort obj) : ["type" Data.Aeson.Types.ToJSON..= paymentMethodType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wechat_pay" Data.Aeson.Types.ToJSON..=)) (paymentMethodWechatPay obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "payment_method"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethod where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethod" (\obj -> (((((((((((((((((((((((((((((((((((GHC.Base.pure PaymentMethod GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "acss_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "affirm")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "afterpay_clearpay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alipay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "au_becs_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bacs_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "billing_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "boleto")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer_balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "eps")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fpx")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "giropay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "grabpay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interac_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "konbini")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "link")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "oxxo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "p24")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "paynow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "promptpay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "radar_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "wechat_pay"))

-- | Create a new 'PaymentMethod' with all required fields.
mkPaymentMethod ::
  -- | 'paymentMethodBillingDetails'
  BillingDetails ->
  -- | 'paymentMethodCreated'
  GHC.Types.Int ->
  -- | 'paymentMethodId'
  Data.Text.Internal.Text ->
  -- | 'paymentMethodLivemode'
  GHC.Types.Bool ->
  -- | 'paymentMethodType'
  PaymentMethodType' ->
  PaymentMethod
mkPaymentMethod paymentMethodBillingDetails paymentMethodCreated paymentMethodId paymentMethodLivemode paymentMethodType =
  PaymentMethod
    { paymentMethodAcssDebit = GHC.Maybe.Nothing,
      paymentMethodAffirm = GHC.Maybe.Nothing,
      paymentMethodAfterpayClearpay = GHC.Maybe.Nothing,
      paymentMethodAlipay = GHC.Maybe.Nothing,
      paymentMethodAuBecsDebit = GHC.Maybe.Nothing,
      paymentMethodBacsDebit = GHC.Maybe.Nothing,
      paymentMethodBancontact = GHC.Maybe.Nothing,
      paymentMethodBillingDetails = paymentMethodBillingDetails,
      paymentMethodBoleto = GHC.Maybe.Nothing,
      paymentMethodCard = GHC.Maybe.Nothing,
      paymentMethodCardPresent = GHC.Maybe.Nothing,
      paymentMethodCreated = paymentMethodCreated,
      paymentMethodCustomer = GHC.Maybe.Nothing,
      paymentMethodCustomerBalance = GHC.Maybe.Nothing,
      paymentMethodEps = GHC.Maybe.Nothing,
      paymentMethodFpx = GHC.Maybe.Nothing,
      paymentMethodGiropay = GHC.Maybe.Nothing,
      paymentMethodGrabpay = GHC.Maybe.Nothing,
      paymentMethodId = paymentMethodId,
      paymentMethodIdeal = GHC.Maybe.Nothing,
      paymentMethodInteracPresent = GHC.Maybe.Nothing,
      paymentMethodKlarna = GHC.Maybe.Nothing,
      paymentMethodKonbini = GHC.Maybe.Nothing,
      paymentMethodLink = GHC.Maybe.Nothing,
      paymentMethodLivemode = paymentMethodLivemode,
      paymentMethodMetadata = GHC.Maybe.Nothing,
      paymentMethodOxxo = GHC.Maybe.Nothing,
      paymentMethodP24 = GHC.Maybe.Nothing,
      paymentMethodPaynow = GHC.Maybe.Nothing,
      paymentMethodPromptpay = GHC.Maybe.Nothing,
      paymentMethodRadarOptions = GHC.Maybe.Nothing,
      paymentMethodSepaDebit = GHC.Maybe.Nothing,
      paymentMethodSofort = GHC.Maybe.Nothing,
      paymentMethodType = paymentMethodType,
      paymentMethodUsBankAccount = GHC.Maybe.Nothing,
      paymentMethodWechatPay = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.payment_method.properties.customer.anyOf@ in the specification.
--
-- The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
data PaymentMethodCustomer'NonNullableVariants
  = PaymentMethodCustomer'NonNullableText Data.Text.Internal.Text
  | PaymentMethodCustomer'NonNullableCustomer Customer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCustomer'NonNullableVariants where
  toJSON (PaymentMethodCustomer'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PaymentMethodCustomer'NonNullableCustomer a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCustomer'NonNullableVariants where
  parseJSON val = case (PaymentMethodCustomer'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PaymentMethodCustomer'NonNullableCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.payment_method.properties.type@ in the specification.
--
-- The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
data PaymentMethodType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"acss_debit"@
    PaymentMethodType'EnumAcssDebit
  | -- | Represents the JSON value @"affirm"@
    PaymentMethodType'EnumAffirm
  | -- | Represents the JSON value @"afterpay_clearpay"@
    PaymentMethodType'EnumAfterpayClearpay
  | -- | Represents the JSON value @"alipay"@
    PaymentMethodType'EnumAlipay
  | -- | Represents the JSON value @"au_becs_debit"@
    PaymentMethodType'EnumAuBecsDebit
  | -- | Represents the JSON value @"bacs_debit"@
    PaymentMethodType'EnumBacsDebit
  | -- | Represents the JSON value @"bancontact"@
    PaymentMethodType'EnumBancontact
  | -- | Represents the JSON value @"boleto"@
    PaymentMethodType'EnumBoleto
  | -- | Represents the JSON value @"card"@
    PaymentMethodType'EnumCard
  | -- | Represents the JSON value @"card_present"@
    PaymentMethodType'EnumCardPresent
  | -- | Represents the JSON value @"customer_balance"@
    PaymentMethodType'EnumCustomerBalance
  | -- | Represents the JSON value @"eps"@
    PaymentMethodType'EnumEps
  | -- | Represents the JSON value @"fpx"@
    PaymentMethodType'EnumFpx
  | -- | Represents the JSON value @"giropay"@
    PaymentMethodType'EnumGiropay
  | -- | Represents the JSON value @"grabpay"@
    PaymentMethodType'EnumGrabpay
  | -- | Represents the JSON value @"ideal"@
    PaymentMethodType'EnumIdeal
  | -- | Represents the JSON value @"interac_present"@
    PaymentMethodType'EnumInteracPresent
  | -- | Represents the JSON value @"klarna"@
    PaymentMethodType'EnumKlarna
  | -- | Represents the JSON value @"konbini"@
    PaymentMethodType'EnumKonbini
  | -- | Represents the JSON value @"link"@
    PaymentMethodType'EnumLink
  | -- | Represents the JSON value @"oxxo"@
    PaymentMethodType'EnumOxxo
  | -- | Represents the JSON value @"p24"@
    PaymentMethodType'EnumP24
  | -- | Represents the JSON value @"paynow"@
    PaymentMethodType'EnumPaynow
  | -- | Represents the JSON value @"promptpay"@
    PaymentMethodType'EnumPromptpay
  | -- | Represents the JSON value @"sepa_debit"@
    PaymentMethodType'EnumSepaDebit
  | -- | Represents the JSON value @"sofort"@
    PaymentMethodType'EnumSofort
  | -- | Represents the JSON value @"us_bank_account"@
    PaymentMethodType'EnumUsBankAccount
  | -- | Represents the JSON value @"wechat_pay"@
    PaymentMethodType'EnumWechatPay
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodType' where
  toJSON (PaymentMethodType'Other val) = val
  toJSON (PaymentMethodType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodType'EnumAcssDebit) = "acss_debit"
  toJSON (PaymentMethodType'EnumAffirm) = "affirm"
  toJSON (PaymentMethodType'EnumAfterpayClearpay) = "afterpay_clearpay"
  toJSON (PaymentMethodType'EnumAlipay) = "alipay"
  toJSON (PaymentMethodType'EnumAuBecsDebit) = "au_becs_debit"
  toJSON (PaymentMethodType'EnumBacsDebit) = "bacs_debit"
  toJSON (PaymentMethodType'EnumBancontact) = "bancontact"
  toJSON (PaymentMethodType'EnumBoleto) = "boleto"
  toJSON (PaymentMethodType'EnumCard) = "card"
  toJSON (PaymentMethodType'EnumCardPresent) = "card_present"
  toJSON (PaymentMethodType'EnumCustomerBalance) = "customer_balance"
  toJSON (PaymentMethodType'EnumEps) = "eps"
  toJSON (PaymentMethodType'EnumFpx) = "fpx"
  toJSON (PaymentMethodType'EnumGiropay) = "giropay"
  toJSON (PaymentMethodType'EnumGrabpay) = "grabpay"
  toJSON (PaymentMethodType'EnumIdeal) = "ideal"
  toJSON (PaymentMethodType'EnumInteracPresent) = "interac_present"
  toJSON (PaymentMethodType'EnumKlarna) = "klarna"
  toJSON (PaymentMethodType'EnumKonbini) = "konbini"
  toJSON (PaymentMethodType'EnumLink) = "link"
  toJSON (PaymentMethodType'EnumOxxo) = "oxxo"
  toJSON (PaymentMethodType'EnumP24) = "p24"
  toJSON (PaymentMethodType'EnumPaynow) = "paynow"
  toJSON (PaymentMethodType'EnumPromptpay) = "promptpay"
  toJSON (PaymentMethodType'EnumSepaDebit) = "sepa_debit"
  toJSON (PaymentMethodType'EnumSofort) = "sofort"
  toJSON (PaymentMethodType'EnumUsBankAccount) = "us_bank_account"
  toJSON (PaymentMethodType'EnumWechatPay) = "wechat_pay"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodType' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "acss_debit" -> PaymentMethodType'EnumAcssDebit
          | val GHC.Classes.== "affirm" -> PaymentMethodType'EnumAffirm
          | val GHC.Classes.== "afterpay_clearpay" -> PaymentMethodType'EnumAfterpayClearpay
          | val GHC.Classes.== "alipay" -> PaymentMethodType'EnumAlipay
          | val GHC.Classes.== "au_becs_debit" -> PaymentMethodType'EnumAuBecsDebit
          | val GHC.Classes.== "bacs_debit" -> PaymentMethodType'EnumBacsDebit
          | val GHC.Classes.== "bancontact" -> PaymentMethodType'EnumBancontact
          | val GHC.Classes.== "boleto" -> PaymentMethodType'EnumBoleto
          | val GHC.Classes.== "card" -> PaymentMethodType'EnumCard
          | val GHC.Classes.== "card_present" -> PaymentMethodType'EnumCardPresent
          | val GHC.Classes.== "customer_balance" -> PaymentMethodType'EnumCustomerBalance
          | val GHC.Classes.== "eps" -> PaymentMethodType'EnumEps
          | val GHC.Classes.== "fpx" -> PaymentMethodType'EnumFpx
          | val GHC.Classes.== "giropay" -> PaymentMethodType'EnumGiropay
          | val GHC.Classes.== "grabpay" -> PaymentMethodType'EnumGrabpay
          | val GHC.Classes.== "ideal" -> PaymentMethodType'EnumIdeal
          | val GHC.Classes.== "interac_present" -> PaymentMethodType'EnumInteracPresent
          | val GHC.Classes.== "klarna" -> PaymentMethodType'EnumKlarna
          | val GHC.Classes.== "konbini" -> PaymentMethodType'EnumKonbini
          | val GHC.Classes.== "link" -> PaymentMethodType'EnumLink
          | val GHC.Classes.== "oxxo" -> PaymentMethodType'EnumOxxo
          | val GHC.Classes.== "p24" -> PaymentMethodType'EnumP24
          | val GHC.Classes.== "paynow" -> PaymentMethodType'EnumPaynow
          | val GHC.Classes.== "promptpay" -> PaymentMethodType'EnumPromptpay
          | val GHC.Classes.== "sepa_debit" -> PaymentMethodType'EnumSepaDebit
          | val GHC.Classes.== "sofort" -> PaymentMethodType'EnumSofort
          | val GHC.Classes.== "us_bank_account" -> PaymentMethodType'EnumUsBankAccount
          | val GHC.Classes.== "wechat_pay" -> PaymentMethodType'EnumWechatPay
          | GHC.Base.otherwise -> PaymentMethodType'Other val
      )
