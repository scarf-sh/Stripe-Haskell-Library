-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentIntentProcessing
module StripeAPI.Types.PaymentIntentProcessing where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentCardProcessing

-- | Defines the object schema located at @components.schemas.payment_intent_processing@ in the specification.
-- 
-- 
data PaymentIntentProcessing = PaymentIntentProcessing {
  -- | card: 
  paymentIntentProcessingCard :: (GHC.Maybe.Maybe PaymentIntentCardProcessing)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentProcessing
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (paymentIntentProcessingCard obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "card"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (paymentIntentProcessingCard obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "card"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentProcessing
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentProcessing" (\obj -> GHC.Base.pure PaymentIntentProcessing GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card"))}
-- | Create a new 'PaymentIntentProcessing' with all required fields.
mkPaymentIntentProcessing :: PaymentIntentProcessing
mkPaymentIntentProcessing = PaymentIntentProcessing{paymentIntentProcessingCard = GHC.Maybe.Nothing}
