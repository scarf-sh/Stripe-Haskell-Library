-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodP24
module StripeAPI.Types.PaymentMethodP24 where

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

-- | Defines the object schema located at @components.schemas.payment_method_p24@ in the specification.
-- 
-- 
data PaymentMethodP24 = PaymentMethodP24 {
  -- | bank: The customer\'s bank, if provided.
  paymentMethodP24Bank :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodP24Bank'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodP24
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank" Data.Aeson.Types.ToJSON..=)) (paymentMethodP24Bank obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank" Data.Aeson.Types.ToJSON..=)) (paymentMethodP24Bank obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodP24
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodP24" (\obj -> GHC.Base.pure PaymentMethodP24 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank"))}
-- | Create a new 'PaymentMethodP24' with all required fields.
mkPaymentMethodP24 :: PaymentMethodP24
mkPaymentMethodP24 = PaymentMethodP24{paymentMethodP24Bank = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_p24.properties.bank@ in the specification.
-- 
-- The customer\'s bank, if provided.
data PaymentMethodP24Bank'NonNullable =
   PaymentMethodP24Bank'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodP24Bank'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodP24Bank'NonNullableEnumAliorBank -- ^ Represents the JSON value @"alior_bank"@
  | PaymentMethodP24Bank'NonNullableEnumBankMillennium -- ^ Represents the JSON value @"bank_millennium"@
  | PaymentMethodP24Bank'NonNullableEnumBankNowyBfgSa -- ^ Represents the JSON value @"bank_nowy_bfg_sa"@
  | PaymentMethodP24Bank'NonNullableEnumBankPekaoSa -- ^ Represents the JSON value @"bank_pekao_sa"@
  | PaymentMethodP24Bank'NonNullableEnumBankiSpbdzielcze -- ^ Represents the JSON value @"banki_spbdzielcze"@
  | PaymentMethodP24Bank'NonNullableEnumBlik -- ^ Represents the JSON value @"blik"@
  | PaymentMethodP24Bank'NonNullableEnumBnpParibas -- ^ Represents the JSON value @"bnp_paribas"@
  | PaymentMethodP24Bank'NonNullableEnumBoz -- ^ Represents the JSON value @"boz"@
  | PaymentMethodP24Bank'NonNullableEnumCitiHandlowy -- ^ Represents the JSON value @"citi_handlowy"@
  | PaymentMethodP24Bank'NonNullableEnumCreditAgricole -- ^ Represents the JSON value @"credit_agricole"@
  | PaymentMethodP24Bank'NonNullableEnumEnvelobank -- ^ Represents the JSON value @"envelobank"@
  | PaymentMethodP24Bank'NonNullableEnumEtransferPocztowy24 -- ^ Represents the JSON value @"etransfer_pocztowy24"@
  | PaymentMethodP24Bank'NonNullableEnumGetinBank -- ^ Represents the JSON value @"getin_bank"@
  | PaymentMethodP24Bank'NonNullableEnumIdeabank -- ^ Represents the JSON value @"ideabank"@
  | PaymentMethodP24Bank'NonNullableEnumIng -- ^ Represents the JSON value @"ing"@
  | PaymentMethodP24Bank'NonNullableEnumInteligo -- ^ Represents the JSON value @"inteligo"@
  | PaymentMethodP24Bank'NonNullableEnumMbankMtransfer -- ^ Represents the JSON value @"mbank_mtransfer"@
  | PaymentMethodP24Bank'NonNullableEnumNestPrzelew -- ^ Represents the JSON value @"nest_przelew"@
  | PaymentMethodP24Bank'NonNullableEnumNoblePay -- ^ Represents the JSON value @"noble_pay"@
  | PaymentMethodP24Bank'NonNullableEnumPbacZIpko -- ^ Represents the JSON value @"pbac_z_ipko"@
  | PaymentMethodP24Bank'NonNullableEnumPlusBank -- ^ Represents the JSON value @"plus_bank"@
  | PaymentMethodP24Bank'NonNullableEnumSantanderPrzelew24 -- ^ Represents the JSON value @"santander_przelew24"@
  | PaymentMethodP24Bank'NonNullableEnumTmobileUsbugiBankowe -- ^ Represents the JSON value @"tmobile_usbugi_bankowe"@
  | PaymentMethodP24Bank'NonNullableEnumToyotaBank -- ^ Represents the JSON value @"toyota_bank"@
  | PaymentMethodP24Bank'NonNullableEnumVolkswagenBank -- ^ Represents the JSON value @"volkswagen_bank"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodP24Bank'NonNullable
    where {toJSON (PaymentMethodP24Bank'NonNullableOther val) = val;
           toJSON (PaymentMethodP24Bank'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodP24Bank'NonNullableEnumAliorBank) = "alior_bank";
           toJSON (PaymentMethodP24Bank'NonNullableEnumBankMillennium) = "bank_millennium";
           toJSON (PaymentMethodP24Bank'NonNullableEnumBankNowyBfgSa) = "bank_nowy_bfg_sa";
           toJSON (PaymentMethodP24Bank'NonNullableEnumBankPekaoSa) = "bank_pekao_sa";
           toJSON (PaymentMethodP24Bank'NonNullableEnumBankiSpbdzielcze) = "banki_spbdzielcze";
           toJSON (PaymentMethodP24Bank'NonNullableEnumBlik) = "blik";
           toJSON (PaymentMethodP24Bank'NonNullableEnumBnpParibas) = "bnp_paribas";
           toJSON (PaymentMethodP24Bank'NonNullableEnumBoz) = "boz";
           toJSON (PaymentMethodP24Bank'NonNullableEnumCitiHandlowy) = "citi_handlowy";
           toJSON (PaymentMethodP24Bank'NonNullableEnumCreditAgricole) = "credit_agricole";
           toJSON (PaymentMethodP24Bank'NonNullableEnumEnvelobank) = "envelobank";
           toJSON (PaymentMethodP24Bank'NonNullableEnumEtransferPocztowy24) = "etransfer_pocztowy24";
           toJSON (PaymentMethodP24Bank'NonNullableEnumGetinBank) = "getin_bank";
           toJSON (PaymentMethodP24Bank'NonNullableEnumIdeabank) = "ideabank";
           toJSON (PaymentMethodP24Bank'NonNullableEnumIng) = "ing";
           toJSON (PaymentMethodP24Bank'NonNullableEnumInteligo) = "inteligo";
           toJSON (PaymentMethodP24Bank'NonNullableEnumMbankMtransfer) = "mbank_mtransfer";
           toJSON (PaymentMethodP24Bank'NonNullableEnumNestPrzelew) = "nest_przelew";
           toJSON (PaymentMethodP24Bank'NonNullableEnumNoblePay) = "noble_pay";
           toJSON (PaymentMethodP24Bank'NonNullableEnumPbacZIpko) = "pbac_z_ipko";
           toJSON (PaymentMethodP24Bank'NonNullableEnumPlusBank) = "plus_bank";
           toJSON (PaymentMethodP24Bank'NonNullableEnumSantanderPrzelew24) = "santander_przelew24";
           toJSON (PaymentMethodP24Bank'NonNullableEnumTmobileUsbugiBankowe) = "tmobile_usbugi_bankowe";
           toJSON (PaymentMethodP24Bank'NonNullableEnumToyotaBank) = "toyota_bank";
           toJSON (PaymentMethodP24Bank'NonNullableEnumVolkswagenBank) = "volkswagen_bank"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodP24Bank'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "alior_bank" -> PaymentMethodP24Bank'NonNullableEnumAliorBank
                                             | val GHC.Classes.== "bank_millennium" -> PaymentMethodP24Bank'NonNullableEnumBankMillennium
                                             | val GHC.Classes.== "bank_nowy_bfg_sa" -> PaymentMethodP24Bank'NonNullableEnumBankNowyBfgSa
                                             | val GHC.Classes.== "bank_pekao_sa" -> PaymentMethodP24Bank'NonNullableEnumBankPekaoSa
                                             | val GHC.Classes.== "banki_spbdzielcze" -> PaymentMethodP24Bank'NonNullableEnumBankiSpbdzielcze
                                             | val GHC.Classes.== "blik" -> PaymentMethodP24Bank'NonNullableEnumBlik
                                             | val GHC.Classes.== "bnp_paribas" -> PaymentMethodP24Bank'NonNullableEnumBnpParibas
                                             | val GHC.Classes.== "boz" -> PaymentMethodP24Bank'NonNullableEnumBoz
                                             | val GHC.Classes.== "citi_handlowy" -> PaymentMethodP24Bank'NonNullableEnumCitiHandlowy
                                             | val GHC.Classes.== "credit_agricole" -> PaymentMethodP24Bank'NonNullableEnumCreditAgricole
                                             | val GHC.Classes.== "envelobank" -> PaymentMethodP24Bank'NonNullableEnumEnvelobank
                                             | val GHC.Classes.== "etransfer_pocztowy24" -> PaymentMethodP24Bank'NonNullableEnumEtransferPocztowy24
                                             | val GHC.Classes.== "getin_bank" -> PaymentMethodP24Bank'NonNullableEnumGetinBank
                                             | val GHC.Classes.== "ideabank" -> PaymentMethodP24Bank'NonNullableEnumIdeabank
                                             | val GHC.Classes.== "ing" -> PaymentMethodP24Bank'NonNullableEnumIng
                                             | val GHC.Classes.== "inteligo" -> PaymentMethodP24Bank'NonNullableEnumInteligo
                                             | val GHC.Classes.== "mbank_mtransfer" -> PaymentMethodP24Bank'NonNullableEnumMbankMtransfer
                                             | val GHC.Classes.== "nest_przelew" -> PaymentMethodP24Bank'NonNullableEnumNestPrzelew
                                             | val GHC.Classes.== "noble_pay" -> PaymentMethodP24Bank'NonNullableEnumNoblePay
                                             | val GHC.Classes.== "pbac_z_ipko" -> PaymentMethodP24Bank'NonNullableEnumPbacZIpko
                                             | val GHC.Classes.== "plus_bank" -> PaymentMethodP24Bank'NonNullableEnumPlusBank
                                             | val GHC.Classes.== "santander_przelew24" -> PaymentMethodP24Bank'NonNullableEnumSantanderPrzelew24
                                             | val GHC.Classes.== "tmobile_usbugi_bankowe" -> PaymentMethodP24Bank'NonNullableEnumTmobileUsbugiBankowe
                                             | val GHC.Classes.== "toyota_bank" -> PaymentMethodP24Bank'NonNullableEnumToyotaBank
                                             | val GHC.Classes.== "volkswagen_bank" -> PaymentMethodP24Bank'NonNullableEnumVolkswagenBank
                                             | GHC.Base.otherwise -> PaymentMethodP24Bank'NonNullableOther val)}
