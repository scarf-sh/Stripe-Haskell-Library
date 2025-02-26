-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema BankConnectionsResourceTransactionResourceStatusTransitions
module StripeAPI.Types.BankConnectionsResourceTransactionResourceStatusTransitions where

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

-- | Defines the object schema located at @components.schemas.bank_connections_resource_transaction_resource_status_transitions@ in the specification.
-- 
-- 
data BankConnectionsResourceTransactionResourceStatusTransitions = BankConnectionsResourceTransactionResourceStatusTransitions {
  -- | posted_at: Time at which this transaction posted. Measured in seconds since the Unix epoch.
  bankConnectionsResourceTransactionResourceStatusTransitionsPostedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | void_at: Time at which this transaction was voided. Measured in seconds since the Unix epoch.
  , bankConnectionsResourceTransactionResourceStatusTransitionsVoidAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceTransactionResourceStatusTransitions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("posted_at" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceTransactionResourceStatusTransitionsPostedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("void_at" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceTransactionResourceStatusTransitionsVoidAt obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("posted_at" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceTransactionResourceStatusTransitionsPostedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("void_at" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceTransactionResourceStatusTransitionsVoidAt obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceTransactionResourceStatusTransitions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "BankConnectionsResourceTransactionResourceStatusTransitions" (\obj -> (GHC.Base.pure BankConnectionsResourceTransactionResourceStatusTransitions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "posted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "void_at"))}
-- | Create a new 'BankConnectionsResourceTransactionResourceStatusTransitions' with all required fields.
mkBankConnectionsResourceTransactionResourceStatusTransitions :: BankConnectionsResourceTransactionResourceStatusTransitions
mkBankConnectionsResourceTransactionResourceStatusTransitions = BankConnectionsResourceTransactionResourceStatusTransitions{bankConnectionsResourceTransactionResourceStatusTransitionsPostedAt = GHC.Maybe.Nothing,
                                                                                                                            bankConnectionsResourceTransactionResourceStatusTransitionsVoidAt = GHC.Maybe.Nothing}
