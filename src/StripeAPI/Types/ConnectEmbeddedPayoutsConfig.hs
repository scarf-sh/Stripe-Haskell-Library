-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ConnectEmbeddedPayoutsConfig
module StripeAPI.Types.ConnectEmbeddedPayoutsConfig where

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
import {-# SOURCE #-} StripeAPI.Types.ConnectEmbeddedPayoutsFeatures

-- | Defines the object schema located at @components.schemas.connect_embedded_payouts_config@ in the specification.
-- 
-- 
data ConnectEmbeddedPayoutsConfig = ConnectEmbeddedPayoutsConfig {
  -- | enabled: Whether the embedded component is enabled.
  connectEmbeddedPayoutsConfigEnabled :: GHC.Types.Bool
  -- | features: 
  , connectEmbeddedPayoutsConfigFeatures :: ConnectEmbeddedPayoutsFeatures
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ConnectEmbeddedPayoutsConfig
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= connectEmbeddedPayoutsConfigEnabled obj] : ["features" Data.Aeson.Types.ToJSON..= connectEmbeddedPayoutsConfigFeatures obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= connectEmbeddedPayoutsConfigEnabled obj] : ["features" Data.Aeson.Types.ToJSON..= connectEmbeddedPayoutsConfigFeatures obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ConnectEmbeddedPayoutsConfig
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ConnectEmbeddedPayoutsConfig" (\obj -> (GHC.Base.pure ConnectEmbeddedPayoutsConfig GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "features"))}
-- | Create a new 'ConnectEmbeddedPayoutsConfig' with all required fields.
mkConnectEmbeddedPayoutsConfig :: GHC.Types.Bool -- ^ 'connectEmbeddedPayoutsConfigEnabled'
  -> ConnectEmbeddedPayoutsFeatures -- ^ 'connectEmbeddedPayoutsConfigFeatures'
  -> ConnectEmbeddedPayoutsConfig
mkConnectEmbeddedPayoutsConfig connectEmbeddedPayoutsConfigEnabled connectEmbeddedPayoutsConfigFeatures = ConnectEmbeddedPayoutsConfig{connectEmbeddedPayoutsConfigEnabled = connectEmbeddedPayoutsConfigEnabled,
                                                                                                                                       connectEmbeddedPayoutsConfigFeatures = connectEmbeddedPayoutsConfigFeatures}
