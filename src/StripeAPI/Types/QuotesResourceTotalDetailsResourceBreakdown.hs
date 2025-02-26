-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema QuotesResourceTotalDetailsResourceBreakdown
module StripeAPI.Types.QuotesResourceTotalDetailsResourceBreakdown where

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
import {-# SOURCE #-} StripeAPI.Types.LineItemsDiscountAmount
import {-# SOURCE #-} StripeAPI.Types.LineItemsTaxAmount

-- | Defines the object schema located at @components.schemas.quotes_resource_total_details_resource_breakdown@ in the specification.
-- 
-- 
data QuotesResourceTotalDetailsResourceBreakdown = QuotesResourceTotalDetailsResourceBreakdown {
  -- | discounts: The aggregated discounts.
  quotesResourceTotalDetailsResourceBreakdownDiscounts :: ([LineItemsDiscountAmount])
  -- | taxes: The aggregated tax amounts by rate.
  , quotesResourceTotalDetailsResourceBreakdownTaxes :: ([LineItemsTaxAmount])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceTotalDetailsResourceBreakdown
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["discounts" Data.Aeson.Types.ToJSON..= quotesResourceTotalDetailsResourceBreakdownDiscounts obj] : ["taxes" Data.Aeson.Types.ToJSON..= quotesResourceTotalDetailsResourceBreakdownTaxes obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["discounts" Data.Aeson.Types.ToJSON..= quotesResourceTotalDetailsResourceBreakdownDiscounts obj] : ["taxes" Data.Aeson.Types.ToJSON..= quotesResourceTotalDetailsResourceBreakdownTaxes obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceTotalDetailsResourceBreakdown
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "QuotesResourceTotalDetailsResourceBreakdown" (\obj -> (GHC.Base.pure QuotesResourceTotalDetailsResourceBreakdown GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "discounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "taxes"))}
-- | Create a new 'QuotesResourceTotalDetailsResourceBreakdown' with all required fields.
mkQuotesResourceTotalDetailsResourceBreakdown :: [LineItemsDiscountAmount] -- ^ 'quotesResourceTotalDetailsResourceBreakdownDiscounts'
  -> [LineItemsTaxAmount] -- ^ 'quotesResourceTotalDetailsResourceBreakdownTaxes'
  -> QuotesResourceTotalDetailsResourceBreakdown
mkQuotesResourceTotalDetailsResourceBreakdown quotesResourceTotalDetailsResourceBreakdownDiscounts quotesResourceTotalDetailsResourceBreakdownTaxes = QuotesResourceTotalDetailsResourceBreakdown{quotesResourceTotalDetailsResourceBreakdownDiscounts = quotesResourceTotalDetailsResourceBreakdownDiscounts,
                                                                                                                                                                                                  quotesResourceTotalDetailsResourceBreakdownTaxes = quotesResourceTotalDetailsResourceBreakdownTaxes}
