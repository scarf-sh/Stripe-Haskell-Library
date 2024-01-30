-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CountrySpec
module StripeAPI.Types.CountrySpec where

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
import {-# SOURCE #-} StripeAPI.Types.CountrySpecVerificationFields

-- | Defines the object schema located at @components.schemas.country_spec@ in the specification.
-- 
-- Stripe needs to collect certain pieces of information about each account
-- created. These requirements can differ depending on the account\'s country. The
-- Country Specs API makes these rules available to your integration.
-- 
-- You can also view the information from this API call as [an online
-- guide](\/docs\/connect\/required-verification-information).
data CountrySpec = CountrySpec {
  -- | default_currency: The default currency for this country. This applies to both payment methods and bank accounts.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  countrySpecDefaultCurrency :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object. Represented as the ISO country code for this country.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , countrySpecId :: Data.Text.Internal.Text
  -- | supported_bank_account_currencies: Currencies that can be accepted in the specific country (for transfers).
  , countrySpecSupportedBankAccountCurrencies :: Data.Aeson.Types.Internal.Object
  -- | supported_payment_currencies: Currencies that can be accepted in the specified country (for payments).
  , countrySpecSupportedPaymentCurrencies :: ([Data.Text.Internal.Text])
  -- | supported_payment_methods: Payment methods available in the specified country. You may need to enable some payment methods (e.g., [ACH](https:\/\/stripe.com\/docs\/ach)) on your account before they appear in this list. The \`stripe\` payment method refers to [charging through your platform](https:\/\/stripe.com\/docs\/connect\/destination-charges).
  , countrySpecSupportedPaymentMethods :: ([Data.Text.Internal.Text])
  -- | supported_transfer_countries: Countries that can accept transfers from the specified country.
  , countrySpecSupportedTransferCountries :: ([Data.Text.Internal.Text])
  -- | verification_fields: 
  , countrySpecVerificationFields :: CountrySpecVerificationFields
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CountrySpec
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["default_currency" Data.Aeson.Types.ToJSON..= countrySpecDefaultCurrency obj] : ["id" Data.Aeson.Types.ToJSON..= countrySpecId obj] : ["supported_bank_account_currencies" Data.Aeson.Types.ToJSON..= countrySpecSupportedBankAccountCurrencies obj] : ["supported_payment_currencies" Data.Aeson.Types.ToJSON..= countrySpecSupportedPaymentCurrencies obj] : ["supported_payment_methods" Data.Aeson.Types.ToJSON..= countrySpecSupportedPaymentMethods obj] : ["supported_transfer_countries" Data.Aeson.Types.ToJSON..= countrySpecSupportedTransferCountries obj] : ["verification_fields" Data.Aeson.Types.ToJSON..= countrySpecVerificationFields obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "country_spec"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["default_currency" Data.Aeson.Types.ToJSON..= countrySpecDefaultCurrency obj] : ["id" Data.Aeson.Types.ToJSON..= countrySpecId obj] : ["supported_bank_account_currencies" Data.Aeson.Types.ToJSON..= countrySpecSupportedBankAccountCurrencies obj] : ["supported_payment_currencies" Data.Aeson.Types.ToJSON..= countrySpecSupportedPaymentCurrencies obj] : ["supported_payment_methods" Data.Aeson.Types.ToJSON..= countrySpecSupportedPaymentMethods obj] : ["supported_transfer_countries" Data.Aeson.Types.ToJSON..= countrySpecSupportedTransferCountries obj] : ["verification_fields" Data.Aeson.Types.ToJSON..= countrySpecVerificationFields obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "country_spec"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CountrySpec
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CountrySpec" (\obj -> ((((((GHC.Base.pure CountrySpec GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "default_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_bank_account_currencies")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_payment_currencies")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_payment_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported_transfer_countries")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification_fields"))}
-- | Create a new 'CountrySpec' with all required fields.
mkCountrySpec :: Data.Text.Internal.Text -- ^ 'countrySpecDefaultCurrency'
  -> Data.Text.Internal.Text -- ^ 'countrySpecId'
  -> Data.Aeson.Types.Internal.Object -- ^ 'countrySpecSupportedBankAccountCurrencies'
  -> [Data.Text.Internal.Text] -- ^ 'countrySpecSupportedPaymentCurrencies'
  -> [Data.Text.Internal.Text] -- ^ 'countrySpecSupportedPaymentMethods'
  -> [Data.Text.Internal.Text] -- ^ 'countrySpecSupportedTransferCountries'
  -> CountrySpecVerificationFields -- ^ 'countrySpecVerificationFields'
  -> CountrySpec
mkCountrySpec countrySpecDefaultCurrency countrySpecId countrySpecSupportedBankAccountCurrencies countrySpecSupportedPaymentCurrencies countrySpecSupportedPaymentMethods countrySpecSupportedTransferCountries countrySpecVerificationFields = CountrySpec{countrySpecDefaultCurrency = countrySpecDefaultCurrency,
                                                                                                                                                                                                                                                            countrySpecId = countrySpecId,
                                                                                                                                                                                                                                                            countrySpecSupportedBankAccountCurrencies = countrySpecSupportedBankAccountCurrencies,
                                                                                                                                                                                                                                                            countrySpecSupportedPaymentCurrencies = countrySpecSupportedPaymentCurrencies,
                                                                                                                                                                                                                                                            countrySpecSupportedPaymentMethods = countrySpecSupportedPaymentMethods,
                                                                                                                                                                                                                                                            countrySpecSupportedTransferCountries = countrySpecSupportedTransferCountries,
                                                                                                                                                                                                                                                            countrySpecVerificationFields = countrySpecVerificationFields}
