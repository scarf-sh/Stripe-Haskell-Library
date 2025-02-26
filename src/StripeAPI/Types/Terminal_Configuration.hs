-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Terminal_Configuration
module StripeAPI.Types.Terminal_Configuration where

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
import {-# SOURCE #-} StripeAPI.Types.TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig
import {-# SOURCE #-} StripeAPI.Types.TerminalConfigurationConfigurationResourceOfflineConfig
import {-# SOURCE #-} StripeAPI.Types.TerminalConfigurationConfigurationResourceTipping

-- | Defines the object schema located at @components.schemas.terminal.configuration@ in the specification.
-- 
-- A Configurations object represents how features should be configured for terminal readers.
data Terminal'configuration = Terminal'configuration {
  -- | bbpos_wisepos_e: 
  terminal'configurationBbposWiseposE :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'configurationId :: Data.Text.Internal.Text
  -- | is_account_default: Whether this Configuration is the default for your account
  , terminal'configurationIsAccountDefault :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool))
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , terminal'configurationLivemode :: GHC.Types.Bool
  -- | offline: 
  , terminal'configurationOffline :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceOfflineConfig)
  -- | tipping: 
  , terminal'configurationTipping :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceTipping)
  -- | verifone_p400: 
  , terminal'configurationVerifoneP400 :: (GHC.Maybe.Maybe TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Terminal'configuration
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bbpos_wisepos_e" Data.Aeson.Types.ToJSON..=)) (terminal'configurationBbposWiseposE obj) : ["id" Data.Aeson.Types.ToJSON..= terminal'configurationId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("is_account_default" Data.Aeson.Types.ToJSON..=)) (terminal'configurationIsAccountDefault obj) : ["livemode" Data.Aeson.Types.ToJSON..= terminal'configurationLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("offline" Data.Aeson.Types.ToJSON..=)) (terminal'configurationOffline obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tipping" Data.Aeson.Types.ToJSON..=)) (terminal'configurationTipping obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verifone_p400" Data.Aeson.Types.ToJSON..=)) (terminal'configurationVerifoneP400 obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "terminal.configuration"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bbpos_wisepos_e" Data.Aeson.Types.ToJSON..=)) (terminal'configurationBbposWiseposE obj) : ["id" Data.Aeson.Types.ToJSON..= terminal'configurationId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("is_account_default" Data.Aeson.Types.ToJSON..=)) (terminal'configurationIsAccountDefault obj) : ["livemode" Data.Aeson.Types.ToJSON..= terminal'configurationLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("offline" Data.Aeson.Types.ToJSON..=)) (terminal'configurationOffline obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tipping" Data.Aeson.Types.ToJSON..=)) (terminal'configurationTipping obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verifone_p400" Data.Aeson.Types.ToJSON..=)) (terminal'configurationVerifoneP400 obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "terminal.configuration"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Terminal'configuration
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Terminal'configuration" (\obj -> ((((((GHC.Base.pure Terminal'configuration GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bbpos_wisepos_e")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "is_account_default")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "offline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verifone_p400"))}
-- | Create a new 'Terminal'configuration' with all required fields.
mkTerminal'configuration :: Data.Text.Internal.Text -- ^ 'terminal'configurationId'
  -> GHC.Types.Bool -- ^ 'terminal'configurationLivemode'
  -> Terminal'configuration
mkTerminal'configuration terminal'configurationId terminal'configurationLivemode = Terminal'configuration{terminal'configurationBbposWiseposE = GHC.Maybe.Nothing,
                                                                                                          terminal'configurationId = terminal'configurationId,
                                                                                                          terminal'configurationIsAccountDefault = GHC.Maybe.Nothing,
                                                                                                          terminal'configurationLivemode = terminal'configurationLivemode,
                                                                                                          terminal'configurationOffline = GHC.Maybe.Nothing,
                                                                                                          terminal'configurationTipping = GHC.Maybe.Nothing,
                                                                                                          terminal'configurationVerifoneP400 = GHC.Maybe.Nothing}
