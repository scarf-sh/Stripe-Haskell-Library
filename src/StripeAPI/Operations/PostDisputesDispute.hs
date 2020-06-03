{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation postDisputesDispute
module StripeAPI.Operations.PostDisputesDispute where

import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/disputes/{dispute}
--
-- \<p>When you get a dispute, contacting your customer is always the best first step. If that doesn’t work, you can submit evidence to help us resolve the dispute in your favor. You can do this in your \<a href=\"https:\/\/dashboard.stripe.com\/disputes\">dashboard\<\/a>, but if you prefer, you can use the API to submit evidence programmatically.\<\/p>
--
-- \<p>Depending on your dispute type, different evidence fields will give you a better chance of winning your dispute. To figure out which evidence fields to provide, see our \<a href=\"\/docs\/disputes\/categories\">guide to dispute types\<\/a>.\<\/p>
postDisputesDispute ::
  forall m s.
  (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) =>
  -- | The configuration to use in the request
  StripeAPI.Common.Configuration s ->
  -- | dispute | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostDisputesDisputeRequestBody ->
  -- | Monad containing the result of the operation
  m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostDisputesDisputeResponse))
postDisputesDispute
  config
  dispute
  body =
    GHC.Base.fmap
      ( GHC.Base.fmap
          ( \response_0 ->
              GHC.Base.fmap
                ( Data.Either.either PostDisputesDisputeResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                   if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                         PostDisputesDisputeResponse200
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  Dispute
                                                            )
                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                         PostDisputesDisputeResponseDefault
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  Error
                                                            )
                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                               )
                      response_0
                )
                response_0
          )
      )
      (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | > POST /v1/disputes/{dispute}
--
-- The same as 'postDisputesDispute' but returns the raw 'Data.ByteString.Char8.ByteString'
postDisputesDisputeRaw ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  StripeAPI.Common.Configuration s ->
  Data.Text.Internal.Text ->
  GHC.Maybe.Maybe PostDisputesDisputeRequestBody ->
  m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
    )
postDisputesDisputeRaw
  config
  dispute
  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | > POST /v1/disputes/{dispute}
--
-- Monadic version of 'postDisputesDispute' (use with 'StripeAPI.Common.runWithConfiguration')
postDisputesDisputeM ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  Data.Text.Internal.Text ->
  GHC.Maybe.Maybe PostDisputesDisputeRequestBody ->
  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
    m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response PostDisputesDisputeResponse)
    )
postDisputesDisputeM
  dispute
  body =
    GHC.Base.fmap
      ( GHC.Base.fmap
          ( \response_2 ->
              GHC.Base.fmap
                ( Data.Either.either PostDisputesDisputeResponseError GHC.Base.id
                    GHC.Base.. ( \response body ->
                                   if  | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                         PostDisputesDisputeResponse200
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  Dispute
                                                            )
                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                         PostDisputesDisputeResponseDefault
                                           Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                                Data.Either.Either GHC.Base.String
                                                                  Error
                                                            )
                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                               )
                      response_2
                )
                response_2
          )
      )
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | > POST /v1/disputes/{dispute}
--
-- Monadic version of 'postDisputesDisputeRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postDisputesDisputeRawM ::
  forall m s.
  ( StripeAPI.Common.MonadHTTP m,
    StripeAPI.Common.SecurityScheme s
  ) =>
  Data.Text.Internal.Text ->
  GHC.Maybe.Maybe PostDisputesDisputeRequestBody ->
  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
    m
    ( Data.Either.Either Network.HTTP.Client.Types.HttpException
        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString)
    )
postDisputesDisputeRawM
  dispute
  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/disputes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel dispute)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the data type for the schema postDisputesDisputeRequestBody
