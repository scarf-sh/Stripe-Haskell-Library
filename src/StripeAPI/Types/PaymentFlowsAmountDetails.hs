-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentFlowsAmountDetails
module StripeAPI.Types.PaymentFlowsAmountDetails where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentFlowsAmountDetailsResourceTip

-- | Defines the object schema located at @components.schemas.payment_flows_amount_details@ in the specification.
-- 
-- 
data PaymentFlowsAmountDetails = PaymentFlowsAmountDetails {
  -- | tip: 
  paymentFlowsAmountDetailsTip :: (GHC.Maybe.Maybe PaymentFlowsAmountDetailsResourceTip)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentFlowsAmountDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tip" Data.Aeson.Types.ToJSON..=)) (paymentFlowsAmountDetailsTip obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tip" Data.Aeson.Types.ToJSON..=)) (paymentFlowsAmountDetailsTip obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentFlowsAmountDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentFlowsAmountDetails" (\obj -> GHC.Base.pure PaymentFlowsAmountDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tip"))}
-- | Create a new 'PaymentFlowsAmountDetails' with all required fields.
mkPaymentFlowsAmountDetails :: PaymentFlowsAmountDetails
mkPaymentFlowsAmountDetails = PaymentFlowsAmountDetails{paymentFlowsAmountDetailsTip = GHC.Maybe.Nothing}
