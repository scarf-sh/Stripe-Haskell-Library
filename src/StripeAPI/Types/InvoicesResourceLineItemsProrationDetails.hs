-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InvoicesResourceLineItemsProrationDetails
module StripeAPI.Types.InvoicesResourceLineItemsProrationDetails where

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
import {-# SOURCE #-} StripeAPI.Types.InvoicesResourceLineItemsCreditedItems

-- | Defines the object schema located at @components.schemas.invoices_resource_line_items_proration_details@ in the specification.
-- 
-- 
data InvoicesResourceLineItemsProrationDetails = InvoicesResourceLineItemsProrationDetails {
  -- | credited_items: For a credit proration \`line_item\`, the original debit line_items to which the credit proration applies.
  invoicesResourceLineItemsProrationDetailsCreditedItems :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoicesResourceLineItemsProrationDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credited_items" Data.Aeson.Types.ToJSON..=)) (invoicesResourceLineItemsProrationDetailsCreditedItems obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credited_items" Data.Aeson.Types.ToJSON..=)) (invoicesResourceLineItemsProrationDetailsCreditedItems obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON InvoicesResourceLineItemsProrationDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesResourceLineItemsProrationDetails" (\obj -> GHC.Base.pure InvoicesResourceLineItemsProrationDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "credited_items"))}
-- | Create a new 'InvoicesResourceLineItemsProrationDetails' with all required fields.
mkInvoicesResourceLineItemsProrationDetails :: InvoicesResourceLineItemsProrationDetails
mkInvoicesResourceLineItemsProrationDetails = InvoicesResourceLineItemsProrationDetails{invoicesResourceLineItemsProrationDetailsCreditedItems = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.invoices_resource_line_items_proration_details.properties.credited_items.anyOf@ in the specification.
-- 
-- For a credit proration \\\`line_item\\\`, the original debit line_items to which the credit proration applies.
data InvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable = InvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable {
  -- | invoice: Invoice containing the credited invoice line items
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  invoicesResourceLineItemsProrationDetailsCreditedItems'NonNullableInvoice :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | invoice_line_items: Credited invoice line items
  , invoicesResourceLineItemsProrationDetailsCreditedItems'NonNullableInvoiceLineItems :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice" Data.Aeson.Types.ToJSON..=)) (invoicesResourceLineItemsProrationDetailsCreditedItems'NonNullableInvoice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_line_items" Data.Aeson.Types.ToJSON..=)) (invoicesResourceLineItemsProrationDetailsCreditedItems'NonNullableInvoiceLineItems obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice" Data.Aeson.Types.ToJSON..=)) (invoicesResourceLineItemsProrationDetailsCreditedItems'NonNullableInvoice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_line_items" Data.Aeson.Types.ToJSON..=)) (invoicesResourceLineItemsProrationDetailsCreditedItems'NonNullableInvoiceLineItems obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON InvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable" (\obj -> (GHC.Base.pure InvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invoice_line_items"))}
-- | Create a new 'InvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable' with all required fields.
mkInvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable :: InvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable
mkInvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable = InvoicesResourceLineItemsProrationDetailsCreditedItems'NonNullable{invoicesResourceLineItemsProrationDetailsCreditedItems'NonNullableInvoice = GHC.Maybe.Nothing,
                                                                                                                                          invoicesResourceLineItemsProrationDetailsCreditedItems'NonNullableInvoiceLineItems = GHC.Maybe.Nothing}
