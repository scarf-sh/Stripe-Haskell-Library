{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodDetailsEps
module StripeAPI.Types.PaymentMethodDetailsEps where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_details_eps@ in the specification.
data PaymentMethodDetailsEps = PaymentMethodDetailsEps
  { -- | bank: The customer\'s bank. Should be one of \`arzte_und_apotheker_bank\`, \`austrian_anadi_bank_ag\`, \`bank_austria\`, \`bankhaus_carl_spangler\`, \`bankhaus_schelhammer_und_schattera_ag\`, \`bawag_psk_ag\`, \`bks_bank_ag\`, \`brull_kallmus_bank_ag\`, \`btv_vier_lander_bank\`, \`capital_bank_grawe_gruppe_ag\`, \`dolomitenbank\`, \`easybank_ag\`, \`erste_bank_und_sparkassen\`, \`hypo_alpeadriabank_international_ag\`, \`hypo_noe_lb_fur_niederosterreich_u_wien\`, \`hypo_oberosterreich_salzburg_steiermark\`, \`hypo_tirol_bank_ag\`, \`hypo_vorarlberg_bank_ag\`, \`hypo_bank_burgenland_aktiengesellschaft\`, \`marchfelder_bank\`, \`oberbank_ag\`, \`raiffeisen_bankengruppe_osterreich\`, \`schoellerbank_ag\`, \`sparda_bank_wien\`, \`volksbank_gruppe\`, \`volkskreditbank_ag\`, or \`vr_bank_braunau\`.
    paymentMethodDetailsEpsBank :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodDetailsEpsBank'NonNullable)),
    -- | verified_name: Owner\'s verified full name. Values are verified or provided by EPS directly
    -- (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    -- EPS rarely provides this information so the attribute is usually empty.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentMethodDetailsEpsVerifiedName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsEps where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsEpsBank obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsEpsVerifiedName obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsEpsBank obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsEpsVerifiedName obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsEps where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsEps" (\obj -> (GHC.Base.pure PaymentMethodDetailsEps GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verified_name"))

-- | Create a new 'PaymentMethodDetailsEps' with all required fields.
mkPaymentMethodDetailsEps :: PaymentMethodDetailsEps
mkPaymentMethodDetailsEps =
  PaymentMethodDetailsEps
    { paymentMethodDetailsEpsBank = GHC.Maybe.Nothing,
      paymentMethodDetailsEpsVerifiedName = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_method_details_eps.properties.bank@ in the specification.
--
-- The customer\'s bank. Should be one of \`arzte_und_apotheker_bank\`, \`austrian_anadi_bank_ag\`, \`bank_austria\`, \`bankhaus_carl_spangler\`, \`bankhaus_schelhammer_und_schattera_ag\`, \`bawag_psk_ag\`, \`bks_bank_ag\`, \`brull_kallmus_bank_ag\`, \`btv_vier_lander_bank\`, \`capital_bank_grawe_gruppe_ag\`, \`dolomitenbank\`, \`easybank_ag\`, \`erste_bank_und_sparkassen\`, \`hypo_alpeadriabank_international_ag\`, \`hypo_noe_lb_fur_niederosterreich_u_wien\`, \`hypo_oberosterreich_salzburg_steiermark\`, \`hypo_tirol_bank_ag\`, \`hypo_vorarlberg_bank_ag\`, \`hypo_bank_burgenland_aktiengesellschaft\`, \`marchfelder_bank\`, \`oberbank_ag\`, \`raiffeisen_bankengruppe_osterreich\`, \`schoellerbank_ag\`, \`sparda_bank_wien\`, \`volksbank_gruppe\`, \`volkskreditbank_ag\`, or \`vr_bank_braunau\`.
data PaymentMethodDetailsEpsBank'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodDetailsEpsBank'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodDetailsEpsBank'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"arzte_und_apotheker_bank"@
    PaymentMethodDetailsEpsBank'NonNullableEnumArzteUndApothekerBank
  | -- | Represents the JSON value @"austrian_anadi_bank_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumAustrianAnadiBankAg
  | -- | Represents the JSON value @"bank_austria"@
    PaymentMethodDetailsEpsBank'NonNullableEnumBankAustria
  | -- | Represents the JSON value @"bankhaus_carl_spangler"@
    PaymentMethodDetailsEpsBank'NonNullableEnumBankhausCarlSpangler
  | -- | Represents the JSON value @"bankhaus_schelhammer_und_schattera_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumBankhausSchelhammerUndSchatteraAg
  | -- | Represents the JSON value @"bawag_psk_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumBawagPskAg
  | -- | Represents the JSON value @"bks_bank_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumBksBankAg
  | -- | Represents the JSON value @"brull_kallmus_bank_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumBrullKallmusBankAg
  | -- | Represents the JSON value @"btv_vier_lander_bank"@
    PaymentMethodDetailsEpsBank'NonNullableEnumBtvVierLanderBank
  | -- | Represents the JSON value @"capital_bank_grawe_gruppe_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumCapitalBankGraweGruppeAg
  | -- | Represents the JSON value @"dolomitenbank"@
    PaymentMethodDetailsEpsBank'NonNullableEnumDolomitenbank
  | -- | Represents the JSON value @"easybank_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumEasybankAg
  | -- | Represents the JSON value @"erste_bank_und_sparkassen"@
    PaymentMethodDetailsEpsBank'NonNullableEnumErsteBankUndSparkassen
  | -- | Represents the JSON value @"hypo_alpeadriabank_international_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumHypoAlpeadriabankInternationalAg
  | -- | Represents the JSON value @"hypo_bank_burgenland_aktiengesellschaft"@
    PaymentMethodDetailsEpsBank'NonNullableEnumHypoBankBurgenlandAktiengesellschaft
  | -- | Represents the JSON value @"hypo_noe_lb_fur_niederosterreich_u_wien"@
    PaymentMethodDetailsEpsBank'NonNullableEnumHypoNoeLbFurNiederosterreichUWien
  | -- | Represents the JSON value @"hypo_oberosterreich_salzburg_steiermark"@
    PaymentMethodDetailsEpsBank'NonNullableEnumHypoOberosterreichSalzburgSteiermark
  | -- | Represents the JSON value @"hypo_tirol_bank_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumHypoTirolBankAg
  | -- | Represents the JSON value @"hypo_vorarlberg_bank_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumHypoVorarlbergBankAg
  | -- | Represents the JSON value @"marchfelder_bank"@
    PaymentMethodDetailsEpsBank'NonNullableEnumMarchfelderBank
  | -- | Represents the JSON value @"oberbank_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumOberbankAg
  | -- | Represents the JSON value @"raiffeisen_bankengruppe_osterreich"@
    PaymentMethodDetailsEpsBank'NonNullableEnumRaiffeisenBankengruppeOsterreich
  | -- | Represents the JSON value @"schoellerbank_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumSchoellerbankAg
  | -- | Represents the JSON value @"sparda_bank_wien"@
    PaymentMethodDetailsEpsBank'NonNullableEnumSpardaBankWien
  | -- | Represents the JSON value @"volksbank_gruppe"@
    PaymentMethodDetailsEpsBank'NonNullableEnumVolksbankGruppe
  | -- | Represents the JSON value @"volkskreditbank_ag"@
    PaymentMethodDetailsEpsBank'NonNullableEnumVolkskreditbankAg
  | -- | Represents the JSON value @"vr_bank_braunau"@
    PaymentMethodDetailsEpsBank'NonNullableEnumVrBankBraunau
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsEpsBank'NonNullable where
  toJSON (PaymentMethodDetailsEpsBank'NonNullableOther val) = val
  toJSON (PaymentMethodDetailsEpsBank'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumArzteUndApothekerBank) = "arzte_und_apotheker_bank"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumAustrianAnadiBankAg) = "austrian_anadi_bank_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumBankAustria) = "bank_austria"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumBankhausCarlSpangler) = "bankhaus_carl_spangler"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumBankhausSchelhammerUndSchatteraAg) = "bankhaus_schelhammer_und_schattera_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumBawagPskAg) = "bawag_psk_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumBksBankAg) = "bks_bank_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumBrullKallmusBankAg) = "brull_kallmus_bank_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumBtvVierLanderBank) = "btv_vier_lander_bank"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumCapitalBankGraweGruppeAg) = "capital_bank_grawe_gruppe_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumDolomitenbank) = "dolomitenbank"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumEasybankAg) = "easybank_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumErsteBankUndSparkassen) = "erste_bank_und_sparkassen"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumHypoAlpeadriabankInternationalAg) = "hypo_alpeadriabank_international_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumHypoBankBurgenlandAktiengesellschaft) = "hypo_bank_burgenland_aktiengesellschaft"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumHypoNoeLbFurNiederosterreichUWien) = "hypo_noe_lb_fur_niederosterreich_u_wien"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumHypoOberosterreichSalzburgSteiermark) = "hypo_oberosterreich_salzburg_steiermark"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumHypoTirolBankAg) = "hypo_tirol_bank_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumHypoVorarlbergBankAg) = "hypo_vorarlberg_bank_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumMarchfelderBank) = "marchfelder_bank"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumOberbankAg) = "oberbank_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumRaiffeisenBankengruppeOsterreich) = "raiffeisen_bankengruppe_osterreich"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumSchoellerbankAg) = "schoellerbank_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumSpardaBankWien) = "sparda_bank_wien"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumVolksbankGruppe) = "volksbank_gruppe"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumVolkskreditbankAg) = "volkskreditbank_ag"
  toJSON (PaymentMethodDetailsEpsBank'NonNullableEnumVrBankBraunau) = "vr_bank_braunau"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsEpsBank'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "arzte_und_apotheker_bank" -> PaymentMethodDetailsEpsBank'NonNullableEnumArzteUndApothekerBank
          | val GHC.Classes.== "austrian_anadi_bank_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumAustrianAnadiBankAg
          | val GHC.Classes.== "bank_austria" -> PaymentMethodDetailsEpsBank'NonNullableEnumBankAustria
          | val GHC.Classes.== "bankhaus_carl_spangler" -> PaymentMethodDetailsEpsBank'NonNullableEnumBankhausCarlSpangler
          | val GHC.Classes.== "bankhaus_schelhammer_und_schattera_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumBankhausSchelhammerUndSchatteraAg
          | val GHC.Classes.== "bawag_psk_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumBawagPskAg
          | val GHC.Classes.== "bks_bank_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumBksBankAg
          | val GHC.Classes.== "brull_kallmus_bank_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumBrullKallmusBankAg
          | val GHC.Classes.== "btv_vier_lander_bank" -> PaymentMethodDetailsEpsBank'NonNullableEnumBtvVierLanderBank
          | val GHC.Classes.== "capital_bank_grawe_gruppe_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumCapitalBankGraweGruppeAg
          | val GHC.Classes.== "dolomitenbank" -> PaymentMethodDetailsEpsBank'NonNullableEnumDolomitenbank
          | val GHC.Classes.== "easybank_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumEasybankAg
          | val GHC.Classes.== "erste_bank_und_sparkassen" -> PaymentMethodDetailsEpsBank'NonNullableEnumErsteBankUndSparkassen
          | val GHC.Classes.== "hypo_alpeadriabank_international_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumHypoAlpeadriabankInternationalAg
          | val GHC.Classes.== "hypo_bank_burgenland_aktiengesellschaft" -> PaymentMethodDetailsEpsBank'NonNullableEnumHypoBankBurgenlandAktiengesellschaft
          | val GHC.Classes.== "hypo_noe_lb_fur_niederosterreich_u_wien" -> PaymentMethodDetailsEpsBank'NonNullableEnumHypoNoeLbFurNiederosterreichUWien
          | val GHC.Classes.== "hypo_oberosterreich_salzburg_steiermark" -> PaymentMethodDetailsEpsBank'NonNullableEnumHypoOberosterreichSalzburgSteiermark
          | val GHC.Classes.== "hypo_tirol_bank_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumHypoTirolBankAg
          | val GHC.Classes.== "hypo_vorarlberg_bank_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumHypoVorarlbergBankAg
          | val GHC.Classes.== "marchfelder_bank" -> PaymentMethodDetailsEpsBank'NonNullableEnumMarchfelderBank
          | val GHC.Classes.== "oberbank_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumOberbankAg
          | val GHC.Classes.== "raiffeisen_bankengruppe_osterreich" -> PaymentMethodDetailsEpsBank'NonNullableEnumRaiffeisenBankengruppeOsterreich
          | val GHC.Classes.== "schoellerbank_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumSchoellerbankAg
          | val GHC.Classes.== "sparda_bank_wien" -> PaymentMethodDetailsEpsBank'NonNullableEnumSpardaBankWien
          | val GHC.Classes.== "volksbank_gruppe" -> PaymentMethodDetailsEpsBank'NonNullableEnumVolksbankGruppe
          | val GHC.Classes.== "volkskreditbank_ag" -> PaymentMethodDetailsEpsBank'NonNullableEnumVolkskreditbankAg
          | val GHC.Classes.== "vr_bank_braunau" -> PaymentMethodDetailsEpsBank'NonNullableEnumVrBankBraunau
          | GHC.Base.otherwise -> PaymentMethodDetailsEpsBank'NonNullableOther val
      )
