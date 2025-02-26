-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TerminalReaderReaderResourceProcessConfig
module StripeAPI.Types.TerminalReaderReaderResourceProcessConfig where

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
import {-# SOURCE #-} StripeAPI.Types.TerminalReaderReaderResourceTippingConfig

-- | Defines the object schema located at @components.schemas.terminal_reader_reader_resource_process_config@ in the specification.
-- 
-- Represents a per-transaction override of a reader configuration
data TerminalReaderReaderResourceProcessConfig = TerminalReaderReaderResourceProcessConfig {
  -- | skip_tipping: Override showing a tipping selection screen on this transaction.
  terminalReaderReaderResourceProcessConfigSkipTipping :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | tipping: Represents a per-transaction tipping configuration
  , terminalReaderReaderResourceProcessConfigTipping :: (GHC.Maybe.Maybe TerminalReaderReaderResourceTippingConfig)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceProcessConfig
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("skip_tipping" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceProcessConfigSkipTipping obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tipping" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceProcessConfigTipping obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("skip_tipping" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceProcessConfigSkipTipping obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tipping" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceProcessConfigTipping obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceProcessConfig
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TerminalReaderReaderResourceProcessConfig" (\obj -> (GHC.Base.pure TerminalReaderReaderResourceProcessConfig GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "skip_tipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tipping"))}
-- | Create a new 'TerminalReaderReaderResourceProcessConfig' with all required fields.
mkTerminalReaderReaderResourceProcessConfig :: TerminalReaderReaderResourceProcessConfig
mkTerminalReaderReaderResourceProcessConfig = TerminalReaderReaderResourceProcessConfig{terminalReaderReaderResourceProcessConfigSkipTipping = GHC.Maybe.Nothing,
                                                                                        terminalReaderReaderResourceProcessConfigTipping = GHC.Maybe.Nothing}
