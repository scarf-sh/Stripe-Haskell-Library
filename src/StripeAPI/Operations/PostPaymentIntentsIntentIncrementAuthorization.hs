{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postPaymentIntentsIntentIncrementAuthorization
module StripeAPI.Operations.PostPaymentIntentsIntentIncrementAuthorization where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/payment_intents/{intent}/increment_authorization
--
-- \<p>Perform an incremental authorization on an eligible
-- \<a href=\"\/docs\/api\/payment_intents\/object\">PaymentIntent\<\/a>. To be eligible, the
-- PaymentIntent’s status must be \<code>requires_capture\<\/code> and
-- \<a href=\"\/docs\/api\/charges\/object\#charge_object-payment_method_details-card_present-incremental_authorization_supported\">incremental_authorization_supported\<\/a>
-- must be \<code>true\<\/code>.\<\/p>
--
-- \<p>Incremental authorizations attempt to increase the authorized amount on
-- your customer’s card to the new, higher \<code>amount\<\/code> provided. As with the
-- initial authorization, incremental authorizations may be declined. A
-- single PaymentIntent can call this endpoint multiple times to further
-- increase the authorized amount.\<\/p>
--
-- \<p>If the incremental authorization succeeds, the PaymentIntent object is
-- returned with the updated
-- \<a href=\"\/docs\/api\/payment_intents\/object\#payment_intent_object-amount\">amount\<\/a>.
-- If the incremental authorization fails, a
-- \<a href=\"\/docs\/error-codes\#card-declined\">card_declined\<\/a> error is returned, and no
-- fields on the PaymentIntent or Charge are updated. The PaymentIntent
-- object remains capturable for the previously authorized amount.\<\/p>
--
-- \<p>Each PaymentIntent can have a maximum of 10 incremental authorization attempts, including declines.
-- Once captured, a PaymentIntent can no longer be incremented.\<\/p>
--
-- \<p>Learn more about \<a href=\"\/docs\/terminal\/features\/incremental-authorizations\">incremental authorizations\<\/a>.\<\/p>
postPaymentIntentsIntentIncrementAuthorization ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | intent | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  PostPaymentIntentsIntentIncrementAuthorizationRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentIncrementAuthorizationResponse)
postPaymentIntentsIntentIncrementAuthorization
  intent
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostPaymentIntentsIntentIncrementAuthorizationResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostPaymentIntentsIntentIncrementAuthorizationResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PaymentIntent
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostPaymentIntentsIntentIncrementAuthorizationResponseDefault
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_0
            )
            response_0
      )
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/increment_authorization"))) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/payment_intents\/{intent}\/increment_authorization.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostPaymentIntentsIntentIncrementAuthorizationRequestBody = PostPaymentIntentsIntentIncrementAuthorizationRequestBody
  { -- | amount: The updated total amount you intend to collect from the cardholder. This amount must be greater than the currently authorized amount.
    postPaymentIntentsIntentIncrementAuthorizationRequestBodyAmount :: GHC.Types.Int,
    -- | application_fee_amount: The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner\'s Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
    postPaymentIntentsIntentIncrementAuthorizationRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
    --
    -- Constraints:
    --
    -- * Maximum length of 1000
    postPaymentIntentsIntentIncrementAuthorizationRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postPaymentIntentsIntentIncrementAuthorizationRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postPaymentIntentsIntentIncrementAuthorizationRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | transfer_data: The parameters used to automatically create a Transfer when the payment is captured.
    -- For more information, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
    postPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData :: (GHC.Maybe.Maybe PostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentIntentsIntentIncrementAuthorizationRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postPaymentIntentsIntentIncrementAuthorizationRequestBodyAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_fee_amount" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyApplicationFeeAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_data" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postPaymentIntentsIntentIncrementAuthorizationRequestBodyAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_fee_amount" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyApplicationFeeAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_data" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentIncrementAuthorizationRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentIncrementAuthorizationRequestBody" (\obj -> (((((GHC.Base.pure PostPaymentIntentsIntentIncrementAuthorizationRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transfer_data"))

-- | Create a new 'PostPaymentIntentsIntentIncrementAuthorizationRequestBody' with all required fields.
mkPostPaymentIntentsIntentIncrementAuthorizationRequestBody ::
  -- | 'postPaymentIntentsIntentIncrementAuthorizationRequestBodyAmount'
  GHC.Types.Int ->
  PostPaymentIntentsIntentIncrementAuthorizationRequestBody
mkPostPaymentIntentsIntentIncrementAuthorizationRequestBody postPaymentIntentsIntentIncrementAuthorizationRequestBodyAmount =
  PostPaymentIntentsIntentIncrementAuthorizationRequestBody
    { postPaymentIntentsIntentIncrementAuthorizationRequestBodyAmount = postPaymentIntentsIntentIncrementAuthorizationRequestBodyAmount,
      postPaymentIntentsIntentIncrementAuthorizationRequestBodyApplicationFeeAmount = GHC.Maybe.Nothing,
      postPaymentIntentsIntentIncrementAuthorizationRequestBodyDescription = GHC.Maybe.Nothing,
      postPaymentIntentsIntentIncrementAuthorizationRequestBodyExpand = GHC.Maybe.Nothing,
      postPaymentIntentsIntentIncrementAuthorizationRequestBodyMetadata = GHC.Maybe.Nothing,
      postPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/payment_intents\/{intent}\/increment_authorization.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.transfer_data@ in the specification.
--
-- The parameters used to automatically create a Transfer when the payment is captured.
-- For more information, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
data PostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData' = PostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData'
  { -- | amount
    postPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData'Amount obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData'Amount obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount"))

-- | Create a new 'PostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData'' with all required fields.
mkPostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData' :: PostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData'
mkPostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData' = PostPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData' {postPaymentIntentsIntentIncrementAuthorizationRequestBodyTransferData'Amount = GHC.Maybe.Nothing}

-- | Represents a response of the operation 'postPaymentIntentsIntentIncrementAuthorization'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentIntentsIntentIncrementAuthorizationResponseError' is used.
data PostPaymentIntentsIntentIncrementAuthorizationResponse
  = -- | Means either no matching case available or a parse error
    PostPaymentIntentsIntentIncrementAuthorizationResponseError GHC.Base.String
  | -- | Successful response.
    PostPaymentIntentsIntentIncrementAuthorizationResponse200 PaymentIntent
  | -- | Error response.
    PostPaymentIntentsIntentIncrementAuthorizationResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
