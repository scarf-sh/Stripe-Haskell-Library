{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.InvoicesResourceInvoiceTaxId where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
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

data InvoicesResourceInvoiceTaxId
    = InvoicesResourceInvoiceTaxId {invoicesResourceInvoiceTaxIdType :: InvoicesResourceInvoiceTaxIdType',
                                    invoicesResourceInvoiceTaxIdValue :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data InvoicesResourceInvoiceTaxIdType'
    = InvoicesResourceInvoiceTaxIdType'EnumOther Data.Aeson.Types.Internal.Value
    | InvoicesResourceInvoiceTaxIdType'EnumTyped GHC.Base.String
    | InvoicesResourceInvoiceTaxIdType'EnumStringAuAbn
    | InvoicesResourceInvoiceTaxIdType'EnumStringCaBn
    | InvoicesResourceInvoiceTaxIdType'EnumStringCaQst
    | InvoicesResourceInvoiceTaxIdType'EnumStringChVat
    | InvoicesResourceInvoiceTaxIdType'EnumStringEsCif
    | InvoicesResourceInvoiceTaxIdType'EnumStringEuVat
    | InvoicesResourceInvoiceTaxIdType'EnumStringHkBr
    | InvoicesResourceInvoiceTaxIdType'EnumStringInGst
    | InvoicesResourceInvoiceTaxIdType'EnumStringJpCn
    | InvoicesResourceInvoiceTaxIdType'EnumStringKrBrn
    | InvoicesResourceInvoiceTaxIdType'EnumStringLiUid
    | InvoicesResourceInvoiceTaxIdType'EnumStringMxRfc
    | InvoicesResourceInvoiceTaxIdType'EnumStringMyItn
    | InvoicesResourceInvoiceTaxIdType'EnumStringMySst
    | InvoicesResourceInvoiceTaxIdType'EnumStringNoVat
    | InvoicesResourceInvoiceTaxIdType'EnumStringNzGst
    | InvoicesResourceInvoiceTaxIdType'EnumStringRuInn
    | InvoicesResourceInvoiceTaxIdType'EnumStringSgUen
    | InvoicesResourceInvoiceTaxIdType'EnumStringThVat
    | InvoicesResourceInvoiceTaxIdType'EnumStringTwVat
    | InvoicesResourceInvoiceTaxIdType'EnumStringUnknown
    | InvoicesResourceInvoiceTaxIdType'EnumStringUsEin
    | InvoicesResourceInvoiceTaxIdType'EnumStringZaVat
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON InvoicesResourceInvoiceTaxIdType'
    where toJSON (InvoicesResourceInvoiceTaxIdType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringAuAbn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "au_abn"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringCaBn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_bn"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringCaQst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_qst"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringChVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ch_vat"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringEsCif) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "es_cif"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringEuVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eu_vat"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringHkBr) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hk_br"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringInGst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "in_gst"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringJpCn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "jp_cn"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringKrBrn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kr_brn"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringLiUid) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "li_uid"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringMxRfc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mx_rfc"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringMyItn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_itn"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringMySst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_sst"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringNoVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "no_vat"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringNzGst) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nz_gst"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringRuInn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ru_inn"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringSgUen) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sg_uen"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringThVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "th_vat"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringTwVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tw_vat"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringUnknown) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unknown"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringUsEin) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "us_ein"
          toJSON (InvoicesResourceInvoiceTaxIdType'EnumStringZaVat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "za_vat"
instance Data.Aeson.FromJSON InvoicesResourceInvoiceTaxIdType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "au_abn")
                                          then InvoicesResourceInvoiceTaxIdType'EnumStringAuAbn
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_bn")
                                                then InvoicesResourceInvoiceTaxIdType'EnumStringCaBn
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ca_qst")
                                                      then InvoicesResourceInvoiceTaxIdType'EnumStringCaQst
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ch_vat")
                                                            then InvoicesResourceInvoiceTaxIdType'EnumStringChVat
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "es_cif")
                                                                  then InvoicesResourceInvoiceTaxIdType'EnumStringEsCif
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eu_vat")
                                                                        then InvoicesResourceInvoiceTaxIdType'EnumStringEuVat
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hk_br")
                                                                              then InvoicesResourceInvoiceTaxIdType'EnumStringHkBr
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "in_gst")
                                                                                    then InvoicesResourceInvoiceTaxIdType'EnumStringInGst
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "jp_cn")
                                                                                          then InvoicesResourceInvoiceTaxIdType'EnumStringJpCn
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kr_brn")
                                                                                                then InvoicesResourceInvoiceTaxIdType'EnumStringKrBrn
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "li_uid")
                                                                                                      then InvoicesResourceInvoiceTaxIdType'EnumStringLiUid
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mx_rfc")
                                                                                                            then InvoicesResourceInvoiceTaxIdType'EnumStringMxRfc
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_itn")
                                                                                                                  then InvoicesResourceInvoiceTaxIdType'EnumStringMyItn
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "my_sst")
                                                                                                                        then InvoicesResourceInvoiceTaxIdType'EnumStringMySst
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "no_vat")
                                                                                                                              then InvoicesResourceInvoiceTaxIdType'EnumStringNoVat
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "nz_gst")
                                                                                                                                    then InvoicesResourceInvoiceTaxIdType'EnumStringNzGst
                                                                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ru_inn")
                                                                                                                                          then InvoicesResourceInvoiceTaxIdType'EnumStringRuInn
                                                                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sg_uen")
                                                                                                                                                then InvoicesResourceInvoiceTaxIdType'EnumStringSgUen
                                                                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "th_vat")
                                                                                                                                                      then InvoicesResourceInvoiceTaxIdType'EnumStringThVat
                                                                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tw_vat")
                                                                                                                                                            then InvoicesResourceInvoiceTaxIdType'EnumStringTwVat
                                                                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unknown")
                                                                                                                                                                  then InvoicesResourceInvoiceTaxIdType'EnumStringUnknown
                                                                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "us_ein")
                                                                                                                                                                        then InvoicesResourceInvoiceTaxIdType'EnumStringUsEin
                                                                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "za_vat")
                                                                                                                                                                              then InvoicesResourceInvoiceTaxIdType'EnumStringZaVat
                                                                                                                                                                              else InvoicesResourceInvoiceTaxIdType'EnumOther val)
instance Data.Aeson.ToJSON InvoicesResourceInvoiceTaxId
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "type" (invoicesResourceInvoiceTaxIdType obj) : (Data.Aeson..=) "value" (invoicesResourceInvoiceTaxIdValue obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "type" (invoicesResourceInvoiceTaxIdType obj) GHC.Base.<> (Data.Aeson..=) "value" (invoicesResourceInvoiceTaxIdValue obj))
instance Data.Aeson.Types.FromJSON.FromJSON InvoicesResourceInvoiceTaxId
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesResourceInvoiceTaxId" (\obj -> (GHC.Base.pure InvoicesResourceInvoiceTaxId GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "value"))