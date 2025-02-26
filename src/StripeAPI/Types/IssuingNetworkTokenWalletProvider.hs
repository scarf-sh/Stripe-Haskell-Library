-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IssuingNetworkTokenWalletProvider
module StripeAPI.Types.IssuingNetworkTokenWalletProvider where

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
import {-# SOURCE #-} StripeAPI.Types.IssuingNetworkTokenAddress

-- | Defines the object schema located at @components.schemas.issuing_network_token_wallet_provider@ in the specification.
-- 
-- 
data IssuingNetworkTokenWalletProvider = IssuingNetworkTokenWalletProvider {
  -- | account_id: The wallet provider-given account ID of the digital wallet the token belongs to.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  issuingNetworkTokenWalletProviderAccountId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | account_trust_score: An evaluation on the trustworthiness of the wallet account between 1 and 5. A higher score indicates more trustworthy.
  , issuingNetworkTokenWalletProviderAccountTrustScore :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | card_number_source: The method used for tokenizing a card.
  , issuingNetworkTokenWalletProviderCardNumberSource :: (GHC.Maybe.Maybe IssuingNetworkTokenWalletProviderCardNumberSource')
  -- | cardholder_address: 
  , issuingNetworkTokenWalletProviderCardholderAddress :: (GHC.Maybe.Maybe IssuingNetworkTokenAddress)
  -- | cardholder_name: The name of the cardholder tokenizing the card.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingNetworkTokenWalletProviderCardholderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | device_trust_score: An evaluation on the trustworthiness of the device. A higher score indicates more trustworthy.
  , issuingNetworkTokenWalletProviderDeviceTrustScore :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | hashed_account_email_address: The hashed email address of the cardholder\'s account with the wallet provider.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingNetworkTokenWalletProviderHashedAccountEmailAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reason_codes: The reasons for suggested tokenization given by the card network.
  , issuingNetworkTokenWalletProviderReasonCodes :: (GHC.Maybe.Maybe ([IssuingNetworkTokenWalletProviderReasonCodes']))
  -- | suggested_decision: The recommendation on responding to the tokenization request.
  , issuingNetworkTokenWalletProviderSuggestedDecision :: (GHC.Maybe.Maybe IssuingNetworkTokenWalletProviderSuggestedDecision')
  -- | suggested_decision_version: The version of the standard for mapping reason codes followed by the wallet provider.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingNetworkTokenWalletProviderSuggestedDecisionVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingNetworkTokenWalletProvider
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_id" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderAccountId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_trust_score" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderAccountTrustScore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_number_source" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderCardNumberSource obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cardholder_address" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderCardholderAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cardholder_name" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderCardholderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("device_trust_score" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderDeviceTrustScore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hashed_account_email_address" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderHashedAccountEmailAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason_codes" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderReasonCodes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("suggested_decision" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderSuggestedDecision obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("suggested_decision_version" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderSuggestedDecisionVersion obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_id" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderAccountId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_trust_score" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderAccountTrustScore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_number_source" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderCardNumberSource obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cardholder_address" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderCardholderAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cardholder_name" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderCardholderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("device_trust_score" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderDeviceTrustScore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hashed_account_email_address" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderHashedAccountEmailAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason_codes" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderReasonCodes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("suggested_decision" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderSuggestedDecision obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("suggested_decision_version" Data.Aeson.Types.ToJSON..=)) (issuingNetworkTokenWalletProviderSuggestedDecisionVersion obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingNetworkTokenWalletProvider
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingNetworkTokenWalletProvider" (\obj -> (((((((((GHC.Base.pure IssuingNetworkTokenWalletProvider GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_trust_score")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card_number_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cardholder_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cardholder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "device_trust_score")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hashed_account_email_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason_codes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "suggested_decision")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "suggested_decision_version"))}
-- | Create a new 'IssuingNetworkTokenWalletProvider' with all required fields.
mkIssuingNetworkTokenWalletProvider :: IssuingNetworkTokenWalletProvider
mkIssuingNetworkTokenWalletProvider = IssuingNetworkTokenWalletProvider{issuingNetworkTokenWalletProviderAccountId = GHC.Maybe.Nothing,
                                                                        issuingNetworkTokenWalletProviderAccountTrustScore = GHC.Maybe.Nothing,
                                                                        issuingNetworkTokenWalletProviderCardNumberSource = GHC.Maybe.Nothing,
                                                                        issuingNetworkTokenWalletProviderCardholderAddress = GHC.Maybe.Nothing,
                                                                        issuingNetworkTokenWalletProviderCardholderName = GHC.Maybe.Nothing,
                                                                        issuingNetworkTokenWalletProviderDeviceTrustScore = GHC.Maybe.Nothing,
                                                                        issuingNetworkTokenWalletProviderHashedAccountEmailAddress = GHC.Maybe.Nothing,
                                                                        issuingNetworkTokenWalletProviderReasonCodes = GHC.Maybe.Nothing,
                                                                        issuingNetworkTokenWalletProviderSuggestedDecision = GHC.Maybe.Nothing,
                                                                        issuingNetworkTokenWalletProviderSuggestedDecisionVersion = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.issuing_network_token_wallet_provider.properties.card_number_source@ in the specification.
-- 
-- The method used for tokenizing a card.
data IssuingNetworkTokenWalletProviderCardNumberSource' =
   IssuingNetworkTokenWalletProviderCardNumberSource'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | IssuingNetworkTokenWalletProviderCardNumberSource'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | IssuingNetworkTokenWalletProviderCardNumberSource'EnumApp -- ^ Represents the JSON value @"app"@
  | IssuingNetworkTokenWalletProviderCardNumberSource'EnumManual -- ^ Represents the JSON value @"manual"@
  | IssuingNetworkTokenWalletProviderCardNumberSource'EnumOnFile -- ^ Represents the JSON value @"on_file"@
  | IssuingNetworkTokenWalletProviderCardNumberSource'EnumOther -- ^ Represents the JSON value @"other"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingNetworkTokenWalletProviderCardNumberSource'
    where {toJSON (IssuingNetworkTokenWalletProviderCardNumberSource'Other val) = val;
           toJSON (IssuingNetworkTokenWalletProviderCardNumberSource'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (IssuingNetworkTokenWalletProviderCardNumberSource'EnumApp) = "app";
           toJSON (IssuingNetworkTokenWalletProviderCardNumberSource'EnumManual) = "manual";
           toJSON (IssuingNetworkTokenWalletProviderCardNumberSource'EnumOnFile) = "on_file";
           toJSON (IssuingNetworkTokenWalletProviderCardNumberSource'EnumOther) = "other"}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingNetworkTokenWalletProviderCardNumberSource'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "app" -> IssuingNetworkTokenWalletProviderCardNumberSource'EnumApp
                                             | val GHC.Classes.== "manual" -> IssuingNetworkTokenWalletProviderCardNumberSource'EnumManual
                                             | val GHC.Classes.== "on_file" -> IssuingNetworkTokenWalletProviderCardNumberSource'EnumOnFile
                                             | val GHC.Classes.== "other" -> IssuingNetworkTokenWalletProviderCardNumberSource'EnumOther
                                             | GHC.Base.otherwise -> IssuingNetworkTokenWalletProviderCardNumberSource'Other val)}
-- | Defines the enum schema located at @components.schemas.issuing_network_token_wallet_provider.properties.reason_codes.items@ in the specification.
-- 
-- 
data IssuingNetworkTokenWalletProviderReasonCodes' =
   IssuingNetworkTokenWalletProviderReasonCodes'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | IssuingNetworkTokenWalletProviderReasonCodes'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountCardTooNew -- ^ Represents the JSON value @"account_card_too_new"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountRecentlyChanged -- ^ Represents the JSON value @"account_recently_changed"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountTooNew -- ^ Represents the JSON value @"account_too_new"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountTooNewSinceLaunch -- ^ Represents the JSON value @"account_too_new_since_launch"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumAdditionalDevice -- ^ Represents the JSON value @"additional_device"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumDataExpired -- ^ Represents the JSON value @"data_expired"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumDeferIdVDecision -- ^ Represents the JSON value @"defer_id_v_decision"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumDeviceRecentlyLost -- ^ Represents the JSON value @"device_recently_lost"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumGoodActivityHistory -- ^ Represents the JSON value @"good_activity_history"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumHasSuspendedTokens -- ^ Represents the JSON value @"has_suspended_tokens"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumHighRisk -- ^ Represents the JSON value @"high_risk"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumInactiveAccount -- ^ Represents the JSON value @"inactive_account"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumLongAccountTenure -- ^ Represents the JSON value @"long_account_tenure"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumLowAccountScore -- ^ Represents the JSON value @"low_account_score"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumLowDeviceScore -- ^ Represents the JSON value @"low_device_score"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumLowPhoneNumberScore -- ^ Represents the JSON value @"low_phone_number_score"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumNetworkServiceError -- ^ Represents the JSON value @"network_service_error"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumOutsideHomeTerritory -- ^ Represents the JSON value @"outside_home_territory"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumProvisioningCardholderMismatch -- ^ Represents the JSON value @"provisioning_cardholder_mismatch"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumProvisioningDeviceAndCardholderMismatch -- ^ Represents the JSON value @"provisioning_device_and_cardholder_mismatch"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumProvisioningDeviceMismatch -- ^ Represents the JSON value @"provisioning_device_mismatch"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumSameDeviceNoPriorAuthentication -- ^ Represents the JSON value @"same_device_no_prior_authentication"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumSameDeviceSuccessfulPriorAuthentication -- ^ Represents the JSON value @"same_device_successful_prior_authentication"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumSoftwareUpdate -- ^ Represents the JSON value @"software_update"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumSuspiciousActivity -- ^ Represents the JSON value @"suspicious_activity"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumTooManyDifferentCardholders -- ^ Represents the JSON value @"too_many_different_cardholders"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumTooManyRecentAttempts -- ^ Represents the JSON value @"too_many_recent_attempts"@
  | IssuingNetworkTokenWalletProviderReasonCodes'EnumTooManyRecentTokens -- ^ Represents the JSON value @"too_many_recent_tokens"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingNetworkTokenWalletProviderReasonCodes'
    where {toJSON (IssuingNetworkTokenWalletProviderReasonCodes'Other val) = val;
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountCardTooNew) = "account_card_too_new";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountRecentlyChanged) = "account_recently_changed";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountTooNew) = "account_too_new";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountTooNewSinceLaunch) = "account_too_new_since_launch";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumAdditionalDevice) = "additional_device";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumDataExpired) = "data_expired";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumDeferIdVDecision) = "defer_id_v_decision";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumDeviceRecentlyLost) = "device_recently_lost";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumGoodActivityHistory) = "good_activity_history";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumHasSuspendedTokens) = "has_suspended_tokens";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumHighRisk) = "high_risk";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumInactiveAccount) = "inactive_account";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumLongAccountTenure) = "long_account_tenure";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumLowAccountScore) = "low_account_score";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumLowDeviceScore) = "low_device_score";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumLowPhoneNumberScore) = "low_phone_number_score";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumNetworkServiceError) = "network_service_error";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumOutsideHomeTerritory) = "outside_home_territory";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumProvisioningCardholderMismatch) = "provisioning_cardholder_mismatch";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumProvisioningDeviceAndCardholderMismatch) = "provisioning_device_and_cardholder_mismatch";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumProvisioningDeviceMismatch) = "provisioning_device_mismatch";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumSameDeviceNoPriorAuthentication) = "same_device_no_prior_authentication";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumSameDeviceSuccessfulPriorAuthentication) = "same_device_successful_prior_authentication";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumSoftwareUpdate) = "software_update";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumSuspiciousActivity) = "suspicious_activity";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumTooManyDifferentCardholders) = "too_many_different_cardholders";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumTooManyRecentAttempts) = "too_many_recent_attempts";
           toJSON (IssuingNetworkTokenWalletProviderReasonCodes'EnumTooManyRecentTokens) = "too_many_recent_tokens"}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingNetworkTokenWalletProviderReasonCodes'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "account_card_too_new" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountCardTooNew
                                             | val GHC.Classes.== "account_recently_changed" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountRecentlyChanged
                                             | val GHC.Classes.== "account_too_new" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountTooNew
                                             | val GHC.Classes.== "account_too_new_since_launch" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumAccountTooNewSinceLaunch
                                             | val GHC.Classes.== "additional_device" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumAdditionalDevice
                                             | val GHC.Classes.== "data_expired" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumDataExpired
                                             | val GHC.Classes.== "defer_id_v_decision" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumDeferIdVDecision
                                             | val GHC.Classes.== "device_recently_lost" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumDeviceRecentlyLost
                                             | val GHC.Classes.== "good_activity_history" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumGoodActivityHistory
                                             | val GHC.Classes.== "has_suspended_tokens" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumHasSuspendedTokens
                                             | val GHC.Classes.== "high_risk" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumHighRisk
                                             | val GHC.Classes.== "inactive_account" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumInactiveAccount
                                             | val GHC.Classes.== "long_account_tenure" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumLongAccountTenure
                                             | val GHC.Classes.== "low_account_score" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumLowAccountScore
                                             | val GHC.Classes.== "low_device_score" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumLowDeviceScore
                                             | val GHC.Classes.== "low_phone_number_score" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumLowPhoneNumberScore
                                             | val GHC.Classes.== "network_service_error" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumNetworkServiceError
                                             | val GHC.Classes.== "outside_home_territory" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumOutsideHomeTerritory
                                             | val GHC.Classes.== "provisioning_cardholder_mismatch" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumProvisioningCardholderMismatch
                                             | val GHC.Classes.== "provisioning_device_and_cardholder_mismatch" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumProvisioningDeviceAndCardholderMismatch
                                             | val GHC.Classes.== "provisioning_device_mismatch" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumProvisioningDeviceMismatch
                                             | val GHC.Classes.== "same_device_no_prior_authentication" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumSameDeviceNoPriorAuthentication
                                             | val GHC.Classes.== "same_device_successful_prior_authentication" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumSameDeviceSuccessfulPriorAuthentication
                                             | val GHC.Classes.== "software_update" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumSoftwareUpdate
                                             | val GHC.Classes.== "suspicious_activity" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumSuspiciousActivity
                                             | val GHC.Classes.== "too_many_different_cardholders" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumTooManyDifferentCardholders
                                             | val GHC.Classes.== "too_many_recent_attempts" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumTooManyRecentAttempts
                                             | val GHC.Classes.== "too_many_recent_tokens" -> IssuingNetworkTokenWalletProviderReasonCodes'EnumTooManyRecentTokens
                                             | GHC.Base.otherwise -> IssuingNetworkTokenWalletProviderReasonCodes'Other val)}
-- | Defines the enum schema located at @components.schemas.issuing_network_token_wallet_provider.properties.suggested_decision@ in the specification.
-- 
-- The recommendation on responding to the tokenization request.
data IssuingNetworkTokenWalletProviderSuggestedDecision' =
   IssuingNetworkTokenWalletProviderSuggestedDecision'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | IssuingNetworkTokenWalletProviderSuggestedDecision'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | IssuingNetworkTokenWalletProviderSuggestedDecision'EnumApprove -- ^ Represents the JSON value @"approve"@
  | IssuingNetworkTokenWalletProviderSuggestedDecision'EnumDecline -- ^ Represents the JSON value @"decline"@
  | IssuingNetworkTokenWalletProviderSuggestedDecision'EnumRequireAuth -- ^ Represents the JSON value @"require_auth"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingNetworkTokenWalletProviderSuggestedDecision'
    where {toJSON (IssuingNetworkTokenWalletProviderSuggestedDecision'Other val) = val;
           toJSON (IssuingNetworkTokenWalletProviderSuggestedDecision'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (IssuingNetworkTokenWalletProviderSuggestedDecision'EnumApprove) = "approve";
           toJSON (IssuingNetworkTokenWalletProviderSuggestedDecision'EnumDecline) = "decline";
           toJSON (IssuingNetworkTokenWalletProviderSuggestedDecision'EnumRequireAuth) = "require_auth"}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingNetworkTokenWalletProviderSuggestedDecision'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "approve" -> IssuingNetworkTokenWalletProviderSuggestedDecision'EnumApprove
                                             | val GHC.Classes.== "decline" -> IssuingNetworkTokenWalletProviderSuggestedDecision'EnumDecline
                                             | val GHC.Classes.== "require_auth" -> IssuingNetworkTokenWalletProviderSuggestedDecision'EnumRequireAuth
                                             | GHC.Base.otherwise -> IssuingNetworkTokenWalletProviderSuggestedDecision'Other val)}
