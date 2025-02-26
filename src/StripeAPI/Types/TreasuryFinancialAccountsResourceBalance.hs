-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TreasuryFinancialAccountsResourceBalance
module StripeAPI.Types.TreasuryFinancialAccountsResourceBalance where

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

-- | Defines the object schema located at @components.schemas.treasury_financial_accounts_resource_balance@ in the specification.
-- 
-- Balance information for the FinancialAccount
data TreasuryFinancialAccountsResourceBalance = TreasuryFinancialAccountsResourceBalance {
  -- | cash: Funds the user can spend right now.
  treasuryFinancialAccountsResourceBalanceCash :: Data.Aeson.Types.Internal.Object
  -- | inbound_pending: Funds not spendable yet, but will become available at a later time.
  , treasuryFinancialAccountsResourceBalanceInboundPending :: Data.Aeson.Types.Internal.Object
  -- | outbound_pending: Funds in the account, but not spendable because they are being held for pending outbound flows.
  , treasuryFinancialAccountsResourceBalanceOutboundPending :: Data.Aeson.Types.Internal.Object
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryFinancialAccountsResourceBalance
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["cash" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceBalanceCash obj] : ["inbound_pending" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceBalanceInboundPending obj] : ["outbound_pending" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceBalanceOutboundPending obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["cash" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceBalanceCash obj] : ["inbound_pending" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceBalanceInboundPending obj] : ["outbound_pending" Data.Aeson.Types.ToJSON..= treasuryFinancialAccountsResourceBalanceOutboundPending obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryFinancialAccountsResourceBalance
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryFinancialAccountsResourceBalance" (\obj -> ((GHC.Base.pure TreasuryFinancialAccountsResourceBalance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inbound_pending")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "outbound_pending"))}
-- | Create a new 'TreasuryFinancialAccountsResourceBalance' with all required fields.
mkTreasuryFinancialAccountsResourceBalance :: Data.Aeson.Types.Internal.Object -- ^ 'treasuryFinancialAccountsResourceBalanceCash'
  -> Data.Aeson.Types.Internal.Object -- ^ 'treasuryFinancialAccountsResourceBalanceInboundPending'
  -> Data.Aeson.Types.Internal.Object -- ^ 'treasuryFinancialAccountsResourceBalanceOutboundPending'
  -> TreasuryFinancialAccountsResourceBalance
mkTreasuryFinancialAccountsResourceBalance treasuryFinancialAccountsResourceBalanceCash treasuryFinancialAccountsResourceBalanceInboundPending treasuryFinancialAccountsResourceBalanceOutboundPending = TreasuryFinancialAccountsResourceBalance{treasuryFinancialAccountsResourceBalanceCash = treasuryFinancialAccountsResourceBalanceCash,
                                                                                                                                                                                                                                                  treasuryFinancialAccountsResourceBalanceInboundPending = treasuryFinancialAccountsResourceBalanceInboundPending,
                                                                                                                                                                                                                                                  treasuryFinancialAccountsResourceBalanceOutboundPending = treasuryFinancialAccountsResourceBalanceOutboundPending}
