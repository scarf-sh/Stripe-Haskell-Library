-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TaxProductRegistrationsResourceCountryOptionsCanada
module StripeAPI.Types.TaxProductRegistrationsResourceCountryOptionsCanada where

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
import {-# SOURCE #-} StripeAPI.Types.TaxProductRegistrationsResourceCountryOptionsCaProvinceStandard

-- | Defines the object schema located at @components.schemas.tax_product_registrations_resource_country_options_canada@ in the specification.
-- 
-- 
data TaxProductRegistrationsResourceCountryOptionsCanada = TaxProductRegistrationsResourceCountryOptionsCanada {
  -- | province_standard: 
  taxProductRegistrationsResourceCountryOptionsCanadaProvinceStandard :: (GHC.Maybe.Maybe TaxProductRegistrationsResourceCountryOptionsCaProvinceStandard)
  -- | type: Type of registration in Canada.
  , taxProductRegistrationsResourceCountryOptionsCanadaType :: TaxProductRegistrationsResourceCountryOptionsCanadaType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductRegistrationsResourceCountryOptionsCanada
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("province_standard" Data.Aeson.Types.ToJSON..=)) (taxProductRegistrationsResourceCountryOptionsCanadaProvinceStandard obj) : ["type" Data.Aeson.Types.ToJSON..= taxProductRegistrationsResourceCountryOptionsCanadaType obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("province_standard" Data.Aeson.Types.ToJSON..=)) (taxProductRegistrationsResourceCountryOptionsCanadaProvinceStandard obj) : ["type" Data.Aeson.Types.ToJSON..= taxProductRegistrationsResourceCountryOptionsCanadaType obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductRegistrationsResourceCountryOptionsCanada
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductRegistrationsResourceCountryOptionsCanada" (\obj -> (GHC.Base.pure TaxProductRegistrationsResourceCountryOptionsCanada GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "province_standard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))}
-- | Create a new 'TaxProductRegistrationsResourceCountryOptionsCanada' with all required fields.
mkTaxProductRegistrationsResourceCountryOptionsCanada :: TaxProductRegistrationsResourceCountryOptionsCanadaType' -- ^ 'taxProductRegistrationsResourceCountryOptionsCanadaType'
  -> TaxProductRegistrationsResourceCountryOptionsCanada
mkTaxProductRegistrationsResourceCountryOptionsCanada taxProductRegistrationsResourceCountryOptionsCanadaType = TaxProductRegistrationsResourceCountryOptionsCanada{taxProductRegistrationsResourceCountryOptionsCanadaProvinceStandard = GHC.Maybe.Nothing,
                                                                                                                                                                    taxProductRegistrationsResourceCountryOptionsCanadaType = taxProductRegistrationsResourceCountryOptionsCanadaType}
-- | Defines the enum schema located at @components.schemas.tax_product_registrations_resource_country_options_canada.properties.type@ in the specification.
-- 
-- Type of registration in Canada.
data TaxProductRegistrationsResourceCountryOptionsCanadaType' =
   TaxProductRegistrationsResourceCountryOptionsCanadaType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TaxProductRegistrationsResourceCountryOptionsCanadaType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TaxProductRegistrationsResourceCountryOptionsCanadaType'EnumProvinceStandard -- ^ Represents the JSON value @"province_standard"@
  | TaxProductRegistrationsResourceCountryOptionsCanadaType'EnumSimplified -- ^ Represents the JSON value @"simplified"@
  | TaxProductRegistrationsResourceCountryOptionsCanadaType'EnumStandard -- ^ Represents the JSON value @"standard"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductRegistrationsResourceCountryOptionsCanadaType'
    where {toJSON (TaxProductRegistrationsResourceCountryOptionsCanadaType'Other val) = val;
           toJSON (TaxProductRegistrationsResourceCountryOptionsCanadaType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TaxProductRegistrationsResourceCountryOptionsCanadaType'EnumProvinceStandard) = "province_standard";
           toJSON (TaxProductRegistrationsResourceCountryOptionsCanadaType'EnumSimplified) = "simplified";
           toJSON (TaxProductRegistrationsResourceCountryOptionsCanadaType'EnumStandard) = "standard"}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductRegistrationsResourceCountryOptionsCanadaType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "province_standard" -> TaxProductRegistrationsResourceCountryOptionsCanadaType'EnumProvinceStandard
                                             | val GHC.Classes.== "simplified" -> TaxProductRegistrationsResourceCountryOptionsCanadaType'EnumSimplified
                                             | val GHC.Classes.== "standard" -> TaxProductRegistrationsResourceCountryOptionsCanadaType'EnumStandard
                                             | GHC.Base.otherwise -> TaxProductRegistrationsResourceCountryOptionsCanadaType'Other val)}
