-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postDisputesDispute
module StripeAPI.Operations.PostDisputesDispute where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > POST /v1/disputes/{dispute}
-- 
-- \<p>When you get a dispute, contacting your customer is always the best first step. If that doesn’t work, you can submit evidence to help us resolve the dispute in your favor. You can do this in your \<a href=\"https:\/\/dashboard.stripe.com\/disputes\">dashboard\<\/a>, but if you prefer, you can use the API to submit evidence programmatically.\<\/p>
-- 
-- \<p>Depending on your dispute type, different evidence fields will give you a better chance of winning your dispute. To figure out which evidence fields to provide, see our \<a href=\"\/docs\/disputes\/categories\">guide to dispute types\<\/a>.\<\/p>
postDisputesDispute :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ dispute | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostDisputesDisputeRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostDisputesDisputeResponse) -- ^ Monadic computation which returns the result of the operation
postDisputesDispute dispute
                    body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostDisputesDisputeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostDisputesDisputeResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            Dispute)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostDisputesDisputeResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/disputes/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.<> "")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/disputes\/{dispute}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostDisputesDisputeRequestBody = PostDisputesDisputeRequestBody {
  -- | evidence: Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
  postDisputesDisputeRequestBodyEvidence :: (GHC.Maybe.Maybe PostDisputesDisputeRequestBodyEvidence')
  -- | expand: Specifies which fields in the response should be expanded.
  , postDisputesDisputeRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postDisputesDisputeRequestBodyMetadata :: (GHC.Maybe.Maybe PostDisputesDisputeRequestBodyMetadata'Variants)
  -- | submit: Whether to immediately submit evidence to the bank. If \`false\`, evidence is staged on the dispute. Staged evidence is visible in the API and Dashboard, and can be submitted to the bank by making another request with this attribute set to \`true\` (the default).
  , postDisputesDisputeRequestBodySubmit :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostDisputesDisputeRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("evidence" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("submit" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodySubmit obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("evidence" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("submit" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodySubmit obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostDisputesDisputeRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDisputesDisputeRequestBody" (\obj -> (((GHC.Base.pure PostDisputesDisputeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "evidence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "submit"))}
-- | Create a new 'PostDisputesDisputeRequestBody' with all required fields.
mkPostDisputesDisputeRequestBody :: PostDisputesDisputeRequestBody
mkPostDisputesDisputeRequestBody = PostDisputesDisputeRequestBody{postDisputesDisputeRequestBodyEvidence = GHC.Maybe.Nothing,
                                                                  postDisputesDisputeRequestBodyExpand = GHC.Maybe.Nothing,
                                                                  postDisputesDisputeRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                  postDisputesDisputeRequestBodySubmit = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/disputes\/{dispute}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.evidence@ in the specification.
-- 
-- Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
data PostDisputesDisputeRequestBodyEvidence' = PostDisputesDisputeRequestBodyEvidence' {
  -- | access_activity_log
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  postDisputesDisputeRequestBodyEvidence'AccessActivityLog :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | billing_address
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postDisputesDisputeRequestBodyEvidence'BillingAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | cancellation_policy
  , postDisputesDisputeRequestBodyEvidence'CancellationPolicy :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | cancellation_policy_disclosure
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postDisputesDisputeRequestBodyEvidence'CancellationPolicyDisclosure :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | cancellation_rebuttal
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postDisputesDisputeRequestBodyEvidence'CancellationRebuttal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customer_communication
  , postDisputesDisputeRequestBodyEvidence'CustomerCommunication :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customer_email_address
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postDisputesDisputeRequestBodyEvidence'CustomerEmailAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customer_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postDisputesDisputeRequestBodyEvidence'CustomerName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customer_purchase_ip
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postDisputesDisputeRequestBodyEvidence'CustomerPurchaseIp :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customer_signature
  , postDisputesDisputeRequestBodyEvidence'CustomerSignature :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | duplicate_charge_documentation
  , postDisputesDisputeRequestBodyEvidence'DuplicateChargeDocumentation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | duplicate_charge_explanation
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postDisputesDisputeRequestBodyEvidence'DuplicateChargeExplanation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | duplicate_charge_id
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postDisputesDisputeRequestBodyEvidence'DuplicateChargeId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | product_description
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postDisputesDisputeRequestBodyEvidence'ProductDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | receipt
  , postDisputesDisputeRequestBodyEvidence'Receipt :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | refund_policy
  , postDisputesDisputeRequestBodyEvidence'RefundPolicy :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | refund_policy_disclosure
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postDisputesDisputeRequestBodyEvidence'RefundPolicyDisclosure :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | refund_refusal_explanation
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postDisputesDisputeRequestBodyEvidence'RefundRefusalExplanation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | service_date
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postDisputesDisputeRequestBodyEvidence'ServiceDate :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | service_documentation
  , postDisputesDisputeRequestBodyEvidence'ServiceDocumentation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipping_address
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postDisputesDisputeRequestBodyEvidence'ShippingAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipping_carrier
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postDisputesDisputeRequestBodyEvidence'ShippingCarrier :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipping_date
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postDisputesDisputeRequestBodyEvidence'ShippingDate :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipping_documentation
  , postDisputesDisputeRequestBodyEvidence'ShippingDocumentation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | shipping_tracking_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postDisputesDisputeRequestBodyEvidence'ShippingTrackingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | uncategorized_file
  , postDisputesDisputeRequestBodyEvidence'UncategorizedFile :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | uncategorized_text
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 20000
  , postDisputesDisputeRequestBodyEvidence'UncategorizedText :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostDisputesDisputeRequestBodyEvidence'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("access_activity_log" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'AccessActivityLog obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_address" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'BillingAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_policy" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CancellationPolicy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_policy_disclosure" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CancellationPolicyDisclosure obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_rebuttal" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CancellationRebuttal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_communication" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CustomerCommunication obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_email_address" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CustomerEmailAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_name" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CustomerName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_purchase_ip" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CustomerPurchaseIp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_signature" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CustomerSignature obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("duplicate_charge_documentation" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'DuplicateChargeDocumentation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("duplicate_charge_explanation" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'DuplicateChargeExplanation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("duplicate_charge_id" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'DuplicateChargeId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product_description" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ProductDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("receipt" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'Receipt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_policy" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'RefundPolicy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_policy_disclosure" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'RefundPolicyDisclosure obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_refusal_explanation" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'RefundRefusalExplanation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("service_date" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ServiceDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("service_documentation" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ServiceDocumentation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_address" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ShippingAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_carrier" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ShippingCarrier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_date" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ShippingDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_documentation" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ShippingDocumentation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_tracking_number" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ShippingTrackingNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("uncategorized_file" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'UncategorizedFile obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("uncategorized_text" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'UncategorizedText obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("access_activity_log" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'AccessActivityLog obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_address" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'BillingAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_policy" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CancellationPolicy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_policy_disclosure" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CancellationPolicyDisclosure obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_rebuttal" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CancellationRebuttal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_communication" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CustomerCommunication obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_email_address" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CustomerEmailAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_name" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CustomerName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_purchase_ip" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CustomerPurchaseIp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_signature" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'CustomerSignature obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("duplicate_charge_documentation" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'DuplicateChargeDocumentation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("duplicate_charge_explanation" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'DuplicateChargeExplanation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("duplicate_charge_id" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'DuplicateChargeId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product_description" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ProductDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("receipt" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'Receipt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_policy" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'RefundPolicy obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_policy_disclosure" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'RefundPolicyDisclosure obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_refusal_explanation" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'RefundRefusalExplanation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("service_date" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ServiceDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("service_documentation" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ServiceDocumentation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_address" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ShippingAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_carrier" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ShippingCarrier obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_date" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ShippingDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_documentation" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ShippingDocumentation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_tracking_number" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'ShippingTrackingNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("uncategorized_file" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'UncategorizedFile obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("uncategorized_text" Data.Aeson.Types.ToJSON..=)) (postDisputesDisputeRequestBodyEvidence'UncategorizedText obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostDisputesDisputeRequestBodyEvidence'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDisputesDisputeRequestBodyEvidence'" (\obj -> ((((((((((((((((((((((((((GHC.Base.pure PostDisputesDisputeRequestBodyEvidence' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "access_activity_log")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cancellation_policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cancellation_policy_disclosure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cancellation_rebuttal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer_communication")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer_email_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer_purchase_ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer_signature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "duplicate_charge_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "duplicate_charge_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "duplicate_charge_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "receipt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_policy_disclosure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_refusal_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "service_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "service_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_tracking_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "uncategorized_file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "uncategorized_text"))}
-- | Create a new 'PostDisputesDisputeRequestBodyEvidence'' with all required fields.
mkPostDisputesDisputeRequestBodyEvidence' :: PostDisputesDisputeRequestBodyEvidence'
mkPostDisputesDisputeRequestBodyEvidence' = PostDisputesDisputeRequestBodyEvidence'{postDisputesDisputeRequestBodyEvidence'AccessActivityLog = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'BillingAddress = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'CancellationPolicy = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'CancellationPolicyDisclosure = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'CancellationRebuttal = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'CustomerCommunication = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'CustomerEmailAddress = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'CustomerName = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'CustomerPurchaseIp = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'CustomerSignature = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'DuplicateChargeDocumentation = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'DuplicateChargeExplanation = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'DuplicateChargeId = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'ProductDescription = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'Receipt = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'RefundPolicy = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'RefundPolicyDisclosure = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'RefundRefusalExplanation = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'ServiceDate = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'ServiceDocumentation = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'ShippingAddress = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'ShippingCarrier = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'ShippingDate = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'ShippingDocumentation = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'ShippingTrackingNumber = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'UncategorizedFile = GHC.Maybe.Nothing,
                                                                                    postDisputesDisputeRequestBodyEvidence'UncategorizedText = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/disputes\/{dispute}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostDisputesDisputeRequestBodyMetadata'Variants =
   PostDisputesDisputeRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostDisputesDisputeRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostDisputesDisputeRequestBodyMetadata'Variants
    where {toJSON (PostDisputesDisputeRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PostDisputesDisputeRequestBodyMetadata'EmptyString) = ""}
instance Data.Aeson.Types.FromJSON.FromJSON PostDisputesDisputeRequestBodyMetadata'Variants
    where {parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostDisputesDisputeRequestBodyMetadata'EmptyString
                              | GHC.Base.otherwise -> case (PostDisputesDisputeRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'postDisputesDispute'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostDisputesDisputeResponseError' is used.
data PostDisputesDisputeResponse =
   PostDisputesDisputeResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostDisputesDisputeResponse200 Dispute -- ^ Successful response.
  | PostDisputesDisputeResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
