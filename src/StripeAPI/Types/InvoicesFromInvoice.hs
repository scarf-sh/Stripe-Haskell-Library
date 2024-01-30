-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InvoicesFromInvoice
module StripeAPI.Types.InvoicesFromInvoice where

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
import {-# SOURCE #-} StripeAPI.Types.Invoice

-- | Defines the object schema located at @components.schemas.invoices_from_invoice@ in the specification.
-- 
-- 
data InvoicesFromInvoice = InvoicesFromInvoice {
  -- | action: The relation between this invoice and the cloned invoice
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  invoicesFromInvoiceAction :: Data.Text.Internal.Text
  -- | invoice: The invoice that was cloned.
  , invoicesFromInvoiceInvoice :: InvoicesFromInvoiceInvoice'Variants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoicesFromInvoice
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["action" Data.Aeson.Types.ToJSON..= invoicesFromInvoiceAction obj] : ["invoice" Data.Aeson.Types.ToJSON..= invoicesFromInvoiceInvoice obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["action" Data.Aeson.Types.ToJSON..= invoicesFromInvoiceAction obj] : ["invoice" Data.Aeson.Types.ToJSON..= invoicesFromInvoiceInvoice obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON InvoicesFromInvoice
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesFromInvoice" (\obj -> (GHC.Base.pure InvoicesFromInvoice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invoice"))}
-- | Create a new 'InvoicesFromInvoice' with all required fields.
mkInvoicesFromInvoice :: Data.Text.Internal.Text -- ^ 'invoicesFromInvoiceAction'
  -> InvoicesFromInvoiceInvoice'Variants -- ^ 'invoicesFromInvoiceInvoice'
  -> InvoicesFromInvoice
mkInvoicesFromInvoice invoicesFromInvoiceAction invoicesFromInvoiceInvoice = InvoicesFromInvoice{invoicesFromInvoiceAction = invoicesFromInvoiceAction,
                                                                                                 invoicesFromInvoiceInvoice = invoicesFromInvoiceInvoice}
-- | Defines the oneOf schema located at @components.schemas.invoices_from_invoice.properties.invoice.anyOf@ in the specification.
-- 
-- The invoice that was cloned.
data InvoicesFromInvoiceInvoice'Variants =
   InvoicesFromInvoiceInvoice'Text Data.Text.Internal.Text
  | InvoicesFromInvoiceInvoice'Invoice Invoice
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoicesFromInvoiceInvoice'Variants
    where {toJSON (InvoicesFromInvoiceInvoice'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (InvoicesFromInvoiceInvoice'Invoice a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON InvoicesFromInvoiceInvoice'Variants
    where {parseJSON val = case (InvoicesFromInvoiceInvoice'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((InvoicesFromInvoiceInvoice'Invoice Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
