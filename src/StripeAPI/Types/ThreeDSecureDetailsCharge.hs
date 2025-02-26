-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ThreeDSecureDetailsCharge
module StripeAPI.Types.ThreeDSecureDetailsCharge where

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

-- | Defines the object schema located at @components.schemas.three_d_secure_details_charge@ in the specification.
-- 
-- 
data ThreeDSecureDetailsCharge = ThreeDSecureDetailsCharge {
  -- | authentication_flow: For authenticated transactions: how the customer was authenticated by
  -- the issuing bank.
  threeDSecureDetailsChargeAuthenticationFlow :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ThreeDSecureDetailsChargeAuthenticationFlow'NonNullable))
  -- | electronic_commerce_indicator: The Electronic Commerce Indicator (ECI). A protocol-level field
  -- indicating what degree of authentication was performed.
  , threeDSecureDetailsChargeElectronicCommerceIndicator :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullable))
  -- | exemption_indicator: The exemption requested via 3DS and accepted by the issuer at authentication time.
  , threeDSecureDetailsChargeExemptionIndicator :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ThreeDSecureDetailsChargeExemptionIndicator'NonNullable))
  -- | exemption_indicator_applied: Whether Stripe requested the value of \`exemption_indicator\` in the transaction. This will depend on
  -- the outcome of Stripe\'s internal risk assessment.
  , threeDSecureDetailsChargeExemptionIndicatorApplied :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | result: Indicates the outcome of 3D Secure authentication.
  , threeDSecureDetailsChargeResult :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ThreeDSecureDetailsChargeResult'NonNullable))
  -- | result_reason: Additional information about why 3D Secure succeeded or failed based
  -- on the \`result\`.
  , threeDSecureDetailsChargeResultReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ThreeDSecureDetailsChargeResultReason'NonNullable))
  -- | transaction_id: The 3D Secure 1 XID or 3D Secure 2 Directory Server Transaction ID
  -- (dsTransId) for this payment.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , threeDSecureDetailsChargeTransactionId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | version: The version of 3D Secure that was used.
  , threeDSecureDetailsChargeVersion :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ThreeDSecureDetailsChargeVersion'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ThreeDSecureDetailsCharge
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeAuthenticationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("electronic_commerce_indicator" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeElectronicCommerceIndicator obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exemption_indicator" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeExemptionIndicator obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exemption_indicator_applied" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeExemptionIndicatorApplied obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("result" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeResult obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("result_reason" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeResultReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_id" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeTransactionId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("version" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeVersion obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authentication_flow" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeAuthenticationFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("electronic_commerce_indicator" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeElectronicCommerceIndicator obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exemption_indicator" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeExemptionIndicator obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exemption_indicator_applied" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeExemptionIndicatorApplied obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("result" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeResult obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("result_reason" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeResultReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_id" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeTransactionId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("version" Data.Aeson.Types.ToJSON..=)) (threeDSecureDetailsChargeVersion obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON ThreeDSecureDetailsCharge
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "ThreeDSecureDetailsCharge" (\obj -> (((((((GHC.Base.pure ThreeDSecureDetailsCharge GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authentication_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "electronic_commerce_indicator")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exemption_indicator")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exemption_indicator_applied")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "result")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "result_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "version"))}
-- | Create a new 'ThreeDSecureDetailsCharge' with all required fields.
mkThreeDSecureDetailsCharge :: ThreeDSecureDetailsCharge
mkThreeDSecureDetailsCharge = ThreeDSecureDetailsCharge{threeDSecureDetailsChargeAuthenticationFlow = GHC.Maybe.Nothing,
                                                        threeDSecureDetailsChargeElectronicCommerceIndicator = GHC.Maybe.Nothing,
                                                        threeDSecureDetailsChargeExemptionIndicator = GHC.Maybe.Nothing,
                                                        threeDSecureDetailsChargeExemptionIndicatorApplied = GHC.Maybe.Nothing,
                                                        threeDSecureDetailsChargeResult = GHC.Maybe.Nothing,
                                                        threeDSecureDetailsChargeResultReason = GHC.Maybe.Nothing,
                                                        threeDSecureDetailsChargeTransactionId = GHC.Maybe.Nothing,
                                                        threeDSecureDetailsChargeVersion = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.three_d_secure_details_charge.properties.authentication_flow@ in the specification.
-- 
-- For authenticated transactions: how the customer was authenticated by
-- the issuing bank.
data ThreeDSecureDetailsChargeAuthenticationFlow'NonNullable =
   ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableEnumChallenge -- ^ Represents the JSON value @"challenge"@
  | ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableEnumFrictionless -- ^ Represents the JSON value @"frictionless"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ThreeDSecureDetailsChargeAuthenticationFlow'NonNullable
    where {toJSON (ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableOther val) = val;
           toJSON (ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableEnumChallenge) = "challenge";
           toJSON (ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableEnumFrictionless) = "frictionless"}
instance Data.Aeson.Types.FromJSON.FromJSON ThreeDSecureDetailsChargeAuthenticationFlow'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "challenge" -> ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableEnumChallenge
                                             | val GHC.Classes.== "frictionless" -> ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableEnumFrictionless
                                             | GHC.Base.otherwise -> ThreeDSecureDetailsChargeAuthenticationFlow'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.three_d_secure_details_charge.properties.electronic_commerce_indicator@ in the specification.
-- 
-- The Electronic Commerce Indicator (ECI). A protocol-level field
-- indicating what degree of authentication was performed.
data ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullable =
   ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum01 -- ^ Represents the JSON value @"01"@
  | ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum02 -- ^ Represents the JSON value @"02"@
  | ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum05 -- ^ Represents the JSON value @"05"@
  | ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum06 -- ^ Represents the JSON value @"06"@
  | ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum07 -- ^ Represents the JSON value @"07"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullable
    where {toJSON (ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableOther val) = val;
           toJSON (ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum01) = "01";
           toJSON (ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum02) = "02";
           toJSON (ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum05) = "05";
           toJSON (ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum06) = "06";
           toJSON (ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum07) = "07"}
instance Data.Aeson.Types.FromJSON.FromJSON ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "01" -> ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum01
                                             | val GHC.Classes.== "02" -> ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum02
                                             | val GHC.Classes.== "05" -> ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum05
                                             | val GHC.Classes.== "06" -> ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum06
                                             | val GHC.Classes.== "07" -> ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableEnum07
                                             | GHC.Base.otherwise -> ThreeDSecureDetailsChargeElectronicCommerceIndicator'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.three_d_secure_details_charge.properties.exemption_indicator@ in the specification.
-- 
-- The exemption requested via 3DS and accepted by the issuer at authentication time.
data ThreeDSecureDetailsChargeExemptionIndicator'NonNullable =
   ThreeDSecureDetailsChargeExemptionIndicator'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ThreeDSecureDetailsChargeExemptionIndicator'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ThreeDSecureDetailsChargeExemptionIndicator'NonNullableEnumLowRisk -- ^ Represents the JSON value @"low_risk"@
  | ThreeDSecureDetailsChargeExemptionIndicator'NonNullableEnumNone -- ^ Represents the JSON value @"none"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ThreeDSecureDetailsChargeExemptionIndicator'NonNullable
    where {toJSON (ThreeDSecureDetailsChargeExemptionIndicator'NonNullableOther val) = val;
           toJSON (ThreeDSecureDetailsChargeExemptionIndicator'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ThreeDSecureDetailsChargeExemptionIndicator'NonNullableEnumLowRisk) = "low_risk";
           toJSON (ThreeDSecureDetailsChargeExemptionIndicator'NonNullableEnumNone) = "none"}
instance Data.Aeson.Types.FromJSON.FromJSON ThreeDSecureDetailsChargeExemptionIndicator'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "low_risk" -> ThreeDSecureDetailsChargeExemptionIndicator'NonNullableEnumLowRisk
                                             | val GHC.Classes.== "none" -> ThreeDSecureDetailsChargeExemptionIndicator'NonNullableEnumNone
                                             | GHC.Base.otherwise -> ThreeDSecureDetailsChargeExemptionIndicator'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.three_d_secure_details_charge.properties.result@ in the specification.
-- 
-- Indicates the outcome of 3D Secure authentication.
data ThreeDSecureDetailsChargeResult'NonNullable =
   ThreeDSecureDetailsChargeResult'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ThreeDSecureDetailsChargeResult'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ThreeDSecureDetailsChargeResult'NonNullableEnumAttemptAcknowledged -- ^ Represents the JSON value @"attempt_acknowledged"@
  | ThreeDSecureDetailsChargeResult'NonNullableEnumAuthenticated -- ^ Represents the JSON value @"authenticated"@
  | ThreeDSecureDetailsChargeResult'NonNullableEnumExempted -- ^ Represents the JSON value @"exempted"@
  | ThreeDSecureDetailsChargeResult'NonNullableEnumFailed -- ^ Represents the JSON value @"failed"@
  | ThreeDSecureDetailsChargeResult'NonNullableEnumNotSupported -- ^ Represents the JSON value @"not_supported"@
  | ThreeDSecureDetailsChargeResult'NonNullableEnumProcessingError -- ^ Represents the JSON value @"processing_error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ThreeDSecureDetailsChargeResult'NonNullable
    where {toJSON (ThreeDSecureDetailsChargeResult'NonNullableOther val) = val;
           toJSON (ThreeDSecureDetailsChargeResult'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ThreeDSecureDetailsChargeResult'NonNullableEnumAttemptAcknowledged) = "attempt_acknowledged";
           toJSON (ThreeDSecureDetailsChargeResult'NonNullableEnumAuthenticated) = "authenticated";
           toJSON (ThreeDSecureDetailsChargeResult'NonNullableEnumExempted) = "exempted";
           toJSON (ThreeDSecureDetailsChargeResult'NonNullableEnumFailed) = "failed";
           toJSON (ThreeDSecureDetailsChargeResult'NonNullableEnumNotSupported) = "not_supported";
           toJSON (ThreeDSecureDetailsChargeResult'NonNullableEnumProcessingError) = "processing_error"}
instance Data.Aeson.Types.FromJSON.FromJSON ThreeDSecureDetailsChargeResult'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "attempt_acknowledged" -> ThreeDSecureDetailsChargeResult'NonNullableEnumAttemptAcknowledged
                                             | val GHC.Classes.== "authenticated" -> ThreeDSecureDetailsChargeResult'NonNullableEnumAuthenticated
                                             | val GHC.Classes.== "exempted" -> ThreeDSecureDetailsChargeResult'NonNullableEnumExempted
                                             | val GHC.Classes.== "failed" -> ThreeDSecureDetailsChargeResult'NonNullableEnumFailed
                                             | val GHC.Classes.== "not_supported" -> ThreeDSecureDetailsChargeResult'NonNullableEnumNotSupported
                                             | val GHC.Classes.== "processing_error" -> ThreeDSecureDetailsChargeResult'NonNullableEnumProcessingError
                                             | GHC.Base.otherwise -> ThreeDSecureDetailsChargeResult'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.three_d_secure_details_charge.properties.result_reason@ in the specification.
-- 
-- Additional information about why 3D Secure succeeded or failed based
-- on the \`result\`.
data ThreeDSecureDetailsChargeResultReason'NonNullable =
   ThreeDSecureDetailsChargeResultReason'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ThreeDSecureDetailsChargeResultReason'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ThreeDSecureDetailsChargeResultReason'NonNullableEnumAbandoned -- ^ Represents the JSON value @"abandoned"@
  | ThreeDSecureDetailsChargeResultReason'NonNullableEnumBypassed -- ^ Represents the JSON value @"bypassed"@
  | ThreeDSecureDetailsChargeResultReason'NonNullableEnumCanceled -- ^ Represents the JSON value @"canceled"@
  | ThreeDSecureDetailsChargeResultReason'NonNullableEnumCardNotEnrolled -- ^ Represents the JSON value @"card_not_enrolled"@
  | ThreeDSecureDetailsChargeResultReason'NonNullableEnumNetworkNotSupported -- ^ Represents the JSON value @"network_not_supported"@
  | ThreeDSecureDetailsChargeResultReason'NonNullableEnumProtocolError -- ^ Represents the JSON value @"protocol_error"@
  | ThreeDSecureDetailsChargeResultReason'NonNullableEnumRejected -- ^ Represents the JSON value @"rejected"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ThreeDSecureDetailsChargeResultReason'NonNullable
    where {toJSON (ThreeDSecureDetailsChargeResultReason'NonNullableOther val) = val;
           toJSON (ThreeDSecureDetailsChargeResultReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ThreeDSecureDetailsChargeResultReason'NonNullableEnumAbandoned) = "abandoned";
           toJSON (ThreeDSecureDetailsChargeResultReason'NonNullableEnumBypassed) = "bypassed";
           toJSON (ThreeDSecureDetailsChargeResultReason'NonNullableEnumCanceled) = "canceled";
           toJSON (ThreeDSecureDetailsChargeResultReason'NonNullableEnumCardNotEnrolled) = "card_not_enrolled";
           toJSON (ThreeDSecureDetailsChargeResultReason'NonNullableEnumNetworkNotSupported) = "network_not_supported";
           toJSON (ThreeDSecureDetailsChargeResultReason'NonNullableEnumProtocolError) = "protocol_error";
           toJSON (ThreeDSecureDetailsChargeResultReason'NonNullableEnumRejected) = "rejected"}
instance Data.Aeson.Types.FromJSON.FromJSON ThreeDSecureDetailsChargeResultReason'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "abandoned" -> ThreeDSecureDetailsChargeResultReason'NonNullableEnumAbandoned
                                             | val GHC.Classes.== "bypassed" -> ThreeDSecureDetailsChargeResultReason'NonNullableEnumBypassed
                                             | val GHC.Classes.== "canceled" -> ThreeDSecureDetailsChargeResultReason'NonNullableEnumCanceled
                                             | val GHC.Classes.== "card_not_enrolled" -> ThreeDSecureDetailsChargeResultReason'NonNullableEnumCardNotEnrolled
                                             | val GHC.Classes.== "network_not_supported" -> ThreeDSecureDetailsChargeResultReason'NonNullableEnumNetworkNotSupported
                                             | val GHC.Classes.== "protocol_error" -> ThreeDSecureDetailsChargeResultReason'NonNullableEnumProtocolError
                                             | val GHC.Classes.== "rejected" -> ThreeDSecureDetailsChargeResultReason'NonNullableEnumRejected
                                             | GHC.Base.otherwise -> ThreeDSecureDetailsChargeResultReason'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.three_d_secure_details_charge.properties.version@ in the specification.
-- 
-- The version of 3D Secure that was used.
data ThreeDSecureDetailsChargeVersion'NonNullable =
   ThreeDSecureDetailsChargeVersion'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ThreeDSecureDetailsChargeVersion'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ThreeDSecureDetailsChargeVersion'NonNullableEnum1'0'2 -- ^ Represents the JSON value @"1.0.2"@
  | ThreeDSecureDetailsChargeVersion'NonNullableEnum2'1'0 -- ^ Represents the JSON value @"2.1.0"@
  | ThreeDSecureDetailsChargeVersion'NonNullableEnum2'2'0 -- ^ Represents the JSON value @"2.2.0"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ThreeDSecureDetailsChargeVersion'NonNullable
    where {toJSON (ThreeDSecureDetailsChargeVersion'NonNullableOther val) = val;
           toJSON (ThreeDSecureDetailsChargeVersion'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (ThreeDSecureDetailsChargeVersion'NonNullableEnum1'0'2) = "1.0.2";
           toJSON (ThreeDSecureDetailsChargeVersion'NonNullableEnum2'1'0) = "2.1.0";
           toJSON (ThreeDSecureDetailsChargeVersion'NonNullableEnum2'2'0) = "2.2.0"}
instance Data.Aeson.Types.FromJSON.FromJSON ThreeDSecureDetailsChargeVersion'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "1.0.2" -> ThreeDSecureDetailsChargeVersion'NonNullableEnum1'0'2
                                             | val GHC.Classes.== "2.1.0" -> ThreeDSecureDetailsChargeVersion'NonNullableEnum2'1'0
                                             | val GHC.Classes.== "2.2.0" -> ThreeDSecureDetailsChargeVersion'NonNullableEnum2'2'0
                                             | GHC.Base.otherwise -> ThreeDSecureDetailsChargeVersion'NonNullableOther val)}
