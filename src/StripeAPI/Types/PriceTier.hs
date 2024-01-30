-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PriceTier
module StripeAPI.Types.PriceTier where

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

-- | Defines the object schema located at @components.schemas.price_tier@ in the specification.
-- 
-- 
data PriceTier = PriceTier {
  -- | flat_amount: Price for the entire tier.
  priceTierFlatAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | flat_amount_decimal: Same as \`flat_amount\`, but contains a decimal value with at most 12 decimal places.
  , priceTierFlatAmountDecimal :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | unit_amount: Per unit price for units relevant to the tier.
  , priceTierUnitAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | unit_amount_decimal: Same as \`unit_amount\`, but contains a decimal value with at most 12 decimal places.
  , priceTierUnitAmountDecimal :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | up_to: Up to and including to this quantity will be contained in the tier.
  , priceTierUpTo :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PriceTier
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flat_amount" Data.Aeson.Types.ToJSON..=)) (priceTierFlatAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flat_amount_decimal" Data.Aeson.Types.ToJSON..=)) (priceTierFlatAmountDecimal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (priceTierUnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (priceTierUnitAmountDecimal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("up_to" Data.Aeson.Types.ToJSON..=)) (priceTierUpTo obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flat_amount" Data.Aeson.Types.ToJSON..=)) (priceTierFlatAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flat_amount_decimal" Data.Aeson.Types.ToJSON..=)) (priceTierFlatAmountDecimal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (priceTierUnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (priceTierUnitAmountDecimal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("up_to" Data.Aeson.Types.ToJSON..=)) (priceTierUpTo obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PriceTier
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PriceTier" (\obj -> ((((GHC.Base.pure PriceTier GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flat_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flat_amount_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "up_to"))}
-- | Create a new 'PriceTier' with all required fields.
mkPriceTier :: PriceTier
mkPriceTier = PriceTier{priceTierFlatAmount = GHC.Maybe.Nothing,
                        priceTierFlatAmountDecimal = GHC.Maybe.Nothing,
                        priceTierUnitAmount = GHC.Maybe.Nothing,
                        priceTierUnitAmountDecimal = GHC.Maybe.Nothing,
                        priceTierUpTo = GHC.Maybe.Nothing}
