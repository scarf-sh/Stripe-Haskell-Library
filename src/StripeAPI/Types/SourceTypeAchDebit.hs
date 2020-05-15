{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTypeAchDebit where

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

data SourceTypeAchDebit
    = SourceTypeAchDebit {sourceTypeAchDebitBankName :: (GHC.Maybe.Maybe GHC.Base.String),
                          sourceTypeAchDebitCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                          sourceTypeAchDebitFingerprint :: (GHC.Maybe.Maybe GHC.Base.String),
                          sourceTypeAchDebitLast4 :: (GHC.Maybe.Maybe GHC.Base.String),
                          sourceTypeAchDebitRoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                          sourceTypeAchDebitType :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeAchDebit
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_name" (sourceTypeAchDebitBankName obj) : (Data.Aeson..=) "country" (sourceTypeAchDebitCountry obj) : (Data.Aeson..=) "fingerprint" (sourceTypeAchDebitFingerprint obj) : (Data.Aeson..=) "last4" (sourceTypeAchDebitLast4 obj) : (Data.Aeson..=) "routing_number" (sourceTypeAchDebitRoutingNumber obj) : (Data.Aeson..=) "type" (sourceTypeAchDebitType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_name" (sourceTypeAchDebitBankName obj) GHC.Base.<> ((Data.Aeson..=) "country" (sourceTypeAchDebitCountry obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (sourceTypeAchDebitFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "last4" (sourceTypeAchDebitLast4 obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (sourceTypeAchDebitRoutingNumber obj) GHC.Base.<> (Data.Aeson..=) "type" (sourceTypeAchDebitType obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeAchDebit
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeAchDebit" (\obj -> (((((GHC.Base.pure SourceTypeAchDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))