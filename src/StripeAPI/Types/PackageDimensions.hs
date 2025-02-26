-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PackageDimensions
module StripeAPI.Types.PackageDimensions where

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

-- | Defines the object schema located at @components.schemas.package_dimensions@ in the specification.
-- 
-- 
data PackageDimensions = PackageDimensions {
  -- | height: Height, in inches.
  packageDimensionsHeight :: GHC.Types.Double
  -- | length: Length, in inches.
  , packageDimensionsLength :: GHC.Types.Double
  -- | weight: Weight, in ounces.
  , packageDimensionsWeight :: GHC.Types.Double
  -- | width: Width, in inches.
  , packageDimensionsWidth :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PackageDimensions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["height" Data.Aeson.Types.ToJSON..= packageDimensionsHeight obj] : ["length" Data.Aeson.Types.ToJSON..= packageDimensionsLength obj] : ["weight" Data.Aeson.Types.ToJSON..= packageDimensionsWeight obj] : ["width" Data.Aeson.Types.ToJSON..= packageDimensionsWidth obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["height" Data.Aeson.Types.ToJSON..= packageDimensionsHeight obj] : ["length" Data.Aeson.Types.ToJSON..= packageDimensionsLength obj] : ["weight" Data.Aeson.Types.ToJSON..= packageDimensionsWeight obj] : ["width" Data.Aeson.Types.ToJSON..= packageDimensionsWidth obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PackageDimensions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PackageDimensions" (\obj -> (((GHC.Base.pure PackageDimensions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))}
-- | Create a new 'PackageDimensions' with all required fields.
mkPackageDimensions :: GHC.Types.Double -- ^ 'packageDimensionsHeight'
  -> GHC.Types.Double -- ^ 'packageDimensionsLength'
  -> GHC.Types.Double -- ^ 'packageDimensionsWeight'
  -> GHC.Types.Double -- ^ 'packageDimensionsWidth'
  -> PackageDimensions
mkPackageDimensions packageDimensionsHeight packageDimensionsLength packageDimensionsWeight packageDimensionsWidth = PackageDimensions{packageDimensionsHeight = packageDimensionsHeight,
                                                                                                                                       packageDimensionsLength = packageDimensionsLength,
                                                                                                                                       packageDimensionsWeight = packageDimensionsWeight,
                                                                                                                                       packageDimensionsWidth = packageDimensionsWidth}
