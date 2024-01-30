-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TerminalConfigurationConfigurationResourceTipping
module StripeAPI.Types.TerminalConfigurationConfigurationResourceTipping where

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
import {-# SOURCE #-} StripeAPI.Types.TerminalConfigurationConfigurationResourceCurrencySpecificConfig

-- | Defines the object schema located at @components.schemas.terminal_configuration_configuration_resource_tipping@ in the specification.
-- 
-- 
data TerminalConfigurationConfigurationResourceTipping = TerminalConfigurationConfigurationResourceTipping {
  -- | aud: 
  terminalConfigurationConfigurationResourceTippingAud :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | cad: 
  , terminalConfigurationConfigurationResourceTippingCad :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | chf: 
  , terminalConfigurationConfigurationResourceTippingChf :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | czk: 
  , terminalConfigurationConfigurationResourceTippingCzk :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | dkk: 
  , terminalConfigurationConfigurationResourceTippingDkk :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | eur: 
  , terminalConfigurationConfigurationResourceTippingEur :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | gbp: 
  , terminalConfigurationConfigurationResourceTippingGbp :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | hkd: 
  , terminalConfigurationConfigurationResourceTippingHkd :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | myr: 
  , terminalConfigurationConfigurationResourceTippingMyr :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | nok: 
  , terminalConfigurationConfigurationResourceTippingNok :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | nzd: 
  , terminalConfigurationConfigurationResourceTippingNzd :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | sek: 
  , terminalConfigurationConfigurationResourceTippingSek :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | sgd: 
  , terminalConfigurationConfigurationResourceTippingSgd :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  -- | usd: 
  , terminalConfigurationConfigurationResourceTippingUsd :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceCurrencySpecificConfig)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TerminalConfigurationConfigurationResourceTipping
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("aud" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingAud obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cad" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingCad obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("chf" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingChf obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("czk" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingCzk obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dkk" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingDkk obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("eur" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingEur obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gbp" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingGbp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hkd" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingHkd obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("myr" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingMyr obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("nok" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingNok obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("nzd" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingNzd obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sek" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingSek obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sgd" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingSgd obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usd" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingUsd obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("aud" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingAud obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cad" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingCad obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("chf" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingChf obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("czk" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingCzk obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dkk" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingDkk obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("eur" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingEur obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gbp" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingGbp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hkd" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingHkd obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("myr" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingMyr obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("nok" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingNok obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("nzd" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingNzd obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sek" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingSek obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sgd" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingSgd obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("usd" Data.Aeson.Types.ToJSON..=)) (terminalConfigurationConfigurationResourceTippingUsd obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TerminalConfigurationConfigurationResourceTipping
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TerminalConfigurationConfigurationResourceTipping" (\obj -> (((((((((((((GHC.Base.pure TerminalConfigurationConfigurationResourceTipping GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "aud")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cad")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "chf")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "czk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dkk")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "eur")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gbp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hkd")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "myr")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "nok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "nzd")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sek")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sgd")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "usd"))}
-- | Create a new 'TerminalConfigurationConfigurationResourceTipping' with all required fields.
mkTerminalConfigurationConfigurationResourceTipping :: TerminalConfigurationConfigurationResourceTipping
mkTerminalConfigurationConfigurationResourceTipping = TerminalConfigurationConfigurationResourceTipping{terminalConfigurationConfigurationResourceTippingAud = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingCad = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingChf = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingCzk = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingDkk = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingEur = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingGbp = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingHkd = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingMyr = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingNok = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingNzd = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingSek = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingSgd = GHC.Maybe.Nothing,
                                                                                                        terminalConfigurationConfigurationResourceTippingUsd = GHC.Maybe.Nothing}
