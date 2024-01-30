-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IssuingAuthorizationNetworkData
module StripeAPI.Types.IssuingAuthorizationNetworkData where

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

-- | Defines the object schema located at @components.schemas.issuing_authorization_network_data@ in the specification.
-- 
-- 
data IssuingAuthorizationNetworkData = IssuingAuthorizationNetworkData {
  -- | acquiring_institution_id: Identifier assigned to the acquirer by the card network. Sometimes this value is not provided by the network; in this case, the value will be \`null\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  issuingAuthorizationNetworkDataAcquiringInstitutionId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | system_trace_audit_number: The System Trace Audit Number (STAN) is a 6-digit identifier assigned by the acquirer. Prefer \`network_data.transaction_id\` if present, unless you have special requirements.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationNetworkDataSystemTraceAuditNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | transaction_id: Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationNetworkDataTransactionId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationNetworkData
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acquiring_institution_id" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationNetworkDataAcquiringInstitutionId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("system_trace_audit_number" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationNetworkDataSystemTraceAuditNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_id" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationNetworkDataTransactionId obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acquiring_institution_id" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationNetworkDataAcquiringInstitutionId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("system_trace_audit_number" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationNetworkDataSystemTraceAuditNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_id" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationNetworkDataTransactionId obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationNetworkData
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationNetworkData" (\obj -> ((GHC.Base.pure IssuingAuthorizationNetworkData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "acquiring_institution_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "system_trace_audit_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction_id"))}
-- | Create a new 'IssuingAuthorizationNetworkData' with all required fields.
mkIssuingAuthorizationNetworkData :: IssuingAuthorizationNetworkData
mkIssuingAuthorizationNetworkData = IssuingAuthorizationNetworkData{issuingAuthorizationNetworkDataAcquiringInstitutionId = GHC.Maybe.Nothing,
                                                                    issuingAuthorizationNetworkDataSystemTraceAuditNumber = GHC.Maybe.Nothing,
                                                                    issuingAuthorizationNetworkDataTransactionId = GHC.Maybe.Nothing}