data PostDisputesDisputeRequestBody
  = PostDisputesDisputeRequestBody
      { -- | evidence: Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
        postDisputesDisputeRequestBodyEvidence :: (GHC.Maybe.Maybe PostDisputesDisputeRequestBodyEvidence'),
        -- | expand: Specifies which fields in the response should be expanded.
        postDisputesDisputeRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text)),
        -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
        postDisputesDisputeRequestBodyMetadata :: (GHC.Maybe.Maybe PostDisputesDisputeRequestBodyMetadata'),
        -- | submit: Whether to immediately submit evidence to the bank. If \`false\`, evidence is staged on the dispute. Staged evidence is visible in the API and Dashboard, and can be submitted to the bank by making another request with this attribute set to \`true\` (the default).
        postDisputesDisputeRequestBodySubmit :: (GHC.Maybe.Maybe GHC.Types.Bool)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON PostDisputesDisputeRequestBody where
  toJSON obj = Data.Aeson.object ((Data.Aeson..=) "evidence" (postDisputesDisputeRequestBodyEvidence obj) : (Data.Aeson..=) "expand" (postDisputesDisputeRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postDisputesDisputeRequestBodyMetadata obj) : (Data.Aeson..=) "submit" (postDisputesDisputeRequestBodySubmit obj) : [])
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "evidence" (postDisputesDisputeRequestBodyEvidence obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postDisputesDisputeRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postDisputesDisputeRequestBodyMetadata obj) GHC.Base.<> (Data.Aeson..=) "submit" (postDisputesDisputeRequestBodySubmit obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PostDisputesDisputeRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDisputesDisputeRequestBody" (\obj -> (((GHC.Base.pure PostDisputesDisputeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "evidence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "submit"))

-- | Defines the data type for the schema postDisputesDisputeRequestBodyEvidence\'
--
-- Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
data PostDisputesDisputeRequestBodyEvidence'
  = PostDisputesDisputeRequestBodyEvidence'
      { -- | access_activity_log
        --
        -- Constraints:
        --
        -- * Maximum length of 20000
        postDisputesDisputeRequestBodyEvidence'AccessActivityLog :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | billing_address
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postDisputesDisputeRequestBodyEvidence'BillingAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | cancellation_policy
        postDisputesDisputeRequestBodyEvidence'CancellationPolicy :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | cancellation_policy_disclosure
        --
        -- Constraints:
        --
        -- * Maximum length of 20000
        postDisputesDisputeRequestBodyEvidence'CancellationPolicyDisclosure :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | cancellation_rebuttal
        --
        -- Constraints:
        --
        -- * Maximum length of 20000
        postDisputesDisputeRequestBodyEvidence'CancellationRebuttal :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | customer_communication
        postDisputesDisputeRequestBodyEvidence'CustomerCommunication :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | customer_email_address
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postDisputesDisputeRequestBodyEvidence'CustomerEmailAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | customer_name
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postDisputesDisputeRequestBodyEvidence'CustomerName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | customer_purchase_ip
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postDisputesDisputeRequestBodyEvidence'CustomerPurchaseIp :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | customer_signature
        postDisputesDisputeRequestBodyEvidence'CustomerSignature :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | duplicate_charge_documentation
        postDisputesDisputeRequestBodyEvidence'DuplicateChargeDocumentation :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | duplicate_charge_explanation
        --
        -- Constraints:
        --
        -- * Maximum length of 20000
        postDisputesDisputeRequestBodyEvidence'DuplicateChargeExplanation :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | duplicate_charge_id
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postDisputesDisputeRequestBodyEvidence'DuplicateChargeId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | product_description
        --
        -- Constraints:
        --
        -- * Maximum length of 20000
        postDisputesDisputeRequestBodyEvidence'ProductDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | receipt
        postDisputesDisputeRequestBodyEvidence'Receipt :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | refund_policy
        postDisputesDisputeRequestBodyEvidence'RefundPolicy :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | refund_policy_disclosure
        --
        -- Constraints:
        --
        -- * Maximum length of 20000
        postDisputesDisputeRequestBodyEvidence'RefundPolicyDisclosure :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | refund_refusal_explanation
        --
        -- Constraints:
        --
        -- * Maximum length of 20000
        postDisputesDisputeRequestBodyEvidence'RefundRefusalExplanation :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | service_date
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postDisputesDisputeRequestBodyEvidence'ServiceDate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | service_documentation
        postDisputesDisputeRequestBodyEvidence'ServiceDocumentation :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | shipping_address
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postDisputesDisputeRequestBodyEvidence'ShippingAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | shipping_carrier
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postDisputesDisputeRequestBodyEvidence'ShippingCarrier :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | shipping_date
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postDisputesDisputeRequestBodyEvidence'ShippingDate :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | shipping_documentation
        postDisputesDisputeRequestBodyEvidence'ShippingDocumentation :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | shipping_tracking_number
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postDisputesDisputeRequestBodyEvidence'ShippingTrackingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | uncategorized_file
        postDisputesDisputeRequestBodyEvidence'UncategorizedFile :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | uncategorized_text
        --
        -- Constraints:
        --
        -- * Maximum length of 20000
        postDisputesDisputeRequestBodyEvidence'UncategorizedText :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON PostDisputesDisputeRequestBodyEvidence' where
  toJSON obj = Data.Aeson.object ((Data.Aeson..=) "access_activity_log" (postDisputesDisputeRequestBodyEvidence'AccessActivityLog obj) : (Data.Aeson..=) "billing_address" (postDisputesDisputeRequestBodyEvidence'BillingAddress obj) : (Data.Aeson..=) "cancellation_policy" (postDisputesDisputeRequestBodyEvidence'CancellationPolicy obj) : (Data.Aeson..=) "cancellation_policy_disclosure" (postDisputesDisputeRequestBodyEvidence'CancellationPolicyDisclosure obj) : (Data.Aeson..=) "cancellation_rebuttal" (postDisputesDisputeRequestBodyEvidence'CancellationRebuttal obj) : (Data.Aeson..=) "customer_communication" (postDisputesDisputeRequestBodyEvidence'CustomerCommunication obj) : (Data.Aeson..=) "customer_email_address" (postDisputesDisputeRequestBodyEvidence'CustomerEmailAddress obj) : (Data.Aeson..=) "customer_name" (postDisputesDisputeRequestBodyEvidence'CustomerName obj) : (Data.Aeson..=) "customer_purchase_ip" (postDisputesDisputeRequestBodyEvidence'CustomerPurchaseIp obj) : (Data.Aeson..=) "customer_signature" (postDisputesDisputeRequestBodyEvidence'CustomerSignature obj) : (Data.Aeson..=) "duplicate_charge_documentation" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeDocumentation obj) : (Data.Aeson..=) "duplicate_charge_explanation" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeExplanation obj) : (Data.Aeson..=) "duplicate_charge_id" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeId obj) : (Data.Aeson..=) "product_description" (postDisputesDisputeRequestBodyEvidence'ProductDescription obj) : (Data.Aeson..=) "receipt" (postDisputesDisputeRequestBodyEvidence'Receipt obj) : (Data.Aeson..=) "refund_policy" (postDisputesDisputeRequestBodyEvidence'RefundPolicy obj) : (Data.Aeson..=) "refund_policy_disclosure" (postDisputesDisputeRequestBodyEvidence'RefundPolicyDisclosure obj) : (Data.Aeson..=) "refund_refusal_explanation" (postDisputesDisputeRequestBodyEvidence'RefundRefusalExplanation obj) : (Data.Aeson..=) "service_date" (postDisputesDisputeRequestBodyEvidence'ServiceDate obj) : (Data.Aeson..=) "service_documentation" (postDisputesDisputeRequestBodyEvidence'ServiceDocumentation obj) : (Data.Aeson..=) "shipping_address" (postDisputesDisputeRequestBodyEvidence'ShippingAddress obj) : (Data.Aeson..=) "shipping_carrier" (postDisputesDisputeRequestBodyEvidence'ShippingCarrier obj) : (Data.Aeson..=) "shipping_date" (postDisputesDisputeRequestBodyEvidence'ShippingDate obj) : (Data.Aeson..=) "shipping_documentation" (postDisputesDisputeRequestBodyEvidence'ShippingDocumentation obj) : (Data.Aeson..=) "shipping_tracking_number" (postDisputesDisputeRequestBodyEvidence'ShippingTrackingNumber obj) : (Data.Aeson..=) "uncategorized_file" (postDisputesDisputeRequestBodyEvidence'UncategorizedFile obj) : (Data.Aeson..=) "uncategorized_text" (postDisputesDisputeRequestBodyEvidence'UncategorizedText obj) : [])
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "access_activity_log" (postDisputesDisputeRequestBodyEvidence'AccessActivityLog obj) GHC.Base.<> ((Data.Aeson..=) "billing_address" (postDisputesDisputeRequestBodyEvidence'BillingAddress obj) GHC.Base.<> ((Data.Aeson..=) "cancellation_policy" (postDisputesDisputeRequestBodyEvidence'CancellationPolicy obj) GHC.Base.<> ((Data.Aeson..=) "cancellation_policy_disclosure" (postDisputesDisputeRequestBodyEvidence'CancellationPolicyDisclosure obj) GHC.Base.<> ((Data.Aeson..=) "cancellation_rebuttal" (postDisputesDisputeRequestBodyEvidence'CancellationRebuttal obj) GHC.Base.<> ((Data.Aeson..=) "customer_communication" (postDisputesDisputeRequestBodyEvidence'CustomerCommunication obj) GHC.Base.<> ((Data.Aeson..=) "customer_email_address" (postDisputesDisputeRequestBodyEvidence'CustomerEmailAddress obj) GHC.Base.<> ((Data.Aeson..=) "customer_name" (postDisputesDisputeRequestBodyEvidence'CustomerName obj) GHC.Base.<> ((Data.Aeson..=) "customer_purchase_ip" (postDisputesDisputeRequestBodyEvidence'CustomerPurchaseIp obj) GHC.Base.<> ((Data.Aeson..=) "customer_signature" (postDisputesDisputeRequestBodyEvidence'CustomerSignature obj) GHC.Base.<> ((Data.Aeson..=) "duplicate_charge_documentation" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeDocumentation obj) GHC.Base.<> ((Data.Aeson..=) "duplicate_charge_explanation" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeExplanation obj) GHC.Base.<> ((Data.Aeson..=) "duplicate_charge_id" (postDisputesDisputeRequestBodyEvidence'DuplicateChargeId obj) GHC.Base.<> ((Data.Aeson..=) "product_description" (postDisputesDisputeRequestBodyEvidence'ProductDescription obj) GHC.Base.<> ((Data.Aeson..=) "receipt" (postDisputesDisputeRequestBodyEvidence'Receipt obj) GHC.Base.<> ((Data.Aeson..=) "refund_policy" (postDisputesDisputeRequestBodyEvidence'RefundPolicy obj) GHC.Base.<> ((Data.Aeson..=) "refund_policy_disclosure" (postDisputesDisputeRequestBodyEvidence'RefundPolicyDisclosure obj) GHC.Base.<> ((Data.Aeson..=) "refund_refusal_explanation" (postDisputesDisputeRequestBodyEvidence'RefundRefusalExplanation obj) GHC.Base.<> ((Data.Aeson..=) "service_date" (postDisputesDisputeRequestBodyEvidence'ServiceDate obj) GHC.Base.<> ((Data.Aeson..=) "service_documentation" (postDisputesDisputeRequestBodyEvidence'ServiceDocumentation obj) GHC.Base.<> ((Data.Aeson..=) "shipping_address" (postDisputesDisputeRequestBodyEvidence'ShippingAddress obj) GHC.Base.<> ((Data.Aeson..=) "shipping_carrier" (postDisputesDisputeRequestBodyEvidence'ShippingCarrier obj) GHC.Base.<> ((Data.Aeson..=) "shipping_date" (postDisputesDisputeRequestBodyEvidence'ShippingDate obj) GHC.Base.<> ((Data.Aeson..=) "shipping_documentation" (postDisputesDisputeRequestBodyEvidence'ShippingDocumentation obj) GHC.Base.<> ((Data.Aeson..=) "shipping_tracking_number" (postDisputesDisputeRequestBodyEvidence'ShippingTrackingNumber obj) GHC.Base.<> ((Data.Aeson..=) "uncategorized_file" (postDisputesDisputeRequestBodyEvidence'UncategorizedFile obj) GHC.Base.<> (Data.Aeson..=) "uncategorized_text" (postDisputesDisputeRequestBodyEvidence'UncategorizedText obj)))))))))))))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON PostDisputesDisputeRequestBodyEvidence' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDisputesDisputeRequestBodyEvidence'" (\obj -> ((((((((((((((((((((((((((GHC.Base.pure PostDisputesDisputeRequestBodyEvidence' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "access_activity_log")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_policy_disclosure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancellation_rebuttal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_communication")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_email_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_purchase_ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_signature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "duplicate_charge_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product_description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_policy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_policy_disclosure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_refusal_explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "service_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_tracking_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncategorized_text"))

-- | Defines the data type for the schema postDisputesDisputeRequestBodyMetadata\'
--
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostDisputesDisputeRequestBodyMetadata'
  = PostDisputesDisputeRequestBodyMetadata'
      {
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.ToJSON PostDisputesDisputeRequestBodyMetadata' where
  toJSON obj = Data.Aeson.object []
  toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))

instance Data.Aeson.Types.FromJSON.FromJSON PostDisputesDisputeRequestBodyMetadata' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostDisputesDisputeRequestBodyMetadata'" (\obj -> GHC.Base.pure PostDisputesDisputeRequestBodyMetadata')

-- | Represents a response of the operation 'postDisputesDispute'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostDisputesDisputeResponseError' is used.
data PostDisputesDisputeResponse
  = -- | Means either no matching case available or a parse error
    PostDisputesDisputeResponseError GHC.Base.String
  | -- | Successful response.
    PostDisputesDisputeResponse200 Dispute
  | -- | Error response.
    PostDisputesDisputeResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
