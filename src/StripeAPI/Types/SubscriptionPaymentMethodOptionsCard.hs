-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SubscriptionPaymentMethodOptionsCard
module StripeAPI.Types.SubscriptionPaymentMethodOptionsCard where

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
import {-# SOURCE #-} StripeAPI.Types.InvoiceMandateOptionsCard

-- | Defines the object schema located at @components.schemas.subscription_payment_method_options_card@ in the specification.
-- 
-- 
data SubscriptionPaymentMethodOptionsCard = SubscriptionPaymentMethodOptionsCard {
  -- | mandate_options: 
  subscriptionPaymentMethodOptionsCardMandateOptions :: (GHC.Maybe.Maybe InvoiceMandateOptionsCard)
  -- | network: Selected network to process this Subscription on. Depends on the available networks of the card attached to the Subscription. Can be only set confirm-time.
  , subscriptionPaymentMethodOptionsCardNetwork :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionPaymentMethodOptionsCardNetwork'NonNullable))
  -- | request_three_d_secure: We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https:\/\/stripe.com\/docs\/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https:\/\/stripe.com\/docs\/payments\/3d-secure\#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
  , subscriptionPaymentMethodOptionsCardRequestThreeDSecure :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionPaymentMethodOptionsCard
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (subscriptionPaymentMethodOptionsCardMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("network" Data.Aeson.Types.ToJSON..=)) (subscriptionPaymentMethodOptionsCardNetwork obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("request_three_d_secure" Data.Aeson.Types.ToJSON..=)) (subscriptionPaymentMethodOptionsCardRequestThreeDSecure obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (subscriptionPaymentMethodOptionsCardMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("network" Data.Aeson.Types.ToJSON..=)) (subscriptionPaymentMethodOptionsCardNetwork obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("request_three_d_secure" Data.Aeson.Types.ToJSON..=)) (subscriptionPaymentMethodOptionsCardRequestThreeDSecure obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionPaymentMethodOptionsCard
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionPaymentMethodOptionsCard" (\obj -> ((GHC.Base.pure SubscriptionPaymentMethodOptionsCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mandate_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "network")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "request_three_d_secure"))}
-- | Create a new 'SubscriptionPaymentMethodOptionsCard' with all required fields.
mkSubscriptionPaymentMethodOptionsCard :: SubscriptionPaymentMethodOptionsCard
mkSubscriptionPaymentMethodOptionsCard = SubscriptionPaymentMethodOptionsCard{subscriptionPaymentMethodOptionsCardMandateOptions = GHC.Maybe.Nothing,
                                                                              subscriptionPaymentMethodOptionsCardNetwork = GHC.Maybe.Nothing,
                                                                              subscriptionPaymentMethodOptionsCardRequestThreeDSecure = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.subscription_payment_method_options_card.properties.network@ in the specification.
-- 
-- Selected network to process this Subscription on. Depends on the available networks of the card attached to the Subscription. Can be only set confirm-time.
data SubscriptionPaymentMethodOptionsCardNetwork'NonNullable =
   SubscriptionPaymentMethodOptionsCardNetwork'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumAmex -- ^ Represents the JSON value @"amex"@
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumCartesBancaires -- ^ Represents the JSON value @"cartes_bancaires"@
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumDiners -- ^ Represents the JSON value @"diners"@
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumDiscover -- ^ Represents the JSON value @"discover"@
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumEftposAu -- ^ Represents the JSON value @"eftpos_au"@
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumInterac -- ^ Represents the JSON value @"interac"@
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumJcb -- ^ Represents the JSON value @"jcb"@
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumMastercard -- ^ Represents the JSON value @"mastercard"@
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumUnionpay -- ^ Represents the JSON value @"unionpay"@
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumUnknown -- ^ Represents the JSON value @"unknown"@
  | SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumVisa -- ^ Represents the JSON value @"visa"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionPaymentMethodOptionsCardNetwork'NonNullable
    where {toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableOther val) = val;
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumAmex) = "amex";
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumCartesBancaires) = "cartes_bancaires";
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumDiners) = "diners";
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumDiscover) = "discover";
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumEftposAu) = "eftpos_au";
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumInterac) = "interac";
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumJcb) = "jcb";
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumMastercard) = "mastercard";
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumUnionpay) = "unionpay";
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumUnknown) = "unknown";
           toJSON (SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumVisa) = "visa"}
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionPaymentMethodOptionsCardNetwork'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "amex" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumAmex
                                             | val GHC.Classes.== "cartes_bancaires" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumCartesBancaires
                                             | val GHC.Classes.== "diners" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumDiners
                                             | val GHC.Classes.== "discover" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumDiscover
                                             | val GHC.Classes.== "eftpos_au" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumEftposAu
                                             | val GHC.Classes.== "interac" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumInterac
                                             | val GHC.Classes.== "jcb" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumJcb
                                             | val GHC.Classes.== "mastercard" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumMastercard
                                             | val GHC.Classes.== "unionpay" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumUnionpay
                                             | val GHC.Classes.== "unknown" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumUnknown
                                             | val GHC.Classes.== "visa" -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableEnumVisa
                                             | GHC.Base.otherwise -> SubscriptionPaymentMethodOptionsCardNetwork'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.subscription_payment_method_options_card.properties.request_three_d_secure@ in the specification.
-- 
-- We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https:\/\/stripe.com\/docs\/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https:\/\/stripe.com\/docs\/payments\/3d-secure\#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
data SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullable =
   SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableEnumAny -- ^ Represents the JSON value @"any"@
  | SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableEnumAutomatic -- ^ Represents the JSON value @"automatic"@
  | SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableEnumChallenge -- ^ Represents the JSON value @"challenge"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullable
    where {toJSON (SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableOther val) = val;
           toJSON (SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableEnumAny) = "any";
           toJSON (SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableEnumAutomatic) = "automatic";
           toJSON (SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableEnumChallenge) = "challenge"}
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "any" -> SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableEnumAny
                                             | val GHC.Classes.== "automatic" -> SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableEnumAutomatic
                                             | val GHC.Classes.== "challenge" -> SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableEnumChallenge
                                             | GHC.Base.otherwise -> SubscriptionPaymentMethodOptionsCardRequestThreeDSecure'NonNullableOther val)}
