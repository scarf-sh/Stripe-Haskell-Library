-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SetupIntentPaymentMethodOptionsPaypal
module StripeAPI.Types.SetupIntentPaymentMethodOptionsPaypal where

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

-- | Defines the object schema located at @components.schemas.setup_intent_payment_method_options_paypal@ in the specification.
-- 
-- 
data SetupIntentPaymentMethodOptionsPaypal = SetupIntentPaymentMethodOptionsPaypal {
  -- | billing_agreement_id: The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  setupIntentPaymentMethodOptionsPaypalBillingAgreementId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsPaypal
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_agreement_id" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsPaypalBillingAgreementId obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_agreement_id" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsPaypalBillingAgreementId obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsPaypal
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptionsPaypal" (\obj -> GHC.Base.pure SetupIntentPaymentMethodOptionsPaypal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "billing_agreement_id"))}
-- | Create a new 'SetupIntentPaymentMethodOptionsPaypal' with all required fields.
mkSetupIntentPaymentMethodOptionsPaypal :: SetupIntentPaymentMethodOptionsPaypal
mkSetupIntentPaymentMethodOptionsPaypal = SetupIntentPaymentMethodOptionsPaypal{setupIntentPaymentMethodOptionsPaypalBillingAgreementId = GHC.Maybe.Nothing}
