-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema BankConnectionsResourceBalanceApiResourceCashBalance
module StripeAPI.Types.BankConnectionsResourceBalanceApiResourceCashBalance where

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

-- | Defines the object schema located at @components.schemas.bank_connections_resource_balance_api_resource_cash_balance@ in the specification.
-- 
-- 
data BankConnectionsResourceBalanceApiResourceCashBalance = BankConnectionsResourceBalanceApiResourceCashBalance {
  -- | available: The funds available to the account holder. Typically this is the current balance less any holds.
  -- 
  -- Each key is a three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase.
  -- 
  -- Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
  bankConnectionsResourceBalanceApiResourceCashBalanceAvailable :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceBalanceApiResourceCashBalance
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("available" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceBalanceApiResourceCashBalanceAvailable obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("available" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceBalanceApiResourceCashBalanceAvailable obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceBalanceApiResourceCashBalance
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "BankConnectionsResourceBalanceApiResourceCashBalance" (\obj -> GHC.Base.pure BankConnectionsResourceBalanceApiResourceCashBalance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "available"))}
-- | Create a new 'BankConnectionsResourceBalanceApiResourceCashBalance' with all required fields.
mkBankConnectionsResourceBalanceApiResourceCashBalance :: BankConnectionsResourceBalanceApiResourceCashBalance
mkBankConnectionsResourceBalanceApiResourceCashBalance = BankConnectionsResourceBalanceApiResourceCashBalance{bankConnectionsResourceBalanceApiResourceCashBalanceAvailable = GHC.Maybe.Nothing}
