{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema PaymentIntentNextActionRedirectToUrl
module StripeAPI.Types.PaymentIntentNextActionRedirectToUrl where

import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the data type for the schema payment_intent_next_action_redirect_to_url
data PaymentIntentNextActionRedirectToUrl
  = PaymentIntentNextActionRedirectToUrl
      { -- | return_url: If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentIntentNextActionRedirectToUrlReturnUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | url: The URL you must redirect your customer to in order to authenticate the payment.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentIntentNextActionRedirectToUrlUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON PaymentIntentNextActionRedirectToUrl where
  toJSON obj = Data.Aeson.object ((Data.Aeson..=) "return_url" (paymentIntentNextActionRedirectToUrlReturnUrl obj) : (Data.Aeson..=) "url" (paymentIntentNextActionRedirectToUrlUrl obj) : [])
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "return_url" (paymentIntentNextActionRedirectToUrlReturnUrl obj) GHC.Base.<> (Data.Aeson..=) "url" (paymentIntentNextActionRedirectToUrlUrl obj))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionRedirectToUrl where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionRedirectToUrl" (\obj -> (GHC.Base.pure PaymentIntentNextActionRedirectToUrl GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
