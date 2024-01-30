-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema RadarReviewResourceSession
module StripeAPI.Types.RadarReviewResourceSession where

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

-- | Defines the object schema located at @components.schemas.radar_review_resource_session@ in the specification.
-- 
-- 
data RadarReviewResourceSession = RadarReviewResourceSession {
  -- | browser: The browser used in this browser session (e.g., \`Chrome\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  radarReviewResourceSessionBrowser :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | device: Information about the device used for the browser session (e.g., \`Samsung SM-G930T\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radarReviewResourceSessionDevice :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | platform: The platform for the browser session (e.g., \`Macintosh\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radarReviewResourceSessionPlatform :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | version: The version for the browser session (e.g., \`61.0.3163.100\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , radarReviewResourceSessionVersion :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RadarReviewResourceSession
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("browser" Data.Aeson.Types.ToJSON..=)) (radarReviewResourceSessionBrowser obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("device" Data.Aeson.Types.ToJSON..=)) (radarReviewResourceSessionDevice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("platform" Data.Aeson.Types.ToJSON..=)) (radarReviewResourceSessionPlatform obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("version" Data.Aeson.Types.ToJSON..=)) (radarReviewResourceSessionVersion obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("browser" Data.Aeson.Types.ToJSON..=)) (radarReviewResourceSessionBrowser obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("device" Data.Aeson.Types.ToJSON..=)) (radarReviewResourceSessionDevice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("platform" Data.Aeson.Types.ToJSON..=)) (radarReviewResourceSessionPlatform obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("version" Data.Aeson.Types.ToJSON..=)) (radarReviewResourceSessionVersion obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON RadarReviewResourceSession
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "RadarReviewResourceSession" (\obj -> (((GHC.Base.pure RadarReviewResourceSession GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "browser")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "device")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "platform")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "version"))}
-- | Create a new 'RadarReviewResourceSession' with all required fields.
mkRadarReviewResourceSession :: RadarReviewResourceSession
mkRadarReviewResourceSession = RadarReviewResourceSession{radarReviewResourceSessionBrowser = GHC.Maybe.Nothing,
                                                          radarReviewResourceSessionDevice = GHC.Maybe.Nothing,
                                                          radarReviewResourceSessionPlatform = GHC.Maybe.Nothing,
                                                          radarReviewResourceSessionVersion = GHC.Maybe.Nothing}
