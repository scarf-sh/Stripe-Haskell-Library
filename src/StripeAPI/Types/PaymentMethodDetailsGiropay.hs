{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema PaymentMethodDetailsGiropay
module StripeAPI.Types.PaymentMethodDetailsGiropay where

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

-- | Defines the data type for the schema payment_method_details_giropay
data PaymentMethodDetailsGiropay
  = PaymentMethodDetailsGiropay
      { -- | bank_code: Bank code of bank associated with the bank account.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsGiropayBankCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | bank_name: Name of the bank associated with the bank account.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsGiropayBankName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | bic: Bank Identifier Code of the bank associated with the bank account.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsGiropayBic :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | verified_name: Owner\'s verified full name. Values are verified or provided by Giropay directly
        -- (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsGiropayVerifiedName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON PaymentMethodDetailsGiropay where
  toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_code" (paymentMethodDetailsGiropayBankCode obj) : (Data.Aeson..=) "bank_name" (paymentMethodDetailsGiropayBankName obj) : (Data.Aeson..=) "bic" (paymentMethodDetailsGiropayBic obj) : (Data.Aeson..=) "verified_name" (paymentMethodDetailsGiropayVerifiedName obj) : [])
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_code" (paymentMethodDetailsGiropayBankCode obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (paymentMethodDetailsGiropayBankName obj) GHC.Base.<> ((Data.Aeson..=) "bic" (paymentMethodDetailsGiropayBic obj) GHC.Base.<> (Data.Aeson..=) "verified_name" (paymentMethodDetailsGiropayVerifiedName obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsGiropay where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsGiropay" (\obj -> (((GHC.Base.pure PaymentMethodDetailsGiropay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))
