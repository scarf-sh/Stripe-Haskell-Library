-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodOptionsCustomerBalanceEuBankAccount
module StripeAPI.Types.PaymentMethodOptionsCustomerBalanceEuBankAccount where

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

-- | Defines the object schema located at @components.schemas.payment_method_options_customer_balance_eu_bank_account@ in the specification.
-- 
-- 
data PaymentMethodOptionsCustomerBalanceEuBankAccount = PaymentMethodOptionsCustomerBalanceEuBankAccount {
  -- | country: The desired country code of the bank account information. Permitted values include: \`BE\`, \`DE\`, \`ES\`, \`FR\`, \`IE\`, or \`NL\`.
  paymentMethodOptionsCustomerBalanceEuBankAccountCountry :: PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCustomerBalanceEuBankAccount
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["country" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCustomerBalanceEuBankAccountCountry obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["country" Data.Aeson.Types.ToJSON..= paymentMethodOptionsCustomerBalanceEuBankAccountCountry obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCustomerBalanceEuBankAccount
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodOptionsCustomerBalanceEuBankAccount" (\obj -> GHC.Base.pure PaymentMethodOptionsCustomerBalanceEuBankAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country"))}
-- | Create a new 'PaymentMethodOptionsCustomerBalanceEuBankAccount' with all required fields.
mkPaymentMethodOptionsCustomerBalanceEuBankAccount :: PaymentMethodOptionsCustomerBalanceEuBankAccountCountry' -- ^ 'paymentMethodOptionsCustomerBalanceEuBankAccountCountry'
  -> PaymentMethodOptionsCustomerBalanceEuBankAccount
mkPaymentMethodOptionsCustomerBalanceEuBankAccount paymentMethodOptionsCustomerBalanceEuBankAccountCountry = PaymentMethodOptionsCustomerBalanceEuBankAccount{paymentMethodOptionsCustomerBalanceEuBankAccountCountry = paymentMethodOptionsCustomerBalanceEuBankAccountCountry}
-- | Defines the enum schema located at @components.schemas.payment_method_options_customer_balance_eu_bank_account.properties.country@ in the specification.
-- 
-- The desired country code of the bank account information. Permitted values include: \`BE\`, \`DE\`, \`ES\`, \`FR\`, \`IE\`, or \`NL\`.
data PaymentMethodOptionsCustomerBalanceEuBankAccountCountry' =
   PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumBE -- ^ Represents the JSON value @"BE"@
  | PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumDE -- ^ Represents the JSON value @"DE"@
  | PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumES -- ^ Represents the JSON value @"ES"@
  | PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumFR -- ^ Represents the JSON value @"FR"@
  | PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumIE -- ^ Represents the JSON value @"IE"@
  | PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumNL -- ^ Represents the JSON value @"NL"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'
    where {toJSON (PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'Other val) = val;
           toJSON (PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumBE) = "BE";
           toJSON (PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumDE) = "DE";
           toJSON (PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumES) = "ES";
           toJSON (PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumFR) = "FR";
           toJSON (PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumIE) = "IE";
           toJSON (PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumNL) = "NL"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "BE" -> PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumBE
                                             | val GHC.Classes.== "DE" -> PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumDE
                                             | val GHC.Classes.== "ES" -> PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumES
                                             | val GHC.Classes.== "FR" -> PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumFR
                                             | val GHC.Classes.== "IE" -> PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumIE
                                             | val GHC.Classes.== "NL" -> PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'EnumNL
                                             | GHC.Base.otherwise -> PaymentMethodOptionsCustomerBalanceEuBankAccountCountry'Other val)}
