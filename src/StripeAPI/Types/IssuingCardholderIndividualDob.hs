{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.IssuingCardholderIndividualDob where

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

data IssuingCardholderIndividualDob
    = IssuingCardholderIndividualDob {issuingCardholderIndividualDobDay :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                      issuingCardholderIndividualDobMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                                      issuingCardholderIndividualDobYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingCardholderIndividualDob
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "day" (issuingCardholderIndividualDobDay obj) : (Data.Aeson..=) "month" (issuingCardholderIndividualDobMonth obj) : (Data.Aeson..=) "year" (issuingCardholderIndividualDobYear obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "day" (issuingCardholderIndividualDobDay obj) GHC.Base.<> ((Data.Aeson..=) "month" (issuingCardholderIndividualDobMonth obj) GHC.Base.<> (Data.Aeson..=) "year" (issuingCardholderIndividualDobYear obj)))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderIndividualDob
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderIndividualDob" (\obj -> ((GHC.Base.pure IssuingCardholderIndividualDob GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "year"))