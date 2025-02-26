-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postTerminalReadersReaderRefundPayment
module StripeAPI.Operations.PostTerminalReadersReaderRefundPayment where

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

-- | > POST /v1/terminal/readers/{reader}/refund_payment
-- 
-- \<p>Initiates a refund on a Reader\<\/p>
postTerminalReadersReaderRefundPayment :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ reader | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostTerminalReadersReaderRefundPaymentRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTerminalReadersReaderRefundPaymentResponse) -- ^ Monadic computation which returns the result of the operation
postTerminalReadersReaderRefundPayment reader
                                       body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTerminalReadersReaderRefundPaymentResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalReadersReaderRefundPaymentResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Terminal'reader)
                                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalReadersReaderRefundPaymentResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/terminal/readers/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel reader)) GHC.Base.<> "/refund_payment")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/terminal\/readers\/{reader}\/refund_payment.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostTerminalReadersReaderRefundPaymentRequestBody = PostTerminalReadersReaderRefundPaymentRequestBody {
  -- | amount: A positive integer in __cents__ representing how much of this charge to refund.
  postTerminalReadersReaderRefundPaymentRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | charge: ID of the Charge to refund.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalReadersReaderRefundPaymentRequestBodyCharge :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postTerminalReadersReaderRefundPaymentRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTerminalReadersReaderRefundPaymentRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | payment_intent: ID of the PaymentIntent to refund.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalReadersReaderRefundPaymentRequestBodyPaymentIntent :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | refund_application_fee: Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
  , postTerminalReadersReaderRefundPaymentRequestBodyRefundApplicationFee :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | reverse_transfer: Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
  , postTerminalReadersReaderRefundPaymentRequestBodyReverseTransfer :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTerminalReadersReaderRefundPaymentRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_intent" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_application_fee" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyRefundApplicationFee obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reverse_transfer" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyReverseTransfer obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_intent" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_application_fee" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyRefundApplicationFee obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reverse_transfer" Data.Aeson.Types.ToJSON..=)) (postTerminalReadersReaderRefundPaymentRequestBodyReverseTransfer obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalReadersReaderRefundPaymentRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalReadersReaderRefundPaymentRequestBody" (\obj -> ((((((GHC.Base.pure PostTerminalReadersReaderRefundPaymentRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reverse_transfer"))}
-- | Create a new 'PostTerminalReadersReaderRefundPaymentRequestBody' with all required fields.
mkPostTerminalReadersReaderRefundPaymentRequestBody :: PostTerminalReadersReaderRefundPaymentRequestBody
mkPostTerminalReadersReaderRefundPaymentRequestBody = PostTerminalReadersReaderRefundPaymentRequestBody{postTerminalReadersReaderRefundPaymentRequestBodyAmount = GHC.Maybe.Nothing,
                                                                                                        postTerminalReadersReaderRefundPaymentRequestBodyCharge = GHC.Maybe.Nothing,
                                                                                                        postTerminalReadersReaderRefundPaymentRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                        postTerminalReadersReaderRefundPaymentRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                                                        postTerminalReadersReaderRefundPaymentRequestBodyPaymentIntent = GHC.Maybe.Nothing,
                                                                                                        postTerminalReadersReaderRefundPaymentRequestBodyRefundApplicationFee = GHC.Maybe.Nothing,
                                                                                                        postTerminalReadersReaderRefundPaymentRequestBodyReverseTransfer = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postTerminalReadersReaderRefundPayment'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTerminalReadersReaderRefundPaymentResponseError' is used.
data PostTerminalReadersReaderRefundPaymentResponse =
   PostTerminalReadersReaderRefundPaymentResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostTerminalReadersReaderRefundPaymentResponse200 Terminal'reader -- ^ Successful response.
  | PostTerminalReadersReaderRefundPaymentResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
