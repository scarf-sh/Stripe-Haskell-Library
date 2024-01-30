-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Fee
module StripeAPI.Types.Fee where

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

-- | Defines the object schema located at @components.schemas.fee@ in the specification.
-- 
-- 
data Fee = Fee {
  -- | amount: Amount of the fee, in cents.
  feeAmount :: GHC.Types.Int
  -- | application: ID of the Connect application that earned the fee.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , feeApplication :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , feeCurrency :: Data.Text.Internal.Text
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , feeDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | type: Type of the fee, one of: \`application_fee\`, \`stripe_fee\` or \`tax\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , feeType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Fee
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= feeAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application" Data.Aeson.Types.ToJSON..=)) (feeApplication obj) : ["currency" Data.Aeson.Types.ToJSON..= feeCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (feeDescription obj) : ["type" Data.Aeson.Types.ToJSON..= feeType obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= feeAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application" Data.Aeson.Types.ToJSON..=)) (feeApplication obj) : ["currency" Data.Aeson.Types.ToJSON..= feeCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (feeDescription obj) : ["type" Data.Aeson.Types.ToJSON..= feeType obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Fee
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Fee" (\obj -> ((((GHC.Base.pure Fee GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))}
-- | Create a new 'Fee' with all required fields.
mkFee :: GHC.Types.Int -- ^ 'feeAmount'
  -> Data.Text.Internal.Text -- ^ 'feeCurrency'
  -> Data.Text.Internal.Text -- ^ 'feeType'
  -> Fee
mkFee feeAmount feeCurrency feeType = Fee{feeAmount = feeAmount,
                                          feeApplication = GHC.Maybe.Nothing,
                                          feeCurrency = feeCurrency,
                                          feeDescription = GHC.Maybe.Nothing,
                                          feeType = feeType}
