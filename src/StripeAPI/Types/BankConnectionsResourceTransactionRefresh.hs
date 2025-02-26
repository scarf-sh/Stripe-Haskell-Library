-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema BankConnectionsResourceTransactionRefresh
module StripeAPI.Types.BankConnectionsResourceTransactionRefresh where

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

-- | Defines the object schema located at @components.schemas.bank_connections_resource_transaction_refresh@ in the specification.
-- 
-- 
data BankConnectionsResourceTransactionRefresh = BankConnectionsResourceTransactionRefresh {
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  bankConnectionsResourceTransactionRefreshId :: Data.Text.Internal.Text
  -- | last_attempted_at: The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
  , bankConnectionsResourceTransactionRefreshLastAttemptedAt :: GHC.Types.Int
  -- | next_refresh_available_at: Time at which the next transaction refresh can be initiated. This value will be \`null\` when \`status\` is \`pending\`. Measured in seconds since the Unix epoch.
  , bankConnectionsResourceTransactionRefreshNextRefreshAvailableAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | status: The status of the last refresh attempt.
  , bankConnectionsResourceTransactionRefreshStatus :: BankConnectionsResourceTransactionRefreshStatus'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceTransactionRefresh
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= bankConnectionsResourceTransactionRefreshId obj] : ["last_attempted_at" Data.Aeson.Types.ToJSON..= bankConnectionsResourceTransactionRefreshLastAttemptedAt obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next_refresh_available_at" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceTransactionRefreshNextRefreshAvailableAt obj) : ["status" Data.Aeson.Types.ToJSON..= bankConnectionsResourceTransactionRefreshStatus obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= bankConnectionsResourceTransactionRefreshId obj] : ["last_attempted_at" Data.Aeson.Types.ToJSON..= bankConnectionsResourceTransactionRefreshLastAttemptedAt obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next_refresh_available_at" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceTransactionRefreshNextRefreshAvailableAt obj) : ["status" Data.Aeson.Types.ToJSON..= bankConnectionsResourceTransactionRefreshStatus obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceTransactionRefresh
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "BankConnectionsResourceTransactionRefresh" (\obj -> (((GHC.Base.pure BankConnectionsResourceTransactionRefresh GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_attempted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "next_refresh_available_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))}
-- | Create a new 'BankConnectionsResourceTransactionRefresh' with all required fields.
mkBankConnectionsResourceTransactionRefresh :: Data.Text.Internal.Text -- ^ 'bankConnectionsResourceTransactionRefreshId'
  -> GHC.Types.Int -- ^ 'bankConnectionsResourceTransactionRefreshLastAttemptedAt'
  -> BankConnectionsResourceTransactionRefreshStatus' -- ^ 'bankConnectionsResourceTransactionRefreshStatus'
  -> BankConnectionsResourceTransactionRefresh
mkBankConnectionsResourceTransactionRefresh bankConnectionsResourceTransactionRefreshId bankConnectionsResourceTransactionRefreshLastAttemptedAt bankConnectionsResourceTransactionRefreshStatus = BankConnectionsResourceTransactionRefresh{bankConnectionsResourceTransactionRefreshId = bankConnectionsResourceTransactionRefreshId,
                                                                                                                                                                                                                                             bankConnectionsResourceTransactionRefreshLastAttemptedAt = bankConnectionsResourceTransactionRefreshLastAttemptedAt,
                                                                                                                                                                                                                                             bankConnectionsResourceTransactionRefreshNextRefreshAvailableAt = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                             bankConnectionsResourceTransactionRefreshStatus = bankConnectionsResourceTransactionRefreshStatus}
-- | Defines the enum schema located at @components.schemas.bank_connections_resource_transaction_refresh.properties.status@ in the specification.
-- 
-- The status of the last refresh attempt.
data BankConnectionsResourceTransactionRefreshStatus' =
   BankConnectionsResourceTransactionRefreshStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | BankConnectionsResourceTransactionRefreshStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | BankConnectionsResourceTransactionRefreshStatus'EnumFailed -- ^ Represents the JSON value @"failed"@
  | BankConnectionsResourceTransactionRefreshStatus'EnumPending -- ^ Represents the JSON value @"pending"@
  | BankConnectionsResourceTransactionRefreshStatus'EnumSucceeded -- ^ Represents the JSON value @"succeeded"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceTransactionRefreshStatus'
    where {toJSON (BankConnectionsResourceTransactionRefreshStatus'Other val) = val;
           toJSON (BankConnectionsResourceTransactionRefreshStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (BankConnectionsResourceTransactionRefreshStatus'EnumFailed) = "failed";
           toJSON (BankConnectionsResourceTransactionRefreshStatus'EnumPending) = "pending";
           toJSON (BankConnectionsResourceTransactionRefreshStatus'EnumSucceeded) = "succeeded"}
instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceTransactionRefreshStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "failed" -> BankConnectionsResourceTransactionRefreshStatus'EnumFailed
                                             | val GHC.Classes.== "pending" -> BankConnectionsResourceTransactionRefreshStatus'EnumPending
                                             | val GHC.Classes.== "succeeded" -> BankConnectionsResourceTransactionRefreshStatus'EnumSucceeded
                                             | GHC.Base.otherwise -> BankConnectionsResourceTransactionRefreshStatus'Other val)}
