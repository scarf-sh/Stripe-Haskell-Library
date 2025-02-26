-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InvoiceMandateOptionsCard
module StripeAPI.Types.InvoiceMandateOptionsCard where

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

-- | Defines the object schema located at @components.schemas.invoice_mandate_options_card@ in the specification.
-- 
-- 
data InvoiceMandateOptionsCard = InvoiceMandateOptionsCard {
  -- | amount: Amount to be charged for future payments.
  invoiceMandateOptionsCardAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | amount_type: One of \`fixed\` or \`maximum\`. If \`fixed\`, the \`amount\` param refers to the exact amount to be charged in future payments. If \`maximum\`, the amount charged can be up to the value passed for the \`amount\` param.
  , invoiceMandateOptionsCardAmountType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoiceMandateOptionsCardAmountType'NonNullable))
  -- | description: A description of the mandate or subscription that is meant to be displayed to the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , invoiceMandateOptionsCardDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoiceMandateOptionsCard
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (invoiceMandateOptionsCardAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_type" Data.Aeson.Types.ToJSON..=)) (invoiceMandateOptionsCardAmountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (invoiceMandateOptionsCardDescription obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (invoiceMandateOptionsCardAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_type" Data.Aeson.Types.ToJSON..=)) (invoiceMandateOptionsCardAmountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (invoiceMandateOptionsCardDescription obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceMandateOptionsCard
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceMandateOptionsCard" (\obj -> ((GHC.Base.pure InvoiceMandateOptionsCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description"))}
-- | Create a new 'InvoiceMandateOptionsCard' with all required fields.
mkInvoiceMandateOptionsCard :: InvoiceMandateOptionsCard
mkInvoiceMandateOptionsCard = InvoiceMandateOptionsCard{invoiceMandateOptionsCardAmount = GHC.Maybe.Nothing,
                                                        invoiceMandateOptionsCardAmountType = GHC.Maybe.Nothing,
                                                        invoiceMandateOptionsCardDescription = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.invoice_mandate_options_card.properties.amount_type@ in the specification.
-- 
-- One of \`fixed\` or \`maximum\`. If \`fixed\`, the \`amount\` param refers to the exact amount to be charged in future payments. If \`maximum\`, the amount charged can be up to the value passed for the \`amount\` param.
data InvoiceMandateOptionsCardAmountType'NonNullable =
   InvoiceMandateOptionsCardAmountType'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | InvoiceMandateOptionsCardAmountType'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | InvoiceMandateOptionsCardAmountType'NonNullableEnumFixed -- ^ Represents the JSON value @"fixed"@
  | InvoiceMandateOptionsCardAmountType'NonNullableEnumMaximum -- ^ Represents the JSON value @"maximum"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoiceMandateOptionsCardAmountType'NonNullable
    where {toJSON (InvoiceMandateOptionsCardAmountType'NonNullableOther val) = val;
           toJSON (InvoiceMandateOptionsCardAmountType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (InvoiceMandateOptionsCardAmountType'NonNullableEnumFixed) = "fixed";
           toJSON (InvoiceMandateOptionsCardAmountType'NonNullableEnumMaximum) = "maximum"}
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceMandateOptionsCardAmountType'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "fixed" -> InvoiceMandateOptionsCardAmountType'NonNullableEnumFixed
                                             | val GHC.Classes.== "maximum" -> InvoiceMandateOptionsCardAmountType'NonNullableEnumMaximum
                                             | GHC.Base.otherwise -> InvoiceMandateOptionsCardAmountType'NonNullableOther val)}
