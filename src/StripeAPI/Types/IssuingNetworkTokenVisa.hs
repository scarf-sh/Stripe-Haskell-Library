-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IssuingNetworkTokenVisa
module StripeAPI.Types.IssuingNetworkTokenVisa where

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

-- | Defines the object schema located at @components.schemas.issuing_network_token_visa@ in the specification.
-- 
-- 
data IssuingNetworkTokenVisa = IssuingNetworkTokenVisa {
  -- | card_reference_id: A unique reference ID from Visa to represent the card account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  issuingNetworkTokenVisaCardReferenceId :: Data.Text.Internal.Text
  -- | token_reference_id: The network-unique identifier for the token.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingNetworkTokenVisaTokenReferenceId :: Data.Text.Internal.Text
  -- | token_requestor_id: The ID of the entity requesting tokenization, specific to Visa.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingNetworkTokenVisaTokenRequestorId :: Data.Text.Internal.Text
  -- | token_risk_score: Degree of risk associated with the token between \`01\` and \`99\`, with higher number indicating higher risk. A \`00\` value indicates the token was not scored by Visa.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingNetworkTokenVisaTokenRiskScore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingNetworkTokenVisa
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["card_reference_id" Data.Aeson.Types.ToJSON..= issuingNetworkTokenVisaCardReferenceId obj] : ["token_reference_id" Data.Aeson.Types.ToJSON..= issuingNetworkTokenVisaTokenReferenceId obj] : ["token_requestor_id" Data.Aeson.Types.ToJSON..= issuingNetworkTokenVisaTokenRequestorId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("token_risk_score" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenVisaTokenRiskScore obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["card_reference_id" Data.Aeson.Types.ToJSON..= issuingNetworkTokenVisaCardReferenceId obj] : ["token_reference_id" Data.Aeson.Types.ToJSON..= issuingNetworkTokenVisaTokenReferenceId obj] : ["token_requestor_id" Data.Aeson.Types.ToJSON..= issuingNetworkTokenVisaTokenRequestorId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("token_risk_score" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenVisaTokenRiskScore obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingNetworkTokenVisa
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingNetworkTokenVisa" (\obj -> (((GHC.Base.pure IssuingNetworkTokenVisa GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "card_reference_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "token_reference_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "token_requestor_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "token_risk_score"))}
-- | Create a new 'IssuingNetworkTokenVisa' with all required fields.
mkIssuingNetworkTokenVisa :: Data.Text.Internal.Text -- ^ 'issuingNetworkTokenVisaCardReferenceId'
  -> Data.Text.Internal.Text -- ^ 'issuingNetworkTokenVisaTokenReferenceId'
  -> Data.Text.Internal.Text -- ^ 'issuingNetworkTokenVisaTokenRequestorId'
  -> IssuingNetworkTokenVisa
mkIssuingNetworkTokenVisa issuingNetworkTokenVisaCardReferenceId issuingNetworkTokenVisaTokenReferenceId issuingNetworkTokenVisaTokenRequestorId = IssuingNetworkTokenVisa{issuingNetworkTokenVisaCardReferenceId = issuingNetworkTokenVisaCardReferenceId,
                                                                                                                                                                           issuingNetworkTokenVisaTokenReferenceId = issuingNetworkTokenVisaTokenReferenceId,
                                                                                                                                                                           issuingNetworkTokenVisaTokenRequestorId = issuingNetworkTokenVisaTokenRequestorId,
                                                                                                                                                                           issuingNetworkTokenVisaTokenRiskScore = GHC.Maybe.Nothing}
