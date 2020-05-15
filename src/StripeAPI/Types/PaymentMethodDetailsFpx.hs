{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.PaymentMethodDetailsFpx where

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

data PaymentMethodDetailsFpx
    = PaymentMethodDetailsFpx {paymentMethodDetailsFpxBank :: PaymentMethodDetailsFpxBank',
                               paymentMethodDetailsFpxTransactionId :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data PaymentMethodDetailsFpxBank'
    = PaymentMethodDetailsFpxBank'EnumOther Data.Aeson.Types.Internal.Value
    | PaymentMethodDetailsFpxBank'EnumTyped GHC.Base.String
    | PaymentMethodDetailsFpxBank'EnumStringAffinBank
    | PaymentMethodDetailsFpxBank'EnumStringAllianceBank
    | PaymentMethodDetailsFpxBank'EnumStringAmbank
    | PaymentMethodDetailsFpxBank'EnumStringBankIslam
    | PaymentMethodDetailsFpxBank'EnumStringBankMuamalat
    | PaymentMethodDetailsFpxBank'EnumStringBankRakyat
    | PaymentMethodDetailsFpxBank'EnumStringBsn
    | PaymentMethodDetailsFpxBank'EnumStringCimb
    | PaymentMethodDetailsFpxBank'EnumStringDeutscheBank
    | PaymentMethodDetailsFpxBank'EnumStringHongLeongBank
    | PaymentMethodDetailsFpxBank'EnumStringHsbc
    | PaymentMethodDetailsFpxBank'EnumStringKfh
    | PaymentMethodDetailsFpxBank'EnumStringMaybank2e
    | PaymentMethodDetailsFpxBank'EnumStringMaybank2u
    | PaymentMethodDetailsFpxBank'EnumStringOcbc
    | PaymentMethodDetailsFpxBank'EnumStringPbEnterprise
    | PaymentMethodDetailsFpxBank'EnumStringPublicBank
    | PaymentMethodDetailsFpxBank'EnumStringRhb
    | PaymentMethodDetailsFpxBank'EnumStringStandardChartered
    | PaymentMethodDetailsFpxBank'EnumStringUob
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsFpxBank'
    where toJSON (PaymentMethodDetailsFpxBank'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsFpxBank'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PaymentMethodDetailsFpxBank'EnumStringAffinBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "affin_bank"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringAllianceBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alliance_bank"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringAmbank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ambank"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringBankIslam) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_islam"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringBankMuamalat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_muamalat"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringBankRakyat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_rakyat"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringBsn) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bsn"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringCimb) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cimb"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringDeutscheBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "deutsche_bank"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringHongLeongBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hong_leong_bank"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringHsbc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hsbc"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringKfh) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kfh"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringMaybank2e) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2e"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringMaybank2u) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2u"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringOcbc) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ocbc"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringPbEnterprise) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pb_enterprise"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringPublicBank) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_bank"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringRhb) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rhb"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringStandardChartered) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard_chartered"
          toJSON (PaymentMethodDetailsFpxBank'EnumStringUob) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "uob"
instance Data.Aeson.FromJSON PaymentMethodDetailsFpxBank'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "affin_bank")
                                          then PaymentMethodDetailsFpxBank'EnumStringAffinBank
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alliance_bank")
                                                then PaymentMethodDetailsFpxBank'EnumStringAllianceBank
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ambank")
                                                      then PaymentMethodDetailsFpxBank'EnumStringAmbank
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_islam")
                                                            then PaymentMethodDetailsFpxBank'EnumStringBankIslam
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_muamalat")
                                                                  then PaymentMethodDetailsFpxBank'EnumStringBankMuamalat
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_rakyat")
                                                                        then PaymentMethodDetailsFpxBank'EnumStringBankRakyat
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bsn")
                                                                              then PaymentMethodDetailsFpxBank'EnumStringBsn
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cimb")
                                                                                    then PaymentMethodDetailsFpxBank'EnumStringCimb
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "deutsche_bank")
                                                                                          then PaymentMethodDetailsFpxBank'EnumStringDeutscheBank
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hong_leong_bank")
                                                                                                then PaymentMethodDetailsFpxBank'EnumStringHongLeongBank
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "hsbc")
                                                                                                      then PaymentMethodDetailsFpxBank'EnumStringHsbc
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "kfh")
                                                                                                            then PaymentMethodDetailsFpxBank'EnumStringKfh
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2e")
                                                                                                                  then PaymentMethodDetailsFpxBank'EnumStringMaybank2e
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "maybank2u")
                                                                                                                        then PaymentMethodDetailsFpxBank'EnumStringMaybank2u
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ocbc")
                                                                                                                              then PaymentMethodDetailsFpxBank'EnumStringOcbc
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pb_enterprise")
                                                                                                                                    then PaymentMethodDetailsFpxBank'EnumStringPbEnterprise
                                                                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "public_bank")
                                                                                                                                          then PaymentMethodDetailsFpxBank'EnumStringPublicBank
                                                                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "rhb")
                                                                                                                                                then PaymentMethodDetailsFpxBank'EnumStringRhb
                                                                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard_chartered")
                                                                                                                                                      then PaymentMethodDetailsFpxBank'EnumStringStandardChartered
                                                                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "uob")
                                                                                                                                                            then PaymentMethodDetailsFpxBank'EnumStringUob
                                                                                                                                                            else PaymentMethodDetailsFpxBank'EnumOther val)
instance Data.Aeson.ToJSON PaymentMethodDetailsFpx
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank" (paymentMethodDetailsFpxBank obj) : (Data.Aeson..=) "transaction_id" (paymentMethodDetailsFpxTransactionId obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank" (paymentMethodDetailsFpxBank obj) GHC.Base.<> (Data.Aeson..=) "transaction_id" (paymentMethodDetailsFpxTransactionId obj))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsFpx
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsFpx" (\obj -> (GHC.Base.pure PaymentMethodDetailsFpx GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transaction_id"))