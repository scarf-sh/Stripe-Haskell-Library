-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InvoicePaymentMethodOptionsAcssDebit
module StripeAPI.Types.InvoicePaymentMethodOptionsAcssDebit where

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
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsAcssDebitMandateOptions

-- | Defines the object schema located at @components.schemas.invoice_payment_method_options_acss_debit@ in the specification.
-- 
-- 
data InvoicePaymentMethodOptionsAcssDebit = InvoicePaymentMethodOptionsAcssDebit {
  -- | mandate_options: 
  invoicePaymentMethodOptionsAcssDebitMandateOptions :: (GHC.Maybe.Maybe InvoicePaymentMethodOptionsAcssDebitMandateOptions)
  -- | verification_method: Bank account verification method.
  , invoicePaymentMethodOptionsAcssDebitVerificationMethod :: (GHC.Maybe.Maybe InvoicePaymentMethodOptionsAcssDebitVerificationMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoicePaymentMethodOptionsAcssDebit
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsAcssDebitMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsAcssDebitVerificationMethod obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsAcssDebitMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsAcssDebitVerificationMethod obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON InvoicePaymentMethodOptionsAcssDebit
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicePaymentMethodOptionsAcssDebit" (\obj -> (GHC.Base.pure InvoicePaymentMethodOptionsAcssDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mandate_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))}
-- | Create a new 'InvoicePaymentMethodOptionsAcssDebit' with all required fields.
mkInvoicePaymentMethodOptionsAcssDebit :: InvoicePaymentMethodOptionsAcssDebit
mkInvoicePaymentMethodOptionsAcssDebit = InvoicePaymentMethodOptionsAcssDebit{invoicePaymentMethodOptionsAcssDebitMandateOptions = GHC.Maybe.Nothing,
                                                                              invoicePaymentMethodOptionsAcssDebitVerificationMethod = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.invoice_payment_method_options_acss_debit.properties.verification_method@ in the specification.
-- 
-- Bank account verification method.
data InvoicePaymentMethodOptionsAcssDebitVerificationMethod' =
   InvoicePaymentMethodOptionsAcssDebitVerificationMethod'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | InvoicePaymentMethodOptionsAcssDebitVerificationMethod'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | InvoicePaymentMethodOptionsAcssDebitVerificationMethod'EnumAutomatic -- ^ Represents the JSON value @"automatic"@
  | InvoicePaymentMethodOptionsAcssDebitVerificationMethod'EnumInstant -- ^ Represents the JSON value @"instant"@
  | InvoicePaymentMethodOptionsAcssDebitVerificationMethod'EnumMicrodeposits -- ^ Represents the JSON value @"microdeposits"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoicePaymentMethodOptionsAcssDebitVerificationMethod'
    where {toJSON (InvoicePaymentMethodOptionsAcssDebitVerificationMethod'Other val) = val;
           toJSON (InvoicePaymentMethodOptionsAcssDebitVerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (InvoicePaymentMethodOptionsAcssDebitVerificationMethod'EnumAutomatic) = "automatic";
           toJSON (InvoicePaymentMethodOptionsAcssDebitVerificationMethod'EnumInstant) = "instant";
           toJSON (InvoicePaymentMethodOptionsAcssDebitVerificationMethod'EnumMicrodeposits) = "microdeposits"}
instance Data.Aeson.Types.FromJSON.FromJSON InvoicePaymentMethodOptionsAcssDebitVerificationMethod'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "automatic" -> InvoicePaymentMethodOptionsAcssDebitVerificationMethod'EnumAutomatic
                                             | val GHC.Classes.== "instant" -> InvoicePaymentMethodOptionsAcssDebitVerificationMethod'EnumInstant
                                             | val GHC.Classes.== "microdeposits" -> InvoicePaymentMethodOptionsAcssDebitVerificationMethod'EnumMicrodeposits
                                             | GHC.Base.otherwise -> InvoicePaymentMethodOptionsAcssDebitVerificationMethod'Other val)}
