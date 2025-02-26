-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postTransfersIdReversals
module StripeAPI.Operations.PostTransfersIdReversals where

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

-- | > POST /v1/transfers/{id}/reversals
-- 
-- \<p>When you create a new reversal, you must specify a transfer to create it on.\<\/p>
-- 
-- \<p>When reversing transfers, you can optionally reverse part of the transfer. You can do so as many times as you wish until the entire transfer has been reversed.\<\/p>
-- 
-- \<p>Once entirely reversed, a transfer can’t be reversed again. This method will return an error when called on an already-reversed transfer, or when trying to reverse more money than is left on a transfer.\<\/p>
postTransfersIdReversals :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostTransfersIdReversalsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTransfersIdReversalsResponse) -- ^ Monadic computation which returns the result of the operation
postTransfersIdReversals id
                         body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTransfersIdReversalsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersIdReversalsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           TransferReversal)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersIdReversalsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/transfers/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.<> "/reversals")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/transfers\/{id}\/reversals.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostTransfersIdReversalsRequestBody = PostTransfersIdReversalsRequestBody {
  -- | amount: A positive integer in cents (or local equivalent) representing how much of this transfer to reverse. Can only reverse up to the unreversed amount remaining of the transfer. Partial transfer reversals are only allowed for transfers to Stripe Accounts. Defaults to the entire transfer amount.
  postTransfersIdReversalsRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | description: An arbitrary string which you can attach to a reversal object. It is displayed alongside the reversal in the Dashboard. This will be unset if you POST an empty value.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTransfersIdReversalsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postTransfersIdReversalsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTransfersIdReversalsRequestBodyMetadata :: (GHC.Maybe.Maybe PostTransfersIdReversalsRequestBodyMetadata'Variants)
  -- | refund_application_fee: Boolean indicating whether the application fee should be refunded when reversing this transfer. If a full transfer reversal is given, the full application fee will be refunded. Otherwise, the application fee will be refunded with an amount proportional to the amount of the transfer reversed.
  , postTransfersIdReversalsRequestBodyRefundApplicationFee :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTransfersIdReversalsRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postTransfersIdReversalsRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postTransfersIdReversalsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTransfersIdReversalsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTransfersIdReversalsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_application_fee" Data.Aeson.Types.ToJSON..=)) (postTransfersIdReversalsRequestBodyRefundApplicationFee obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postTransfersIdReversalsRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postTransfersIdReversalsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTransfersIdReversalsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTransfersIdReversalsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_application_fee" Data.Aeson.Types.ToJSON..=)) (postTransfersIdReversalsRequestBodyRefundApplicationFee obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersIdReversalsRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersIdReversalsRequestBody" (\obj -> ((((GHC.Base.pure PostTransfersIdReversalsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_application_fee"))}
-- | Create a new 'PostTransfersIdReversalsRequestBody' with all required fields.
mkPostTransfersIdReversalsRequestBody :: PostTransfersIdReversalsRequestBody
mkPostTransfersIdReversalsRequestBody = PostTransfersIdReversalsRequestBody{postTransfersIdReversalsRequestBodyAmount = GHC.Maybe.Nothing,
                                                                            postTransfersIdReversalsRequestBodyDescription = GHC.Maybe.Nothing,
                                                                            postTransfersIdReversalsRequestBodyExpand = GHC.Maybe.Nothing,
                                                                            postTransfersIdReversalsRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                            postTransfersIdReversalsRequestBodyRefundApplicationFee = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/transfers\/{id}\/reversals.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTransfersIdReversalsRequestBodyMetadata'Variants =
   PostTransfersIdReversalsRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostTransfersIdReversalsRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTransfersIdReversalsRequestBodyMetadata'Variants
    where {toJSON (PostTransfersIdReversalsRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PostTransfersIdReversalsRequestBodyMetadata'EmptyString) = ""}
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersIdReversalsRequestBodyMetadata'Variants
    where {parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostTransfersIdReversalsRequestBodyMetadata'EmptyString
                              | GHC.Base.otherwise -> case (PostTransfersIdReversalsRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'postTransfersIdReversals'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTransfersIdReversalsResponseError' is used.
data PostTransfersIdReversalsResponse =
   PostTransfersIdReversalsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostTransfersIdReversalsResponse200 TransferReversal -- ^ Successful response.
  | PostTransfersIdReversalsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
