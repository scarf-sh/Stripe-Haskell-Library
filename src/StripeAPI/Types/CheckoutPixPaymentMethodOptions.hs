-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CheckoutPixPaymentMethodOptions
module StripeAPI.Types.CheckoutPixPaymentMethodOptions where

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

-- | Defines the object schema located at @components.schemas.checkout_pix_payment_method_options@ in the specification.
-- 
-- 
data CheckoutPixPaymentMethodOptions = CheckoutPixPaymentMethodOptions {
  -- | expires_after_seconds: The number of seconds after which Pix payment will expire.
  checkoutPixPaymentMethodOptionsExpiresAfterSeconds :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutPixPaymentMethodOptions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_after_seconds" Data.Aeson.Types.ToJSON..=)) (checkoutPixPaymentMethodOptionsExpiresAfterSeconds obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_after_seconds" Data.Aeson.Types.ToJSON..=)) (checkoutPixPaymentMethodOptionsExpiresAfterSeconds obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutPixPaymentMethodOptions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CheckoutPixPaymentMethodOptions" (\obj -> GHC.Base.pure CheckoutPixPaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_after_seconds"))}
-- | Create a new 'CheckoutPixPaymentMethodOptions' with all required fields.
mkCheckoutPixPaymentMethodOptions :: CheckoutPixPaymentMethodOptions
mkCheckoutPixPaymentMethodOptions = CheckoutPixPaymentMethodOptions{checkoutPixPaymentMethodOptionsExpiresAfterSeconds = GHC.Maybe.Nothing}
