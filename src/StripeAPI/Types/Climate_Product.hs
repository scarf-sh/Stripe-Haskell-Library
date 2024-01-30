-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Climate_Product
module StripeAPI.Types.Climate_Product where

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
import {-# SOURCE #-} StripeAPI.Types.Climate_Supplier

-- | Defines the object schema located at @components.schemas.climate.product@ in the specification.
-- 
-- A Climate product represents a type of carbon removal unit available for reservation.
-- You can retrieve it to see the current price and availability.
data Climate'product = Climate'product {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  climate'productCreated :: GHC.Types.Int
  -- | current_prices_per_metric_ton: Current prices for a metric ton of carbon removal in a currency\'s smallest unit.
  , climate'productCurrentPricesPerMetricTon :: Data.Aeson.Types.Internal.Object
  -- | delivery_year: The year in which the carbon removal is expected to be delivered.
  , climate'productDeliveryYear :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | id: Unique identifier for the object. For convenience, Climate product IDs are human-readable strings
  -- that start with \`climsku_\`. See [carbon removal inventory](https:\/\/stripe.com\/docs\/climate\/orders\/carbon-removal-inventory)
  -- for a list of available carbon removal products.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , climate'productId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , climate'productLivemode :: GHC.Types.Bool
  -- | metric_tons_available: The quantity of metric tons available for reservation.
  , climate'productMetricTonsAvailable :: Data.Text.Internal.Text
  -- | name: The Climate product\'s name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , climate'productName :: Data.Text.Internal.Text
  -- | suppliers: The carbon removal suppliers that fulfill orders for this Climate product.
  , climate'productSuppliers :: ([Climate'supplier])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Climate'product
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= climate'productCreated obj] : ["current_prices_per_metric_ton" Data.Aeson.Types.ToJSON..= climate'productCurrentPricesPerMetricTon obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("delivery_year" Data.Aeson.Types.ToJSON..=)) (climate'productDeliveryYear obj) : ["id" Data.Aeson.Types.ToJSON..= climate'productId obj] : ["livemode" Data.Aeson.Types.ToJSON..= climate'productLivemode obj] : ["metric_tons_available" Data.Aeson.Types.ToJSON..= climate'productMetricTonsAvailable obj] : ["name" Data.Aeson.Types.ToJSON..= climate'productName obj] : ["suppliers" Data.Aeson.Types.ToJSON..= climate'productSuppliers obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "climate.product"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= climate'productCreated obj] : ["current_prices_per_metric_ton" Data.Aeson.Types.ToJSON..= climate'productCurrentPricesPerMetricTon obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("delivery_year" Data.Aeson.Types.ToJSON..=)) (climate'productDeliveryYear obj) : ["id" Data.Aeson.Types.ToJSON..= climate'productId obj] : ["livemode" Data.Aeson.Types.ToJSON..= climate'productLivemode obj] : ["metric_tons_available" Data.Aeson.Types.ToJSON..= climate'productMetricTonsAvailable obj] : ["name" Data.Aeson.Types.ToJSON..= climate'productName obj] : ["suppliers" Data.Aeson.Types.ToJSON..= climate'productSuppliers obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "climate.product"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Climate'product
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Climate'product" (\obj -> (((((((GHC.Base.pure Climate'product GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "current_prices_per_metric_ton")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "delivery_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metric_tons_available")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "suppliers"))}
-- | Create a new 'Climate'product' with all required fields.
mkClimate'product :: GHC.Types.Int -- ^ 'climate'productCreated'
  -> Data.Aeson.Types.Internal.Object -- ^ 'climate'productCurrentPricesPerMetricTon'
  -> Data.Text.Internal.Text -- ^ 'climate'productId'
  -> GHC.Types.Bool -- ^ 'climate'productLivemode'
  -> Data.Text.Internal.Text -- ^ 'climate'productMetricTonsAvailable'
  -> Data.Text.Internal.Text -- ^ 'climate'productName'
  -> [Climate'supplier] -- ^ 'climate'productSuppliers'
  -> Climate'product
mkClimate'product climate'productCreated climate'productCurrentPricesPerMetricTon climate'productId climate'productLivemode climate'productMetricTonsAvailable climate'productName climate'productSuppliers = Climate'product{climate'productCreated = climate'productCreated,
                                                                                                                                                                                                                              climate'productCurrentPricesPerMetricTon = climate'productCurrentPricesPerMetricTon,
                                                                                                                                                                                                                              climate'productDeliveryYear = GHC.Maybe.Nothing,
                                                                                                                                                                                                                              climate'productId = climate'productId,
                                                                                                                                                                                                                              climate'productLivemode = climate'productLivemode,
                                                                                                                                                                                                                              climate'productMetricTonsAvailable = climate'productMetricTonsAvailable,
                                                                                                                                                                                                                              climate'productName = climate'productName,
                                                                                                                                                                                                                              climate'productSuppliers = climate'productSuppliers}
