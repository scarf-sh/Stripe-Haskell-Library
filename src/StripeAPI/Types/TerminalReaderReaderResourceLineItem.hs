-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TerminalReaderReaderResourceLineItem
module StripeAPI.Types.TerminalReaderReaderResourceLineItem where

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

-- | Defines the object schema located at @components.schemas.terminal_reader_reader_resource_line_item@ in the specification.
-- 
-- Represents a line item to be displayed on the reader
data TerminalReaderReaderResourceLineItem = TerminalReaderReaderResourceLineItem {
  -- | amount: The amount of the line item. A positive integer in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
  terminalReaderReaderResourceLineItemAmount :: GHC.Types.Int
  -- | description: Description of the line item.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminalReaderReaderResourceLineItemDescription :: Data.Text.Internal.Text
  -- | quantity: The quantity of the line item.
  , terminalReaderReaderResourceLineItemQuantity :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceLineItem
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceLineItemAmount obj] : ["description" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceLineItemDescription obj] : ["quantity" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceLineItemQuantity obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceLineItemAmount obj] : ["description" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceLineItemDescription obj] : ["quantity" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceLineItemQuantity obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceLineItem
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TerminalReaderReaderResourceLineItem" (\obj -> ((GHC.Base.pure TerminalReaderReaderResourceLineItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity"))}
-- | Create a new 'TerminalReaderReaderResourceLineItem' with all required fields.
mkTerminalReaderReaderResourceLineItem :: GHC.Types.Int -- ^ 'terminalReaderReaderResourceLineItemAmount'
  -> Data.Text.Internal.Text -- ^ 'terminalReaderReaderResourceLineItemDescription'
  -> GHC.Types.Int -- ^ 'terminalReaderReaderResourceLineItemQuantity'
  -> TerminalReaderReaderResourceLineItem
mkTerminalReaderReaderResourceLineItem terminalReaderReaderResourceLineItemAmount terminalReaderReaderResourceLineItemDescription terminalReaderReaderResourceLineItemQuantity = TerminalReaderReaderResourceLineItem{terminalReaderReaderResourceLineItemAmount = terminalReaderReaderResourceLineItemAmount,
                                                                                                                                                                                                                      terminalReaderReaderResourceLineItemDescription = terminalReaderReaderResourceLineItemDescription,
                                                                                                                                                                                                                      terminalReaderReaderResourceLineItemQuantity = terminalReaderReaderResourceLineItemQuantity}
