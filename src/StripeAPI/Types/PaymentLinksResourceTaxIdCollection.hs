-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentLinksResourceTaxIdCollection
module StripeAPI.Types.PaymentLinksResourceTaxIdCollection where

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

-- | Defines the object schema located at @components.schemas.payment_links_resource_tax_id_collection@ in the specification.
-- 
-- 
data PaymentLinksResourceTaxIdCollection = PaymentLinksResourceTaxIdCollection {
  -- | enabled: Indicates whether tax ID collection is enabled for the session.
  paymentLinksResourceTaxIdCollectionEnabled :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourceTaxIdCollection
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= paymentLinksResourceTaxIdCollectionEnabled obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= paymentLinksResourceTaxIdCollectionEnabled obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourceTaxIdCollection
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentLinksResourceTaxIdCollection" (\obj -> GHC.Base.pure PaymentLinksResourceTaxIdCollection GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled"))}
-- | Create a new 'PaymentLinksResourceTaxIdCollection' with all required fields.
mkPaymentLinksResourceTaxIdCollection :: GHC.Types.Bool -- ^ 'paymentLinksResourceTaxIdCollectionEnabled'
  -> PaymentLinksResourceTaxIdCollection
mkPaymentLinksResourceTaxIdCollection paymentLinksResourceTaxIdCollectionEnabled = PaymentLinksResourceTaxIdCollection{paymentLinksResourceTaxIdCollectionEnabled = paymentLinksResourceTaxIdCollectionEnabled}
