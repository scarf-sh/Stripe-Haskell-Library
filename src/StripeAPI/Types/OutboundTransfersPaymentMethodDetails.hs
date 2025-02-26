-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema OutboundTransfersPaymentMethodDetails
module StripeAPI.Types.OutboundTransfersPaymentMethodDetails where

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
import {-# SOURCE #-} StripeAPI.Types.OutboundTransfersPaymentMethodDetailsUsBankAccount
import {-# SOURCE #-} StripeAPI.Types.TreasurySharedResourceBillingDetails

-- | Defines the object schema located at @components.schemas.outbound_transfers_payment_method_details@ in the specification.
-- 
-- 
data OutboundTransfersPaymentMethodDetails = OutboundTransfersPaymentMethodDetails {
  -- | billing_details: 
  outboundTransfersPaymentMethodDetailsBillingDetails :: TreasurySharedResourceBillingDetails
  -- | us_bank_account: 
  , outboundTransfersPaymentMethodDetailsUsBankAccount :: (GHC.Maybe.Maybe OutboundTransfersPaymentMethodDetailsUsBankAccount)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OutboundTransfersPaymentMethodDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["billing_details" Data.Aeson.Types.ToJSON..= outboundTransfersPaymentMethodDetailsBillingDetails obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccount obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "us_bank_account"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["billing_details" Data.Aeson.Types.ToJSON..= outboundTransfersPaymentMethodDetailsBillingDetails obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (outboundTransfersPaymentMethodDetailsUsBankAccount obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "us_bank_account"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON OutboundTransfersPaymentMethodDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "OutboundTransfersPaymentMethodDetails" (\obj -> (GHC.Base.pure OutboundTransfersPaymentMethodDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "billing_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account"))}
-- | Create a new 'OutboundTransfersPaymentMethodDetails' with all required fields.
mkOutboundTransfersPaymentMethodDetails :: TreasurySharedResourceBillingDetails -- ^ 'outboundTransfersPaymentMethodDetailsBillingDetails'
  -> OutboundTransfersPaymentMethodDetails
mkOutboundTransfersPaymentMethodDetails outboundTransfersPaymentMethodDetailsBillingDetails = OutboundTransfersPaymentMethodDetails{outboundTransfersPaymentMethodDetailsBillingDetails = outboundTransfersPaymentMethodDetailsBillingDetails,
                                                                                                                                    outboundTransfersPaymentMethodDetailsUsBankAccount = GHC.Maybe.Nothing}
