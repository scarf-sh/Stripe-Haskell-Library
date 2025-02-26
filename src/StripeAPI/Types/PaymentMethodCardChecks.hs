-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodCardChecks
module StripeAPI.Types.PaymentMethodCardChecks where

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

-- | Defines the object schema located at @components.schemas.payment_method_card_checks@ in the specification.
-- 
-- 
data PaymentMethodCardChecks = PaymentMethodCardChecks {
  -- | address_line1_check: If a address line1 was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodCardChecksAddressLine1Check :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | address_postal_code_check: If a address postal code was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardChecksAddressPostalCodeCheck :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | cvc_check: If a CVC was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardChecksCvcCheck :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardChecks
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecksAddressLine1Check obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_postal_code_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecksAddressPostalCodeCheck obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cvc_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecksCvcCheck obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecksAddressLine1Check obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_postal_code_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecksAddressPostalCodeCheck obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cvc_check" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardChecksCvcCheck obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardChecks
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardChecks" (\obj -> ((GHC.Base.pure PaymentMethodCardChecks GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_postal_code_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cvc_check"))}
-- | Create a new 'PaymentMethodCardChecks' with all required fields.
mkPaymentMethodCardChecks :: PaymentMethodCardChecks
mkPaymentMethodCardChecks = PaymentMethodCardChecks{paymentMethodCardChecksAddressLine1Check = GHC.Maybe.Nothing,
                                                    paymentMethodCardChecksAddressPostalCodeCheck = GHC.Maybe.Nothing,
                                                    paymentMethodCardChecksCvcCheck = GHC.Maybe.Nothing}
