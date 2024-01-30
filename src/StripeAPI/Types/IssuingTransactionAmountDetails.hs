-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IssuingTransactionAmountDetails
module StripeAPI.Types.IssuingTransactionAmountDetails where

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

-- | Defines the object schema located at @components.schemas.issuing_transaction_amount_details@ in the specification.
-- 
-- 
data IssuingTransactionAmountDetails = IssuingTransactionAmountDetails {
  -- | atm_fee: The fee charged by the ATM for the cash withdrawal.
  issuingTransactionAmountDetailsAtmFee :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | cashback_amount: The amount of cash requested by the cardholder.
  , issuingTransactionAmountDetailsCashbackAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingTransactionAmountDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("atm_fee" Data.Aeson.Types.ToJSON..=)) (issuingTransactionAmountDetailsAtmFee obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cashback_amount" Data.Aeson.Types.ToJSON..=)) (issuingTransactionAmountDetailsCashbackAmount obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("atm_fee" Data.Aeson.Types.ToJSON..=)) (issuingTransactionAmountDetailsAtmFee obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cashback_amount" Data.Aeson.Types.ToJSON..=)) (issuingTransactionAmountDetailsCashbackAmount obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingTransactionAmountDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingTransactionAmountDetails" (\obj -> (GHC.Base.pure IssuingTransactionAmountDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "atm_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cashback_amount"))}
-- | Create a new 'IssuingTransactionAmountDetails' with all required fields.
mkIssuingTransactionAmountDetails :: IssuingTransactionAmountDetails
mkIssuingTransactionAmountDetails = IssuingTransactionAmountDetails{issuingTransactionAmountDetailsAtmFee = GHC.Maybe.Nothing,
                                                                    issuingTransactionAmountDetailsCashbackAmount = GHC.Maybe.Nothing}
