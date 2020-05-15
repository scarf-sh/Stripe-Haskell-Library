{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.IssuingCardShipping where

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
import StripeAPI.Types.Address

data IssuingCardShipping
    = IssuingCardShipping {issuingCardShippingAddress :: Address,
                           issuingCardShippingCarrier :: (GHC.Maybe.Maybe IssuingCardShippingCarrier'),
                           issuingCardShippingEta :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer),
                           issuingCardShippingName :: GHC.Base.String,
                           issuingCardShippingSpeed :: IssuingCardShippingSpeed',
                           issuingCardShippingStatus :: (GHC.Maybe.Maybe IssuingCardShippingStatus'),
                           issuingCardShippingTrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String),
                           issuingCardShippingTrackingUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                           issuingCardShippingType :: IssuingCardShippingType'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data IssuingCardShippingCarrier'
    = IssuingCardShippingCarrier'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingCardShippingCarrier'EnumTyped GHC.Base.String
    | IssuingCardShippingCarrier'EnumStringFedex
    | IssuingCardShippingCarrier'EnumStringUsps
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingCardShippingCarrier'
    where toJSON (IssuingCardShippingCarrier'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardShippingCarrier'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardShippingCarrier'EnumStringFedex) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fedex"
          toJSON (IssuingCardShippingCarrier'EnumStringUsps) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "usps"
instance Data.Aeson.FromJSON IssuingCardShippingCarrier'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fedex")
                                          then IssuingCardShippingCarrier'EnumStringFedex
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "usps")
                                                then IssuingCardShippingCarrier'EnumStringUsps
                                                else IssuingCardShippingCarrier'EnumOther val)
data IssuingCardShippingSpeed'
    = IssuingCardShippingSpeed'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingCardShippingSpeed'EnumTyped GHC.Base.String
    | IssuingCardShippingSpeed'EnumStringExpress
    | IssuingCardShippingSpeed'EnumStringOvernight
    | IssuingCardShippingSpeed'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingCardShippingSpeed'
    where toJSON (IssuingCardShippingSpeed'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardShippingSpeed'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardShippingSpeed'EnumStringExpress) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "express"
          toJSON (IssuingCardShippingSpeed'EnumStringOvernight) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "overnight"
          toJSON (IssuingCardShippingSpeed'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON IssuingCardShippingSpeed'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "express")
                                          then IssuingCardShippingSpeed'EnumStringExpress
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "overnight")
                                                then IssuingCardShippingSpeed'EnumStringOvernight
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                      then IssuingCardShippingSpeed'EnumStringStandard
                                                      else IssuingCardShippingSpeed'EnumOther val)
data IssuingCardShippingStatus'
    = IssuingCardShippingStatus'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingCardShippingStatus'EnumTyped GHC.Base.String
    | IssuingCardShippingStatus'EnumStringCanceled
    | IssuingCardShippingStatus'EnumStringDelivered
    | IssuingCardShippingStatus'EnumStringFailure
    | IssuingCardShippingStatus'EnumStringPending
    | IssuingCardShippingStatus'EnumStringReturned
    | IssuingCardShippingStatus'EnumStringShipped
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingCardShippingStatus'
    where toJSON (IssuingCardShippingStatus'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardShippingStatus'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardShippingStatus'EnumStringCanceled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "canceled"
          toJSON (IssuingCardShippingStatus'EnumStringDelivered) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "delivered"
          toJSON (IssuingCardShippingStatus'EnumStringFailure) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "failure"
          toJSON (IssuingCardShippingStatus'EnumStringPending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
          toJSON (IssuingCardShippingStatus'EnumStringReturned) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "returned"
          toJSON (IssuingCardShippingStatus'EnumStringShipped) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "shipped"
instance Data.Aeson.FromJSON IssuingCardShippingStatus'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "canceled")
                                          then IssuingCardShippingStatus'EnumStringCanceled
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "delivered")
                                                then IssuingCardShippingStatus'EnumStringDelivered
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "failure")
                                                      then IssuingCardShippingStatus'EnumStringFailure
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                                            then IssuingCardShippingStatus'EnumStringPending
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "returned")
                                                                  then IssuingCardShippingStatus'EnumStringReturned
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "shipped")
                                                                        then IssuingCardShippingStatus'EnumStringShipped
                                                                        else IssuingCardShippingStatus'EnumOther val)
data IssuingCardShippingType'
    = IssuingCardShippingType'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingCardShippingType'EnumTyped GHC.Base.String
    | IssuingCardShippingType'EnumStringBulk
    | IssuingCardShippingType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingCardShippingType'
    where toJSON (IssuingCardShippingType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardShippingType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingCardShippingType'EnumStringBulk) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bulk"
          toJSON (IssuingCardShippingType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON IssuingCardShippingType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bulk")
                                          then IssuingCardShippingType'EnumStringBulk
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then IssuingCardShippingType'EnumStringIndividual
                                                else IssuingCardShippingType'EnumOther val)
instance Data.Aeson.ToJSON IssuingCardShipping
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (issuingCardShippingAddress obj) : (Data.Aeson..=) "carrier" (issuingCardShippingCarrier obj) : (Data.Aeson..=) "eta" (issuingCardShippingEta obj) : (Data.Aeson..=) "name" (issuingCardShippingName obj) : (Data.Aeson..=) "speed" (issuingCardShippingSpeed obj) : (Data.Aeson..=) "status" (issuingCardShippingStatus obj) : (Data.Aeson..=) "tracking_number" (issuingCardShippingTrackingNumber obj) : (Data.Aeson..=) "tracking_url" (issuingCardShippingTrackingUrl obj) : (Data.Aeson..=) "type" (issuingCardShippingType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (issuingCardShippingAddress obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (issuingCardShippingCarrier obj) GHC.Base.<> ((Data.Aeson..=) "eta" (issuingCardShippingEta obj) GHC.Base.<> ((Data.Aeson..=) "name" (issuingCardShippingName obj) GHC.Base.<> ((Data.Aeson..=) "speed" (issuingCardShippingSpeed obj) GHC.Base.<> ((Data.Aeson..=) "status" (issuingCardShippingStatus obj) GHC.Base.<> ((Data.Aeson..=) "tracking_number" (issuingCardShippingTrackingNumber obj) GHC.Base.<> ((Data.Aeson..=) "tracking_url" (issuingCardShippingTrackingUrl obj) GHC.Base.<> (Data.Aeson..=) "type" (issuingCardShippingType obj)))))))))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardShipping
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardShipping" (\obj -> ((((((((GHC.Base.pure IssuingCardShipping GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eta")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "speed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))